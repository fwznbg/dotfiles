# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/zsh-extension/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/zsh-extension/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/fwznbg/zsh-extension/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias conservation-on="sudo bash -c 'echo 1 >/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'"
alias conservation-off="sudo bash -c 'echo 0 >/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'"
alias conservation-check="cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
alias cat='bat'
alias vim='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:/home/fwznbg/.spicetify
export PATH="$HOME/.local/bin":$PATH
export BROWSER=/usr/bin/firefox-developer-edition
