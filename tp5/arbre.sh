#! /bin/sh

if [ "$#" -le 1 ]
then
    echo `basename $1`
fi

cmpt=`ls -l $1| grep -c "^d"`

for rep in "$1"/*
do
    chaine=""
    if [ -d "$rep" -a -r "$rep" -a -x "$rep" ]
    then
	chaine="$2$chaine"
        if [ $cmpt -ne "1" ]
        then
            echo "$chaine"+- "`basename $rep`"
            "$0" "$rep" "$chaine|  " 
        else
            echo "$chaine"+- "`basename $rep`"
            "$0" "$rep" "$chaine  " 
        fi
	cmpt=`expr $cmpt - 1`
    fi
done
