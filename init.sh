#!/usr/bin/env bash
xcode-select --install

# Install Brew and dependencies in Brewfile
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file ./Brewfile

# Link all the dotfiles
stow --restow --ignore ".DS_Store" --target=$HOME --dir="$(pwd)" files
stow --restow --ignore ".DS_Store" --target=$HOME/Library/Application\ Support/Code/User/ --dir="$(pwd)" vscode

