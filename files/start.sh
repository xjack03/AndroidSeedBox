#!/system/bin/sh
ls /opt >/dev/null 2>&1 || su -c /data/opt/optware-init.sh
export PATH=/data/opt/sbin:/data/opt/bin:/data/opt/rootbin:/data/opt/local/bin:/system/bin
if busybox test $(busybox id -u) = 0; then HOME=/data/opt/home/root; else HOME=/data/opt/home/user; fi
export HOME
#/data/opt/bin/bash

/data/opt/etc/init.d/S90transmission-daemon

