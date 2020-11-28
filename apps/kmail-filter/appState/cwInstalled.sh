#!/bin/bash
# Test whether colouredWeb is installed for this app.

export STATE_DIR="${STATE_DIR:-appState}"
if [ -e "$($STATE_DIR/cwCSSPath.sh)" ]; then
    exit 0
else
    exit 1
fi
