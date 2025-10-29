#!/usr/bin/env bash
set -euo pipefail

# Xcode Command Line Tools are needed
xcode-select --install || true

# Install Homebrew for general package management
if ! command -v brew >/dev/null; then
  /bin/bash -c \
  "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Git, Stow
brew install git stow

# Install dotfiles
if [ ! -d "$HOME/.dotfiles" ]; then
  git clone git@github.com:crosby/dotfiles.git "$HOME/.dotfiles"
fi
