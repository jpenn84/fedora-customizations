#!/bin/sh

# install vim
sudo dnf -y install vim

# force git to use vim
git config --global core.editor "vim"

# TODO: Generate rsa key

# install RPM Fusion repos
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-40.noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-40.noarch.rpm

# Install VS Code repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

# install Google Chrome and remove FireFox
sudo dnf config-manager --set-enabled google-chrome
sudo dnf -y install google-chrome-stable
sudo dnf rm -y firefox

# Install zsh and set to default
sudo dnf install -y zsh
chsh -s $(which zsh)

# TODO: update, upgrade, & reboot. Do this manually for now.

# Install fastfetch (replacement for neofetch)
sudo dnf install -y fastfetch

# Install VLC
sudo dnf install -y vlc

# install codecs
sudo dnf config-manager --set-enabled fedora-cisco-openh264
sudo dnf install-y ffmpeg --allowerasing

# Install Gimp, Inkscape, and Kalligra
sudo dnf install -y gimp inkscape krita

# install Python 3 (will likely be installed as a dependency by Gimp) and PIP
sudo dnf install -y python3 python3-pip

# install VS Code
sudo dnf install -y code

# TODO: numlockx doesnt work. Figure out something else

# TODO: Install SDKMan. Current flow is manual

# TODO: Install OhMyZsh. Current flow is manual
