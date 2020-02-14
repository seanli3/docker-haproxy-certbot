#!/bin/sh

cfg_file=$1

cd /config

if [ -z "$1" ]; then
    cfg_file="haproxy.cfg"
    echo "No argument supplied, using" ${cfg_file}
    echo "To check another config from host, put your test.cfg in the same directory as haproxy.cfg and use \"docker exec container_name haproxy-check test.cfg\""
fi

/usr/local/sbin/haproxy -c -V -f "${cfg_file}"
