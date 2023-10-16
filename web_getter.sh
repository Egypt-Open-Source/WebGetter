#!/usr/bin/env bash

base64 -d <<<"CiBfXyAgICAgIF9fICAgICAgX19fLiAgICAgICBfX19fX19fXyAgICAgICAgX18gICAgX18gICAg
ICAgICAgICAgICAgCi8gIFwgICAgLyAgXCBfX19fXF8gfF9fICAgIC8gIF9fX19fLyAgX19fX18v
ICB8X18vICB8XyAgX19fX19fX19fX18gClwgICBcL1wvICAgLy8gX18gXHwgX18gXCAgLyAgIFwg
IF9fX18vIF9fIFwgICBfX1wgICBfX1wvIF9fIFxfICBfXyBcCiBcICAgICAgICAvXCAgX19fL3wg
XF9cIFwgXCAgICBcX1wgIFwgIF9fXy98ICB8ICB8ICB8IFwgIF9fXy98ICB8IFwvCiAgXF9fL1wg
IC8gIFxfX18gID5fX18gIC8gIFxfX19fX18gIC9cX19fICA+X198ICB8X198ICBcX19fICA+X198
ICAgCiAgICAgICBcLyAgICAgICBcLyAgICBcLyAgICAgICAgICBcLyAgICAgXC8gICAgICAgICAg
ICAgICAgXC8gICAgICAgCg=="

while true; do
    echo -e "\033[91mWelcome To Web Getter Tool\033[0m"
    echo -e "\033[92mAll rights reserved to: Egypt-Open-Source @github\033[0m"
    sleep 1

    echo -e "\033[1;36m
    1] Get basic Website Source
    2] Get All Website Source (include: Videos, Audios, etc...)
    "

    echo -e "\033[33m"
    read -p "Choose: " user

    case $user in
        1)
            echo ""
            echo -e "\033[1;31mAdd Website Link\033[0m"
            read -p "Enter Website Link (Note: Add Website with http/https And Add Github Pages Only Without 'www': " website_link
            sleep 1
            echo ""
            echo -e "\033[94mWebsite Will Download Now\033[0m"
            wget -p -k -P "$(basename "$website_link")" -nc -nd -r -A html "$website_link"
            echo ""
            echo -e "\033[34mWebsite Source Saved At Folder Named $website_link\033[0m"
            exit 0
            ;;
        2)
            echo ""
            echo -e "\033[1;31mAdd Website Link\033[0m"
            sleep 1
            read -p "Enter Website Link (Note: Add Website with http/https And Add Github Pages Only Without 'www': " website_link
            echo ""
            echo -e "\033[94mWebsite Will Download Now\033[0m"
            wget -m -k -P "$(basename "$website_link")" -nc -nd -r "$website_link"
            echo ""
            echo -e "\033[34mWebsite Source Saved At Folder Named $website_link\033[0m"
            exit 0
            ;;
        *)
            echo -e "\033[31mInvalid option. Please choose 1 or 2.\033[0m"
            sleep 1
            continue
            ;;
    esac
done
