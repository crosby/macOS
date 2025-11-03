#!/usr/bin/env bash
set -euo pipefail

# Install latest node version
export NVM_DIR="$HOME/.nvm"
source "/opt/homebrew/opt/nvm/nvm.sh"
mkdir -p ~/.nvm
nvm install --lts

# Setup Zed
stow -d ~/.dotfiles zed
