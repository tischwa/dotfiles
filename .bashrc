# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

source ~/.alias
source ~/local/bin/git-completion.bash
source /etc/bash_completion.d/task.sh
#source /etc/bash_completion.d/zzz-fzf

auto_resume=substring
command_oriented_history=t

set -o notify

shopt -s cdspell
shopt -s checkwinsize
shopt -s dotglob
shopt -s histappend
shopt -s no_empty_cmd_completion
shopt -s nullglob

# enable color support of ls and also add handy aliases
eval `dircolors -b`

# PS1='\[[7m\]\j \u@\h:\w$(__git_ps1 " (%s)")\[[m\]\n> '
#PS1="\e[7m\u@\h:\w(\j)\e[27m\n> "
#PS2="continue> "

ulimit -c unlimited
stty -ixon -ixoff # -tostop

function unzipindir()
{
    unzip $@ -d `basename $@ .zip`
}

#    wmname LG3D
complete -o nospace -F _task t # completion for taskwarrior

#export GIT_PS1_SHOWDIRTYSTATE=1
#export GIT_PS1_SHOWSTASHSTATE=1
#export GIT_PS1_SHOWUNTRACKEDFILES=1
#export GIT_PS1_SHOWUPSTREAM="auto"
export COLUMNS
export EDITOR=vim
# export GREP_COLOR=101
export HISTCONTROL="ignoreboth:erasedups"
export HISTFILESIZE=50000
export HISTSIZE=50000
export FZF_COMPLETION_TRIGGER='~~'
