# MacOS

Installation scripts for MacOS environments that perfectly setup a development environment with a focus on security and performance.

## Setup

```bash
git clone git@github.com:crosby/macOS.git
cd macOS && ./install.sh
```

## Installation Script

The install script takes care of installing:

* xcode clt
* [homebrew](https://brew.sh)
* git
* [stow](https://www.gnu.org/software/stow/)
* [dotfiles](https://github.com/crosby/dotfiles)

```bash
./install.sh
```

## YubiKey Setup

YubiKey 5C NFC is setup with signing keys to use for SSH and Git signing

```bash
./yubikey.sh
```
