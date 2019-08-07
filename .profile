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

function add_to_path() {
    local newpath="$1"

    if [ -d $newpath ]; then
        PATH="$newpath:$PATH"
	export PATH
    fi
}

function add_to_path {
  local newpath="$1"

  if [[ -d "$newpath" ]]; then
    export PATH="$newpath:$PATH"
  else
    echo "Diretório $newpath não existe" >> $HOME/Desktop/PROFILE_ERROR_LOG.txt
  fi
}

# set PATH so it includes user's private bin if it exists
add_to_path "$HOME/bin"
#add_to_path "$HOME/.local/bin"

# Qt
add_to_path "$HOME/Qt/5.11.1/gcc_64/bin"

# ASDF-VM
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Rust
add_to_path "$HOME/.cargo/bin"

# Go Lang
add_to_path "$HOME/bin/go/go1.12.7.linux-amd64/bin"

# Kubernetes
# Kubectl
add_to_path "$HOME/bin/kubectl/v1.15.2"
# Minikube
add_to_path "$HOME/bin/minikube/v1.3.0"

