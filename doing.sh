#!/bin/sh

# sleep 1

cd ~/WhatAreYouDoing

# SOURCES --------------------------------------------------------------------------
# http://www.shellhacks.com/en/HowTo-Check-If-a-File-Exists
# http://www.cyberciti.biz/faq/linux-unix-formatting-dates-for-display/
# http://www.cyberciti.biz/faq/bash-prepend-text-lines-to-file/
# http://www.thegeekstuff.com/2009/06/15-practical-crontab-examples/
# http://stackoverflow.com/questions/15826180/why-my-shell-script-doesnt-open-the-terminal-though-it-gives-output-log-absolu
# http://cheesehead-techblog.blogspot.com/2008/08/opening-terminal-window-using-cron.html
# http://askubuntu.com/questions/624701/where-are-cron-logs-stored-on-ubuntu-14-04
# ----------------------------------------------------------------------------------


# VARIABLE = 2016-01-20_Wed
DATE=$(date +"%Y-%m-%d_%a")

# FILE=$DATE
DAILYFILE="$DATE.txt"
# echo $FILE
PASTHOUR="PASTHOUR.txt"


# IF FILE EXISTS AND HAS A SIZE GREATER THAN ZERO
if [ -s "$DAILYFILE" ];
    then cat > $DAILYFILE;
    echo "What are you doing?";
    echo "Previously you entered: "
    cat $PASTHOUR;
    rm $PASTHOUR;
    echo "\nWhat are you doing NOW?";
    read DOING
    TIMESTAMP=$(date +"%Y-%m-%d_%a_%T")
    # echo -e "" $TIMESTAMP\n\t$DOING > $FILE
    printf "$DOING" >> $PASTHOUR
    printf "\n$TIMESTAMP\t\t$DOING" >> $DAILYFILE
# fi
else

# Check if the file '2016-01-20_Wed.txt' exists and perform some action if it is true :
# if test -f "$DAILYFILE";
    # then echo "The File Exists";
    # then echo "What are you doing?";
    echo "What are you doing?";
    echo "Previously you entered: "
    cat $PASTHOUR;
    rm $PASTHOUR;
    echo "\nWhat are you doing NOW?";
    read DOING
    TIMESTAMP=$(date +"%Y-%m-%d_%a_%T")
    # echo -e "" $TIMESTAMP\n\t$DOING > $FILE
    printf "$DOING" >> $PASTHOUR
    printf "\n$TIMESTAMP\t\t$DOING" >> $DAILYFILE
fi


sleep 1 && exit