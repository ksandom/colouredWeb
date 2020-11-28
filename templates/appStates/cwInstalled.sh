#!/bin/bash
# Test whether colouredWeb is installed for this app.

# TODO Remove this line when this has been filled out.

export STATE_DIR="${STATE_DIR:-appState}"
if [ -e "$($STATE_DIR/cwCSSPath.sh)" ]; then
    exit 0
else
    exit 1
fi
