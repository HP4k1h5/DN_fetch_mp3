#Due to a change in the way democracy distributes its program online
#this utility is NOT currently functioning. 
#i will be making changes in the coming days probably switching to wget

This is an \*unofficial\*, \*unaffiliated\* command line tool to download and play the latest Democracy Now! broadcast as an .mp3 file. This tool should work on linux based systems or from any linux compatible terminal emulator.

This script is not pulling data from a public api, and is therefore not guaranteed to be stable. This repository is in no way associated with Democracy Now!

Democracy Now! typically airs at 8:00 am EST Mon-Fri, and uploads the day's broadcast a little after 9:00 am EST. Therefore, if you try to download a show after midnight, it will look for yesterday's show. If you try to download a show during the weekend, it will look for friday's show.

#********

Latest Version: dn_fetchmp3.sh

#********

#********

INSTALLATION:
 to install 
  1) clone or download this repository. 
  2) change the permissions on the latest version of the .sh file to allow -execute access
     on most linux systems type: "chmod +x dn_fetchmp3.sh"
  3) run the script by typing "./dn_fetchmp3.sh" while you are in the project directory
     (if run from outside the parent directory, it will download the mp3 to that directory)

#********

#********

OPTIONS:

  1) to play the mp3 from the application of your choice, 
      a) uncomment the last line of the .sh file 
      b) change "vlc" to the media player of your choice such as "itunes" or "spotify" 
      c) comment out (i.e. add #)the second to last line
  2) to prevent the script from downloading a new file every day 
      a) delete '-$d' from the line 'curl -o dn_show-$d.mp3'
      b) delete '-$d' from the line 'afplay -q 1 dn_show-$d.mp3'

#****

Please submit issues to the issues page of the repository at https://github.com/HP4k1h5/DN_fetch_mp3.git

©2017 Robert Walker (MIT License)
