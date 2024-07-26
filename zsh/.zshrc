# exports
export SHELL="/opt/homebrew/bin/zsh"
export EDITOR="nvim"

# paths
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# plugins
source <(fzf --zsh)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

export FPATH="$(brew --prefix)/share/zsh-completions:$FPATH"
autoload -Uz compinit && compinit

# aliases
alias vi="nvim"
alias ls="ls --color=auto"
alias diff="diff --color -y"

# git
#
# Only script read-only tasks for now, especially when using git's porcelain commands.  These are the high-level commands
# meant to enhance the user experience, and therefore its interface (input/output, options, semantics) may not be reliable for
# for parsing and scripting, and potentially dangerous when using these for writes.
#
# Perhaps using `--porcelain` (for the porcelain commands supporing this option) is preferable,
# as it seems to be designed to produce output that is more stable for scripting.
#
# Git's plumbing commands are the low-level commands intended for use in scripts, and are generally more stable.  However,
# these are also subject to change, and may require understanding the changelog when upgrading Git for breaking changes.

# TODO: These alias functions should probably be git aliases.

# TODO: only works properly when the local `master`, `main`, or whatever the repo's default branch is checked out
# TODO: find a way to get the default branch name to prefix these with `git checkout $default_branch`
# TODO: setting `git config --global fetch.prune true` is probably a good idea
git_list_local_branches_without_remotes () {
  git fetch -p && git branch -vv | awk '/:gone]/{print $1}'

  # TODO: this may work from any branch?
  # git fetch -p origin && git branch -vv | awk '/: gone]/{print $1}'
}

git_list_local_branches_merged () {
  # these may contain local branches without commits
  git fetch -p && git branch --list --merged
}

git_list_local_branches_but_not_merged () {
  git fetch -p && git branch --list --no-merged
}

# TODO: do not use!  save these as examples of using regex patterns for user input validation
git_delete_local_branches_without_remotes () {
  git_list_local_branches_without_remotes

  local prompt="Are you sure you wanna delete these branches? "
  local response

  vared -p $prompt response

  # TODO: both options here work, but decide on which pattern to use: `case` vs. `if`
  # in either case, find a publicly common impementation for this confirmation pattern matching
  # or extract this to a helper function

  # option using `case`
  # local affirmative_patterns=('[yY][eE][sS]|[yY]')
  # case "$response" in
  #   $~affirmative_patterns)
  #     echo 'yay!'
  #     ;;
  #   *)
  #     echo 'naaaaaaah'
  #     ;;
  # esac

  # option using `if`
  local affirmative_patterns=('^[yY][eE][sS]$|^[yY]$')
  if [[ $response =~ ${affirmative_patterns} ]]; then
    echo 'yes'
  else
    echo 'NO'
  fi
}

# tmuxp
export TMUXP_CONFIGDIR="$HOME/.config/tmuxp"

# starship
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
