#! /bin/bash

# Don't forget: brew install zbar pngpaste
# Highlight QR-code on screen using "Shift + Control + Command + 4"

FILENAME="$TMPDIR$RANDOM.png"   # Generates a file name
pngpaste "$FILENAME"            # Paste screenshot into file
zbarimg -q --raw "$FILENAME"    # Will try to decode QR-code
rm -rf "$FILENAME"              # Removing file for security