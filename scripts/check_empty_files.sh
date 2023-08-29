#!/bin/bash

cd ./playlists
empty_files=()

for file in *.m3u; do
    if [ ! -s "$file" ]; then
        echo -e "$file\t\t: Empty!!!"
        empty_files+=("$file")
        check_exit=true
        rm "$file"
    else
        echo -e "$file\t\t: Not empty"
    fi
done

echo
echo "------"
echo

if [[ -v check_exit ]]; then
    echo "It's possible to have one or more empty files!!!"
    echo "${empty_files[@]}"
    exit 1
else
    echo "All files are not empty ^^"
fi
