#! /bin/sh
case `date -R|cut -d' ' -f1` in
	'Mon,')
		echo lundi `date -R|cut -d' ' -f2`>date.txt;;
	'The,')
                echo mardi `date -R|cut -d' ' -f2`>date.txt;;
	'Wed,')
                echo mercredi `date -R|cut -d' ' -f2`>date.txt;;
	'Thu,')
                echo jeudi `date -R|cut -d' ' -f2`>date.txt;;
	'Fri,')
                echo vendredi `date -R|cut -d' ' -f2`>date.txt;;
	'Sat,')
                echo samedi `date -R|cut -d' ' -f2`>date.txt;;
	'Sun,')
                echo dimanche `date -R|cut -d' ' -f2`>date.txt;;
esac

case `date -R|cut -d' ' -f3` in
        'Jan')
                echo janvier>>date.txt;;
        'Feb')
                echo février>>date.txt;;
        'Mar')
                echo mars>>date.txt;;
        'Apr')
                echo avril>>date.txt;;
        'May')
                echo mai>>date.txt;;
        'Jun')
                echo juin>>date.txt;;
        'Jul')
                echo juillet>>date.txt;;
	'Aug')
		echo août>>date.txt;;
	'Sep')
		echo septembre>>date.txt;;
	'Oct')
		echo octobre>>date.txt;;
	'Nov')
		echo novembre>>date.txt;;
	'Dec')
		echo décembre>>date.txt;;
esac

echo `cat date.txt` `date -R|cut -d' ' -f4,5` "(UTC`date -R|cut -d' ' -f6`)"
rm date.txt
