#!/bin/sh

# Fri 22 Jan 2016 12:24:51 PM MST

# I COULDNT FIGURE OUT A WAY TO CALL MY SCRIPT FROM A CRONJOB,
# BUT IF I CALL IT FROM ANOTHER SCRIPT, IT WORKS!
# SO THATS WHAT I DID
DISPLAY=:0.0 /usr/bin/xfce4-terminal -x /home/jaimito/WhatAreYouDoing/doing.sh

# DISPLAY=:0.0 /usr/bin/xfce4-terminal -x ~/WhatAreYouDoing/doing.sh
