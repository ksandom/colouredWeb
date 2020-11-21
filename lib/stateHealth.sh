
function listStateProblems
{
    local app="$1"
    
    failure=0
    
    for state in "$app/appState"/* $app/Makefile $app/README.source.md; do
        if [ -e "$state" ]; then
            if grep -q '# TODO Remove this line when this has been filled out.' "$state"; then
                echo "$state is incomplete."
                failure=1
            fi
        else
            echo "$state is missing."
            failure=1
        fi
    done
    
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
