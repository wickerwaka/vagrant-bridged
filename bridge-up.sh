#! /bin/sh

ifconfig eth1 0.0.0.0
ifconfig eth2 0.0.0.0

brctl addbr br-middle
brctl addif br-middle eth1
brctl addif br-middle eth2

ifconfig br-middle 192.168.10.20 netmask 255.255.255.0

