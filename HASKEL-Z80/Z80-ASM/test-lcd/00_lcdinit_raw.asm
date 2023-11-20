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

; Just initialize the LCD 20x4 with RAW PROTOTYPING code.
; This is just for history. Code should refactored and extracted to a piolcd.asm
;
; Set LEDs D1 on the RCIO expansion board at start.
;
; https://github.com/arduino-libraries/LiquidCrystal/blob/master/src/LiquidCrystal.cpp
;

include 'io.asm'

RAM_BASE: equ 0x2000 ; see CPU-BOARD addressing table
RAM_END:  equ 0x27FF

; PIO connected to LCD
PIOLCD_CMD: equ PIO1_BASE+PIO_PORTB+PIO_CMD
PIOLCD_DATA: equ PIO1_BASE+PIO_PORTB+PIO_DATA

; PIO Port connected to LCD
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

LCD_W: equ 20         ; 20 chars per line
LCD_R: equ 4          ; 4 lines
LCD_DOTSIZE: equ 0x00 ; LCD_5x8DOTS

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


org     0x0000               ; Cold reset Z80 entry point.

RST0:
    ld sp,RAM_END+1          ; init stack pointer

    ld a, $00                ; all LEDs OFF
    out (RCIO_OUTPUT), a


START:
    ld a, $01                ; all LED 1 ON
    out (RCIO_OUTPUT), a


		call piolcd_begin
		LD l, 65           ; send A to LCD
		call piolcd_data
		LD l, 66           ; send B to LCD
		call piolcd_data
		LD l, 67
		call piolcd_data
		LD l, 68
		call piolcd_data
		LD l, 69
		call piolcd_data
		LD l, 70
		call piolcd_data
		LD l, 71
		call piolcd_data
		LD l, 10           ; LF
		call piolcd_data
		LD l, 122
		call piolcd_data   ; Send z to LCD

		HALT


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
    LD l, 0x03
		CALL piolcd_write4bits

		CALL _delay5ms

		; second try
		LD l, 0x03
		CALL piolcd_write4bits
		CALL _delay5ms

		; Third Go!
		LD l, 0x03
		CALL piolcd_write4bits
		CALL _delay5ms ; was 150µSec

    ; finally set the 4-bit interface
		LD l, 0x02
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
		LD l, a
		call piolcd_command


		; turn the display on with no cursor or blinking default

		call piolcd_defdisplayctrl ; set l <= LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF
		call piolcd_display_on     ; activate the display (l must contains current DISPLAYCONTROL status)
	  call piolcd_clear          ; clear display content

    ; Initialize to default text direction (for romance languages)

	  call piolcd_defdisplaymode ; set l <= LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT
		call piolcd_setdisplaymode ; activate the displaymode (l must contains current DISPLAYMODE status)

    LD a, 0x02           ; LED D1
    out (RCIO_OUTPUT),a  ; Apply to LEDs

		ld a, 0x04           ; LED D2
    out (RCIO_OUTPUT),a  ; Apply to LEDs

		RET

; ############################################################
;   Clear Display
; ############################################################
; Parameter:
;  none
;
piolcd_clear:
    LD l,LCD_CLEARDISPLAY
		call piolcd_command
		call _delay1ms
		call _delay1ms
		RET


; ############################################################
;   Display ON
; ############################################################
; Parameter
;  l : current DISPLAYCONTROL value
; Touched
;  l : updated DISPLAYCONTROL value (store it).
;  a :
;
piolcd_display_on:
    LD a, l
    OR LCD_DISPLAYON
		OR LCD_DISPLAYCONTROL
    LD l, a
		call piolcd_command


; ############################################################
;   Default DisplayControl Value
; ############################################################
; Touched
;  l : composed default DisplayControl value. Store it in memory and restore it
;      in l register when required.
;
piolcd_defdisplayctrl:
    ;LD l, LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF
		LD l, LCD_DISPLAYON + LCD_CURSOROFF + LCD_BLINKOFF
		RET

; ############################################################
;   Default DisplayMode Value
; ############################################################
; Touched
;  l : composed default DisplayMode value. Store it in memory and restore it
;      in l register when required.
;
piolcd_defdisplaymode:
    LD l, LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT
		RET

; ############################################################
;   Set DisplayMode Value
; ############################################################
; Parameter
;  l : composed DisplayMode value.
;
piolcd_setdisplaymode:
    LD a, l
		OR LCD_ENTRYMODESET
		call piolcd_command

; ############################################################
;   Send COMMAND to LCD
; ############################################################
; Parameter
;  l : the byte to send
; Touched:
;  h
;
piolcd_command:
   LD h, 0x00
	 call piolcd_write
   RET

