#!/bin/bash

alias vs="code"

function now-utc() {
    date -u +%Y%m%d%H%M%S
}

function lower() {
    if [ -z "$1" ]; then
        tr '[:upper:]' '[:lower:]' < /dev/stdin
    else
        echo "$1" | tr '[:upper:]' '[:lower:]'
    fi
}

function upper() {
    if [ -z "$1" ]; then
        tr '[:lower:]' '[:upper:]'  < /dev/stdin
    else
        echo "$1" | tr '[:lower:]' '[:upper:]'
    fi
}

function sha256() {
    sha256sum $1 | awk '{ print $1 }' | lower
}

function rename-sha256() {
    local name=$(sha256 $1)
    mv $1 $name
    echo $name
}
