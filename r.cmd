#!/bin/bash

# ri : run remote command

. r.u # utils

# host, directory
h=$1; shift
d=$1; shift

ask_git

# -tt to kill after disconnect
ssh -T "$h" << !!!
cd "$d/$p"
$@
!!!
