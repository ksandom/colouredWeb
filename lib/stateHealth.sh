
function listStateProblems
{
    local app="$1"
    
    failure=0
    
    for state in "$app/appState"/* $app/Makefile $app/README.source.md $app/bin/*; do
        if [ -e "$state" ]; then
            if [ ! -d "$state" ]; then
                if grep -q '..TODO Remove this line when this has been filled out.' "$state"; then
                    echo "$state is incomplete."
                    failure=1
                fi
            fi
        else
            echo "$state is missing."
            failure=1
        fi
    done
    
    if [ ! -e "$app/README.md" ] || [ ! -e "$app/sheets" ] || [ ! -e "$app/previews" ]; then
        echo "./bin/build has not been run."
        failure=1
    fi
    
    return "$failure"
}

function testState
{
    local app="$1"
    
    result="$(listStateProblems "$app")"
    
    if [ "$?" == "0" ]; then
        return 0
    else
        echo "$app"
        echo "$result" | indent
        return 1
    fi
}

function stateIsHealthy
{
    local app="$1"
    
    result="$(listStateProblems "$app")"
    return $?
}
