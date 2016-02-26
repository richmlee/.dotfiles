#
# ~/.bashrc
#

## If not running interactively, don't do anything
[[ $- != *i* ]] && return

## OS-Specific Stuff
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Enable git prompt
    if [[ -e /usr/share/git/completion/git-prompt.sh ]]; then
        source /usr/share/git/completion/git-prompt.sh
    fi
    if [[ -e /usr/lib/git-core/git-sh-prompt ]]; then
        source /usr/lib/git-core/git-sh-prompt
    fi
    # Ruby paths
    PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Ensure user-installed binaries take precedence
    PATH="/usr/local/bin:$PATH"
    # Let coreutils take precedence over default OSX utils
    PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    # Let man pages for coreutils take precedence over default OSX man pages
    MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
    source ~/.homebrew_github_api_token
    # Enable bash-completion (needed for git prompt)
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
elif [[ "$OSTYPE" == "cygwin" ]]; then
    if [[ -e /etc/bash/bash_completion.d/git ]]; then
        source /etc/bash_completion.d/git
    fi
    if [[ -e /cygdrive/c/Program\ Files\ \(x86\)/Git/etc/git-prompt.sh ]]; then
        source /cygdrive/c/Program\ Files\ \(x86\)/Git/etc/git-prompt.sh
    fi
fi

## Start up tmux (if it exists) and on valid terminals (i.e. not framebuffer)
if [[ "$TERM" != "linux" ]]; then
    if which tmux >/dev/null 2>&1; then
        # if no session is started, start a new session
        test -z ${TMUX} && tmux
    fi
fi

## Aliases
alias sudo='sudo '
alias vi='vim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

## Exports
export CLICOLOR=TRUE
export VISUAL=vim
export EDITOR=$VISUAL

# Use screen-256color when TMUX is running...
# [ -n "$TMUX" ] && export TERM=screen-256color

## Miscellaneous
set -o vi                   # vim bindings

## Colors
# Reset
Color_Off='\[\e[0m\]'       # Text Reset
# Regular Colors
Black='\[\e[0;30m\]'        # Black
Red='\[\e[0;31m\]'          # Red
Green='\[\e[0;32m\]'        # Green
Yellow='\[\e[0;33m\]'       # Yellow
Blue='\[\e[0;34m\]'         # Blue
Purple='\[\e[0;35m\]'       # Purple
Cyan='\[\e[0;36m\]'         # Cyan
White='\[\e[0;37m\]'        # White
# Bold
BBlack='\[\e[1;30m\]'       # Black
BRed='\[\e[1;31m\]'         # Red
BGreen='\[\e[1;32m\]'       # Green
BYellow='\[\e[1;33m\]'      # Yellow
BBlue='\[\e[1;34m\]'        # Blue
BPurple='\[\e[1;35m\]'      # Purple
BCyan='\[\e[1;36m\]'        # Cyan
BWhite='\[\e[1;37m\]'       # White
# Underline
UBlack='\[\e[4;30m\]'       # Black
URed='\[\e[4;31m\]'         # Red
UGreen='\[\e[4;32m\]'       # Green
UYellow='\[\e[4;33m\]'      # Yellow
UBlue='\[\e[4;34m\]'        # Blue
UPurple='\[\e[4;35m\]'      # Purple
UCyan='\[\e[4;36m\]'        # Cyan
UWhite='\[\e[4;37m\]'       # White
# Background
On_Black='\[\e[40m\]'       # Black
On_Red='\[\e[41m\]'         # Red
On_Green='\[\e[42m\]'       # Green
On_Yellow='\[\e[43m\]'      # Yellow
On_Blue='\[\e[44m\]'        # Blue
On_Purple='\[\e[45m\]'      # Purple
On_Cyan='\[\e[46m\]'        # Cyan
On_White='\[\e[47m\]'       # White
# High Intensity
IBlack='\[\e[0;90m\]'       # Black
IRed='\[\e[0;91m\]'         # Red
IGreen='\[\e[0;92m\]'       # Green
IYellow='\[\e[0;93m\]'      # Yellow
IBlue='\[\e[0;94m\]'        # Blue
IPurple='\[\e[0;95m\]'      # Purple
ICyan='\[\e[0;96m\]'        # Cyan
IWhite='\[\e[0;97m\]'       # White
# Bold High Intensity
BIBlack='\[\e[1;90m\]'      # Black
BIRed='\[\e[1;91m\]'        # Red
BIGreen='\[\e[1;92m\]'      # Green
BIYellow='\[\e[1;93m\]'     # Yellow
BIBlue='\[\e[1;94m\]'       # Blue
BIPurple='\[\e[1;95m\]'     # Purple
BICyan='\[\e[1;96m\]'       # Cyan
BIWhite='\[\e[1;97m\]'      # White
# High Intensity backgrounds
On_IBlack='\[\e[0;100m\]'   # Black
On_IRed='\[\e[0;101m\]'     # Red
On_IGreen='\[\e[0;102m\]'   # Green
On_IYellow='\[\e[0;103m\]'  # Yellow
On_IBlue='\[\e[0;104m\]'    # Blue
On_IPurple='\[\e[0;105m\]'  # Purple
On_ICyan='\[\e[0;106m\]'    # Cyan
On_IWhite='\[\e[0;107m\]'   # White

## Git
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=auto

## Prompt
if [[ ${EUID} == 0 ]]; then 
    export PS1="${BRed}"
else 
    export PS1="${BGreen}" 
fi
if type __git_ps1 > /dev/null 2>&1; then
    export PS1="${BPurple}[\t] ${PS1}[\u@\h] ${BYellow}[\w]${BRed}\$(__git_ps1)${Color_Off}\n${BBlue}\$${Color_Off} "
else
    export PS1="${BPurple}[\t] ${PS1}[\u@\h] ${BYellow}[\w]${Color_Off}\n${BBlue}\$${Color_Off} "
fi
