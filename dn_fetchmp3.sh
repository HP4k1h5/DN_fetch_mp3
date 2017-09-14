d=$(date +%Y-%m%d)
echo $d
redirect_url=`curl -I http://traffic.libsyn.com/democracynow/dn$d-1.mp3 | perl -n -e '/^Location: (.*)$/ && print "$1\n"'`
#echo $redirect_url
clean_url=${redirect_url%$'\r'}
echo "Support Democracy Now! by donating at: https://www.democracynow.org/donate"
curl -o dn_show-$d.mp3 $clean_url
afplay -q 1 dn_show-$d.mp3 
#open -a vlc dn_show-$d.mp3
