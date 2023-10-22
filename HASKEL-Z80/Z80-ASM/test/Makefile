
PROGS=\
	01_minimal.bin \
 02_in_out.bin

all: $(PROGS)

clean:
	rm -f ldr
	rm -f *.lst *.bin *.hex

DATE := $(shell date --rfc-3339=seconds)
GIT_VERSION := $(shell git describe --long --dirty; git show -s --format='%ci')
%.bin: %.asm
	cat $< | sed -e "s/@@DATE@@/$(DATE)/g" -e "s/@@GIT_VERSION@@/$(GIT_VERSION)/g" | z80asm - -o $@ --list=$(basename $@).lst

world: clean all

01_minimal.bin: 01_minimal.asm
02_in_out.bin: 02_in_out.asm
