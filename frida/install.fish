#!/usr/bin/env fish

source ./helpers.fish

print "Downloading latest frida devkit"

set -l type (machine)
set -l latest (git ls-remote --tags --sort="v:refname" https://github.com/frida/frida.git | tail -n1 | cut -d '/' -f3)
print "Downloading version $latest for $type"
