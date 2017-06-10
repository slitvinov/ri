BIN=$(HOME)/bin # where to install
B=$(BIN)
P=r r0 i                      # programs
U=r.l2r r.r2l r.rm r.cmd r.u  # utils
install  :; mkdir -p $B && cp $P $U $B
uninstall:;    d=$B; for f in $P $U; do echo rm -f "$$d/$$f"; done
.PHONY: install
