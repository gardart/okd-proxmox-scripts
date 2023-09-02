#!/bin/bash

#IP_BOOTSTRAP=192.168.0.89
#IP_MASTER0=192.168.0.90
#IP_MASTER1=192.168.0.91
#IP_MASTER2=192.168.0.92

IP_BOOTSTRAP=10.0.99.9
IP_MASTER0=10.0.99.10
IP_MASTER1=10.0.99.11
IP_MASTER2=10.0.99.12

cp extras/haproxy.cfg.ORIG extras/haproxy.cfg

sed -Ezi "s/IP_BOOTSTRAP/$IP_BOOTSTRAP/g" extras/haproxy.cfg
sed -Ezi "s/IP_MASTER0/$IP_MASTER0/g" extras/haproxy.cfg
sed -Ezi "s/IP_MASTER1/$IP_MASTER1/g" extras/haproxy.cfg
sed -Ezi "s/IP_MASTER2/$IP_MASTER2/g" extras/haproxy.cfg

./scripts/create-haproxy.sh
