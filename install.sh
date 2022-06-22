#!/bin/sh

curl -fLo /home/$USER/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir $HOME/.local/share/fonts

curl -fLo $HOME/.local/share/fonts/Hack.zip --create-dirs \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip

unzip $HOME/.local/share/fonts/Hack.zip

rm $HOME/.local/share/fonts/Hack.zip

fc-cache -rv

curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb --output ~/Downloads/
sudo dpkg -i ~/Downloads/ripgrep_13.0.0_amd64.deb
sudo apt install fd-find
