#! /bin/sh
a=1
b=$a`pwd`
echo $b

#a=1
#b=$a `pwd`
#echo $b
#revoie une erreur car l'expression doit etre une seule chaine de caractere

a=1
b="$a `pwd`"
echo $b

a=1
b='$a `pwd`'
echo $b

