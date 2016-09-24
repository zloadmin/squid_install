#!/bin/bash
apt-get update
apt-get install -y squid
mv /etc/squid/squid.conf
curl https://raw.githubusercontent.com/zloadmin/squid_install/master/squid.conf > /etc/squid/squid.conf
update-rc.d squid defaults
service squid start