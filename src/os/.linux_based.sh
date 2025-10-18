#!/bin/bash

. "$OS_DIR/.unix_based.sh"

function update-os() {
  echo "Updating linux..."
  sudo apt-get update
  sudo apt-get upgrade --yes
  sudo apt autoremove
}
