# Git commands

Remove all local branches that are not on remote
`git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs -r git branch -d`

To delete local branches which have already been merged into master:
`git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d`


# AWS commands

Rotate AWS Access Keys

```
# Opret ny access key:
aws iam create-access-key

# Brug ny AccessKeyId og SecretAccessKey:
aws configure

# Tjek at den nye key virker, f.eks. mod S3:
aws s3 ls

# Find gammel key (se efter creation date):
aws iam list-access-keys

# Deaktiver og slet gammel key:
aws iam update-access-key --access-key-id {GAMMEL_KEY_ID} --status Inactive
aws iam delete-access-key --access-key-id {GAMMEL_KEY_ID}
```

# Screen recording
```ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0 -f pulse -ac 2 -i default -vcodec vp8 -acodec libvorbis myvideo_$(date +%d_%B_%Y_%H:%M).webm```

# SSH Tunneling with ssh gateways
Step 1. Binds localhost:1222 to a tunnel to z.z.z.z that goes through x.x.x.x on the way: 
```ssh -i "sshkey.pem" ec2-user@x.x.x.x -L 1222:z.z.z.z:22```

Step 2: Binds localhost:12345 to a tunnel to q.q.q.q that goes through step 1 on the way
```ssh -i "sshkey.pem" ec2-user@127.0.0.1 -p 1222 -L 12345:q.q.q.q:3306```
