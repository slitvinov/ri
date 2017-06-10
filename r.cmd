#!/bin/bash

. r.u # utils

# host, directory
h=$1; shift
d=$1; shift

ask_git
ssh "$h" cd \"$d\"   '&&'   cd \"$p\"   '&&'   "$@"
