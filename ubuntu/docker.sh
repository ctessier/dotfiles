#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
  && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_docker() {

    execute "curl -fsSL https://get.docker.com -o get-docker.sh" "Fetching installation script"
    execute "sh get-docker.sh" "Installing Docker"

}

main() {

    print_in_purple "\n • Set up Docker\n\n"

    install_docker

}

main
