#! /bin/bash

#add no cron, exec a cada 30 min
#crontab -e
#*/30 * * * * file.sh


GIT_USER="USUARIO DO GITUB"
GIT_PASS="Senha do github"
GIT_REPO="NOmedorepositorio.git"
DIR="/home/xxxx/script/IP/"
FILE_NAME="/home/xxxx/script/IP/ip.txt"
cd $DIR
git pull https://$GIT_USER:$GIT_PASS@github.com/$GIT_USER/$GIT_REPO
sleep 10
rm $FILE_NAME
dig @resolver1.opendns.com ANY myip.opendns.com +short >> ip.txt
cd $DIR
git add .
git commit -m "Not a bot at all"
git push https://$GIT_USER:$GIT_PASS@github.com/$GIT_USER/$GIT_REPO master

