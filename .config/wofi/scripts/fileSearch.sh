#!/bin/bash

# Start at the present directory
FILEPATH=$(pwd)

# While FILEPATH is a directory loop
while [ -d "$FILEPATH" ]; do
    # List ".." and files in the FILEPATH directory in wofi
    # Set RESPONSE to what the user entered
    RESPONSE=$(echo -e "..\n`ls \"$FILEPATH\"`" | wofi -d -n -p "File Search")

    if [ "$RESPONSE" == ".." ]; then
        FILEPATH=$(dirname "$FILEPATH")
    # elif [[ "$RESPONSE" == *"mkdir"* ]]; then
    #     FOLDER = "$RESPONSE"
    #     notify-send $FOLDER
    elif [ -z "$RESPONSE" ]; then
        exit 12
    else
        FILEPATH="$FILEPATH/$RESPONSE"
    fi
done

if [[ $FILEPATH == *.mp4 ]]; then
    mpv $FILEPATH
elif [ -f "$FILEPATH" ]; then
    kitty sh -c "nvim $FILEPATH"
else
    exit 1
fi
