#!/bin/bash
# Test whether the app is installed.

export STATE_DIR="${STATE_DIR:-appState}"
if [ -e ~/Documents ]; then
    exit 0
else
    exit 1
fi
