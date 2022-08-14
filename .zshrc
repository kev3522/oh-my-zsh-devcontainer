# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

COMPLETION_WAITING_DOTS="true"
DISABLE_LS_COLORS="true"
HYPHEN_INSENSITIVE="true"
POWERLEVEL10K_MODE='nerdfont_complete'
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
