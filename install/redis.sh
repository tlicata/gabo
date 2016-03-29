#!/usr/bin/env bash

if ! command -v redis-server >/dev/null 2>&1; then
    cd /opt/
    wget http://download.redis.io/redis-stable.tar.gz
    tar xvzf redis-stable.tar.gz
    cd redis-stable
    make
    make install
    cd -
else
    echo "redis already installed"
fi
