# kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# nvim
brew install neovim

# zsh
brew install powerlevel10k
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install zoxide

# deps
brew install ripgrep
brew install fzf

# version manager
brew install fnm #nvm like
brew install rbenv
brew install pyenv
curl -s "https://get.sdkman.io" | bash

# window manager
brew install koekeishiya/formulae/skhd
brew install koekeishiya/formulae/yabai
brew tap FelixKratz/formulae
brew install borders

# go
brew install golang
mkdir -p $HOME/go/{bin,src}

# vscode
brew install --cask visual-studio-code

# zed
brew install --cask zed

# redis
brew tap ringohub/redis-cli
brew update && brew doctor
brew install redis-cli


# orbstack
brew install orbstack
brew install kubectl

brew install --cask obsidian
brew install --cask aldente

# psql
brew install libpq

# diff 
brew install diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RF"
git config --global interactive.diffFilter "diff-so-fancy --patch"

brew install pass-otp
