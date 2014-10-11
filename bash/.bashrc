#
# ~/.bashrc
#

### Colors
# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[0;105m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### OS-Specific Stuff
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias ls='ls --color=auto'
    # Enable git prompt
    source /usr/share/git/completion/git-prompt.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Ensure user-installed binaries take precedence
    PATH="/usr/local/bin:${PATH}"
    # Homebrew
    export HOMEBREW_GITHUB_API_TOKEN=30c26d998223220dbb98a7efefd1850e3ae497f2
    # Enable bash-completion (needed for git prompt)
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

### Aliases
alias sudo='sudo '
alias vi='vim'

### Exports
export CLICOLOR=TRUE

# Git
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=auto

### Functions
function prompt_command {
    #PS1="\W\$(__git_ps1) \$ "
    #PS1='[\u@\h \W\$(__git_ps1)]\$ '
    #PS1='\[\e[0;32m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\]: \[\e[1;34m\]\w\\$(__git_ps1)\[\e[m\] \[\e[0;32m\]\$\[\e[m\] \[\e[0;37m\]'
    if [[ ${EUID} == 0 ]]; then 
        PS1="\[\033[01;31m\]\u@\h\[\033[01;34m\] \w \n\$\[\033[00m\] "
    else 
        PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;31m\]$(__git_ps1)\[\033[01;34m\] \n\$\[\033[00m\] "
    fi
}
PROMPT_COMMAND=prompt_command
