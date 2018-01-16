# ~/.profile: executed by the command interpreter for login shells.

# User dependent .profile file

# Set user-defined locale
export LANG=$(locale -uU)
export DISPLAY=:0.0

# This file is not read by bash(1) if ~/.bash_profile or ~/.bash_login
# exists.
#
# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/local/bin" ] ; then
  PATH="${HOME}/local/bin:${PATH}"
fi

# Set MANPATH so it includes users' private man if it exists
if [ -d "${HOME}/local/man" ]; then
  MANPATH="${HOME}/local/man:${MANPATH}"
fi

# Set INFOPATH so it includes users' private info if it exists
if [ -d "${HOME}/local/info" ]; then
  INFOPATH="${HOME}/local/info:${INFOPATH}"
fi

# if running bash
if [ -n "${BASH_VERSION}" ]; then
  if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
  fi
fi