; ############################################################
;   Send/write DATA to LCD
; ############################################################
; Parameter
;  l : the byte to send
; Touched:
;  h
;
piolcd_data:
    LD h, 0x01
    call piolcd_write
    RET

; ############################################################
;   Send something to LCD
; ############################################################
; Parameter
;  l : the byte to send
;  h : mode ( 0=LOW=send_command , 1=HIGH=write_data )
;
piolcd_write:
    LD a, h              ; do we write data ?
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
    LD b, l              ; save param
    call _delay1ms
		LD a, b              ; High Nibble first
		RRA                  ;     Shift Right
		RRA
		RRA
		RRA
		LD l, a
		push bc
		call piolcd_write4bits
		pop bc

		LD a, b
		AND 0x0F             ; keep LOW nibble
		LD l, a
		call piolcd_write4bits

    RET

; ############################################################
;   Send 4 bits to LCD
; ############################################################
; Parameter
;  l : Transmit the byte to send (read RS state from PIO, toggle EN on PIO)
; Touch
;  a,b, h,l
;
piolcd_write4bits:
    ; LD h , 0x00    ; Intermediate result
		IN a, (PIOLCD_DATA)
		AND 1<<LCD_RS    ; retain only the RS signal
		LD h, a          ; Intermediate result. Current RS signal set from PIO


_pio_bit0:
    LD a, l        ; test bit 0 in input value
		AND 0x01
    JP z, _pio_bit1
		LD a, h        ; load intermediate result
		OR 1<<LCD_D4   ; set bit for D4
		LD h, a        ; save intermediate result
_pio_bit1:
		LD a, l
		AND 0x02
		JP z, _pio_bit2
    LD a, h
		OR 1<<LCD_D5   ; set bit for D5
		LD h, a
_pio_bit2:
    LD a, l
		AND 0x04
		JP z, _pio_bit3
    LD a, h
		OR 1<<LCD_D6
		LD h,a
_pio_bit3:
    LD a, l
		AND 0x08
		JP z, _pio_bit_end
    LD a, h
		OR 1<<LCD_D7
		LD h, a          ; save intermediate result

_pio_bit_end:
    ld a, h
    ld b, h          ; delay will touch h --> Save it

    ; Pulse Enabled
                     ; set EN bit LOW
		LD a,1<<LCD_EN   ; Set EN bit
		XOR 0xFF         ; invert
		AND h            ; set EN false in Result
		out (PIOLCD_DATA), a

		PUSH af
		call _delay100us ; wait 1 µSec
		POP af
		OR  1<<LCD_EN    ; set EN true in Result
		out (PIOLCD_DATA), a

    PUSH af
		call _delay100us ;  enable pulse must be >450 ns
		POP af
		LD a, 1<<LCD_EN  ; Set EN bit
		XOR 0xFF         ; invert
		AND b            ; b=saved h. set EN false in Result
		out (PIOLCD_DATA), a

		call _delay100us ;  command need >37us to settle

    RET


; ############################################################
;   Waste some time then return
; ############################################################
; Touch
;   a,h,l
_delay:
    ; for 2 Mhz System Clock
    ; 0xf442 = 750 ms
    ; 0xa2d6 = 500 ms
		; 0x516b = 250 ms (250.5 ms)
		; 0x61b4 = 300 ms
    ; 0x40f9 = 200 ms (199.5 ms)
    ; 0x207C = 100 ms (99.25 ms)
    ; 0x103E = 50 ms
		; 0x824  = 25 ms
		; 0x683  = 20 ms
		; 0x341  = 10 ms
		; 0x1a0  = 5ms
		; 0x53   = 1ms (1.040 ms)
		; 0x29   = 500us (520 us)
		; 0x7    = 100us (120 us)
		ld hl, 0x7
dloop:
    dec hl
		ld a, h
		or l
		jp nz, dloop
		ret

_delay50ms:
		ld hl, 0x103E
dloop50ms:
    dec hl
		ld a, h
		or l
		jp nz, dloop50ms
		ret

_delay5ms:
		ld hl, 0x1a0
dloop5ms:
    dec hl
		ld a, h
		or l
		jp nz, dloop5ms
		ret

_delay1ms:
		ld hl, 0x53
dloop1ms:
    dec hl
		ld a, h
		or l
		jp nz, dloop1ms
		ret

_delay100us:
		ld hl, 0x7
dloop100us:
    dec hl
		ld a, h
		or l
		jp nz, dloop100us
		ret
