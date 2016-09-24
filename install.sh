#!/bin/bash
apt-get update
apt-get install -y squid
apt-get install -y curl
rm /etc/squid/squid.conf
curl https://raw.githubusercontent.com/zloadmin/squid_install/master/squid.conf > /etc/squid/squid.conf
update-rc.d squid defaults
service squid start