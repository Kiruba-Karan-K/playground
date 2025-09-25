#!/usr/bin/env bash

DESTFILE="/tmp/$(hostname)_$(date +"%d-%m-%y").txt"

touch $DESTFILE

{
date;
uname -n;
uptime;
uname -a; 
ip r|grep src;
ifconfig -a;
ip r;
ip a;
route -n ;
route -n |wc -l ;
df -hTP ;
df -h |wc -l ;
cat /etc/passwd;
cat /etc/passwd | wc -l;
cat /etc/fstab; 
cat /etc/fstab |wc -l ;
uptime ;
vgs ;
lvs ;
lvs |wc -l ;
pvs;
lsblk;
arp -n; 
cat /etc/*release ;
uname -a ;
free -g ;
chronyc -n sources -v;
cat /etc/hosts;
cat /etc/resolv.conf;
netstat -tlnup|grep -i listen;
ss -tlnup|grep -i listen;
iptables -L;
openssl --version;
} >> $DESTFILE

exit 0
