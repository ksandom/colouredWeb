export STATE_DIR="${STATE_DIR:-appState}"

dirName="appState"
separator="	"
sep="$separator"
col="---${sep}"

function getApps
{
    echo apps/*
}

function getAppDetails
{
    cd "$app"
    
    . "$STATE_DIR"/config.sh
    
    if "$STATE_DIR"/appInstalled.sh; then
        appInstalled="true"
    else
        appInstalled="false"
    fi

    if "$STATE_DIR"/cwInstalled.sh; then
        cwInstalled="true"
    else
        cwInstalled="false"
    fi
    
    if [ "$shouldIncludeIfPresent" == 'true' ]; then
        sanitisedShouldIncludeIfPresent="true"
    else
        sanitisedShouldIncludeIfPresent="false"
    fi
    cd ..
}

function doListApps
{
    displayAppHeadings
    for app in $(getApps); do
        getAppDetails
        displayAppDetails
    done
}

function listApps
{
    doListApps | formatOutput
}
