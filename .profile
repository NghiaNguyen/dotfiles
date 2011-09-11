# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#TexLive PATH
PATH=/home/xy/texlive/2011/bin/i386-linux:$PATH; export PATH
MANPATH=/home/xy/texlive/2011/texmf/doc/man:$MANPATH; export MANPATH
INFOPATH=/home/xy/texlive/2011/texmf/doc/info:$INFOPATH; export INFOPATH

# [Nghia's configuration]

# set CDPATH for easier nagivation
CDPATH=.:..:~:~/Desktop

# prevent accidental file overwriting
set -o noclobber

# prevent accidental logging out
set -o ignoreeof

