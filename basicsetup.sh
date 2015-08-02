#!/bin/bash
# Author: Sarp Orgul
# File: basicsetup.sh
# -------------------
# Setup script for bare arch install

# let us see whats going on (@echo off in dos)
set -x

# ----------------------
# Install basic packages
# ----------------------

yaourt -S i3-gaps

# -------------------------
# Install and configure git
# -------------------------

# install necessary packages
sudo pacman -S git

# configure git
echo "git name: "
read -e name
echo "git email: "
read -e email

git config --global user.name "$name"
git config --global user.email $email

# -----------------------------
# Download and symlink dotfiles
# -----------------------------

cd
git clone https://github.com/Pedon/dotfiles.git
cd ~/dotfiles
chmod +x makelinks.sh
./makelinks.sh
