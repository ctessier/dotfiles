#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
  && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

  print_in_purple "\n    Snaps\n\n"

  install_snap_package "Spotify" "spotify"
  install_snap_package "Visual Studio Code" "code"
  install_snap_package "1Password" "1password-linux"
  install_snap_package "Microsoft Teams" "teams-for-linux"

}

main
