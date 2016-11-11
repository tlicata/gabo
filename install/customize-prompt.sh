#!/usr/bin/env bash

# The default prompt for Ubuntu is quite long, for example:
#   vagrant@vagrant-ubuntu-trusty-64:~/core$
# Replace it with a shorter one, for example:
#   vagrant:~/core$

# \u is the user, usually "vagrant"
# \w is the current working directory
# \$ is the literal dollar sign
OUR_PROMPT='PS1="\u:\w\$ "'

# Add a comment to act as a placeholder to see if we've already
# customized the prompt, if so, don't do it again.
OUR_COMMENT="### Added by Gabo for concise prompts"

# If we haven't added our customized prompt, then add it.
if ! grep "$OUR_COMMENT" ~/.bashrc > /dev/null; then
    echo "" >> ~/.bashrc
    echo $OUR_COMMENT >> ~/.bashrc
    echo $OUR_PROMPT >> ~/.bashrc
fi
