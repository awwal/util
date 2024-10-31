#!/bin/bash

# Use the first argument as the directory, or exit if not provided
DIRECTORY="$1"

if [ -z "$DIRECTORY" ]; then
    echo "Usage: $0 /path/to/directory"
    exit 1
fi

# Check if the provided directory exists
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory '$DIRECTORY' does not exist."
    exit 1
fi

# Trap SIGINT (Ctrl + C) to allow quick exit
trap "echo 'Exiting...'; exit" SIGINT

# Infinite loop to play each file in the directory
while true; do
    for file in "$DIRECTORY"/*.mp3; do
        [ -e "$file" ] || continue  # Skip if no mp3 files are found
        omxplayer "$file" || break  # Stop if omxplayer fails or Ctrl+C is pressed
    done
done
