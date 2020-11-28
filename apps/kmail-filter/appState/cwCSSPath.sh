#!/bin/bash
# Return the location of the stylesheet.

# TODO This can be refactored to have common config with the installation to avoid human error.
export STATE_DIR="${STATE_DIR:-appState}"
echo "/var/lib/kmailMessageDarkMode/custom.css"
