#!/bin/bash

# ri : run remote command

. r.u # utils

# host, directory
h=$1; shift
d=$1; shift

ask_git

# -t to kill after disconnect
ssh -t "$h" cd \""$d"\"   '&&'   cd \""$p"\"   '&&'   "$@"
