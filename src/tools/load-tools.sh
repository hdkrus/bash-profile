#!/bin/sh

function load-tool() {
  local tools=${@}

  for tool in "${tools[@]}"; do
    . "$TOOLS_DIR/${tool}.sh"
  done
}

load-tool utils
