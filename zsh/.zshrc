export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export EDITOR='nvim'

alias vi='nvim'

# Plugins
# brew install zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# brew install zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# brew install zsh-history-substring-search
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Starship
eval "$(starship init zsh)"
