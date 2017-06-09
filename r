#!/bin/bash

d=$1; shift
r0 daint '$SCRATCH'/"$d" "$@"
