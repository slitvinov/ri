BIN=$(HOME)/bin # where to install
B=$(BIN)
P=r r0 i                 # programs
U=r.l2r r.l2r r.cmd r.u  # utils
install:; mkdir -p $B && cp $P $U $B
.PHONY: install
