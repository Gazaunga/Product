#!/bin/bash

## INTERACT ##

echo -n 'What would you like to name your script? '
read _title

## VARIABLES ##

_script_file=${_title}.go

## WRITE ##

if [[ -f ${_script_file} ]]; then
    echo "File already exists. Bye.."
    exit 1
fi

touch ${_script_file }

cat << EOF >| ${_script_file}
pacakage main

import "fmt"

func main() {

}

EOF

# convert below:
echo 'Scriptcreated successfully.'
echo

# prompt user to edit file
if [[ -z ${EDITOR} ]]; then
    echo 'EDITOR variable not set.'
    echo -n 'Edit file? Type n/N to exit or enter the editor to use : '
    read answer
    if [[ "${answer}" == 'n' || "${answer}" == 'N' ]]; then
        exit 0
    else
        ${answer} ${_script_file}
    fi
else
    echo -n 'Edit file? [y/n]: '
    read answer
    if [[ "${answer}" == 'n'|| "${answer}" == 'N' ]]; then
        exit 0
    else
        ${EDITOR} ${_script_file}
    fi
fi

exit 0
