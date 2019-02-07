#! /bin/sh
#1)
grep "$1 .* $2" calpin.txt
#2)
grep -l 'main' `ls`
# l option -l me permet d afficher le nom du fichier
