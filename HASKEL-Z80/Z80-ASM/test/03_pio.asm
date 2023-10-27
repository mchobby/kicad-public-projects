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

; Init PIO1 Port A as output.
; see video: https://youtu.be/bCdfLv_SNmc?si=zYd01NSaQZo_bdW5

include 'io.asm'

org     0x0000               ; Cold reset Z80 entry point.

main:
    ld a, $00                ; all LEDs OFF
    out (RCIO_OUTPUT), a

    ld a, $FF                ; wait a bit 
wait_loop:
    dec a
    jr nz, wait_loop

    ld a,$0F                 ; set mode 0 (output) 
    out (PIO1_BASE+PIO_PORTA+PIO_CMD),a

    ; set 
    ld a,%00000101           ; set PA0 & PA2 high
    out (PIO1_BASE+PIO_PORTA+PIO_DATA),a

    ld a, $80                ; Lit LED D7 
    out (RCIO_OUTPUT),a      
    halt

