#!/usr/bin/env bash

# PhantomJS is required by Core.
#
# Script is privileged so can write to /opt/.

PHANTOM_COMMENT="### Added by Gabo for PhantomJS path"
BASHRC=/home/vagrant/.bashrc

if ! grep "$PHANTOM_COMMENT" $BASHRC > /dev/null; then
    cd /opt/
    wget -q https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
    tar xjf phantomjs-1.9.8-linux-x86_64.tar.bz2
    cd phantomjs-1.9.8-linux-x86_64
    echo "" >> $BASHRC
    echo "$PHANTOM_COMMENT" >> $BASHRC
    echo "export PATH=\"\$PATH:$(pwd)/bin\"" >> $BASHRC
else
    echo "phantomjs already installed"
fi
