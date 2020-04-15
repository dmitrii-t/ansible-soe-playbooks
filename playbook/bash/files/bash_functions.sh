#!/usr/bin/env bash

venv() {
   if [[ ! -d .env ]]; then
        virtualenv .env
   fi
   source .env/bin/activate
}

pdf-reduce() {
    if [[ ! -f "$1" ]]; then
        echo "Cannot find file '$1'"
    else
        gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile="$2" "$1"
    fi
}
