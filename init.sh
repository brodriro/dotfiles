#!/bin/bash

## install Postman
open https://www.postman.com/downloads/

## install Android Studio
open https://developer.android.com/studio?hl=es-419


## install git
brew install git

## install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## install powerLevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc "

echo "Download fonts on https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#fonts"
open https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#fonts
echo "After install fonts, run p10k configure"

## install Warp terminal
brew install --cask warp

## install iterm2
brew install iterm2

## install bat
brew install bat

## install docker
#brew install docker

## install nodejs
brew install node

## install yarn
#npm install --global yarn

## install visual studio code
brew install --cask visual-studio-code


## instal nmap
brew install nmap

## install netcat
brew install netcat
