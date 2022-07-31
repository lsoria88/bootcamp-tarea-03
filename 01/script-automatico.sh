#! /bin/bash

# Example: ./script-automatico.sh "El mejor bootcamp es el de RoxsRoss"
mkdir foo > /dev/null
mkdir ./foo/dummy > /dev/null
mkdir ./foo/empty > /dev/null

if [ -z "$1" ]; then
    echo "Que me gusta bash!!!!" > ./foo/dummy/file1.txt
else
    echo $1 > ./foo/dummy/file1.txt
fi

cp ./foo/dummy/file1.txt ./foo/empty/file2.txt > /dev/null