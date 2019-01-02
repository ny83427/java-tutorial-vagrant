#!/bin/bash
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo add-apt-repository ppa:webupd8team/java -y
# auto accept oracle license agreement
sudo echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get update

sudo apt-get install git sqlite3 -y
sudo apt-get install openjdk-8-jdk oracle-java8-installer oracle-java8-set-default -y

# set JAVA_HOME variable and link jdk8 to default location for tomcat7
sudo ln -s /usr/lib/jvm/java-8-oracle /usr/lib/jvm/default-java
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export PATH=$PATH:$JAVA_HOME/bin

# install tomcat7 components
sudo apt-get install tomcat7 tomcat7-docs tomcat7-admin tomcat7-examples -y

# start tomcat7
sudo service tomcat7 start