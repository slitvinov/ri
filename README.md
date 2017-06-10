# ri: [r]emote and [i]nclude

## Introduction

## Examples
copy all files "under git" to `daint:$SCRATCH/preved`

	r preved

copy files and execute command

	r preved echo 42

run simple command on daint. Minus means `-` no copying

	r preved - pwd

run anoter command on daint

	r preved - 'ls Makef*'

## Install

	make install
