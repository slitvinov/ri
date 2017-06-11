# ri: [r]emote and [i]nclude

## Introduction

Copy files "under git/not under git" back and forward between "local"
and "remote". Run commands remotely in the same relative directory as
locally.

Usage:

    r0 [host] [path]        [commands]...
	r         [path] [code]
	r         [path]     vv [regexp]...

`r` is a wrapper for `r0`:

	r [path] === r0 daint $SCRTCH/[path]

### code
l2r: copy local to remote, r2l: copy remote to local

* `^`  l2r "git"
* `^^` l2r all

* `v`  r2l "not git"
* `vv` r2l all and create local directory
* `-`  delete remote directory

* `!`        run remote command
* `anything` run remote command

## Examples
You should be in the directory "under" git root.

copy all files "under git" to `daint:$SCRATCH/preved`

	r preved ^

run command remotely. No copying

	r preved pwd

run more commands

	r preved ls
	r preved 'cd $HOME' ';' 'ls'

copy all files in git root directory

	r preved ^^

copy "not git" files back

	r preved v

create directory `preved` and copy all remote files back

	r preved vv

delete remote directory `preved`

	r preved -

## Install

	make install

## Notes

Uses `rsync` to copy files.
