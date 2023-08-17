#!/bin/bash

git init
touch README.md
cp $(echo "$0" | sed "s|/scripts/initialize.sh||")/LICENSE .

if [[ ! -z $1 ]]; then 
    git branch -M main
    git remote add origin $1
fi
