#!/bin/bash

. "$OS_DIR/.linux_based.sh"

function pbcopy() {
    tee <&0 | clip.exe
}

function pbpaste() {
    powershell.exe Get-Clipboard | sed 's/\r$//' | sed -z '$ s/\n$//'
}

alias ssh-agent-start="eval `ssh-agent -s`"
