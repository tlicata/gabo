#!/usr/bin/env bash

# Running `bundle exec rake db:setup` on the Core project errors:
#
#   RSolr::Error::ConnectionRefused: Connection refused
#
# Updating an Instance in Core also fails.

# Running `rake sunspot:solr:run` requires unzip:
#
#   This script requires extracting a WAR file with either the jar or unzip utility,
#   please install these utilities or contact your administrator for assistance.

sudo apt-get --yes install unzip solr-common
