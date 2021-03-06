# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# The following checks for for Cygwin
#if [ Cygwin = "$(uname -o 2>/dev/null)" ]; then
#__git_complete git.exe __git_main
#fi
# If running interactively, then:
#if [ "$PS1" ]; then

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
#else
    #xset s off
    #xset r rate 250 30
    #xset dpms 1800 3600 5400
    #xsetroot -solid black
#fi

if [ -z ${CYG_SYS_BASHRC+x} ]; then # if not on cygwin
    #PS1="\[\]\u@\h:\w(\j)\[\]\n\ek\e\> "
    PS1='\[^\]\j \u@\h:\w$(__git_ps1 " (%s)")\[^\]\n> '
    PS2="continue> "
    # PS1='\[^\]\j \u@\h:\w$(__git_ps1 " (%s)")\[^\]\n> '
    #PS1="\e[7m\u@\h:\w(\j)\e[27m\n> "
    #PS2="continue> "

    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1
    export GIT_PS1_SHOWUPSTREAM="auto"
    source ~/local/bin/git-prompt.sh

    setxkbmap -option caps:super
else # on cygwin
    #PS1="\e[7m\u@\h:\w(\j)\e[27m\n> "
    echo
fi

export COLUMNS
export EDITOR=vim
export FZF_COMPLETION_TRIGGER='~~'
export GREP_COLOR=101
export HISTCONTROL="ignoreboth:erasedups"
export HISTFILESIZE=50000
export HISTSIZE=50000
export LESS='--quit-at-eof --quit-if-one-screen --ignore-case --status-column --hilite-unread --window=-3 --jump-target=3 --LONG-PROMPT --RAW-CONTROL-CHARS --no-init'
#export LANG=en_US.iso88591
#export LC_CTYPE=de_DE.ISO8859-1

source ~/.alias
source ~/local/bin/git-completion.bash
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
complete -o nospace -F _task ta # completion for taskwarrior

function unzipindir()
{
    unzip $@ -d `basename $@ .zip`
}

