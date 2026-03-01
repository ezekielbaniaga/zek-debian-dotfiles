#!/bin/bash

# common resource monitoring
apt install htop

# better view of resource, only ~2mb in install size
apt install btop

# ls,ll alternative
apt install exa

# curl - client for url
apt install curl

# rg - search current dir for a regex pattern. commonly used for neovim
apt install ripgrep

# gcc, g++, configure, make -> developer toolchain and language compilers
apt install build-essential

# gitk - git log view 
apt install gitk

# fav sreensaver
apt install cmatrix

# tree for directory structure
apt install tree

# favorite note taking app
apt install zim

# favorite paint app
apt install kolourpaint

# better looking than cmatrix but uses a bit more cpu
curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o /usr/local/bin/unimatrix
chmod a+rx /usr/local/bin/unimatrix

# fav music player
apt install qmmp

# +-----------------------------------------------------
# | Enable snap store
# +-----------------------------------------------------
apt install snapd
snap install snapd

# color picker from snap store
snap install color-picker

# +-----------------------------------------------------
# | Download neovim
# +-----------------------------------------------------
mkdir /opt/nvim
curl -L https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.appimage -o /opt/nvim/
chmod a+rx /opt/nvim/nvim-linux-x86_64.appimage
mv /opt/nvim/nvim-linux-x86_64.appimage /opt/nvim/nvim
