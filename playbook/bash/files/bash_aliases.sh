#!/usr/bin/env bash

alias ap='ansible-playbook'

alias dcp='docker-compose'
alias dps='docker ps'
alias dstop='{ docker stop $(docker ps -a -q) 2>/dev/null; } || { echo "No containers running"; }'
alias drm='{ docker rm $(docker ps -a -q) 2>/dev/null; } || { echo "No containers to remove"; }'
alias ddwn='dstop && drm'
alias g='./gradlew'
