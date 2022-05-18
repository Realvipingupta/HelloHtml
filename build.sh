#! /bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo cp -r $(System.DefaultWorkingDirectory)/_Realvipingupta.HelloHtml /var/www/html/build
cd /var/www/html/build
unzip *.zip
npm install
npm run build
sudo service nginx restart
cd /var/www/html
sudo chmod -R 777 build