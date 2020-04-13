#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
  && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

  print_in_purple "\n    Miscellaneous\n\n"
  
  install_package "build-essential" "build-essential"
  install_package "python-pip" "python-pip"
  install_package "apt-transport-https" "apt-transport-https"
  install_package "curl" "curl"
  install_package "xclip" "xclip"
  install_package "git" "git"

}

main
