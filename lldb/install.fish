#!/usr/bin/env fish

source ./helpers.fish

print "Configuring lldb"

mkdir "$HOME/.lldb" > /dev/null 2>&1
cp (dirname "$0")/lldb/.lldbinit "$HOME/"

print "Copying lldb-scripts"
git clone https://github.com/lateralusd/lldb-scripts "$HOME/lldb-scripts"
