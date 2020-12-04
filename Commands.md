# Git commands

Remove all local branches that are not on remote
`git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs -r git branch -d`

Rotate AWS Access Keys
```# Opret ny access key:
aws iam create-access-key
# Brug ny AccessKeyId og SecretAccessKey:
aws configure
# Tjek at den nye key virker, f.eks. mod S3:
aws s3 ls
# Find gammel key (se efter creation date):
aws iam list-access-keys
# Deaktiver og slet gammel key:
aws iam update-access-key --access-key-id {GAMMEL_KEY_ID} --status Inactive
aws iam delete-access-key --access-key-id {GAMMEL_KEY_ID}```
