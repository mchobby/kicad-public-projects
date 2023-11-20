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

; Configure the CTC ch1 timer to divide the 2 Mhz clock / 256 / 256
;  => provides 7812.5 Hz output
;

include 'io.asm'

RAM_BASE: equ 0x2000 ; see CPU-BOARD addressing table
RAM_END:  equ 0x27FF

org     0x0000               ; Cold reset Z80 entry point.

RST0:
    ld sp,RAM_END+1          ; init stack pointer

    ld a, $00                ; all LEDs OFF
    out (RCIO_OUTPUT), a


START:
    ld a, 0x80           ; LED D7
    out (RCIO_OUTPUT),a  ; Apply to LEDs

    ld a, %00100111      ; init CTC Ch 1 as Timer, immediate start with prescale 256
    out (CTC_BASE + CTC_CH1), a
		ld a, 0xFF           ; set time constant. All 0 bits => 256
		out (CTC_BASE + CTC_CH1), a

    ld a, 0xFF           ; All LED
    out (RCIO_OUTPUT),a  ; Apply to LEDs

   halt
