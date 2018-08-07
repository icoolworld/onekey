#!/bin/bash

cd /data/webserver/all/

case $1 in

start)
docker-compose up -d
;;

stop)
docker-compose down
;;

restart)
docker-compose down
docker-compose up -d
;;

*)
echo "need param start|stop|restart"
;;

esac
