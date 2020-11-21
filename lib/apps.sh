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
    display_appHeadings
    for app in $(getApps); do
        getAppDetails
        display_appDetails
    done
}

function listApps
{
    doListApps | formatOutput
}

function formatOutput
{
    column -ts "$sep"
}


function display_appHeadings
{
    echo "Name${sep}Description${sep}Path${sep}Installed${sep}cwInstalled${sep}Include?"
    echo "---$col$col$col$col$col$col"
}

function display_appDetails
{
    echo "${appName}${sep}${appDescription}${sep}${app}${sep}${appInstalled}${sep}${cwInstalled}${sep}${sanitisedShouldIncludeIfPresent}"
}
