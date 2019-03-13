#! /bin/sh
nbligne=`grep -c '.*' f_anglais.txt`
ligne=1
chain=' '
if [ -f f_français.txt ]
then
	rm f_français.txt
fi
while [ $nbligne -gt 0 ]
do
	for i in `tail -n +$ligne f_anglais.txt|head -1`
	do
		chain=$chain' '`grep ^$i' ' dico.txt|cut -d' ' -f2`
	done
	echo $chain>>f_français.txt
	chain=' '
	ligne=`expr $ligne + 1`
	nbligne=`expr $nbligne - 1`
done
