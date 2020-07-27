#!/bin/sh

cd /Users/cay/Desktop/DailyEg

while true ;do

rm -rf tempfile
mkdir tempfile
cd tempfile
touch `date`

git add -A
msg="`date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
git push jss master

sleep 1

done