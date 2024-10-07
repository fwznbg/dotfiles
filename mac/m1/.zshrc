HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_SPACE

# homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zsh
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# auto suggest
bindkey '\t\t' autosuggest-accept
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# alias
# alias cat=bat
alias vim=nvim
alias vi=nvim

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# export JRUBY_HOME="$HOME/.rbenv/versions/jruby-9.2.21.0"

# export PATH=/usr/local/bin:$PATH
# export PATH=/usr/bin/java:$PATH
# export PATH=$PATH:/Applications/IntelliJ\ IDEA\ CE.app/Contents/MacOS
# export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
# export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
# export PATH="$PATH:$HOME/.cargo/bin"

# alias for pyenv
# alias python="$(pyenv which python)"
# alias pip="$(pyenv which pip)"
#

# fnm
alias nvm=fnm
eval "$(fnm env)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

source "$HOME/.sdkman/bin/sdkman-init.sh"

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"

eval "$(zoxide init zsh)"
# eval "$(fzf --zsh)"
source <(fzf --zsh)


export GEM_HOME="$HOME/.gem"
eval "$(rbenv init -)"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/muhammad.naabigh/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/muhammad.naabigh/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/muhammad.naabigh/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/muhammad.naabigh/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
