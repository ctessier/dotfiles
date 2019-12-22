# dotfiles
This project hosts my dotfiles for my Mac installation. It was highly inspired by [Dries Vints'](https://github.com/driesvints/dotfiles).

## Getting started

1. Update macOS to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install macOS Command Line Tools by running `xcode-select --install`
4. Copy your public and private SSH keys to `~/.ssh` and make sure they're set to `600`
5. Clone this repo to `~/.dotfiles`
6. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started)
6. Run `install.sh` to start the installation
7. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`
8. Restart your computer to finalize the process

Your Mac is now ready to use!

> Note: you can use a different location than `~/.dotfiles` if you want. Just make sure you also update the reference in the [`.zshrc`](./.zshrc) file.

## macOS configurations

### General UI/UX

- [x] Enable Dark mode
- [x] Set language to French and currency to Euros
- [x] Set measurement unit to Centimeters
- [x] Enable metric units system
- [x] Set temperature unit to Celcius

### Taskbar

- [x] Show battery percentage
- [x] Show Bluetooth, Volume and Display icons
- [x] Set date format to show the day of the week and the seconds

### Mouse & trackpad

- [x] Set mouse speed to 2.0
- [x] Set trackpad speed to 2.0
- [x] Enable tap to click on trackpad and MagicMouse
- [x] Set scroll direction to non-natural

### Dock

- [x] Show only opened applications
- [x] Enable auto-hide
- [x] Make icons of hidden applications transparent

### Energy saving

- [x] Enable lid wakeup
- [x] Make the display sleep after 15 minutes
- [x] Disable machine sleep while charging
- [x] Make machine sleep on battery after 15 minutes
