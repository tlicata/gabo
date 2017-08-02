#!/usr/bin/env bash

# Salesforce CLI

FORCE_COMMENT="### Added by Gabo for Force path"
FORCE_DIR=/opt/salesforce
BASHRC=/home/ubuntu/.bashrc

if ! grep "$FORCE_COMMENT" $BASHRC > /dev/null; then
    mkdir -p $FORCE_DIR
    cd $FORCE_DIR
    wget -q https://github.com/heroku/force/releases/download/v0.22.74/force_linux_amd64 -O force
    chmod +x force
    echo "" >> $BASHRC
    echo "$FORCE_COMMENT" >> $BASHRC
    echo "export PATH=\"\$PATH:$FORCE_DIR\"" >> $BASHRC
else
    echo "Salesforce CLI already installed"
fi
