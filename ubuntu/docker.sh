#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
  && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_docker() {

    execute "curl -fsSL https://get.docker.com -o get-docker.sh" "Fetching installation script"
    execute "sh get-docker.sh" "Installing Docker"
}

install_docker_compose() {
    execute "sudo curl -L \"https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)\" -o /usr/local/bin/docker-compose" "Downloading docker-compsoe"
    execute "sudo chmod +x /usr/local/bin/docker-compose" "Making docker-compose executable"
}

main() {

    print_in_purple "\n • Set up Docker\n\n"

    if ! binary_exists "docker -v"; then
      install_docker
    else
      print_success "Docker is already installed"
    fi

    if ! binary_exists "docker-compose -v"; then
      install_docker_compose
    else
      print_success "Docker Compose is already installed"
    fi
}

main
