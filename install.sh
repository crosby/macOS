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

# Install brew packages
if [ ! -f "$HOME/Brewfile" ]; then
    stow -d ~/.dotfiles brew
    brew bundle --file "$HOME/Brewfile"
fi

# Stow
stow -d ~/.dotfiles --override=.zshrc zsh
stow -d ~/.dotfiles git
stow -d ~/.dotfiles gnupg

# Remove "Last Login"
touch ~/.hushlogin

# Make a file for secrets
touch ~/secrets.zsh

# Install Yubikey
./yubikey.sh

# Install development tools
./development.sh
