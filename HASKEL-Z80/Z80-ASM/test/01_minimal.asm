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

; Activate the CPU-BOARD-ADDON LEDs D0 to D4 (port $1D)
; This runs entirely from the EEPROM (does not use SRAM).

;include 'io.asm'

    org     0x0000          ; Cold reset Z80 entry point.

loop:
    ld a, $0f    ; Lit LED 0, 1, 2, 3
    out ($1d),a  ; LED port
    jp loop
    nop
    nop
    nop
    halt        ; Stop program
