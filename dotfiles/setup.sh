# ! This is highly specific to my preferences, you may need to change most of the things for your use
# ! For Ubuntu

#* Install Kitty terminal
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop

#* Setup dotfiles and passwordstore
# chezmoi
# TODO install chezmoi
chezmoi init <repo_url>
chezmoi apply

# passwordstore
sudo apt install pass
git clone <repo_url> ~/.password-store

#* Install runtimes, compilers, interpreters etc
# nodejs, npm
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install nodejs

# sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# jdk 8, 11, 17
sdk install java 8.0.312-zulu
sdk install java 11.0.13-zulu  
sdk install java 17.0.1-zulu
sdk default java 8.0.312-zulu

# pyenv
sudo apt update; sudo apt install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash 

# python
pyenv install 3.10.0
pyenv global 3.10.0

# go
sudo apt install golang

#* Install zsh, omz, p10k
# zsh
sudo apt install zsh

# omz 
#! font still needs to be installed manually
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#* Install zsh plugins
# zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#* Install tools/replacements
# bat (only Ubuntu ==20.04))
sudo apt install -o Dpkg::Options::="--force-overwrite" bat ripgrep
# alternate for older versions
sudo apt install bat

# tmux
sudo apt install tmux

# exa (only Ubuntu >=20.10)
sudo apt install exa
# alternate for older versions
wget http://ftp.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb
sudo dpkg -i ./exa_0.9.0-4_amd64.deb
rm ./exa_0.9.0-4_amd64.deb

# fasd
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt update
sudo apt install fasd

# fkill cli
npm install --global fkill-cli

# fzf
sudo apt install fzf

# ripgrep
sudo apt install ripgrep

# sshpass
sudo apt install sshpass

# timg
sudo apt install cmake git g++ pkg-config
sudo apt install libgraphicsmagick++-dev libturbojpeg-dev libexif-dev libswscale-dev
sudo apt install libavcodec-dev libavformat-dev libavdevice-dev libopenslide-dev pandoc

git clone https://github.com/hzeller/timg.git
cd timg
mkdir build
cd build
cmake ../ -DWITH_VIDEO_DECODING=On -DWITH_VIDEO_DEVICE=On -DWITH_OPENSLIDE_SUPPORT=On
make
sudo make install
cd ../..
rm -rf timg/

# nnn
sudo apt install nnn 

# jff
sudo apt install cowsay lolcat neofetch fortune

#* Create workspace directories
#* Clone git workspace repos
