 # ~/.bashrc: executed by bash(1) for non-login shells.
 # see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
 # for examples

# If running interactively, then:
if [ "$PS1" ]; then

    set -o notify

    #shopt -s checkwinsize
    shopt -s autocd
    shopt -s cdspell
    shopt -s checkjobs
    shopt -s checkwinsize
    shopt -s cmdhist
    shopt -s direxpand
    shopt -s dirspell
    shopt -s dotglob
    shopt -s globstar
    shopt -s histappend
    shopt -s no_empty_cmd_completion
    shopt -s nullglob

    # set a fancy prompt
    #PS1="\[\]\u@\h:\w(\j)\[\]\n\ek\e\> "
    PS1='\[^\]\j \u@\h:\w$(__git_ps1 " (%s)")\[^\]\n> '
    PS2="continue> "
    # PS1='\[^\]\j \u@\h:\w$(__git_ps1 " (%s)")\[^\]\n> '
    #PS1="\e[7m\u@\h:\w(\j)\e[27m\n> "
    #PS2="continue> "
    #PS1="\e[7m\u@\h:\w(\j)\e[27m\n> "
    #PS2="continue> "

    setxkbmap -option caps:super
else
    xset s off
    xset r rate 250 30
    xset dpms 1800 3600 5400
    xsetroot -solid black
fi

export COLUMNS
export EDITOR=vim
export FZF_COMPLETION_TRIGGER='~~'
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=0
export GIT_PS1_SHOWUNTRACKEDFILES=0
export GIT_PS1_SHOWUPSTREAM="auto"
export GREP_COLOR=101
export HISTCONTROL="ignoreboth:erasedups"
export HISTFILESIZE=50000
export HISTSIZE=50000
#export LANG=en_US.iso88591
#export LC_CTYPE=de_DE.ISO8859-1

source ~/.alias
source ~/local/bin/git-completion.bash
source ~/local/bin/git-prompt.sh
source /etc/bash_completion.d/task.sh
#source /etc/bash_completion.d/zzz-fzf

auto_resume=substring
command_oriented_history=t

eval `dircolors -b`

ulimit -c unlimited
stty -ixon -ixoff # -tostop
stty -ixon -ixoff -tostop

#    wmname LG3D
complete -o nospace -F _task t # completion for taskwarrior

function unzipindir()
{
    unzip $@ -d `basename $@ .zip`
}

# The following are necessary only for Cygwin, and only are needed
# when the user has tab-completed the executable name and consequently
# included the '.exe' suffix.
#
#if [ Cygwin = "$(uname -o 2>/dev/null)" ]; then
#__git_complete git.exe __git_main
#fi
