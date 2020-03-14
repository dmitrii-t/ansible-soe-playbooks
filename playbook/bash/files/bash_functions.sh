#!/usr/bin/env bash

venv() {
   if [[ ! -d venv ]]; then
        virtualenv venv
   fi
   source ./venv/bin/activate
}
