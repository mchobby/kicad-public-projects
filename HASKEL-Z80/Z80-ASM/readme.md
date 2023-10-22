# Haskel Z80 CPU-Board programming

Here is the example and test assembly programs for the [Z80 CPU Boards](../CPU-BOARD) recovered from an old DTMF Phone central.

![Z80 DTMF CENTRAL](docs/Z80-DTMF-central.jpg)

## Main board modification

**The main board have been tuned a bit to avoids CPU-BOARD chip selection for unused address range** that may now be used on custom expansion boards.

![modif addressing schematic](docs/base-board-improvement.jpg)

![modif-addressing-00](docs/modif-addressing-00.jpg)

![modif-addressing-01](docs/modif-addressing-01.jpg)

**The NE556 has been removed to avoids the WatchDog to take place** and continuously resets the board if not properly feeded.

Schematics and details are available in the [/CPU-BOARD](../CPU-BOARD) folder.

## CPU Add-on board

![CPU-BOARD-ADDON-assembly](docs/CPU-BOARD-ADDON-assembly.jpg)

The created [CPU-BOARD-ADDON](../CPU-BOARD-ADDON) is used togheter with the CPU-BOARD and some code examples. **The CPU-BOARD-ADDON will allow primarily user interaction** with few ASM instructions where the CPU-BOARD have currently no way at all (no LED, no serial, no button) to interact with the user.

![read input and write output](docs/in_out.jpg)

Schematics and details are available in the [/CPU-BOARD-ADDON](../CPU-BOARD-ADDON)

If you want to discover more about this retro-ingeneering story, just have a look to the following links:
* [Retro ingénierie d'une carte Z80](https://arduino103.blogspot.com/search/label/Z80-ASM) on the MCHobby's blog
* [Discussion thread of the project](https://forum.system-cfg.com/viewtopic.php?f=18&t=14526) on System.cfg forum

# Dev environment

Here how to install the **z80asm assembler** on Linux based Operating system.
It can be used with a [Makefile](test/Makefile) to compile the binaries.

```
sudo apt install z80asm
```
More information on z80asm can be found at [z80asm manpage @ Ubuntu](https://manpages.ubuntu.com/manpages/xenial/man1/z80asm.1.html).


Additional tool that may be useful to inspect generated binary file.

```
sudo apt install hexedit
```

A **programmer is also required** to program the EEPROM.
XGecu can be used and this also run under Linux :-) .

![XGecu programmer](docs/xgecu.jpg)

* [XGecu under linux](https://wiki.mchobby.be/index.php?title=XGecu-install-Linux) (_French_)<br />How to install and run it under Linux with Wine.
* [XGecu pratical](https://wiki.mchobby.be/index.php?title=XGecu-EEPROM) (_French_)<br />Explain how to read the ROMs and program the EEPROM for this project.



# Programming principle
1. The ASM test program is compiled to a binary file.
2. The binary is transfered to an EEPROM
3. the EEPROM is placed on CPU-BOARD (replace the ROM with RED label)

The binaries (.bin) are compiled with the **make world** utility using the Makefile to compile all the example at binaries.

```
cd test
make world
```
# Tests & Examples

The [test sub-folder](test) contains many examples in assembler used to test the various features of the CPU-BOARD and CPU-BOARD-ADDON.

## 01_minimal.asm
This is the minimal user interaction we can expect... lighting a LED.

This example will lit the four right-most LEDs (bits 0 to 4).

The code is quite simple and makes an OUT to peripheral $1D (the LEDs)

```
org     0x0000          ; Cold reset Z80 entry point.

loop:
  ld a, $0f    ; Lit LED 0, 1, 2, 3
  out ($1d),a  ; LED port
  jp loop
```
Which produces the following results on the board.

![minimal ASM example](docs/minimal.jpg)

## 02_in_out.asm
This second example improve interaction by getting user input.

The example detects the pressed buttons and lit the corresponding LEDs.

The code uses a IN to read value from peripheral ($1C) THEN uses OUT to send the value to peripheral $1D .

```
org     0x0000          ; Cold reset Z80 entry point.

loop:
  in a,($1c)   ; Read buttons
  out ($1d),a  ; Apply to LEDs
  jp loop
```
Which produces the following results on the board.

![In Out ASM example](docs/in_out.jpg)
