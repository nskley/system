#! /bin/sh
fic="$1"
rep="$2"

listfic=`ls -l $rep|grep "^-"`
for i in $listfic
do
    if [ ! $i = $fic ]
    then
        n=`cmp $fic $i|grep -c ".*" `
        

