#!bin/bash
cd $PWD

files=$(ls $1[0-9])
for name in $files; do 
    if [[ "$name" == *[0-9] ]]; then 
        ind=${#name}-1
        new_name="${name:0:ind}0${name:ind}"
        mv $name $new_name
    fi
done
