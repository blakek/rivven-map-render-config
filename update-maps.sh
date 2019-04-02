#!/usr/bin/env bash
set -eu -o pipefail

##
# Description: Updates Minecraft map for chosen worlds
# Date: 2019-03-26
# Written by:
#   - Blake Knight <oss.ideas@gmail.com> (https://blakek.me/)
##

__dirname="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__filename="$(basename "${BASH_SOURCE[0]}")"

echo 'Updating Rivven map...'
rsync -avz blake@highwind.local:/Users/blake/Library/Application\\\ Support/minecraft/saves/Rivven .

echo 'Rendering map...'
overviewer.py --config="${__dirname}/config.py"
