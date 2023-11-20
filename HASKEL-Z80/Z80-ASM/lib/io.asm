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

; Standard definition for IO for CPU-BOARD et Add-on board board

; ==============================================
;   CPU-BOARD
; ==============================================
;
; --- PIO ---
;
; eg: PIO2_BASE+PIO_PORTB+PIO_CMD
;
PIO1_BASE:  equ  0x08 ; Base port for PIO1
PIO2_BASE:  equ  0x00
PIO3_BASE:  equ  0x0C

PIO_PORTA:  equ  0x00 ; to append to PIOx_BASE
PIO_PORTB:  equ  0x01

PIO_DATA:   equ  0x00 ; to append to PIOx_BASE
PIO_CMD:    equ  0x02

; --- CTC ---
CTC_BASE:   equ  0x04

CTC_CH0:    equ  0x00 ; Channel. Add to base. Fix CS1 & CS0 values
CTC_CH1:    equ  0x01
CTC_CH2:    equ  0x02
CTC_CH3:    equ  0x03


; ==============================================
;   CPU-BOARD-ADDON
; ==============================================
;
; --- RCIO ---
;
RCIO_OUTPUT:  equ  0x1D
RCIO_INPUT:   equ  0x1C
