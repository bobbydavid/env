######################################
#        RDM BASH CONFIG FILE        #
######################################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Unless it already exists, add '~/bin' to the PATH.
echo $PATH | egrep "(^|:)$HOME/bin(:|$)">/dev/null || PATH=$PATH:~/bin

# No values == no truncation == unlimited history
HISTSIZE=
HISTFILESIZE=

alias s='cd ..'
alias open='gnome-open' # osx-style open of files in gnome.
alias ls='ls -F' # -F appends the file-type character.

export EDITOR='vim'
# Redirection to force me to use Sublime2, as long as
# a DISPLAY is defined.
[ -z "$DISPLAY" ] || alias vim='subl'

# Script to display numbered directories, truncated to fit screen.
alias d='. ~/bin/dirs-good.bash'

# Git aliases.
alias gs="git status"
alias gd="git diff"
alias gl="git log"
alias gg="git log --graph"
alias gcam="git commit -a -m"

# Show colors for common commands.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
