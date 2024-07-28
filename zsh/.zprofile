# I recall needing an inverse change many years ago on Linux to run tmux proeprly, using bash,
# but may have blown those changes away on this repo.
#
# On macOS (as of July 2024), I am now struggling with $PATH variables being reordered and duplicated
# when starting and using tmux with a non-OS version of zsh.
#
# I prefer to avoid root-level changes on macOS, and want cross-compatibility on Linux.
#
# This GitHub gist explains this issue eloquently, and more details and solution ideas are
# provided by chontributors on its thread:
#
# https://gist.github.com/Linerre/f11ad4a6a934dcf01ee8415c9457e7b2
#
# My home and work setup was inspired by this gist, allowing for the organization and
# customization of zsh config files on macOS.

if [[ -z $TMUX ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

