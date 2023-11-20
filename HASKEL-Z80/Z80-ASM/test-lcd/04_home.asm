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

; Create a binary counter and display the value on the screen
;
;

include 'io.asm'

RAM_BASE: equ 0x2000 ; see CPU-BOARD addressing table
RAM_END:  equ 0x27FF

; PIOLCD definition
PIOLCD_CMD: equ PIO1_BASE+PIO_PORTB+PIO_CMD
PIOLCD_DATA: equ PIO1_BASE+PIO_PORTB+PIO_DATA
LCD_W: equ 20         ; 20 chars per line
LCD_R: equ 4          ; 4 lines

org     0x0000               ; Cold reset Z80 entry point.

RST0:
    ld sp,RAM_END+1          ; init stack pointer

		call piolcd_begin        ; Init the LCD
		ld b, $02                ; counter
loop:
		;ld a, b
		;out (RCIO_OUTPUT),a

		inc b
		;;;push bc

		; decode bit 7
		ld e, 0x30               ; '0'
		bit 7, b                 ; bit 7 is set
		jp z, .bit7zero
		inc e                    ; '0' -> '1'
.bit7zero:
    call piolcd_char         ; Display char. e <-- Ascii
		; decode bit 6
		ld e, 0x30
		bit 6, b
		jp z, .bit6zero
		inc e
.bit6zero:
		call piolcd_char         ; Display char. e <-- Ascii
		; decode bit 5
		ld e, 0x30
		bit 5, b
		jp z, .bit5zero
		inc e
.bit5zero:
		call piolcd_char         ; Display char. e <-- Ascii
		; decode bit 4
		ld e, 0x30
		bit 4, b
		jp z, .bit4zero
		inc e
.bit4zero:
		call piolcd_char         ; Display char. e <-- Ascii
		; decode bit 3
		ld e, 0x30
		bit 3, b
		jp z, .bit3zero
		inc e
.bit3zero:
		call piolcd_char         ; Display char. e <-- Ascii
		; decode bit 2
		ld e, 0x30
		bit 2, b
		jp z, .bit2zero
		inc e
.bit2zero:
		call piolcd_char         ; Display char. e <-- Ascii
		; decode bit 1
		ld e, 0x30
		bit 1, b
		jp z, .bit1zero
		inc e
.bit1zero:
		call piolcd_char         ; Display char. e <-- Ascii
		; decode bit 0
		ld e, 0x30
		bit 0, b
		jp z, .bit0zero
		inc e
.bit0zero:
		call piolcd_char         ; Display char. e <-- Ascii


    ; waste some time
		push hl
		ld hl, 0x103E
__dloop50ms:
    dec hl
		ld a, h
		or l
		jp nz, __dloop50ms
		pop hl
		; eof waste some time

		call piolcd_home        ; go top left for next display
		;;;pop bc
jp loop


include 'piolcd.asm'
