#!/bin/sh
echo "Starting gunicorn..."
gunicorn -w 5 -b 127.0.0.1:9000 app:app --daemon
sleep 3
echo "Starting haproxy..."
haproxy -f "/etc/haproxy/haproxy.cfg" > /etc/haproxy/logs/haproxy.log 
