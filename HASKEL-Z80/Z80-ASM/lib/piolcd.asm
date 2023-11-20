;****************************************************************************
;
;    Copyright (C) 2023 Meurisse Dominique
;
;    This library is free software; you can redistribute it and/or
;    modify it under the terms of the GNU Lesser General Public
;    License as published by the Free Software Foundation; either
;    version 2.1 of the License, or (at your option) any later version.
;
;    This library is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;    Lesser General Public License for more details.
;
;    You should have received a copy of the GNU Lesser General Public
;    License along with this library; if not, write to the Free Software
;    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301
;    USA
;
;****************************************************************************

; Define your value for PIOLCD_CMD, PIOLCD_DATA, LCD_W, LCD_R
; Then call the piolcd_begin to initialize the PIO Port & LCD
;
; https://github.com/arduino-libraries/LiquidCrystal/blob/master/src/LiquidCrystal.cpp
;


; PIO connected to LCD (define it in your main asm)
;   PIOLCD_CMD: equ 0x0B  ; PIO1_BASE+PIO_PORTB+PIO_CMD
;   PIOLCD_DATA: equ 0x09 ; PIO1_BASE+PIO_PORTB+PIO_DATA
;   LCD_W: equ 20         ; 20 chars per line
;   LCD_R: equ 4          ; 4 lines

LCD_DOTSIZE: equ 0x00 ; LCD_5x8DOTS

; PIO Port connection to LCD
; - LCD RS     to Port pin 5
; - LCD Enable to Port pin 7
; - LCD D4     to Port pin 0
; - LCD D5     to Port pin 1
; - LCD D6     to Port pin 2
; - LCD D7     to Port pin 3
; - LCD R/W    to ground (always write)
; - LCD VSS    to ground
; - LCD VCC    to 5V
LCD_RS: equ 5
LCD_EN: equ 7
LCD_D4: equ 0
LCD_D5: equ 1
LCD_D6: equ 2
LCD_D7: equ 3


; ---- LiquidCrystal.h definitions ----
; command
LCD_CLEARDISPLAY: equ 0x01
LCD_RETURNHOME: equ 0x02
LCD_ENTRYMODESET: equ 0x04
LCD_DISPLAYCONTROL: equ 0x08
LCD_CURSORSHIFT: equ 0x10
LCD_FUNCTIONSET: equ 0x20
LCD_SETCGRAMADDR: equ 0x40
LCD_SETDDRAMADDR: equ 0x80

; flags for display entry mode
LCD_ENTRYRIGHT: equ 0x00
LCD_ENTRYLEFT: equ 0x02
LCD_ENTRYSHIFTINCREMENT: equ 0x01
LCD_ENTRYSHIFTDECREMENT: equ 0x00

; flags for display on/off control
LCD_DISPLAYON: equ 0x04
LCD_DISPLAYOFF: equ 0x00
LCD_CURSORON: equ 0x02
LCD_CURSOROFF: equ 0x00
LCD_BLINKON: equ 0x01
LCD_BLINKOFF: equ 0x00

; flags for display/cursor shift
LCD_DISPLAYMOVE: equ 0x08
LCD_CURSORMOVE: equ 0x00
LCD_MOVERIGHT: equ 0x04
LCD_MOVELEFT: equ 0x00

; flags for function set
LCD_8BITMODE: equ 0x10
LCD_4BITMODE: equ 0x00
LCD_2LINE: equ 0x08
LCD_1LINE: equ 0x00
LCD_5x10DOTS: equ 0x04
LCD_5x8DOTS: equ 0x00




; ############################################################
;   Initialize PIO and Display LCD
; ############################################################
; Parameter:
;   none
; Touch:
;   a,b,c,h,l

piolcd_begin:
		ld a,$0F                 ; set mode 0 (output)
		out (PIOLCD_CMD),a

		; set
		ld a,%00000000           ; set PB0 to PB7 low
		out (PIOLCD_DATA),a

    call _delay50ms ; do not send anything the 40 first ms after power up

    ; Now we pull both RS and R/W low to begin commands
    IN a,(PIOLCD_DATA)
		LD b, a
		LD a, (1<<LCD_EN) | (1<<LCD_RS)
		XOR 0xFF
		AND b
		OUT (PIOLCD_DATA), a

    ; We start in 8 bits modes, try to set 4 bits modes
    LD a, 0x03
		CALL piolcd_write4bits

		CALL _delay5ms

		; second try
		LD a, 0x03
		CALL piolcd_write4bits
		CALL _delay5ms

		; Third Go!
		LD a, 0x03
		CALL piolcd_write4bits
		CALL _delay5ms ; was 150µSec

    ; finally set the 4-bit interface
		LD a, 0x02
		CALL piolcd_write4bits

    ; finally, set # lines, font size, etc.
		ld a,LCD_4BITMODE + LCD_1LINE + LCD_5x8DOTS
    if LCD_R > 1
        or LCD_2LINE
    endif

    if (LCD_DOTSIZE != LCD_5x8DOTS) & (LCD_R > 1)
        or LCD_5x10DOTS
    endif
		OR LCD_FUNCTIONSET
		LD e, a
		call piolcd_command

		; turn the display on with no cursor or blinking default

		call piolcd_defdisplayctrl ; set e <= LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF
		call piolcd_display_on     ; activate the display (e must contains current DISPLAYCONTROL status)

	  call piolcd_clear          ; clear display content

    ; Initialize to default text direction (for romance languages)
	  call piolcd_defdisplaymode ; set e <= LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT
		call piolcd_setdisplaymode ; activate the displaymode (l must contains current DISPLAYMODE status)
		RET

