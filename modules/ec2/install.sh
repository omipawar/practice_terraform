#!/bin/bash

sudo apt-get update
sudo apt-get install nginx -y

sudo systemctl start nginx
sudo systemctl enable nginx

sudo echo "<h1>Hello from ${environment} server</h1>" | sudo tee /var/www/html/index.html > /dev/null
