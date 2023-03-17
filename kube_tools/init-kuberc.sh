## $HOME/.kuberc
## Sourced by shell profile

cat <<EOK > $HOME/.kuberc
source <(kubectl completion bash)
if [[ \$? -eq 0 ]]; then
  alias k=kubectl
  complete -o default -F __start_kubectl k
fi
export dry='--dry-run=client -o yaml'
alias kcd="kubectl create \$dry"
alias kcr="kubectl create"
alias kgn="kubectl get nodes"
alias kgp="kubectl get pods"
alias kns="kubectl config set-context --current --namespace "
alias kgns="kubectl config view --minify -o jsonpath='{..namespace}'; echo "
kgetsec () { [[ \$# -ge 1 ]] && kubectl get secret \$1 -o go-template='{{range \$k,\$v := .data}}{{"### "}}{{\$k}}{{"\n"}}{{\$v|base64decode}}{{"\n\n"}}{{end}}' || echo "No secrets passed" >&2; }
EOK
source $HOME/.kuberc
