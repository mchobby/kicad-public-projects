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

; Init PIO1 Port B as input.
; see video: https://youtu.be/bCdfLv_SNmc?si=zYd01NSaQZo_bdW5

include 'io.asm'

org     0x0000               ; Cold reset Z80 entry point.

    ld a, $00                ; all LEDs OFF
    out (RCIO_OUTPUT), a

main:
    ld a,$4F                 ; set mode 1 (input)
    out (PIO1_BASE+PIO_PORTB+PIO_CMD),a

read_portb:
    in a,(PIO1_BASE+PIO_PORTB+PIO_DATA)

    bit 7,a                  ; is bit 7 set in a?
    jp z,input_is_zero
    ld a, $01                ; turn LED D0 on
    jp set_user_led

input_is_zero:
    ld a, $00                ; turn LED D0 off

set_user_led:
    out (RCIO_OUTPUT),a
    jp read_portb
