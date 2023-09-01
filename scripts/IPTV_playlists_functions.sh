# IPTV_playlists_functions.sh

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
    wget -U "Dalvik/2.1.O (Linux; U; Android 10; Device)" http://gg.gg/sn-thapcam -o ./playlists/sn-thapcam.m3u
    wget -U "Dalvik/2.1.O (Linux; U; Android 10; Device)" http://gg.gg/sn-90phut -o ./playlists/sn-90phut.m3u
    wget -U "Dalvik/2.1.O (Linux; U; Android 10; Device)" http://gg.gg/sn-cakhia -o ./playlists/sn-cakhia.m3u
    wget -U "Dalvik/2.1.O (Linux; U; Android 10; Device)" http://gg.gg/sn-saoke -o ./playlists/sn-saoke.m3u
    wget -U "Dalvik/2.1.O (Linux; U; Android 10; Device)" http://gg.gg/sn-thethao -o ./playlists/sn-thethao.m3u
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
