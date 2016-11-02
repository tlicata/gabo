# Marketing Webhooks uses the charlock_holmes gem which requires ICU.
#
#  Installing charlock_holmes 0.7.3 with native extensions
#  Gem::Ext::BuildError: ERROR: Failed to build gem native extension.
#
#  checking for main() in -licui18n... no
#
#  ***************************************************************************************
#  *********** icu required (brew install icu4c or apt-get install libicu-dev) ***********
#  ***************************************************************************************
#  *** extconf.rb failed ***
#  Could not create Makefile due to some reason, probably lack of necessary
#  libraries and/or headers.  Check the mkmf.log file for more details.  You may
#  need configuration options.
sudo apt-get --yes install libicu-dev
