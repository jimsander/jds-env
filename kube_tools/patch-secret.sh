#!/bin/bash

PROG=$(basename $0)
show_help (){
  [[ -n "$@" ]] && echo "$@"
  echo "USAGE: $PROG <identity_filename>"
  exit 1
}
SECRET="${2:-identity-server}"
KEY="${3:-appsettings.json}"
APP="${4:-$SECRET}"

[[ -z "$1" ]] && show_help "Give us a filename :)"
[[ -s "$1" ]] || show_help "File is EMPTY"
[[ -f "$1" ]] || show_help "Can't find file: $1"
egrep -q "^### " $1 && show_help "Remove line \"$(egrep '^###' $1) \"" 

DATA=$1
BAK=${DATA%%\.*}_$(date +%m%d%H%M)${DATA##${DATA%%\.*}}.bak

kubectl get secret $SECRET -o go-template='{{range $k,$v := .data}}{{"### "}}{{$k}}{{"\n"}}{{$v|base64decode}}{{end}}' > $BAK && \
  echo "Secret Backed up to $BAK" >&2 || \
  show_help "Failed to backup existing secret $SECRET"

base64_encoded_appsettings=$(base64 -w 0 $DATA)
app_data=$base64_encoded_appsettings

TMPOUT=$(mktemp /tmp/XXX.this)

kubectl patch secrets $SECRET --patch="{\"data\": { \"$KEY\": \"$app_data\"}}" 2> $TMPOUT >&2|| \
	{ show_help "Something went sideways, bailing"; exit 1; }

grep -q "no change" $TMPOUT && { echo "No Change"; rm -f "$BAK"; exit 1; } || \
	kubectl delete pod $(kubectl get pods | awk -v v_app=$APP '($1 ~ v_app) {print $1}') || \

MAXTRY=10
echo > $TMPOUT
while kubectl get pods --no-headers --selector app=$APP| tee -a $TMPOUT; do
  [ $(wc -l $TMPOUT | awk '{ print $1 }') -gt $MAXTRY ] && echo "Check Pod state; Max watch($MAXTRY) exceeded" && exit 1
  egrep -qi 'Running|Error' $TMPOUT && break
  sleep 1
done
pod=$(grep 'Running' $TMPOUT | awk '{ print $1 }')
echo "#POD: $pod"
kubectl logs -f $pod
