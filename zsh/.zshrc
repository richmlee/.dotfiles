export SHELL="/opt/homebrew/bin/zsh"
export EDITOR="nvim"

# should this be set before homebrew shellenv?
# is `export` needed here?
# should this be in .zshrc?
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# TODO: cleanup and add as needed
# export PATH="/opt/homebrew/opt/curl/bin:$PATH"
# export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
# export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
# export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# export PATH="/opt/homebrew/opt/bison/bin:$PATH"
# export PATH="/opt/homebrew/opt/openldap/bin:$PATH"
# export PATH="/opt/homebrew/opt/openldap/sbin:$PATH"
# export PATH="/opt/homebrew/opt/krb5/bin:$PATH"
# export PATH="/opt/homebrew/opt/krb5/sbin:$PATH"
# export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
# export PATH="/opt/homebrew/opt/libiconv/bin:$PATH"
#
# # Compiler flags
# export PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig"
# export LDFLAGS="-L/opt/homebrew/opt/icu4c/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/icu4c/include"
#
# # Android
# export ANDROID_HOME="$HOME/Library/Android/sdk"
# export PATH="$PATH:$ANDROID_HOME/emulator"
# export PATH="$PATH:$ANDROID_HOME/platform-tools"

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
