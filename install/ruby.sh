# Install versions of Ruby using rbenv.

# I had a tough time getting a shell that had rbenv available.
# Followed some of the suggestions here:
# http://stackoverflow.com/questions/29132891/vagrant-virtualbox-vm-provisioning-rbenv-installs-successfully-but-subsequent-u

# sudo -H -u vagrant bash -i -c 'rbenv install --skip-existing 2.1.2'
# sudo -H -u vagrant bash -i -c 'rbenv install --skip-existing 2.2.4'
sudo -H -u vagrant bash -i -c 'rbenv install --skip-existing 2.3.0'
# sudo -H -u vagrant bash -i -c 'rbenv install --skip-existing 2.3.1'
# sudo -H -u vagrant bash -i -c 'rbenv install --skip-existing 2.3.3'
sudo -H -u vagrant bash -i -c 'rbenv global 2.3.0'
sudo -H -u vagrant bash -i -c 'rbenv rehash'
