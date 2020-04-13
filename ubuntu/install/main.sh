#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
  && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n • Install packages\n\n"
  
    update
    upgrade

    ./misc.sh
    ./browsers.sh
    ./node.sh
    ./snaps.sh

}

main
