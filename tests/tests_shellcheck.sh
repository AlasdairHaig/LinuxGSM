#!/bin/bash
# Project: Game Server Managers - LinuxGSM
# Author: Daniel Gibbs
# License: MIT License, Copyright (c) 2017 Daniel Gibbs
# Purpose: Travis CI Tests: Shellcheck | Linux Game Server Management Script
# Contributors: https://github.com/GameServerManagers/LinuxGSM/graphs/contributors
# Documentation: https://github.com/GameServerManagers/LinuxGSM/wiki
# Website: https://gameservermanagers.com

echo "================================="
echo "Travis CI Tests"
echo "Linux Game Server Manager"
echo "by Daniel Gibbs"
echo "Contributors: http://goo.gl/qLmitD"
echo "https://linuxgsm.com"
echo "================================="
echo ""
echo "================================="
echo "Bash Analysis Tests"
echo "Using: Shellcheck"
echo "Testing Branch: $TRAVIS_BRANCH"
echo "================================="
echo ""
find . -type f -name "*.sh" -not -path "./shunit2-2.1.6/*" -exec shellcheck --shell=bash --exclude=SC2154,SC2034 {} \;
find . -type f -name "*.cfg" -not -path "./shunit2-2.1.6/*" -exec shellcheck --shell=bash --exclude=SC2154,SC2034 {} \;
echo ""
echo "================================="
echo "Bash Analysis Tests - Complete!"
echo "Using: Shellcheck"
echo "================================="