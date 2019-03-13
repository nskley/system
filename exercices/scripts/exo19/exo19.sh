#! /bin/sh

if [ $# -ne 2]
then
    echo"Usage: $0 nom_repertoire chaine">&2
    exit 1

fi

if [ ! -d "$1" -o ! -r "$1" -o ! -x "$1" ]
then
    echo "le repertoire $1 n'existe pas ou est protegé">&2
    exit 2
fi

for fichourep in "$1"/*
do
    if [ -d "$fichourep" ]
    then
        "$0" "$rep" "$2"
    elif [ -f "$fichourep" ]
    then
        if [ -r "$fichourep" ]
        then
        grep -l "$2" "$fichourep"
    else
        echo "le fichier "$fichourep" est protegé en lecture">&2
    fi
done
exit 0
