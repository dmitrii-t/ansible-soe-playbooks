#!/usr/bin/env bash

export CODE_DIR="${HOME}/code"

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

p() {
    if [[ -z $1 ]]; then
        ls "${CODE_DIR}";
        return 0;
    fi;

    declare -a matching_dir_array=();

    while IFS= read -rd '' matching_dir; do
        matching_dir_array+=("$matching_dir");
    done < <(find ${CODE_DIR} -maxdepth 1 -type d -iname "$1*" -print0);
    
    matching_dir_number=${#matching_dir_array[@]};

    if [[ "${matching_dir_number}" -eq 1 ]]; then
        code "${matching_dir_array[0]}" && echo "${matching_dir_array[0]}";
        return 0;
    fi

    if [[ "${matching_dir_number}" -gt 1 ]]; then
        for matching_dir in "${matching_dir_array[@]}"
        do
            echo "${matching_dir}";
        done;
        return 0;
    fi;

    echo "no project dir $1";
}
