#!/usr/bin/env bash

if ! command -v heroku >/dev/null 2>&1; then
    wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
fi
