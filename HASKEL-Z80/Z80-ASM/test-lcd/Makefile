
PROGS=\
  00_lcdinit_raw.bin \
	01_lcdinit.bin \
	02_print.bin \
	03_iprint.bin \
	04_home.bin \
	05_cursor_pos.bin

all: $(PROGS)

clean:
	rm -f ldr
	rm -f *.lst *.bin *.hex

DATE := $(shell date --rfc-3339=seconds)
GIT_VERSION := $(shell git describe --long --dirty; git show -s --format='%ci')
%.bin: %.asm
	cat $< | sed -e "s/@@DATE@@/$(DATE)/g" -e "s/@@GIT_VERSION@@/$(GIT_VERSION)/g" | z80asm - -o $@ --list=$(basename $@).lst

world: clean all

00_lcdinit_raw.bin: io.asm 00_lcdinit_raw.asm
01_lcdinit.bin: io.asm piolcd.asm 01_lcdinit.asm
02_print.bin: io.asm piolcd.asm 02_print.asm
03_iprint.bin: io.asm piolcd.asm 03_iprint.asm
04_home.bin: io.asm piolcd.asm 04_home.asm
05_cursor_pos.bin: io.asm piolcd.asm 05_cursor_pos.asm
