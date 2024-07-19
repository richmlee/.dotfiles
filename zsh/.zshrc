export PATH="/usr/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/openldap/bin:$PATH"
export PATH="/opt/homebrew/opt/openldap/sbin:$PATH"
export PATH="/opt/homebrew/opt/krb5/bin:$PATH"
export PATH="/opt/homebrew/opt/krb5/sbin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/libiconv/bin:$PATH"

# Compiler flags
export PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig"
export LDFLAGS="-L/opt/homebrew/opt/icu4c/lib"
export CPPFLAGS="-I/opt/homebrew/opt/icu4c/include"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

export EDITOR='nvim'

alias vi='nvim'

# Plugins
# brew install zsh-syntax-highlighting
# source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# brew install zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# brew install zsh-history-substring-search
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
# brew install zsh-vi-mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# brew install fzf
source <(fzf --zsh)
# brew install zsh-completions
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
autoload -Uz compinit && compinit

# tmuxp
export TMUXP_CONFIGDIR=$HOME/.config/tmuxp

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Starship
eval "$(starship init zsh)"
