#!/usr/bin/env bash

venv() {
   if [[ ! -d .venv ]]; then
        python3 -m venv .venv
   fi
   source .venv/bin/activate
}

pdf-reduce() {
    if [[ ! -f "$1" ]]; then
        echo "Cannot find file '$1'"
    else
        gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile="$2" "$1"
    fi
}

g() {
    { ./gradlew ${@} 2>/dev/null; } || { gradle ${@}; }
}

frm() {
  find . -name $1 -exec rm -rf {} \;
}
