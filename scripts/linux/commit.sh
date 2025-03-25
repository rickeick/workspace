#!/bin/bash

if [[ -z $1 ]]; then 
    echo "Mensagem não passada!"
else
    git commit -m "$1"
    if [[ "$2" == "-u" ]]; then
        git push -u origin main
    else
        git push origin main
    fi
fi
