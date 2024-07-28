# I recall needing an inverse change many years ago on Linux to run tmux proeprly, using bash,
# but may have blown those changes away on this repo.
#
# On macOS (in 2024), I am now struggling with $PATH variables being reordered and duplicated
# when starting and using tmux with a non-OS version of zsh.
#
# I prefer to avoid root-level changes on macOS, and want cross-compatibility on Linux.
#
# This GitHub gist explains this issue eloquently, and more details and solution ideas are
# provided by chontributors on its thread:
#
# https://gist.github.com/Linerre/f11ad4a6a934dcf01ee8415c9457e7b2
#
# This inspired the solution for my personal home and work setup: and it doesn't work.
# does `export` matter?
# ZDOTDIR="$HOME/.config/zsh"
# echo 'start .zshprof 1'
# echo "path: $PATH"
# echo "tmux: $TMUX"
# echo 'end .zshenv 1'
#

#export SHELL="/opt/homebrew/bin/zsh"
#ZDOTDIR="$HOME/.config/zsh"
echo "this is the shell in ZPROFILE: $SHELL"
echo "the one in home folder!!!!"
echo "change this now..."
#export PATH=$PATH
echo "new shell is: $SHELL"
echo "right in zprofile before the brew call: $PATH"

if [[ -z $TMUX ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
#   . /opt/homebrew/opt/asdf/libexec/asdf.sh
# else
#   export PATH="$PATH"
fi
#else
#
#   echo "this is a tmux session $TMUX"
#   echo "this is the OLD path from zprofile: $PATH"
# #  export PATH="$PATH:/before:$PATH:/after"
#   echo "this is the NEW path from zprofile: $PATH"
#   # export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
#   #
# #  eval "$(/opt/homebrew/bin/brew shellenv)"
#   # export $SHELL
#   #export PATH=""
# # fi
#
echo "not doing anything in .zprofile... but:"
echo "here is the path: $PATH"
echo "here is the shell: $SHELL"
echo "leaving .zprofile"
