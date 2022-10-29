#! /bin/bash

cd ${HOME}
wget -O ${HOME}/f1html.txt https://beta.f1mv.com/
url=$(grep -o -E 'https?://[^"]+' ${HOME}/f1html.txt | grep linux)

wget -O f1viewer.zip $url
unzip -o f1viewer.zip -d ${HOME}
rm ${HOME}/f1viewer.zip
rm ${HOME}/f1html.txt

