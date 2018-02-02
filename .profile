# ~/.profile: executed by the command interpreter for login shells.

# User dependent .profile file

# Set user-defined locale
export LANG=$(locale -uU)
export DISPLAY=:0.0

# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

PATH="${HOME}/local/bin:${PATH}"
MANPATH="${HOME}/local/man:${MANPATH}"
INFOPATH="${HOME}/local/info:${INFOPATH}"

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	source "$HOME/.bashrc"
    fi
fi
