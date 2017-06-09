BIN=$(HOME)/bin
B=$(BIN)

P=r r0 i # programs

install:; mkdir -p $B && cp $P $B

.PHONY: install



