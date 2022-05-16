
#!/bin/bash

# install java 8
sudo apt-get install openjdk-8-jdk

# install nginx
sudo apt-get -y install nginx

# add elastic repo
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee –a /etc/apt/sources.list.d/elastic-7.x.list

# install elasticsearch
sudo apt-get update
sudo apt-get install elasticsearch

# install kibana
sudo apt-get install kibana
