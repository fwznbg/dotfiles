# kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# nvim
brew install neovim

# vscode
brew install --cask visual-studio-code

# orbstack
brew install orbstack

# zsh
brew install powerlevel10k
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install zoxide
brew install fzf

# version manager
brew install fnm #nvm like
brew install rbenv
brew install pyenv
curl -s "https://get.sdkman.io" | bash

# window manager
brew install koekeishiya/formulae/skhd
brew install koekeishiya/formulae/yabai

# go
brew install golang
mkdir -p $HOME/go/{bin,src}

