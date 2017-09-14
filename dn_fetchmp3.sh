#!/bin/bash

#check for weekend, if so prompt for friday's broadcast
DoW=$(date +%u)
if [ $DoW -eq 7 ] 
  then
    echo "It's sunday, DN! does not air on the weekend\n" 
    read -p "Would you like to download and play Friday's broadcast? [y/n]\n" -n 1 -r
       if [[ $REPLY =~ ^[Nn]$ ]]
        then
          echo "try again monday at 9:15 am EST!\n exiting..."
          exit;
       fi
       if [[ $REPLY =~ ^[Yy]$ ]]
         then 
           d=$(date -j -v-2d +%Y-%m%d)
       fi
fi

#check if the mp3 can be dowloaded, if not try previous day
d=$(date +%Y-%m%d)
echo $(date +%Y-%m-%d)
url=http://traffic.libsyn.com/democracynow/dn$d-1.mp3
status=$(curl -s -w %{http_code} --output /dev/null ${url})
if [ $status -ne 302 ]
  then
    echo "cannot resolve URL: trying yesterday's date ...";
    d=$(date -j -v-1d +%Y-%m%d)
    url=http://traffic.libsyn.com/democracynow/dn$d-1.mp3
    status=$(curl -s -w %{http_code} --output /dev/null ${url})
      if [ $status -ne 302 ]
        then
          echo "cannot resolve URL: exiting";
          exit;
      fi
fi

#if program exists download and play it
#echo "found it!\n"
redirect_url=`curl -s -I http://traffic.libsyn.com/democracynow/dn$d-1.mp3 | perl -n -e '/^Location: (.*)$/ && print "$1\n"'`
clean_url=${redirect_url%$'\r'}
curl -# -o dn_show-$d.mp3 $clean_url
cat dn_ascii.txt
echo "Support Democracy Now! by donating at: https://www.democracynow.org/donate"
echo "Playing Democracy Now! broadcast from  $d"
echo "press ctrl-c to quit"
afplay -q 1 dn_show-$d.mp3 
#open -a vlc dn_show-$d.mp3
