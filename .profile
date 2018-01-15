# ~/.profile: executed by the command interpreter for login shells.

# User dependent .profile file

# Set user-defined locale
export LANG=$(locale -uU)
export DISPLAY=:0.0

# This file is not read by bash(1) if ~/.bash_profile or ~/.bash_login
# exists.
#
# if running bash
if [ -n "${BASH_VERSION}" ]; then
  if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
  fi
fi
