# library
 
Database configuration

sudo apt-get install mysql-server 
sudo service mysql start 
sudo mysql -u root 
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Asdf@1234'; 
FLUSH PRIVILEGES;
EXIT;

sudo mysql_secure_installation

Find the line that reads bind-address = 127.0.0.1 and change it to the private IP address of your EC2 instance. Save and close the file. 
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf

sudo systemctl restart mysql

sudo mysql -u root -p 
CREATE USER 'admn'@'%' IDENTIFIED BY 'Asdf@1234';

GRANT ALL PRIVILEGES ON * . * TO 'admn'@'%';

FLUSH PRIVILEGES;

sudo apt-get install phpmyadmin

sudo vim /etc/phpmyadmin/config.inc.php

change the $cfg['Servers'][$i]['host'] = 'localhost'; to your private or local IP address of the server

sudo service apache2 restart

sudo apt install php libapache2-mod-php php-mysql

git configuration
cd /var/www/

git clone https://github.com/Amishkaz/library.git

sudo git config credential.helper store

sudo git config --global credential.helper store
 
git pull



change default path apache
open

sudo vim /etc/apache2/apache2.conf

<Directory /var/www/>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
</Directory>

then open 

sudo vim /etc/apache2/sites-available/000-default.conf

DocumentRoot /var/www/html
change to
DocumentRoot /var/www/library

sudo systemctl restart apache2
