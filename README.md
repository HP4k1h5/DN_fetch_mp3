This is an unofficial, unaffiliated command line tool to download and play the latest Democracy Now! broadcast as an .mp3 file. This tool should work on linux based systems or from any linux compatible terminal emulator.

This script is not pulling data from a public api, and is therefore not guaranteed to be stable. This repository is in no way associated with Democracy Now!

#********

Latest Version: dn_fetchmp3.sh

#********


#********

INSTALLATION:
 to install 
  1) download or clone the latest version. 
  2) change the permissions on the .sh file to allow -execute access
    on most linux systems type: "chmod +x dn_fetchmp3.sh"
  3) run the script by typing "./dn_fetchmp3.sh"

#****

#****

OPTIONS:

  1) to play the mp3 from the application of your choice, uncomment the last line of the .sh file and change "vlc" to the media player of your choice such as "itunes" or "spotify" and comment the second to last line
  2) to prevent the script from downloading a new file every day delete '-$d' from the line curl -o dn_show-$d.mp3

#****

Please submit issues to the issues page of the repository at https://github.com/HP4k1h5/DN_fetch_mp3.git

©2017 Robert Walker (MIT License)
