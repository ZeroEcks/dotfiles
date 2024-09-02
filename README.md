# Dotfiles

This folder is used to initialise my macs (hopefully with linux support again in the future)

A quick copy/paste for setting up a computer is

```bash
mkdir -p ~/Documents/code/
curl https://github.com/ZeroEcks/dotfiles/archive/refs/heads/main.zip -o ~/Documents/code/dotfiles.zip
unzip ~/Documents/code/dotfiles.zip -d ~/Documents/code/dotfiles
cd ~/Documents/code/dotfiles
./init.sh
```

Start a new shell and probably do this

```fish
ssh-init $EMAIL
```
