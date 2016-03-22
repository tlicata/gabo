# Install rbenv for installing and managing Ruby versions.

# Primarily following these instructions:
# https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-14-04

sudo apt-get install --yes build-essential libreadline-dev libssl-dev zlib1g-dev libffi-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev
if [ ! -d ".rbenv" ]; then
    git clone https://github.com/rbenv/rbenv.git .rbenv
    echo '' >> .bashrc
    echo '# rbenv' >> .bashrc
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> .bashrc
    echo 'eval "$(rbenv init -)"' >> .bashrc
fi
if [ ! -d "/home/vagrant/.rbenv/plugins/ruby-build" ]; then
  git clone https://github.com/rbenv/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build
fi
