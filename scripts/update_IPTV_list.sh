#!/bin/bash

function vthanhtivi() {
    wget http://playlist.vthanhtivi.pw/ -O ./playlists/vthanhtivi.m3u
}

function iptv_khangg() {
    wget https://github.com/Khanggne/Iptvkhangg/raw/Khanggtivi/index.html -O ./playlists/iptvkhangg.m3u
    sed -i '1d' ./playlists/iptvkhangg.m3u
    sed -i '$d' ./playlists/iptvkhangg.m3u
}

function phimmoi() {
    wget https://hqth.me/Xjjeq -O ./playlists/phimmoi.m3u
    sed -i "s/  - Hân hạnh mời các bạn tham gia nhóm Zalo : https:\/\/zalo.me\/g\/higkqn442//g" ./playlists/phimmoi.m3u
    sed -i "s/ - Mời bạn tham gia nhóm Zalo : https:\/\/zalo.me\/g\/higkqn442//g" ./playlists/phimmoi.m3u
}

function phimiptv() {
    curl --compressed -A "Dalvik/2.1.O (Linux; U; Android 10; Device)" http://iptv.pro.vn/phimiptv/ -o ./playlists/PhimIPTV.m3u
}

function sn() {
    wget http://gg.gg/sn-thapcam -O ./playlists/sn-thapcam.m3u
    wget http://gg.gg/sn-90phut -O ./playlists/sn-90phut.m3u
    wget http://gg.gg/sn-cakhia -O ./playlists/sn-cakhia.m3u
    wget http://gg.gg/sn-saoke -O ./playlists/sn-saoke.m3u
    wget http://gg.gg/sn-thethao -O ./playlists/sn-thethao.m3u
}

function coocaa() {
    wget "https://dl.dropboxusercontent.com/s/fhon6tzc3e20tis/%C3%A2%C2%AD%C3%AF%C2%BF%C2%BD%C3%83%C2%82%C3%AF%C2%BF%C2%BD%C3%83%C2%84" -O ./playlists/coocaa.m3u
}

function phaptx5() {
    wget -U "OTT Navigator/1.6.9.2 (Linux; Android 10; en; 172kbeq)" "http://phaptx5.x10.mx:80/phapferrariVIP2.php" -O ./playlists/phaptx5.m3u
}

function 90p-atv() {
    wget http://hoaivnpt.duckdns.org/live-football/live-football.php -O ./playlists/90p-atv.m3u
}

function echo_sep() {
    echo
    if [[ -z $1 ]]; then
        devider="-"
    else
        devider=$1
    fi
    for ((i = 0; i < devider_length; i++)); do
        echo -n $devider
    done
    echo -e "\n"
}

rm -rf playlists
mkdir playlists

devider_length=30
functions=("vthanhtivi" "iptv_khangg" "phimmoi" "phimiptv" "sn" "coocaa" "phaptx5" "90p-atv")
current_folder_size=0

echo "UPDATE FOR: ${#functions[@]} playlist(s)"
echo "${functions[@]}"
echo

for func in "${functions[@]}"; do
    padding=$((($devider_length - ${#func}) / 2))
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
