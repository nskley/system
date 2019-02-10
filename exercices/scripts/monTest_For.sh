#! /bin/sh
for i in `cat listCar`
do
	echo $i
done
nbligne=`grep -c '.*' listCar`
echo $nbligne

