#!/usr/bin/env bash

venv() {
   if [[ ! -d .env ]]; then
        virtualenv .env
   fi
   source .env/bin/activate
}
