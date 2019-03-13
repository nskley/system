#! /bin/sh

for rep in "$1"/*
do
    if [ -d "$rep" ]
    then
        echo `basename "$rep"`
        "$0" "$rep"
    fi
done