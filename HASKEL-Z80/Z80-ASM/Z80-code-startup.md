# Z80 code startup 

Here a code Startup I found [here on electronics.stackexchange.com](https://electronics.stackexchange.com/questions/485356/zilog-z80-stack-pointer-location-in-memory)

I just disagree with the max address for the stack pointer on a 32K system.

```
; Example for 32K system...
;RAM_END         equ 8400h                   ; Last byte is actually 83ffh.
; Max addr on 32K system = 32*1024 = 32768 = 0x8000
; Last byte is 0x7FFF
;,
RAM_END         equ 8000h

; Start here on power up/reset.
;
        org 0
RST0:   ld sp,RAM_END   ; Stack at the end of ram.
        jp START
        db 0, 0         ; Filler bytes...

RST8:   db 0, 0, 0, 0, 0, 0, 0, 0

RST10H: db 0, 0, 0, 0, 0, 0, 0, 0

RST18H: db 0, 0, 0, 0, 0, 0, 0, 0

RST20H: db 0, 0, 0, 0, 0, 0, 0, 0

RST28H: db 0, 0, 0, 0, 0, 0, 0, 0

RST30H: db 0, 0, 0, 0, 0, 0, 0, 0


; Mode 1 Interrupt handler.
; 
RST38H:
    di              ; Disable interrupts.
                    ; Do interrupt stuff here.
    ei              ; Enable interrupts.
    reti

    db  (0066H-$) dup (0)

; Non-maskable interrupt handler (NMI).
;
    org 0066H
NMIINT:
    ; Do NMI stuff here.
    retn

; Main monitor start,
;
START:
    im 1            ; Interrupt mode 1.
    ei              ; Enable interrupts.
    ...
```
