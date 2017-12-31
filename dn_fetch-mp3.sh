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

wget $url

cat dn_ascii.txt

afplay -q 1 ./dn$d.mp3
