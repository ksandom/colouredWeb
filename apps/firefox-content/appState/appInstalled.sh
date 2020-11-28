#!/bin/bash
# Test whether the app is installed.

export STATE_DIR="${STATE_DIR:-appState}"
if which firefox > /dev/null; then
    exit 0
else
    exit 1
fi
