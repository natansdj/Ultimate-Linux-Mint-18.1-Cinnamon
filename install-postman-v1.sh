#!/bin/bash
set -e

rm /tmp/postman-latest-x64.tar.gz

wget https://dl.pstmn.io/download/latest/linux64 -O /tmp/postman-latest-x64.tar.gz

POSTMANDIR="/opt/Postman/"
if [ -d "$POSTMANDIR" ]; then
    sudo rm -rf $POSTMANDIR
fi


sudo tar -xzf /tmp/postman-latest-x64.tar.gz
sudo ln -s /opt/Postman/Postman /usr/local/bin/postman

rm /tmp/postman-latest-x64.tar.gz


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
