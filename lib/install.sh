defaultStyleSheet="sheets/black1-ffffff.css"

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

function install_placeFile
{
    local destination="$1"
    local styleSheet="$(figureOutStyleSheet "$2")"
    local dirOnly="$(dirname "$destination")"
    local infoFile="$dirOnly/colouredWeb.info"
    
    # We only want to completely replace a file if it was original ours. Otherwise we should back it up.
    if [ -e "$infoFile" ]; then
        . "$infoFile"
    else
        if [ -d "$dirOnly" ]; then
            dirAlreadyExists="true"
        else
            dirAlreadyExists="false"
        fi
        
        if [ -e "$destination" ]; then
            fileAlreadyExists="true"
            cp "$destination" "${destination}.original"
        else
            fileAlreadyExists="false"
        fi
        
        # Write the info file.
        mkdir -p "$dirOnly"
        {
            echo "dirAlreadyExists=\"$dirAlreadyExists\""
            echo "fileAlreadyExists=\"$fileAlreadyExists\""
        } > "$infoFile"
    fi
    
    cp "$styleSheet" "$destination"
}

function uninstall_placeFile
{
    local destination="$1"
    local dirOnly="$(dirname "$destination")"
    local infoFile="$dirOnly/colouredWeb.info"

    if [ -e "$infoFile" ]; then
        . "$infoFile"
        
        # Remove the file that we placed.
        rm -f "$destination"
        
        # Restore the original file if applicable.
        if [ -e "${destination}.original" ]; then
            mv "${destination}.original" "$destination"
        fi
        
        # Remove info file.
        rm "$infoFile"
        
        # Remove the directory if applicable.
        if [ "$(ls "$dirOnly" | wc -l)" == "0" ]; then
            rmdir "$dirOnly"
        else
            echo "There is still something in \"$dirOnly\". Therefore leaving the directory in place."
        fi
    else
        echo "No uninstallation necessary in "$dirOnly""
    fi

}
