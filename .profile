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

export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# P4V
if [ -d "$HOME/.bin/p4v/bin" ] ; then
    PATH="$HOME/.bin/p4v/bin:$PATH"
fi

# Maven
if [ -d "/opt/maven/bin" ] ; then
    PATH="/opt/maven/bin:$PATH"
fi

# snapd
if [ -d "/snap/bin" ] ; then
    XDG_DATA_DIRS="/var/lib/snapd/desktop:$XDG_DATA_DIRS"
    PATH="/snap/bin:$PATH"
fi

# vmware
if [ -d "/usr/lib/vmware/bin" ] ; then
    PATH="/usr/lib/vmware/bin:$PATH"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# npm
export PATH=$PATH:$(npm config --global get prefix)/bin
alias ng="npm list -g --depth=0 2>/dev/null"
alias nl="npm list --depth=0 2>/dev/null"

# yarn
export PATH=$PATH:$(yarn global bin)

# dokku
alias dokku='$HOME/.dokku/contrib/dokku_client.sh'

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias b='byobu'

# kubectl
# source <(kubectl completion bash)
# alias k='kubectl'
# complete -F __start_kubectl k
# export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# k3s
# export KUBECONFIG="$(k3d get-kubeconfig --name='k3s-default')"
