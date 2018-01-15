# ~/.bash_profile: executed by bash(1) for login shells.

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

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
