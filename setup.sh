#!/bin/bash -i

set -e

echo "Updating Mirrors..."
sudo apt-get -y update

echo "Installing Packages..."
sudo apt -y install fzf bat eza vim unzip zoxide


echo "Installing fnm..."
curl -fsSL https://fnm.vercel.app/install | bash
eval "$(cat ~/.bashrc | tail -n +10)"
source ~/.bashrc


echo "Installing Node v20..."
fnm install 20.2
fnm use 20.2;

echo "Installing pnpm and pm2..."
npm install -g pnpm pm2

curl "~/.bashrc" "https://raw.githubusercontent.com/gdsc-nits-org/sane-ec2-ubuntu/main/.bashrc" >> ~/.bashrc
wget -O ~/.vimrc "https://raw.githubusercontent.com/gdsc-nits-org/sane-ec2-ubuntu/main/.vimrc"
sudo cp ~/.vimrc /root/.vimrc

eval "$(cat ~/.bashrc | tail -n +10)"
source ~/.bashrc

echo "Done..."
echo "Please run 'source ~/.bashrc' to apply changes."
