#! /bin/bash

#add no cron, exec a cada 30 min
#crontab -e
#*/30 * * * * file.sh


GITUSER="USUARIO DO GITUB"
GITPASS="Senha do github"
GITREPO="NOmedorepositorio.git"
DIR="/home/xxxx/script/IP/"
FILENAME="/home/xxxx/script/IP/ip.txt"
cd $DIR
git pull https://$GITUSER:$GITPASS@github.com/$GITUSER/$GITREPO
sleep 10
rm $FILENAME
dig @resolver1.opendns.com ANY myip.opendns.com +short >> ip.txt
cd $DIR
git add .
git commit -m "Not a bot at all"
git push https://$GITUSER:$GITPASS@github.com/$GITUSER/$GITREPO master

