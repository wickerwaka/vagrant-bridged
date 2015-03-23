#! /bin/sh

cat <<EOF >> /etc/hosts
# Added by add-hosts.sh
192.168.10.10 left
192.168.10.20 middle
192.168.10.30 right
EOF

