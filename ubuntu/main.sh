#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
  && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

restart() {
  
    ask_for_confirmation "Do you want to restart?"
    printf "\n"

    if answer_is_yes; then
        sudo shutdown -r now &> /dev/null
    fi

}

main() {
  
    ask_for_sudo

    ./create_dir.sh
    ./git.sh
    ./docker.sh
    ./install/main.sh
    ./preferences/main.sh

    restart

}

main
