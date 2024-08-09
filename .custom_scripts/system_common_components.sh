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

# better looking than cmatrix but uses a bit more cpu
curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o /usr/local/bin/unimatrix
chmod a+rx /usr/local/bin/unimatrix


