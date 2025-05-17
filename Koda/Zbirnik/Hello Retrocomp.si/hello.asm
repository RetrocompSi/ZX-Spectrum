   DEVICE ZXSPECTRUM48

   org $8000

start:
   jp print_hello

; Character Codes
ENTER       equ $0D

; ROM routines
ROM_CLS     equ $0DAF
ROM_PRINT   equ $203C

hello:
   db "Hello Retrocomp.si", ENTER
HELLO_LEN   equ $ - hello

print_hello:
   call ROM_CLS
   ld de,hello
   ld bc,HELLO_LEN
   call ROM_PRINT
   ret

; Deployment
LENGTH      equ $ - start

   ; option 1: tape
   include TapLib.asm
   MakeTape ZXSPECTRUM48, "hello.tap", "hello", start, LENGTH, start
