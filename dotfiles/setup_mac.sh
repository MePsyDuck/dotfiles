# ! This is highly specific to my preferences, you may need to change most of the things for your use
# ! For mac

#* Install Kitty terminal
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

#* Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#* Setup dotfiles and passwordstore
# chezmoi
sh -c "$(curl -fsLS chezmoi.io/get)"
chezmoi init <repo_url>
chezmoi apply

# passwordstore
brew install pass
git clone <repo> ~/.password-store

#* Install runtimes, compilers, interpreters etc
# nodejs, npm
brew install node

# sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# jdk 8, 11, 17
sdk install java 8.0.312-zulu
sdk install java 11.0.13-zulu  
sdk install java 17.0.1-zulu
sdk default java 8.0.312-zulu

# pyenv
brew install pyenv

# python
pyenv install 3.10.3
pyenv global 3.10.3

# go
brew install go

#* Install zsh, omz, p10k
# zsh
brew install zsh

# omz 
#! font still needs to be installed manually
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#* Install zsh plugins
# zsh completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh history substring search
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

#* Install tools/replacements
# replace core mac utilities with gnu utilities
git clone https://github.com/fabiomaia/linuxify.git
cd linuxify/
./linuxify install
cd ../
rm -rf linuxify

# bat
brew install bat
brew install eth-p/software/bat-extras

# tmux
brew install tmux

# exa
brew install exa

# fasd
brew install fasd

# fkill cli
npm install --global fkill-cli

# fzf
brew install fzf

# ripgrep
brew install ripgrep

# sshpass
brew install esolitos/ipa/sshpass

# timg
brew install timg

# nnn
brew install nnn 

# btop
brew install btop

#tldr
brew install tlrc

# jff
brew install cowsay lolcat neofetch fortune

#* Create workspace directories
#* Clone git workspace repos
