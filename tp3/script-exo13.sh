
# !/bin/sh
echo le repertoire courant est: `pwd`
echo liste des repertoires dans le repertoire courant:
j=1
for i in `ls -l|tr -s ' '|grep "^d"|cut -d' ' -f9`
do
	echo "$j"': '"$i"
	j=`expr $j + 1`
done

echo entrer :
echo " "0 pour rester dans le repertoire courant
echo "-1 pour monter d'un repertoire"
echo -2 pour quitter
read choix
echo choix $choix
case $choix in
 '0')
	cd ./ ; pwd;;
'-1')
	cd .. ; pwd;;
'-2')
	exit 0;;
   *)
	echo  inexistant ; cd ./;;

esac