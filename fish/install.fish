#!/usr/bin/env fish 

fish_add_path "$HOME/go/bin"
set -Ux LSCOLORS gxfxcxdxbxegedabagacad

# install functions
cp (dirname "$0")/fish/functions/* "$HOME/.config/fish/functions/"
