#!/bin/bash

clear

base64 -d <<<"CiBfXyAgICAgIF9fICAgICAgX19fLiAgICAgICBfX19fX19fXyAgICAgICAgX18gICAgX18gICAg
ICAgICAgICAgICAgCi8gIFwgICAgLyAgXCBfX19fXF8gfF9fICAgIC8gIF9fX19fLyAgX19fX18v
ICB8X18vICB8XyAgX19fX19fX19fX18gClwgICBcL1wvICAgLy8gX18gXHwgX18gXCAgLyAgIFwg
IF9fX18vIF9fIFwgICBfX1wgICBfX1wvIF9fIFxfICBfXyBcCiBcICAgICAgICAvXCAgX19fL3wg
XF9cIFwgXCAgICBcX1wgIFwgIF9fXy98ICB8ICB8ICB8IFwgIF9fXy98ICB8IFwvCiAgXF9fL1wg
IC8gIFxfX18gID5fX18gIC8gIFxfX19fX18gIC9cX19fICA+X198ICB8X198ICBcX19fICA+X198
ICAgCiAgICAgICBcLyAgICAgICBcLyAgICBcLyAgICAgICAgICBcLyAgICAgXC8gICAgICAgICAg
ICAgICAgXC8gICAgICAgCg=="

sleep 1

echo -e "\033[91mWelcome To Web Getter Tool\033[0m"

sleep 1

echo -e "\033[92mAll rights reseved to: Egypt-Open-Source @github\033[0m"

sleep 1

echo -e "\033[93mCreated By MRX7014 @github\033[0m"

sleep 1

echo -e "\033[1;36m
		  
1] Get basic Website Source
[*] HTML,CSS,JavaScript

2] Get All Website Source              
[*] Include All Website Files (HTML,CSS,JS,Audios,Videos,etc...)
"
echo -e "\033[33m"
echo -e "\033[92m[*] Note:Add Website Link with "http/https" And Add Github Pages Links Without 'www'\033[0m"

read -p "Choose : " user

                 
if [ $user == 1 ]
              
then
    echo ""

    echo -e "\033[93m[*] Remember The Note Before Enter The Website Link\033[0m"

    sleep 2

read -p "Enter Website Link: " website_link

sleep 1

echo ""

echo -e "\033[94mWebiste Will Downloading Now\033[0m"

sleep 2

wget -p -k $website_link > /dev/null 2>&1

echo ""

sleep 2

echo -e "\033[34mWebsite Source Saved At Folder Named As Website Name\033[0m"

echo "" 

echo -e "\033[92mThanks For Using Our Tool <3"

elif [ $user == 2 ]

then

echo ""

echo -e "\033[92m[*] Remember The Note Before Enter The Website Link\033[0m"

    sleep 2
    
read -p "Enter Website Link: " website_link

sleep 1

echo ""

echo -e "\033[94mWebsite Will Downloading Now\033[0m"

sleep 2

wget -mk $website_link > /dev/null 2>&1

echo ""

sleep 2

echo -e "\033[94mWebsite Source Saved At Folder Named As Website Name\033[94m"

echo ""

echo -e "\033[92mThanks For Using Our Tool <3"
fi
