#! /bin/sh
nbligne=`grep -c '.*' f_anglais.txt`
ligne=1
chain=' '
while [ $nbligne -gt 0 ]
do
	for i in `tail -n +$ligne f_anglais.txt|head -1`
	do
		echo $i
		chain=$chain' '`grep $i dico.txt|cut -d' ' -f2`
#		grep $i dico.txt|cut -d' ' -f2
	done
	echo $chain
	echo $chain>>f_français.txt
	chain=' '
        #rm temp
	ligne=`expr $ligne + 1`
	nbligne=`expr $nbligne - 1`
done
exit 0
