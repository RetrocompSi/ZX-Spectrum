100 REM Program KVIZ
140 DIM a$(20, 20)
150 DIM b$(20, 20)
160 DIM t(5)
170 GOSUB 830
180 CLS
210 FOR n=1 TO 5:LET t(n)=0:NEXT n
260 FOR n=1 TO 5
270 LET r=INT(RND*20)+1
310 FOR z=1 TO 5
320 IF t(z)=r THEN GOTO 270
330 NEXT z
340 LET t(n)=r
350 NEXT n
379 RANDOMIZE
380 LET q=INT(RND*5)+1
410 PRINT "KVIZ - http://www.retrocomp.si"
411 PRINT
420 PRINT "Kaj je kemicni simbol za ";a$(t(q))
430 FOR n=1 TO 5
440 PRINT n;"                       ";b$(t(n))
450 NEXT n
460 PRINT "Izberite odgovor med 1 in 5 "
500 LET r$ = INKEY$: IF r$<>"1" AND r$<>"2" AND r$<>"3" AND r$<>"4" AND r$<>"5" THEN GOTO 500
510 PRINT r$
560 IF VAL (r$)=q THEN PRINT "Pravilno": GOTO 660
570 PRINT "Napaka-pocakajte na pravilni odgovor !":GOTO 640
571 PRINT
640 PRINT "Odgovor je  ";b$(t(q)): GOTO 660
650 FOR n=1 TO 2500: NEXT n
660 PRINT "Zelite se odgovarjati ? d/n "
661 FOR n=1 TO 25:NEXT n
670 INPUT g$
680 IF g$="d" THEN GOTO 180
810 PRINT "Konec kviza"
811 STOP
830 FOR n=1 TO 20
840 READ a$(n), b$(n)
841 DATA "VODIK","H","HELIJ","HE","OGLJIK","C","DUSIK","N","KISIK","O","NEON","NE","NATRIJ","NA","MAGNEZIJ","MG","ALUMINIJ","AL"
844 DATA "FOSFOR","P","ZVEPLO","S","KLOR","CL","ZELEZO","FE","BAKER","CU","CINK","ZN","BROM","BR","SREBRO","AG","ZLATO","AU"
847 DATA "ANTIMON","SB","KALIJ","K"
850 NEXT n
860 RETURN
