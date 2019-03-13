#! /bin/sh
mkdir REP
ls *.txt > REP/liste.txt
cp `tail -n -1 REP/liste.txt` REP/
rm REP/liste.txt
