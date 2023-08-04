#!/bin/bash

git init
touch README.md
cp ~/Scripts/LICENSE .

if [[ ! -z $1 ]]; then 
    git branch -M main
    git remote add origin $1
fi
