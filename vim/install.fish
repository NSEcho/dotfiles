#!/usr/bin/env fish

source ./helpers.fish

print "Configuring vim"

print "Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

print "Copying config file"
cp (dirname "$0")/vim/.vimrc "$HOME/.vimrc"

print "Copying vimskeletons"
mkdir "$HOME/vimskeletons" > /dev/null 2>&1
cp (dirname "$0")/vim/vimskeletons/* "$HOME/vimskeletons"
