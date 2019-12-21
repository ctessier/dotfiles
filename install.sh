#!/bin/sh

# Ask for the administrator password upfront
sudo -v

echo "Installing your Mac..."

# Create `code` directory
mkdir $HOME/code

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from this repository
rm -f $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Test if Homebrew is install, otherwise install it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install Brew recipes with bundle
brew tap homebrew/bundle
brew bundle

# Install PHP extensions
pecl install imagick

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Stop Valet to avoid conflicts with Docker
valet stop

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos

echo "All done!"
