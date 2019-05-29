# ZSH configuration file
#
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Path exports
export PATH="$PATH:$HOME/.fzf/bin"
export PATH="$PATH:/opt/local/bin"

# Nutanix Python configuration 
export PYTHONUSERBASE="$PYTHONUSERBASE:/Users/utkarsh.simha/nutanix/main/.python"
export PYTHONPATH="$PYTHONPATH:/Users/utkarsh.simha/nutanix/main/.python"

# Key bindings
bindkey -v
bindkey '^R' history-incremental-search-backward

# Default editor
export EDITOR="vim"

# aliases
alias vimr="vim -R"
alias go11="/usr/local/go/bin/go"

# FZF config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
FZF_COMPLETION_TRIGGER="~"

# Golang setup
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN:$GOPATH"
