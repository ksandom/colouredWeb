function formatOutput
{
    column -ts "$sep"
}


function displayAppHeadings
{
    echo "Name${sep}Description${sep}Path${sep}Installed${sep}cwInstalled${sep}State healthy?${sep}Include?${sep}Needs root?"
    echo "---$col$col$col$col$col$col$col$col"
}

function displayAppDetails
{
    echo "${appName}${sep}${appDescription}${sep}${app}${sep}${appInstalled}${sep}${cwInstalled}${sep}${stateHealthy}${sep}${sanitisedShouldIncludeIfPresent}${sep}${needsRoot}"
}

function indent
{
    sed 's/^/  /g'
}
