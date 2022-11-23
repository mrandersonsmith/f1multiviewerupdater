#! /bin/bash

cd ${HOME}
curl 'https://api.f1mv.com/api/v1/releases/latest' --compressed --output ${HOME}/f1html.txt

url=$(grep -o -E 'https?://[^"]+' ${HOME}/f1html.txt | grep linux | head -1)


wget -O f1viewer.zip $url
unzip -o f1viewer.zip -d ${HOME}
rm ${HOME}/f1viewer.zip
rm ${HOME}/f1html.txt


