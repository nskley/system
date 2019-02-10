#! /bin/sh
cat liste.txt|cut -d' ' -f1|grep "^.\{`expr $2 - $1`\}$"
