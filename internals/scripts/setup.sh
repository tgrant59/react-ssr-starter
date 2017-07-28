#!/bin/bash

# Configuration
cd "$(dirname "$0")/../.."
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Functions
run () {
  if [ -z "$1" ]
  then
    echo -e "${RED}ERROR: function run() requires a command to execute${NC}"
    return 1
  fi

  echo -e "${GREEN}>>> ${1}${NC}"
  eval $1

  if [ "$?" -ne "0" ]
  then
    echo -e "${RED}>>> Command Failed. Exiting Now${NC}"
    exit 1
  fi

  return 0
}

# ================== Setup Commands ==================

# Install System Dependencies
run "brew install node yarn docker-clean"
run "brew cask install docker"
run "sudo gem install docker-sync"

# Build Project Images
run "yarn docker:build"
