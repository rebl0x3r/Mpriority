#!/bin/bash

# SMTP Method 
# SMTP Mailer Method
# Private 
# Telegram : @f4c3r100

apt update -y
apt upgrade -y
apt install apache2 -y
systemctl start apache2.service
apt install -y php-{bcmath,bz2,intl,gd,mbstring,mcrypt,mysql,zip} libapache2-mod-phpy
systemctl enable apache2.service
systemctl restart apache2.service

read -p "Enter hostname(ex:supporter.mail.com): " mail

hostname $mail

apt install postfix -y
cd /var/www/html

wget https://github.com/rebl0x3r/Mpriority/blob/main/Mpriority.zip?raw=true -O priority.zip

sudo apt install unzip -y

unzip priority.zip

echo -e "\033[32m[*] \033[37mInstallation is done!"

