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

; Immediate Print a null terminated string on the LCD. The string is declared
; just after the piolcd_iprint call.
;
; Set LEDs D1 on the RCIO expansion board at start.
;
; https://github.com/arduino-libraries/LiquidCrystal/blob/master/src/LiquidCrystal.cpp
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

    ld a, $00                ; all LEDs OFF
    out (RCIO_OUTPUT), a


START:
    ld a, $01                ; LED 1 ON
    out (RCIO_OUTPUT), a

		call piolcd_begin        ; Init the LCD

		; Immediate Print displays the Null-Terminated string encoded right after
		;   the iprint call
		call	piolcd_iprint
		db	"..: Hello :.."
		db	0			; DON'T FORGET the null terminator!

		ld a, $80                ; all LED 7 ON
    out (RCIO_OUTPUT), a

		HALT


include 'piolcd.asm'
