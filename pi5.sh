#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install nala -y

sudo nala install ninja-build gettext cmake unzip ripgrep -y

if [ $1 = "Y" ]
then
        cd ~
        git clone https://github.com/neovim/neovim.git
        cd ~/neovim
        git checkout stable
        make CMAKE_BUILD_TYPE=Release
        sudo make install


        cd ~
        git clone https://github.com/nvim-lua/kickstart.nvim.git
        cd ~/kickstart.nvim
        mkdir ~/.config
        mkdir ~/.config/nvim
        cp init.lua ~/.config/nvim/init.lua
fi