# One Liners or Cheat 

Not all of them are gems

## JMESpath Queries

Useful for filtering on AWS and Azure CLI

```bash
for id in `az ad app list --query "[?contains(displayName,'SOME_STRING')].appId"`; do az ad app delete --id $id; done
```

## Azure

Keyvault migrations

```bash
SK=src-kv-name name TK=tgt-kv-name az keyvault secret list --vault-name $SK --query "[].id"  --output tsv | while read line; do s=`echo $line | cut -d/ -f5-`; az keyvault secret backup --vault-name $SK --name $s --file-path s.bk && echo RESTORE && az keyvault secret restore --vault-name $TK --file-path s.bk ; don
```
