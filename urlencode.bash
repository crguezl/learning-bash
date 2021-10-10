#set -x

urlencode() {
    # urlencode <string>

    old_lc_collate=$LC_COLLATE
    LC_COLLATE=C

    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:$i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf '%s' "$c" ;;
            *) printf '%%%02X' "'$c" ;;
        esac
    done

    LC_COLLATE=$old_lc_collate
}

urlencode2() {
    # urlencode <string>

    local LANG=C
    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            *) printf '%%%02X' "'$c" ;; 
        esac
    done
}

urldecode() {
    # urldecode <string>

    local url_encoded="${1//+/ }"
    printf '%b' "${url_encoded//%/\\x}"
}

a=$(urlencode "a e")
echo $a

a=$(urlencode "a e;")
echo $a

a=$(urlencode "a e; áé")
echo $a


echo "decode"
b=$(urldecode $a)
echo $b

echo "version 2"
a=$(urlencode2 "a e; áé")
echo $a

echo "decode"
urldecode $a

a=$(urlencode "你好世界")
echo $a

 urldecode 'foo%20%20%20%20%20bar'