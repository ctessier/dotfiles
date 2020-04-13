#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
  && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n    Browsers\n\n"

    if ! package_is_installed "brave-browser"; then

        add_key "https://brave-browser-apt-release.s3.brave.com/brave-core.asc" "/etc/apt/trusted.gpg.d/brave-browser-release.gpg" \
            || print_error "Brave (add key)"

        add_to_source_list "[arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" "brave-browser-release.list" \
            || print_error "Brave (add to package resource list)"

        update &> /dev/null \
            || print_error "Brave (resync package index files)"

    fi

    install_package "Brave" "brave-browser"

    if ! package_is_installed "google-chrome-unstable"; then

        add_key "https://dl-ssl.google.com/linux/linux_signing_key.pub" \
            || print_error "Chrome Canary (add key)"

        add_to_source_list "[arch=amd64] https://dl.google.com/linux/deb/ stable main" "google-chrome.list" \
            || print_error "Chrome Canary (add to package resource list)"

        update &> /dev/null \
            || print_error "Chrome Canary (resync package index files)"

    fi

    install_package "Chrome Canary" "google-chrome-unstable"
    install_package "Chromium" "chromium-browser"

}

main
