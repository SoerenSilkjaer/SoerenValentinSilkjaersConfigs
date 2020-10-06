# Git commands

Remove all local branches that are not on remote
`git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs -r git branch -d`
