defaultStyleSheet="sheets/cwBlackBlack-ffffff.css"

function figureOutStyleSheet
{
    local styleSheet="$1"
    
    if [ "$styleSheet" == '' ]; then
        echo "$defaultStyleSheet"
    else
        echo "$styleSheet"
    fi
}

function install_appendToFile
{
    local destination="$1"
    local styleSheet="$(figureOutStyleSheet "$2")"
    local backup="${destination}.original"
    
    # TODO Are we better to silently append to nothing, with the assumption that some applications will silently load or not load a file depending on whether it exists, therefore it may not exist to begin with? Or are we better to assume that it should exist, and create other scaffolding for the first usecase. My current thining is the former.
    touch "$destination"
    if [ ! -e "$backup" ]; then
        echo "Backing up the original."
        cp "$destination" "$backup"
    fi
    
    echo "Appending $styleSheet to $destination."
    {
        cat "$backup"
        cat "$styleSheet"
    } > $destination
}

function uninstall_appendToFile
{
    local destination="$1"
    local styleSheet="$(figureOutStyleSheet "$2")"
    local backup="${destination}.original"
    
    if [ -e "$backup" ]; then
        cp "$backup" "$destination"
        rm "$backup"
    fi
}
