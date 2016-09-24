#!/bin/bash
apt-get update
apt-get install -y squid
apt-get install -y curl
rm /etc/squid/squid.conf
curl https://raw.githubusercontent.com/zloadmin/squid_install/master/squid.conf > /etc/squid/squid.conf
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
update-rc.d squid defaults
service squid start