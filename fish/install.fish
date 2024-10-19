#!/usr/bin/env fish 

fish_add_path "$HOME/go/bin"
set -Ux LSCOLORS gxfxcxdxbxegedabagacad

# set theme
fish_config theme choose "None"

# install functions
cp (dirname "$0")/fish/config.fish "$HOME/.config/fish"
cp (dirname "$0")/fish/functions/* "$HOME/.config/fish/functions/"
