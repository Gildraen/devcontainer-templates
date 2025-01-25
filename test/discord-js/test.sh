#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "npm" npm -v
check "yarn" yarn -v
check "node" node -v
check "discord.js" npm list

# Report result
reportResults
