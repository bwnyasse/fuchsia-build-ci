#!/usr/bin/env bash


# Creating a new fuchsia checkout
cd /root/fuchsia
export PATH=`pwd`/.jiri_root/bin:$PATH

# Source
source scripts/env.sh && envprompt && fset x86-64

fbuild

