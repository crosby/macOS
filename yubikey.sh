#!/usr/bin/env bash
set -euo pipefail

# Enable FIDO2
ykman config usb --enable FIDO2

# Pull Yubikey stubs
ssh-keygen -K -v

# Move the files into the ~/.ssh folder
mkdir -p ~/.ssh
mv ./id_ed25519_sk_rk_github     ~/.ssh/id_ed25519_sk
mv ./id_ed25519_sk_rk_github.pub ~/.ssh/id_ed25519_sk.pub
