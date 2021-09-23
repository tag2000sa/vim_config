#!/bin/bash
#Author: Eng. Turky AbdulAziz Abdulhafiz
#Create Date: 23/09/2021 3:45 PM

mkdir -p ~/.config/nvim >> /dev/null &
mkdir -p ~/.config/vim >> /dev/null &
cp init.vim ~/.config/nvim >> /dev/null &
cp -r templates ~/.config/vim >> /dev/null &
echo "nvim_config installed, have fun ;)"
