# IPTV_playlists_functions.sh

user_agent="Dalvik/2.1.0 (Linux; U; Android 10; KevinNitroG/Entertainment-Github_Action)"
real_user_agent="Dalvik/2.1.0 (Linux; U; Android 10; Redmi K20 Build/SKQ1.211001.060)"
function vthanhtivi() {
    wget "http://playlist.vthanhtivi.pw/" -U "$user_agent" -O ./playlists/vthanhtivi.m3u
}

function iptv_khangg() {
    wget "https://tivi.khanggtivi.xyz/" -U "$user_agent" -O ./playlists/iptvkhangg.m3u
    # sed -i '1d' ./playlists/iptvkhangg.m3u
    # sed -i '$d' ./playlists/iptvkhangg.m3u
}

function phimmoi() {
    # Xin lỗi vì delete đi Zalo link mong owner thông cảm. Nếu có ý kiến hãy create Issues ạ.
    wget "https://hqth.me/Xjjeq" -U "$user_agent" -O ./playlists/phimmoi.m3u
    sed -i "s/  - Hân hạnh mời các bạn tham gia nhóm Zalo : https:\/\/zalo.me\/g\/higkqn442//g" ./playlists/phimmoi.m3u
    sed -i "s/ - Mời bạn tham gia nhóm Zalo : https:\/\/zalo.me\/g\/higkqn442//g" ./playlists/phimmoi.m3u
}

function phimiptv() {
    curl --compressed -A "$real_user_agent" "http://iptv.pro.vn/phimiptv/" -o ./playlists/PhimIPTV.m3u
}

function sn() {
    wget "http://gg.gg/sn-thapcam" -U "$user_agent" -O ./playlists/sn-thapcam.m3u
    wget "http://gg.gg/sn-90phut" -U "$user_agent" -O ./playlists/sn-90phut.m3u
    wget "http://gg.gg/sn-cakhia" -U "$user_agent" -O ./playlists/sn-cakhia.m3u
    wget "http://gg.gg/sn-saoke" -U "$user_agent" -O ./playlists/sn-saoke.m3u
    wget "http://gg.gg/sn-thethao" -U "$user_agent" -O ./playlists/sn-thethao.m3u
}

function coocaa() {
    wget "https://dl.dropboxusercontent.com/s/fhon6tzc3e20tis/%C3%A2%C2%AD%C3%AF%C2%BF%C2%BD%C3%83%C2%82%C3%AF%C2%BF%C2%BD%C3%83%C2%84" -U "$user_agent" -O ./playlists/coocaa.m3u
}

function phaptx5() {
    wget "http://phaptx5.x10.mx:80/phapferrariVIP2.php" -U "OTT Navigator/1.6.9.2 (Linux; Android 10; en; 172kbeq)" -O ./playlists/phaptx5.m3u
}

function 90p-atv() {
    wget "http://hoaivnpt.duckdns.org/live-football/live-football.php" -U "$user_agent" -O ./playlists/90p-atv.m3u
}

function calemtv() {
    wget "https://calemtv.000webhostapp.com/cltv.txt" -O ./playlists/calemtv.m3u
}
