#!/bin/bash
sudo apt update -y
sudo apt install default-jdk -y
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.108/bin/apache-tomcat-9.0.108.tar.gz
sudo tar -xvzf apache-tomcat-9.0.108.tar.gz
sudo mv apache-tomcat-9.0.108 tomcat
sudo chmod +x tomcat/bin/*.sh
sudo tomcat/bin/startup.sh