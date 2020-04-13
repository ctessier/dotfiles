#!/bin/sh

# https://dev.to/mskian/install-z-shell-oh-my-zsh-on-ubuntu-1804-lts-4cm4

apt install zsh
apt-get install powerline fonts-powerline

git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
sed -i 's:ZSH_THEME="robbyrussell":ZSH_THEME="agnoster":' $HOME/.zshrc
chsh -s /bin/zsh
cd $HOME/.oh-my-zsh
upgrade_oh_my_zsh
