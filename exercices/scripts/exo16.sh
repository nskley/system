#! /bin/sh
if [ $# -eq 0] # ou test $# -eq 0
then
	fich=/users/linfg/linfg0/omar
elif [ $# -eq 1 ]
then
	fich=$1
else
	echo "Usage : $0 [fichier]">&2
	exit 1
fi

if [ ! -f $fich ]
then
	echo "Fichier $fich inexistant">&2
	exit 2
fi

if [ ! -r $fich ]
then
	echo "$fich protegé en lecture">&2
	exit 3
fi

	echo "affichage à partir du debut"
	cat $fich
	echo "affichage à parir de la fin"
	nblignes=`grep -c '.*' $fich`

while [ $nblignes -gt 0 ]
do
	head -n $nblignes $fich|tail -1
	nblignes=`expr $nblignes -  1`
	done
exit 0
