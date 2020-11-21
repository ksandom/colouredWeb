
function listStateProblems
{
    local app="$1"
    
    for state in "$app/appState"/* $app/Makefile $app/README.source.md; do
        if [ -e "$state" ]; then
            if grep -q '# TODO Remove this line when this has been filled out.' "$state"; then
                echo "$state is incomplete."
            fi
        else
            echo "$state is missing."
        fi
    done
}
