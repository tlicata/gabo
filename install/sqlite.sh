#!/usr/bin/env bash

# Running `bundle install` on the Core project errors while installing
# sqlite. Why does it need sqlite? That's for another day.

sudo apt-get --yes install libsqlite3-dev
