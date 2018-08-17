#!/bin/bash

echo "start deploy docker-registry"

cd /data/webserver/gitlab/

# ssl certs for gitlab,use self-signed certificate

host='gitlab.17173.com'

mkdir -p conf/certs && cd conf/
openssl req -newkey rsa:4096 -nodes -sha256 -days 3650 -keyout certs/$host.key -x509 -out certs/$host.crt -subj "/C=CN/ST=Beijing/L=Beijing/O=website Inc./OU=Web Security/CN=$host"
cd ../

