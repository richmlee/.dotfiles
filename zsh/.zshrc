# aliases
alias vi="nvim"
alias ls="ls --color=auto"
alias diff="diff --color -y"

# plugins
source <(fzf --zsh)

# assume $(brew --prefix) has been exported by zprofile
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $HOMEBREW_PREFIX/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

export FPATH="$HOMEBREW_PREFIX/share/zsh-completions:$FPATH"
autoload -Uz compinit && compinit

# asdf
# use `$HOMEBREW_PREFIX`?
# should this be in .zprofile?
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# tmuxp
export TMUXP_CONFIGDIR="$HOME/.config/tmuxp"

# starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
