#!/bin/bash
# Test whether the app is installed.

# TODO Remove this line when this has been filled out.

export STATE_DIR="${STATE_DIR:-appState}"
if which exampleAppName > /dev/null; then
    exit 0
else
    exit 1
fi
