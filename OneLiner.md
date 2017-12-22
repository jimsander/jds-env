# One Liners and quick Cheats

## Heads Up
- Not all of them are gems
- Most are in bash
  - I prefer single ticks over the $() exec syntax 

```bash
      echo "`expr 9 % 6` == $(expr 9 % 6)"
      # 3 == 3
```


## JMESpath Queries

Useful for filtering on AWS and Azure CLI

```bash
az vm list --query "[?contains(displayName,'SOME_STRING')].name"
```

```bash
for id in `az ad app list --query "[?contains(displayName,'SOME_STRING')].appId"`; do az ad app delete --id $id; done
```

## Azure

Keyvault Operations

### List Objects by Name

```bash
kv=kvName
# one type
type=secret az keyvault $type list --vault-name $kv --query "[].id" --output tsv| cut -d/ -f5
# all objects
for type in key secret certificate; do az keyvault $type list --vault-name $kv --query "[].id" --output tsv| cut -d/ -f5; done
```

### Migrate Objects

```bash
type=secret SK=src-kv-name name TK=tgt-kv-name az keyvault $type list --vault-name $SK --query "[].id"  --output tsv | while read line; do s=`echo $line | cut -d/ -f5-`; az keyvault $type backup --vault-name $SK --name $s --file-path s.bk && echo RESTORE && az keyvault $type restore --vault-name $TK --file-path s.bk ; don
```

### RENAME
Take the *Migrate* idea one step further, because, I'm not aware of a *Rename* operation put the above in loop 

```bash
SK=src-kv-name name TK=tgt-kv-name 
for type in key secret certificate; do
  az keyvault $type list --vault-name $SK --query "[].id"  --output tsv | while read line; do 
    s=`echo $line | cut -d/ -f5-`
    az keyvault $type backup --vault-name $SK --name $s --file-path s.bk &&\
    az keyvault $type restore --vault-name $TK --file-path s.bk 
done
```


## Loop testing

```bash
while [ 1 ]; do printf "`date` : `speedtest --csv`\n"; sleep 5; done | tee ~/Documents/speedtest_`date +'%Y%m%d%H%M'.csv`
```
