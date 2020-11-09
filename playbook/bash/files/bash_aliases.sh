netstat -pant | grep LISTEN#!/usr/bin/env bash

alias ap='ansible-playbook'

alias dcp='docker-compose'
alias dps='docker ps'
alias dstop='{ docker stop $(docker ps -a -q) 2>/dev/null; } || { echo "No containers running"; }'
alias drm='{ docker rm $(docker ps -a -q) 2>/dev/null; } || { echo "No containers to remove"; }'
alias ddwn='dstop && drm'
alias pu='pulumi'

alias mjr='mvn jerry:run'
alias mbr='mvn spring-boot:run'
alias mci='mvn clean install'
alias mcist='mvn clean install -DskipTests=true'

alias k=kubectl

alias mp=multipass

alias netstat-pant='netstat -pant | grep LISTEN'