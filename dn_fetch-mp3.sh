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


SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do 
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" 
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null && pwd )"

wget -O $DIR/dn$d.mp3 $url

cat $DIR/dn_ascii.txt
afplay -q 1 $DIR/dn$d.mp3
echo "Donate to Democracy Now! at democracynow.org/donate"

