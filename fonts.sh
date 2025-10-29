#!/usr/bin/env bash
set -euo pipefail

# Download fonts
git clone --no-checkout https://github.com/saifulapm/my-fonts /tmp/my-fonts || true
cd /tmp/my-fonts
git sparse-checkout set Gintronic
git checkout

# Install fonts
cd Gintronic
mkdir -p ~/Library/Fonts
cp -v *.ttf ~/Library/Fonts/
