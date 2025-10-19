#!/bin/sh

# current dir
function curr-dir() {
    export SOURCES_DIR=`dirname ${(%):-%x}`
}

curr-dir

# aliases
alias re-source=". $SOURCES_DIR/index.sh"

# import OS profile
OS_DIR="$SOURCES_DIR/os"
. "$OS_DIR/load-os.sh"

# import tools profile
TOOLS_DIR="$SOURCES_DIR/tools"
. "$TOOLS_DIR/load-tools.sh"

# import personal profile
PERSONAL_DIR="$SOURCES_DIR/personal"
. "$PERSONAL_DIR/user.sh"
. "$PERSONAL_DIR/company.sh"
