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
#alias ruby="$HOME/.rbenv/versions/2.4.6/bin/ruby"


# FZF config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER="~"
export FZF_PREVIEW='"[ -f {} ] && head -100 {} || [ -d {} ] && ls -ltr | head -100"'

export FZF_PREVIEW='"[ -d {} ] && ls -ltr | head  -100 ||
										 [[ $(file --mime {}) =~ binary ]] &&
										 echo {} is a binary ||
										 bat --style=numbers --color=always {} ||
										 cat {} 2> /dev/null | head -500"'
export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --border -m --bind 'ctrl-v:page-down,alt-v:page-up'"
export FZF_CTRL_T_OPTS="--preview ${FZF_PREVIEW} --bind ?:toggle-preview"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:4 --bind ?:toggle-preview"
# Golang setup
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN:$GOPATH"

# Ruby setup
alias gem=".rbenv/versions/2.4.6/bin/gem"
alias ruby=".rbenv/versions/2.4.6/bin/ruby"
alias mux="tmuxinator"
function ssh-tmux {
  /usr/bin/ssh $@ -t -- /bin/sh -c 'tmux has-session && exec tmux attach || exec tmux'
}
