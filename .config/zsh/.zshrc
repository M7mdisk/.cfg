source ~/.config/zsh/.zsh_aliases
# Set up the prompt
setopt histignorealldups sharehistory

IN_VIM=$(ps -p $PPID -o comm= | grep -qsE '[gm]?vim' && echo 1)

# Use vim bindings, except when we're actually in vim
[ -z $IN_VIM ] && bindkey -v || bindkey -e

bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey -a '^[[3~' delete-char
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

export EDITOR='nvim'

ZSH_THEME="oxide"

# Zoxide (better cd)
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source ~/.zplug/init.zsh
zplug "jeffreytse/zsh-vi-mode"

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

plugins=(
  vi-mode
)
