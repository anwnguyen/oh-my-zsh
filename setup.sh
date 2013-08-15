#!/bin/bash

# brew update
# brew install git zsh

[ ! -f /Users/Adam/.zshrc ]          && cp /Users/Adam/.oh-my-zsh/templates/zshrc.zsh-template          /Users/Adam/.zshrc
[ ! -f /Users/Adam/.variables ]      && cp /Users/Adam/.oh-my-zsh/templates/variables.zsh-template      /Users/Adam/.variables
[ ! -f /Users/Adam/.aliases ]        && cp /Users/Adam/.oh-my-zsh/templates/aliases.zsh-template        /Users/Adam/.aliases
[ ! -f /Users/Adam/.secrets ]        && cp /Users/Adam/.oh-my-zsh/templates/secrets.zsh-template        /Users/Adam/.secrets
[ ! -f /Users/Adam/.customizations ] && cp /Users/Adam/.oh-my-zsh/templates/customizations.zsh-template /Users/Adam/.customizations
[ ! -f /Users/Adam/.gemrc] && cp /Users/Adam/.oh-my-zsh/templates/gemrc.zsh-template /Users/Adam/.gemrc

echo "/usr/local/bin/zsh" >> /etc/shells
chsh -s /usr/local/bin/zsh Adam
