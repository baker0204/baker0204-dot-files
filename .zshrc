# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /home/baker/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle git
antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh/autosuggestions
antigen bundle zsh-users/zsh/completions

antigen theme romakatv/powerlevel10k
antigen apply

alias sysctl=systemctl
alias sudo=doas
alias rneofetch="neofetch | lolcat"
alias szsh="source ~/.zshrc"
alias cfzsh="nano ~/.zshrc"
alias moo="fortune | cowsay"
alias moocat="fortune | cowsay | lolcat"
alias 9+10="echo 21"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
