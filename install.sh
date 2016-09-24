#!/bin/bash
echo 'Update packeges'
apt-get update
echo 'Setting variables'
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
echo 'Install squid'
apt-get install -y squid
echo 'Install curl'
apt-get install -y curl
echo 'Add new config'
curl https://raw.githubusercontent.com/zloadmin/squid_install/master/squid.conf > /etc/squid/squid.conf
echo 'Add squid to autoload'
update-rc.d squid defaults
echo 'Start squid'
service squid start
sleep 1
echo 'REStart squid'
service squid restart