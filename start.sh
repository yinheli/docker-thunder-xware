#!/bin/bash
set -e

while true; do
    pid=`ps -ef|grep vod_httpserver|grep -v grep|awk '{print $2}'`
    if [ -z "$pid" ]; then
        ./bin/portal
    else
        sleep 60
    fi
done