;############################################################
; Clear Display
;
; Parameter: none
;############################################################
piolcd_clear:
    LD e,LCD_CLEARDISPLAY
		call piolcd_command
		call _delay1ms
		call _delay1ms
		RET

;############################################################
; Return cursor to Home
;
; Parameter: none
;############################################################
piolcd_home:
		push bc
		LD e, LCD_RETURNHOME
		call piolcd_command

		; delay 2ms
		push hl
		ld hl, 0xA6
.dlay_home_2ms:
    dec hl
		ld a, h
		or l
		jp nz, .dlay_home_2ms
		pop hl
	  ; eof delay

		pop bc
		RET

;############################################################
; Set the cursor position
;
; Parameter:
;   b: colummn to move to
;   c: row to move to
;############################################################
piolcd_set_cursor:
		; max row value
		ld a, c
		cp LCD_R
		push af ; getting F register
		pop  hl 
		ld a, l          ; load copy of flags
		;SHOW THE RESULT on RCIO
		out (0x1D), a
		; and %01000110  ; zero-flag for =, parity-overflow for >, add/subst because CP is a substractuib


   RET

;############################################################
; Display ON
;
; Parameter:
;   e : current DISPLAYCONTROL value
; Touched: a, e
;  e : updated DISPLAYCONTROL value (store it).
;  a :
;############################################################
piolcd_display_on:
    LD a, e
    OR LCD_DISPLAYON
		OR LCD_DISPLAYCONTROL
    LD e, a
		call piolcd_command
    RET

;############################################################
;  Default DisplayControl Value
;
;  Touched
;  e : composed default DisplayControl value. Store it in memory and restore it
;      in l register when required.
;############################################################
piolcd_defdisplayctrl:
		LD e, LCD_DISPLAYON + LCD_CURSOROFF + LCD_BLINKOFF
		RET

;############################################################
; Default DisplayMode Value
;
; Touched
;  e : composed default DisplayMode value. Store it in memory and restore it
;      in l register when required.
;############################################################
piolcd_defdisplaymode:
    LD e, LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT
		RET

;############################################################
; Set DisplayMode Value
;
; Parameter
;      e : composed DisplayMode value.
;############################################################
piolcd_setdisplaymode:
    LD a, e
		OR LCD_ENTRYMODESET
		LD e, a
		call piolcd_command
		RET

;############################################################
;  Send Null Terminated String to LCD
;
;  Parameter
;      hl : address of the string
;  see: puts on https://github.com/Z80-Retro/2063-Z80-cpm/blob/main/lib/puts.asm
;############################################################
piolcd_print:
		push hl
		call .print_loops
		pop hl
		RET

.print_loops:
		ld a, (hl)                ; get next byte
		or a
		jr z, .print_done         ; Null char? => return
    ld e, a
		call piolcd_char
		inc hl
		jp .print_loops

.print_done:
    RET

;############################################################
;  Immediate Print Send Null Terminated String to LCD
;
;  Parameter
;      None. The string is declared right after the call
;############################################################
piolcd_iprint:
		; the stack pointer points to the return address. So next address after the
		; call (this is where we placed the string) --> exchange it with hl.
		; hl point to the begin of string
		call .print_loops
		; hl have move up to the NULL of the string --> move one step further
		; (should be the next instruction to execute).
		inc hl
		; replace the hl address in the stack pointer, this is where we want to
		; returns.
		ex (sp),hl
		; return to callee
		RET

; ############################################################
;   Send COMMAND to LCD
; ############################################################
; Parameter
;  e : the command byte to send
; Touched:
;  h
;
piolcd_command:
   push hl
	 ;LD e, l
   LD d, 0x00  ;  mode
	 call piolcd_write
	 pop hl
   RET

; ############################################################
;   Send/write DATA (Char) to LCD
; ############################################################
; Parameter
;  e : the byte to send
; Touched:
;  h
;
piolcd_char:
    push hl
		; LD e, l
    LD d, 0x01        ; mode
    call piolcd_write
		pop hl
    RET

