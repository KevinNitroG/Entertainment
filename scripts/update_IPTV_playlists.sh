#!/bin/bash

source ./scripts/IPTV_playlists_functions.sh

function echo_sep() {
    echo
    if [[ -z $1 ]]; then
        devider="-"
    else
        devider=$1
    fi
    for ((i = 0; i < devider_length; i++)); do
        echo -n "$devider"
    done
    echo -e "\n"
}

rm -rf playlists
mkdir playlists

devider_length=30
functions=("vthanhtivi" "phimmoi" "phimiptv" "coocaa" "phaptx5" "90p-atv" "calemtv")
current_folder_size=0

echo "UPDATE FOR: ${#functions[@]} playlist(s)"
echo "${functions[@]}"
echo

for func in "${functions[@]}"; do
    padding=$(((devider_length - ${#func}) / 2))
    echo_sep
    printf "%-${padding}s%s%-${padding}s\n" "" "$func" ""
    echo_sep
    "$func"
    if [[ "$current_folder_size" -eq "$(du -s | cut -f1)" ]]; then
        echo_sep
        echo "RETRY o_O: $func"
        echo_sep
        "$func"
    fi
    current_folder_size=$(du -s | cut -f1)
done
