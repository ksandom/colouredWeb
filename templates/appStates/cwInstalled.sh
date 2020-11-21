#!/bin/bash
# Test whether colouredWeb is installed for this app.

# TODO Remove this line when this has been filled out.

export STATE_DIR="${STATE_DIR:-appState}"
if [ -e /var/lib/exampleApp/cw.css ]; then
    exit 0
else
    exit 1
fi
