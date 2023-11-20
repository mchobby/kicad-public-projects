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

; Just initialize the LCD 20x4 and print some ASCII chart
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

		                         ; Writing something on the LCD
		LD e, 65                 ; send A to LCD
		call piolcd_char

		ld b,2                   ; column
		ld c,4                   ; row
		call piolcd_set_cursor

		HALT

include 'piolcd.asm'
