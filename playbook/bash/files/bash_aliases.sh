#!/usr/bin/env bash

alias ap='ansible-playbook'

alias dcp='docker-compose'
alias dps='docker ps'
alias dstop='{ docker stop $(docker ps -a -q) 2>/dev/null; } || { echo "No containers running"; }'
alias drm='{ docker rm $(docker ps -a -q) 2>/dev/null; } || { echo "No containers to remove"; }'
alias ddwn='dstop && drm'
alias pu='pulumi'

alias k=kubectl

alias m=multipass
alias msm='multipass shell master'
alias mxm='multipass exec master -- bash -c'
alias mda='multipass delete --all'

alias netstat-listen='netstat -pant | grep LISTEN'
