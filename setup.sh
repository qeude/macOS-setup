#!/bin/sh

# 🍺 Install Homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 📦 Install packages
brew install git
brew install node
brew install wget
brew install bitwarden-cli

# 💻 Softwares
brew install raycast
brew install docker
brew install mas
brew install gifski
brew install --cask slack
brew install --cask signal
brew install --cask bitwarden
brew install --cask spotify
brew install --cask rocket
brew install --cask rectangle
brew install --cask google-backup-and-sync
brew install --cask google-chrome
brew install --cask firefox
brew install --cask typora
brew install --cask whatsapp
brew install --cask messenger
brew install --cask appcleaner
brew install --cask noisebuddy
brew install --cask figma

brew install --cask iterm2
brew install --cask visual-studio-code

# 🔨 Xcode
mas install 497799835

# 🛑 Wipr
mas install 1320666476

# 💊 Amphetamine
mas install 937984704

# Setup iTerm2
# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zplug
brew install zplug

echo '# ~.zshrc
export ZSH=~/.oh-my-zsh
# disable oh-my-zsh themes for pure prompt
ZSH_THEME=""
source $ZSH/oh-my-zsh.sh
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug load
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi'  > ~/.zshrc

source ~/.zshrc
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/bgnotify", from:oh-my-zsh
zplug "plugins/zsh-autosuggestions", from:oh-my-zsh
zplug "plugins/zsh-syntax-highlighting", from:oh-my-zsh
