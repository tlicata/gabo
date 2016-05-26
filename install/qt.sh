#!/usr/bin/env bash

# Running `bundle install` on the Core project errors while installing
# capybara:
#
#   Command 'qmake ' not available
#
# Install Qt based on the docs:
# https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit

sudo apt-get --yes install libqtwebkit-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x
