#!/bin/bash

export ESC_SEQ="\x1b["
export COL_RESET=$ESC_SEQ"39;49;00m"
export COL_BLUE=$ESC_SEQ"34;01m"
export COL_CYAN=$ESC_SEQ"36;01m"

function running() {
    echo -e "$COL_CYAN ⇒ $COL_RESET"$1
}

function info() {
    echo -e "$COL_BLUE[info]$COL_RESET" $1
}

running "Configuring macOS"

if [[ $(xcode-select --version) ]]; then
  info "Xcode command tools already installed"
else
  running "Installing Xcode commandline tools"
  $(xcode-select --install)
fi

if [[ $(brew --version) ]]; then
    info "Brew is already installed"
else
    running "Installing brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

running "Installing brew packages"
brew bundle --file=Brewfile

# Install basic python tools
running "Install python packages"
pip3 install objection frida-tools --upgrade
