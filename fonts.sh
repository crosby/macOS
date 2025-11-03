#!/usr/bin/env bash
set -euo pipefail

# Download fonts
mkdir -p /tmp/my-fonts
git clone --no-checkout https://github.com/saifulapm/my-fonts /tmp/my-fonts || true
cd /tmp/my-fonts
git sparse-checkout set Gintronic
git checkout

# Install fonts
mkdir -p ~/Library/Fonts
cp -v Gintronic/*.ttf ~/Library/Fonts/

# Remove tmp dir
rm -rf /tmp/my-fonts
