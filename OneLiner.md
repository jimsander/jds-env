# One Liners and quick Cheats

Not all of them are gems
Most is in bash

## JMESpath Queries

Useful for filtering on AWS and Azure CLI

```bash
az vm list --query "[?contains(displayName,'SOME_STRING')].appId"`; do az ad app delete --id $id; done
```

```bash
for id in `az ad app list --query "[?contains(displayName,'SOME_STRING')].appId"`; do az ad app delete --id $id; done
```

## Azure

Keyvault Operations

### List Objects

```bash
type=secret az keyvault $type list --vault-name $kv --query "[].id" --output tsv| cut -d/ -f5
```

###Migrate Objects

```bash
type=secret SK=src-kv-name name TK=tgt-kv-name az keyvault $type list --vault-name $SK --query "[].id"  --output tsv | while read line; do s=`echo $line | cut -d/ -f5-`; az keyvault $type backup --vault-name $SK --name $s --file-path s.bk && echo RESTORE && az keyvault $type restore --vault-name $TK --file-path s.bk ; don
```

### RENAME
Not aware of a rename operation put the above in loop 

```bash
for type in key secret certificate
TYPE=secret SK=src-kv-name name TK=tgt-kv-name az keyvault $TYPE list --vault-name $SK --query "[].id"  --output tsv | while read line; do s=`echo $line | cut -d/ -f5-`; az keyvault $TYPE backup --vault-name $SK --name $s --file-path s.bk && echo RESTORE && az keyvault $TYPE restore --vault-name $TK --file-path s.bk ; don
```
