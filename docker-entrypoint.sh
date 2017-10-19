#!/bin/sh
# -*- coding: utf-8 -*-

set -e #スクリプトエラーで停止

if [ -z "$SERVER" ];then
    echo "Need to SERVER variable." 1>&2
    exit 1
else
    echo "Tunnel to 8022 -> $SERVER:22 & 8080 -> $SERVER:3128"
fi

/home/node/node_modules/.bin/wstunnel -s 0.0.0.0:8080 -t $SERVER:3128 &
/home/node/node_modules/.bin/wstunnel -s 0.0.0.0:8022 -t $SERVER:22
