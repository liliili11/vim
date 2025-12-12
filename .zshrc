export PATH="/opt/homebrew/bin:$PATH"
export ZSH="/Users/a/.oh-my-zsh"
export PATH="/Users/a/a/bin:$PATH"

ZSH_THEME="agnoster"

plugins=(
  git
  zsh-completions
  zsh-history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

alias python="python3.13"
alias python3="python3.13"
