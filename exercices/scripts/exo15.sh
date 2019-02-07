#! /bin/sh
if file $1|grep 'executable'>/dev/null
then echo ok
exit 0
else
exit 1
fi
