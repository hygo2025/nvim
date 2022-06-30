#! /bin/bash

sudo pacman -Sy curl wget unzip go ripgrep fd tilix python-pip opera;

cd ~/;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;

yay -Sy neovim visual-studio-code-bin dbeaver discord tilix;

pip install pynvim;

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;

nvm install 16;

mkdir ~/.config/nvim;
git clone https://github.com/hygo2025/nvim.git ~/.config/nvim;

nvim --headless +PlugInstall +qa;

mkdir $HOME/.local/share/fonts;
cd $HOME/.local/share/fonts;
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip;
unzip $HOME/.local/share/fonts/Hack.zip;
rm Hack.zip;
fc-cache;

cd ~/Documents;
wget https://github.com/RinCat/RTL88x2BU-Linux-Driver/archive/master.zip;
unzip master.zip;
cd RTL88x2BU-Linux-Driver-master;
make -j $(nproc);
sudo make install;
sudo modprobe 88x2bu rtw_switch_usb_mode=1;

