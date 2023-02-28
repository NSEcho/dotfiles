#!/bin/bash

export ESC_SEQ="\x1b["
export COL_RESET=$ESC_SEQ"39;49;00m"
export COL_BLUE=$ESC_SEQ"34;01m"
export COL_CYAN=$ESC_SEQ"36;01m"

function print() {
    echo -e "$COL_CYAN ⇒ $COL_RESET"$1
}

print "Configuring macOS"

if [[ $(xcode-select --version) ]]; then
  print "Xcode command tools already installed"
else
  print "Installing Xcode commandline tools"
  $(xcode-select --install)
fi

if [[ $(brew --version) ]]; then
    print "Brew is already installed"
else
    print "Installing brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

print "Installing brew packages"
brew bundle --file=Brewfile

# Install basic python tools
print "Install python packages"
pip3 install objection frida-tools --upgrade > /dev/null 2>&1

print "Changing default shell to fish"
chsh -s $(which fish)

echo $(gum style --bold --foreground "#5ce1e6" " ⇒ ") $(gum style --bold "Finished bootstrapping")

fish/install.fish
lldb/install.fish
vim/install.fish
frida/install.fish
