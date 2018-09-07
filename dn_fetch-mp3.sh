#!/bin/bash

wd=$(date +%u)
if [ $wd -eq 7 ]; then
  d=$(date -j -v-2d +%Y-%m%d)
elif [ $wd -eq 6 ]; then
  d=$(date -j -v-1d +%Y-%m%d)
else
  d=$(date +%Y-%m%d)
fi

url=https://traffic.libsyn.com/democracynow/dn$d.mp3

wget -O $PWD/dn$d.mp3 $url

cat $PWD/dn_ascii.txt
echo "Donate to Democracy Now! at democracynow.org/donate"
afplay -q 1 $PWD/dn$d.mp3
echo "Donate to Democracy Now! at democracynow.org/donate"

