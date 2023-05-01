#!/bin/bash

rm -r ~/.dotfiles
git clone https://github.com/marceltbn/.dotfiles

rm -r ~/.config/qtile
cp -r ~/.dotfiles/.config/qtile ~/.config/qtile

rm -r ~/.config/nvim
cp -r ~/.dotfiles/.config/nvim ~/.config/nvim

rm -r ~/.config/kitty
cp -r ~/.dotfiles/.config/kitty ~/.config/kitty

rm ~/.aliases 
cp ~/.dotfiles/.aliases ~/.aliases

rm ~/.zshrc
cp ~/.dotfiles/.zshrc ~/.zshrc 
    
    
