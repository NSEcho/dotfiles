#!/usr/bin/env fish

source ./helpers.fish

set -l lib "/usr/local/lib"
set -l inc "/usr/local/include"

if ! test -d "$lib"
    print "$lib does not exist; creating now"
    sudo mkdir "$lib"
end

if ! test -d "$inc"
    print "$inc does not exist; creating now"
    sudo mkdir "$inc"
end

print "Downloading latest frida devkit"

set -l mtype (machine)
set -l latest (curl --silent "https://api.github.com/repos/frida/frida/releases/latest" | jq -r .tag_name)
print "Downloading version $latest for $mtype"

# https://github.com/frida/frida/releases/download/16.1.4/frida-core-devkit-16.1.4-macos-arm64e.tar.xz
set -l url "https://github.com/frida/frida/releases/download/$latest/frida-core-devkit-$latest-macos-$mtype.tar.xz"
wget $url -O - | tar --extract --xz

print "Copying libfrida-core.a to $lib"
sudo cp libfrida-core.a "$lib"
print "Copying frida-core.h to $inc"
sudo cp frida-core.h "$inc"

print "Removing downloaded data"
rm frida-core.h frida-core.gir frida-core-example.c libfrida-core.a
