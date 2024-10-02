#!/bin/bash

sudo chown -R tulece:tulece /home/anporced/data/wordpress
sudo chown -R tulece:tulece /home/anporced/data/nginx
sudo chown -R tulece:tulece /home/anporced/data/mariadb
sudo chown -R tulece:tulece /home/anporced/data/redis
sudo chown -R tulece:tulece /home/anporced/data/ftp
sudo chown -R tulece:tulece /home/anporced/data/adminer
sudo chown -R tulece:tulece /home/anporced/data/static

sudo chmod -R 755 /home/anporced/data/wordpress
sudo chmod -R 755 /home/anporced/data/nginx
sudo chmod -R 755 /home/anporced/data/mariadb
sudo chmod -R 755 /home/anporced/data/redis
sudo chmod -R 755 /home/anporced/data/ftp
sudo chmod -R 755 /home/anporced/data/adminer
sudo chmod -R 755 /home/anporced/data/static
