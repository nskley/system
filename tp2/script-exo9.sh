#! /bin/sh
echo il ya `ls -l .*.txt *.txt|grep -c '^-' ` fichiers, cachés ou non, qui se terminent par .txt
echo il ya `ls -l .*.sh *.sh|grep -c '^-'` fichiers, cachés ou non, qui se terminent par .sh
echo il ya `ls -l .*|grep -c '^-'` fichiers cachés
echo il ya `ls -l |grep -v '.txt$'|grep -v '.sh$'|grep -c '^-'` fichiers autres

