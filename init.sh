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

cp .zshrc ~/.config/.zshrc
cp .p10k.zsh ~/.config/.p10k.zsh

echo "Download fonts on https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#fonts"
open https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#fonts
echo "After install fonts, run p10k configure"

echo "Setup terminals and widgets"
## install Warp terminal
brew install --cask warp

## install iterm2
brew install iterm2

## install fzf
brew install fzf

## install bat
brew install bat

## install neovim
brew install neovim

## install docker
brew install docker

## install nodejs
brew install node

## install yarn
#npm install --global yarn

## install visual studio code
brew install --cask visual-studio-code

echo "Setup for ruby"
brew install ruby rbenv ruby-build

echo "If required, install lastest ruby version and exec: rbenv install 3.3.4"
rbenv install 3.3.4
rbenv global 3.3.4
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.zshrc
source .zshrc
ruby -v
sudo gem update
sudo gem install colorls -v 1.5.0

source $(dirname $(gem which colorls))/tab_complete.sh
source .zshrc
# echo PATH=$PATH:$(ruby -e 'puts Gem.bindir') >> .zshrc

echo "End configurations for ruby, gem and colorls"


## instal nmap
brew install nmap

## install netcat
brew install netcat

## install bettercap
brew install bettercap


