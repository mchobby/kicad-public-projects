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

; First program with stack pointer (set to end of RAM)
; Alternate the blink of LEDs D7 & D6 on the RCIO expension board.
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

    call _delay

    ld a, 0x40           ; LED D6
    out (RCIO_OUTPUT),a  ; Apply to LEDs

    call _delay
    jp START             ; restart the Loop

; ############################################################
;   Waste some time then return
; ############################################################
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
