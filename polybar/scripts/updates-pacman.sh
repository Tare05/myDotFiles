#!/bin/sh

GODS_FAV_COLOR="%{F#2aa198}" # Gods favourite color

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "${GODS_FAV_COLOR}ﮮ %{F-}$updates"
else
    echo ""
fi
