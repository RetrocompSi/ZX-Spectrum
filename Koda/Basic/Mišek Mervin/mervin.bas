10 BORDER 0: PAPER 0: INK 5: CLS
20 REM ***data***
30 FOR n=USR "a" TO USR "e"+6: READ k: POKE n,k: NEXT n
40 GO SUB 620: LET hi=0: LET c=0: LET s=0: LET a=1: LET b=1
50 REM *****SCREEN$*****
60 BORDER 0: PAPER 0: INK 5: CLS
70 LET s=0: LET q=5: LET c=0
80 PLOT 8,168: DRAW 239,0
90 PLOT 8,167: DRAW INK 5;0,-167
100 PLOT 247,167: DRAW INK 5;0,-167
110 FOR n=2 TO 8
120 PRINT AT n,2; INK 6; BRIGHT 1; "AAAAAAAAAAAAAAAAAAAAAAAAAAAA ": NEXT n
130 REM **gl.program**
140 LET n=15: LET x=20: LET y=INT (RND*10+5): LET dx=x: LET dy=y
150 IF y>28 OR y<3 THEN GO SUB 330
160 IF x<2 THEN LET a=-a
170 IF SCREEN$ (x, y)<>"*" THEN GO SUB 270
180 IF X>20 AND (y=n+1 OR y=n+2 OR y=n+3) THEN LET a=-a: BEEP 008,10: LET y=y+1
190 PRINT AT dx,dy; " ";AT x,y;"B": LET dx=x: LET dy=y
200 PRINT AT 21,n; INK 3; BRIGHT 1; " CDE "
210 LET n=n+(INKEY$="0" AND n<26)-(INKEY$="1" AND n>0)
220 IF INKEY$="9" THEN PAUSE 0
230 LET x=x-a: LET y=y+b
240 IF x>21 THEN GO TO 360
250 PRINT AT 0, 3;"T.=";s;AT 0,13;"NR";hi;AT 0,22;"MIST= ";q
260 GO TO 150
270 BEEP .008,20
280 PRINT AT dx,dy;" ";AT x,y; INK 5; "B"
290 IF level=2 THEN LET a=a-1
300 IF x<11 THEN LET s=s+1: LET c=c+1
310 IF c=loop THEN GO TO 600
320 RETURN
330 BEEP .008, 30
340 LET b=1-2*(y>28 OR y<2)
350 RETURN
360 PRINT AT 0,22;"MISI= ";q
370 LET q=q-1
380 PAUSE 2
390 FOR u=0 TO 6: FOR d=6 TO 0 STEP -1: BEEP .009,u: BEEP .009, d: NEXT d: NEXT u
400 IF q<>0 THEN GO TO 470
410 REM **nova igra**
420 IF q<1 THEN FOR z=1 TO 6: PRINT AT 10,11; INK 5; FLASH 1;"**KONEC**"; AT 12, 7; "TEZ. STOPNJA 1-2  ": FOR d=40 TO 0 STEP -5: BEEP .009,d: NEXT d: NEXT z: LET a=1: LET b=1
430 IF INKEY$="1" THEN LET loop=196: LET level=1: CLS: GO TO 60
440 IF INKEY$="2" THEN LET loop=196: LET level=2: CLS: GO TO 60
450 IF TNKEY$<>"" THEN GO TO 430
460 GC TO 430
470 LET m=RND
480 PRINT AT 21,0;"                              "
490 LET a=1
500 LET b=-b*(m<0.5)+b*(m>=0.5)
510 GO TO 140
520 REM **data grafika**
530 DATA 24,60,126,247,255,239,126,60
540 DATA 195,219,126,90,126,102,126,60
550 DATA 96,99,231,255,255,231,96,96
560 DATA 126,255,231,169,189,231,255,36
570 DATA 6,198,231,255,255,231,6,6
590 REM **nov ekran**
600 LET a=1: LET b=1: LET c=0: FOR j=1 TO 40: PRINT AT 11,10; FLASH 1; INK RND*6; "NOV EKRAN": BEEP .008,j: NEXT j: CLS: GO TO 80
610 REM **navodila**
620 PRINT BRIGHT 1; INK 6; "--------MERVIN NA MESECU--------"
630 PRINT BRIGHT 1; INK 6; "TI KONTROLIRAS IZSTRELISCE NA DNU EKRANA IN KO UJAMES MERVINA, DOBIS TOCKO. TOCKO DOBIS TUDI, CE MERVIN POJE NEKAJ SIRA."
640 INK 4
650 PRINT BRIGHT 1; "BISTVO IGRE JE POMAGATI MERVINU, DA POJE KAR NAJVEC SIRA Z MESECA. MERVIN IMA NA HRBTU DVE RAKETI, KI MU POMAGATA LETETI. RAKETI IMATA DOVOLJ GORIVA LE ZA ENO VOZNJO. NA PLOSCADI MORAS MERVINA UJETI, DA SI NAPOLNI REZERVOAR."
660 PRINT BRIGHT 1; "KO DOSEZES 196, GRES NA DRUG PLANET."
670 POKE 23692, 255
680 PRINT #0; FLASH 1; BRIGHT 1; INK 6; "  PRITISNI KATERIKOLI GUMB      "
690 IF INKEY$="" THEN GO TO 690
700 IF INKEY$<>"" THEN FLASH 0: GO TO 720
710 GO TO 690
720 CLS: PRINT BRIGHT 1; INK 6; "TIPKE SO:    1=levo                      0=desno                         9=premor        "
730 PRINT BRIGHT 1; FLASH 1; INK 4; " ENTER ZA TEZ. STOPNJO 1-2     "
740 IF INKEY$="1" THEN LET loop=196: LET level=1: RETURN
750 IF INKEY$="2" THEN LET loop=196: LET level=2: RETURN
760 GO TO 740
770 SAVE "MISEK"
780 RUN
