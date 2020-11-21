function formatOutput
{
    column -ts "$sep"
}


function displayAppHeadings
{
    echo "Name${sep}Description${sep}Path${sep}Installed${sep}cwInstalled${sep}State healthy?${sep}Include?"
    echo "---$col$col$col$col$col$col$col"
}

function displayAppDetails
{
    echo "${appName}${sep}${appDescription}${sep}${app}${sep}${appInstalled}${sep}${cwInstalled}${sep}${stateHealthy}${sep}${sanitisedShouldIncludeIfPresent}"
}

function indent
{
    sed 's/^/  /g'
}
