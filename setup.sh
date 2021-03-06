#!/bin/bash

brew update
brew upgrade
brew install `cat homebrew_packages.txt`

[ ! -f ~/.zshrc ]          && cp ~/.oh-my-zsh/templates/zshrc.zsh-template          ~/.zshrc
[ ! -f ~/.gitconfig ]      && cp ~/.oh-my-zsh/templates/gitconfig.zsh-template      ~/.gitconfig
[ ! -f ~/.variables ]      && cp ~/.oh-my-zsh/templates/variables.zsh-template      ~/.variables
[ ! -f ~/.aliases ]        && cp ~/.oh-my-zsh/templates/aliases.zsh-template        ~/.aliases
[ ! -f ~/.secrets ]        && cp ~/.oh-my-zsh/templates/secrets.zsh-template        ~/.secrets
[ ! -f ~/.customizations ] && cp ~/.oh-my-zsh/templates/customizations.zsh-template ~/.customizations
[ ! -f ~/.gemrc ]          && cp ~/.oh-my-zsh/templates/gemrc.zsh-template          ~/.gemrc

sudo echo "/usr/local/bin/zsh" >> /etc/shells  # TODO grep to ensure that this line isn't there before appending it
sudo chsh -s /usr/local/bin/zsh `whoami`

CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=/usr/local/opt/readline --with-openssl-dir=/usr/local/opt/openssl --without-tcl --without-tk " rbenv install 2.0.0-p247