; ############################################################
;   Send something to LCD
; ############################################################
; Parameter
;  e : the byte to send
;  d : mode ( 0=LOW=send_command , 1=HIGH=write_data )
;
piolcd_write:
    LD a, d              ; do we write data ?
		AND 0x01
		jp nz, _piolcd_high_rs
                         ; writing COMMAND
		LD a, 1<<LCD_RS      ; create mask to clear RS
    XOR 0xFF
		LD b, a              ; store the clear RS mask

    IN a,(PIOLCD_DATA)   ; load PIO state
		AND b                ; clear the RS signal
		out (PIOLCD_DATA), a ; Save PIO state
		JP _piolcd_write_it

_piolcd_high_rs:         ; writing DATA
		IN a,(PIOLCD_DATA)   ; load PIO state
		OR 1<<LCD_RS         ; set the RS signal
		out (PIOLCD_DATA), a ; Save PIO state

_piolcd_write_it:
    ; LD b, e              ; save param

		;call _delay1ms
		; delay 1ms
    push hl
		ld hl, 0x53
.dlay1ms:
    dec hl
		ld a, h
		or l
		jp nz, .dlay1ms
		pop hl
		; eof delay 1ms

		; sending
		LD a, e              ; High Nibble first
		RRA                  ;     Shift Right
		RRA
		RRA
		RRA
		call piolcd_write4bits ; a = data to send

		LD a, e
		AND 0x0F             ; keep LOW nibble
		call piolcd_write4bits

    RET

; ############################################################
;   Send 4 bits to LCD
; ############################################################
; Parameter
;  a : the byte to send (read RS state from PIO, toggle EN on PIO)
; Touch
;  a,b,c
;
piolcd_write4bits:
    push bc
		LD b, a          ; b = store parameter
    ; LD h , 0x00    ; Intermediate result
		IN a, (PIOLCD_DATA)
		AND 1<<LCD_RS    ; retain only the RS signal
		LD c, a          ; c=Intermediate result. Current RS signal set from PIO


_pio_bit0:
    LD a, b        ; test bit 0 in input value
		AND 0x01
    JP z, _pio_bit1
		LD a, c        ; load intermediate result
		OR 1<<LCD_D4   ; set bit for D4
		LD c, a        ; save intermediate result
_pio_bit1:
		LD a, b
		AND 0x02
		JP z, _pio_bit2
    LD a, c
		OR 1<<LCD_D5   ; set bit for D5
		LD c, a
_pio_bit2:
    LD a, b
		AND 0x04
		JP z, _pio_bit3
    LD a, c
		OR 1<<LCD_D6
		LD c,a
_pio_bit3:
    LD a, b
		AND 0x08
		JP z, _pio_bit_end
    LD a, c
		OR 1<<LCD_D7
		LD c, a          ; save intermediate result

_pio_bit_end:
    ld a, c          ; load intermediate result
    ;ld b, h          ; delay will touch h --> Save it

    ; Pulse Enabled
                     ; set EN bit LOW
		LD a,1<<LCD_EN   ; Set EN bit
		XOR 0xFF         ; invert
		AND c            ; set EN false in Result
		out (PIOLCD_DATA), a

		PUSH af
		call _delay100us ; wait 1 µSec
		POP af
		OR  1<<LCD_EN    ; set EN true in Result
		out (PIOLCD_DATA), a

    PUSH af

		; delay 100us -  enable pulse must be >450 ns
		push hl
		ld hl, 0x7
.dlay100us:
		dec hl
		ld a, h
		or l
		jp nz, .dlay100us
		pop hl
		; eof delay100us

		POP af
		LD a, 1<<LCD_EN  ; Set EN bit
		XOR 0xFF         ; invert
		AND c            ; c=saved intermediate result. set EN false in Result
		out (PIOLCD_DATA), a

		; delay 100us - command need >37us to settle
		push hl
		ld hl, 0x7
.dlay100us2:
		dec hl
		ld a, h
		or l
		jp nz, .dlay100us2
		pop hl
		; eof delay100us

    pop bc
    RET


; ############################################################
;   Waste some time then return
; ############################################################
; Touch: a

_delay50ms:
    push hl
		ld hl, 0x103E
_dloop50ms:
    dec hl
		ld a, h
		or l
		jp nz, _dloop50ms
		pop hl
		RET

_delay5ms:
    push hl
		ld hl, 0x1a0
dloop5ms:
    dec hl
		ld a, h
		or l
		jp nz, dloop5ms
		pop hl
		ret

_delay1ms:
    push hl
		ld hl, 0x53
_dloop1ms:
    dec hl
		ld a, h
		or l
		jp nz, _dloop1ms
		pop hl
		ret

_delay100us:
    push hl
		ld hl, 0x7
dloop100us:
    dec hl
		ld a, h
		or l
		jp nz, dloop100us
		pop hl
		ret
