#!/bin/bash
# Test whether the app is installed.

if which kmail > /dev/null; then
    exit 0
else
    exit 1
fi
