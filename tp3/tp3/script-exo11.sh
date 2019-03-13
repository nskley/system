#! /bin/sh
case `date -R|cut -d' ' -f1` in
	'Mon,')
		echo Lundi `date -R|cut -d' ' -f2`>date.txt;;
	'Tue,')
                echo Mardi `date -R|cut -d' ' -f2`>date.txt;;
	'Wed,')
                echo Mercredi `date -R|cut -d' ' -f2`>date.txt;;
	'Thu,')
                echo Jeudi `date -R|cut -d' ' -f2`>date.txt;;
	'Fri,')
                echo Vendredi `date -R|cut -d' ' -f2`>date.txt;;
	'Sat,')
                echo Samedi `date -R|cut -d' ' -f2`>date.txt;;
	'Sun,')
                echo Dimanche `date -R|cut -d' ' -f2`>date.txt;;
esac

case `date -R|cut -d' ' -f3` in
        'Jan')
                echo Janvier>>date.txt;;
        'Feb')
                echo Février>>date.txt;;
        'Mar')
                echo Mars>>date.txt;;
        'Apr')
                echo Avril>>date.txt;;
        'May')
                echo Mai>>date.txt;;
        'Jun')
                echo Juin>>date.txt;;
        'Jul')
                echo Juillet>>date.txt;;
	'Aug')
		echo Août>>date.txt;;
	'Sep')
		echo Septembre>>date.txt;;
	'Oct')
		echo Octobre>>date.txt;;
	'Nov')
		echo Novembre>>date.txt;;
	'Dec')
		echo Décembre>>date.txt;;
esac

echo `cat date.txt` `date -R|cut -d' ' -f4,5` "(UTC`date -R|cut -d' ' -f6`)"
rm date.txt
