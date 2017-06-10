BIN=$(HOME)/bin # where to install
B=$(BIN)
P=r r0 i # what to install
install:; mkdir -p $B && cp $P $B
.PHONY: install
