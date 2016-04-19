#!/usr/bin/env bash

# Some of our client apps use Selenium for integration testing, which
# depends on Java.
#
# ~/groups-client$ ./node_modules/.bin/selenium-standalone
# Could not find `java`, make sure it is installed in your $PATH

sudo apt-get --yes install default-jre

# Of course, the integration tests will want browsers to be installed,
# so you may want to run:
#
# $ sudo apt-get install firefox
# $ sudo apt-get install chromium-browser
#
# Furthermore, since this is a headless VM, the browsers might
# complain that no display is specified:
#
#   Caused by: org.openqa.selenium.firefox.NotConnectedException: Unable
#   to connect to host 127.0.0.1 on port 7055 after 45000 ms. Firefox
#   console output: Error: no display specified
#
# I followed these instructions to get a headless display:
# http://stackoverflow.com/questions/24653127/selenium-error-no-display-specified
#
# Make sure X Virtual Frame Buffer is installed:
#   $ sudo apt-get install xvfb
# Then in on terminal run Xvfb on port 99
#   $ Xvfb :99 -ac
# In another terminal set the DISPLAY to port 99 and run Selenium:
#   $ export DISPLAY=:99
#   $ ./node_modules/.bin/selenium-standalone start
# Then in a third terminal run Nightwatch:
#   $ ./node_modules/.bin/nightwatch
