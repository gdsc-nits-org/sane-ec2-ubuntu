#!/bin/bash

set -e

echo "Updating Mirrors..."
sudo apt-get -y update

echo "Installing Packages..."
sudo apt -y install fzf bat exa vim unzip


echo "Installing fnm..."
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc


echo "Installing Node v20..."
fnm install 20
fnm use 20;

echo "Installing pnpm and pm2..."
npm install -g pnpm pm2

curl "~/.bashrc" "https://raw.githubusercontent.com/gdsc-nits/ec2-ubuntu-basic/main/.bashrc" >> ~/.bashrc
wget -P "~/.vimrc" "https://raw.githubusercontent.com/gdsc-nits/ec2-ubuntu-basic/main/.vimrc"

source ~/.bashrc

echo "Done..."
