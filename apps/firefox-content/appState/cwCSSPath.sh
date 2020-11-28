#!/bin/bash
# Return the location of the stylesheet.

export STATE_DIR="${STATE_DIR:-appState}"
placeToLook=~/.mozilla/firefox

function findFirefoxProfiles
{
    cd "$placeToLook"
    
    grep ^Path= profiles.ini | cut -d= -f2
}

function addFileName
{
    sed 's#$#/chrome/userContent.css#g'
}

function makeFullPathAgain
{
    sed "s#^#${placeToLook}/#g"
}

if [ -e "$placeToLook" ]; then
    findFirefoxProfiles | makeFullPathAgain | addFileName
fi

