#!/bin/sh

cd ~/WhatAreYouDoing

DATE=$(date +"%Y-%m-%d_%a")    # VARIABLE = 2016-01-20_Wed
DAILYFILE="$DATE.txt"          # FILE=$DATE
PASTHOUR="PASTHOUR.txt"
TIMESTAMP=$(date +"%Y-%m-%d_%a_%T")

if [ -e "$DAILYFILE" ];
then
    if [ -s "$PASTHOUR" ];
    then
        echo "What are you doing?"
        echo "\nPreviously you entered:\n-----------------------"
        cat $PASTHOUR;
        echo "\n\nWhat are you doing NOW?";
        rm $PASTHOUR;
    else
        echo "\nPrevious entry was blank."
        echo "What are you doing NOW?";
    fi
    read DOING
    printf "$DOING" >> $PASTHOUR
    printf "\n$TIMESTAMP\t\t$DOING" >> $DAILYFILE
    sleep 1;
    echo "\n\nThank you!";
else
    echo "GOOD MORNING!";
    echo "\nWhat are you doing?";
    read DOING
    printf "$DOING" >> $PASTHOUR
    printf "\n$TIMESTAMP\t\t$DOING" >> $DAILYFILE
    sleep 1;
    echo "Thank you!";
fi

sleep 1 && exit
