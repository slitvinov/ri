# ri: [r]emote and [i]nclude

## Introduction

### code
l2r: local to remote, r2l: remote to local

* `^`  l2r "git"
* `^^` l2r all

* `v`  r2l "not git"
* `vv` r2l all and create local directory
* `-`  delete remote directory

* `!`        run remote command
* `[other]`  run remote command

## Examples
copy all files "under git" to `daint:$SCRATCH/preved`

	r ^ preved

copy files and execute command

	r ^ preved echo 42

run command remotely. No copying

	r preved pwd

run another command

	r preved 'ls Makef*'

copy all files

	r preved ^^
	
copy "not git" files back

	r preved v
	
create directory `preved` and copy all remote files in

	r preved vv

## Install

	make install
