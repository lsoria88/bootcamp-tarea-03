#! /bin/bash

if [ -z "$1" ];
    then echo "Debe ingresar un argumento"
    exit 1
else
    wget -O wiki-website.html https://es.wikipedia.org/wiki/DevOps >> /dev/null 2>&1
    COUNT=$(grep $1 wiki-website.html | wc -l)
fi
echo 'La palabra' $1 'se encuentra' $COUNT 'veces'
rm wiki-website.html

