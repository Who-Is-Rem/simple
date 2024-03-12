#!/opt/homebrew/bin/bash

function rnd {
    files=$(ls -d $1[0-9])
    while read name; do
        ind=$(( ${#name} - 1 ))
        new_name="${name:0:$ind}0${name:$ind}"
        mv $name $new_name
    done < <(echo $files)
}

function rnf {
    files=$(ls $1[0-9])
    while read name; do
        ind=$(( ${#name} - 1 ))
        new_name="${name:0:$ind}0${name:$ind}"
        mv $name $new_name
    done < <(echo $files)
}
