0  REM <CTRL-M><CTRL-M><CTRL-M>IMPORTANT: READ ME FIRST<CTRL-M><CTRL-M>BY GREG TANG<CTRL-J><CTRL-J>
10  GOTO 70
20  HTAB (21 - LEN(H$)/2): PRINT H$;: RETURN 
30 R = 0:L = 1
40  READ A$: IF A$ = "*"  THEN MX = R: RETURN 
50 B$ =  LEFT$(A$,1): IF B$ < >"*"  THEN A$(R,L) = A$:L = L +1: GOTO 40
60 R = R +1:L = 1:A$(R,0) =  RIGHT$(A$, LEN(A$) -1): GOTO 40
70 D$ =  CHR$(13) + CHR$(4): DIM A$(20,18): HOME : TEXT : INVERSE : VTAB 23: HTAB 2: PRINT " ";: HTAB 39: PRINT " ": HTAB 2: PRINT  TAB( 40);: POKE 34,0: INVERSE : FOR V = 23 TO 2  STEP  -1: VTAB V: HTAB 1: PRINT " ";: HTAB 40: PRINT " ";: NEXT 
80  VTAB 3: HTAB 4: PRINT  TAB( 38);: VTAB 2: HTAB 1: PRINT  TAB( 41);: VTAB 1: HTAB 4: PRINT  TAB( 38): VTAB 2:H$ = "IMPORTANT: READ ME FIRST": GOSUB 20: NORMAL : VTAB 12:H$ = " ONE MOMENT PLEASE ....": GOSUB 20: POKE  -16368,0: POKE 34,5: GOSUB 40: VTAB 13: HTAB 2: PRINT  TAB( 39);
90  POKE 32,0: POKE 33,40: POKE 34,0: POKE 35,24: FOR I = 1 TO MX: INVERSE : VTAB 2: HTAB 3: PRINT  TAB( 39);:H$ = A$(I,0): GOSUB 20: NORMAL : FOR J = 1 TO 18: VTAB J +4: HTAB 3: PRINT A$(I,J); TAB( 40);: NEXT J: IF I = MX  THEN 110
100  GOSUB 130: NEXT I
110  POKE  -16368,0: VTAB 18: HTAB 18: PRINT "- - -": VTAB 20: HTAB 8: PRINT "PRESS <ESC> TO RETURN TO": HTAB 6: PRINT "THE OPENING MENU OR PRESS ANY": HTAB 4: PRINT "OTHER KEY TO READ THIS FILE AGAIN";: GET A$: IF A$ < > CHR$(27)  THEN 90
120  TEXT : HOME : VTAB 10: HTAB 10: PRINT "LOADING OPENING MENU": VTAB 12: HTAB 13: PRINT "PLEASE WAIT ...": PRINT D$"RUNOPENING MENU"
130  INVERSE : VTAB 24: HTAB 3: PRINT "<ESC> TO EXIT, <ANY KEY> TO CONTINUE";: POKE  -16368,0
140 A =  PEEK( -16384): IF A < = 127  THEN 140
150 A$ =  CHR$(A -128): IF A$ =  CHR$(27)  THEN  NORMAL : GOTO 120
160  VTAB 24: HTAB 2: PRINT  TAB( 40);: NORMAL : RETURN 
9000  DATA "*USE YOUR COPY, NOT THE LIBRARY'S","STOP NOW, IF YOU ARE USING THE","DISKETTE YOU BORROWED FROM THE","LIBRARY.  YOU COULD EASILY RUIN IT."," ","REMEMBER, YOU ARE FULLY RESPONSIBLE","FOR ANY DAMAGE OR ALTERATION TO THE"
9020  DATA "LIBRARY'S DISKETTE AND ITS FILES.","*MAKE YOUR COPY NOW","COPY THE LIBRARY'S DISKETTE ONTO ONE","OF YOUR BLANK DISKETTES, NOW."," ","RUN THE PROGRAMS WITH YOUR COPY,","NEVER WITH THE LIBRARY'S.","*PROTECT THE DISKETTE"
9040  DATA "TRANSPORT THE DISKETTE TO AND FROM","THE LIBRARY WITH UTMOST CARE.  DO","NOT BEND OR CRUSH IT.  CARRY IT IN A","HARD CARRYING CASE.  IF YOUR LIBRARY","DOESN'T PROVIDE YOU WITH ONE, USE","YOUR OWN."," "
9060  DATA "NEVER TOUCH THE EXPOSED RECORDING","SURFACE.","*PROTECT THE DISKETTE (CONT)","DON'T INSERT THE DISKETTE INTO OR","REMOVE IT FROM A DISK DRIVE WHEN THE","DRIVE'S RED LIGHT IS ON.  OTHERWISE,","YOU COULD SERIOUSLY DAMAGE THE DISK"
9080  DATA "AND YOUR COMPUTER."," ","KEEP THE DISKETTE AWAY FROM DUST,","DIRT, GREASE, CIGARETTE SMOKE, FOODS","AND BEVERAGES, MAGNETIC FIELDS AND","METAL DETECTORS, AND EXTREMES IN","TEMPERATURE.  DON'T SET ANYTHING ON","TOP OF IT."
9100  DATA "*PROTECT THE DISKETTE (CONT)","STORE THE DISKETTE IN ITS PROTECTIVE","ENVELOPE IN A SAFE PLACE.  RETURN IT","AS SOON AS POSSIBLE (OTHER PEOPLE","ARE WAITING TO BORROW IT)."," ","NEVER DEPOSIT IT IN A BOOK DROP."," "
9120  DATA "AS EMPHASIZED BEFORE, ALWAYS USE","YOUR COPY, NOT THE LIBRARY'S.","*IF A PROGRAM DOESN'T WORK","THE PROGRAMS WERE TESTED THOROUGHLY","BEFORE THEY WERE DELIVERED TO YOUR","LIBRARY.  HOWEVER, IT'S POSSIBLE"
9140  DATA "THAT A PREVIOUS USER DAMAGED A","DISKETTE."," ","PLEASE REPORT DEFECTIVE DISKETTES TO","YOUR LIBRARIAN."," ","BUT BEFORE YOU DO, BE SURE THE FAULT","DOESN'T LIE ELSEWHERE, AS IS THE","CASE 99% OF THE TIME."
9160  DATA "*IF A PROGRAM DOESN'T WORK (CONT)","MAYBE THERE'S A MEMORY CONFLICT","BETWEEN PROGRAMS.  MAYBE THE PROGRAM","IS TRYING TO WRITE TO A WRITE-","PROTECTED DISKETTE.  PERHAPS YOUR","EQUIPMENT IS MALFUNCTIONING.  MAYBE"
9180  DATA "THE PROGRAM DOESN'T WORK WITH YOUR","PARTICULAR PRINTER OR EXPANSION","CARD.  PERHAPS YOU ARE MAKING AN","OPERATOR'S ERROR.  MAYBE THE PROGRAM","IS BEYOND YOUR LEVEL OF EXPERIENCE.","*IF A PROGRAM DOESN'T WORK (CONT)"
9200  DATA "THE SUREST WAY TO GET A PROGRAM","RUNNING SMOOTHLY AGAIN IS TO FOLLOW","THESE TWO EASY STEPS: 1) LEAVE THE","DISK IN THE DRIVE AND TURN THE","COMPUTER OFF.  2) WAIT AT LEAST 15","SECONDS AND TURN IT ON AGAIN -- THE"
9220  DATA "COMPUTER WILL REBOOT AUTOMATICALLY."," ","IF THE PROGRAM STILL WON'T RUN,","CONSULT YOUR APPLE MANUAL, REVIEW","THE 'TIPS FOR BEGINNERS' FILE ON","THIS DISKETTE, REREAD THE PROGRAM'S","INSTRUCTIONS, OR GET ADVICE FROM AN"
9240  DATA "EXPERIENCED USER."
9260  DATA "*COPYRIGHTS","PUBLIC DOMAIN RESEARCH COPYRIGHTED","ITS ENHANCEMENTS TO THE PROGRAMS.","HOWEVER, THESE COPYRIGHTS WON'T","RESTRICT YOU FROM COPYING AND USING","THE PROGRAMS FOR YOUR OWN OR A","FRIEND'S PERSONAL USE.  AS A PATRON"
9280  DATA "OF YOUR LIBRARY, YOU HAVE THE","PUBLISHER'S PERMISSION."," ","WRITTEN PERMISSION TO DISTRIBUTE AN","ENHANCED PROGRAM WILL BE GRANTED TO","A LEGITIMATE USER GROUP ON REQUEST."," ","THE PDSOF TITLE GRAPHICS ARE"
9300  DATA "COPYRIGHTED BY PUBLIC DOMAIN","SOFTWARE ON FILE.  SEE THE","INDIVIDUAL FILE AND PROGRAM LISTINGS","FOR OTHER COPYRIGHT NOTICES.","*TRADEMARKS AND SERVICE MARKS","THE FOLLOWING ORGANIZATIONS ARE THE"
9320  DATA "OWNERS OF THE TRADEMARKS AND/OR","SERVICE MARKS THAT FOLLOW THEIR","NAMES:  APPLE COMPUTER, INC.: APPLE,","APPLE II, APPLE II+, APPLE IIE,","APPLE IIC, APPLESOFT BASIC, INTEGER","BASIC, APPLE DOS AND APPLE PRODOS;"
9340  DATA "FACTS ON FILE, INC.: PDSOF AND PUB-","LIC DOMAIN SOFTWARE ON FILE; PUBLIC","DOMAIN RESEARCH, INC.: PUBLIC DOMAIN","RESEARCH.","*WARRANTY","NEITHER YOUR LIBRARY, THE","PROGRAMMERS, PUBLIC DOMAIN RESEARCH,"
9360  DATA "PUBLIC DOMAIN SOFTWARE ON FILE,","FACTS ON FILE, INC. NOR ITS SUPPLIERS","AND DISTRIBUTORS MAKE ANY WARRANTY OR","REPRESENTATION, EITHER EXPRESSED OR","IMPLIED, REGARDING THE SOFTWARE'S","PERFORMANCE OR ITS FITNESS FOR ANY"
9380  DATA "PARTICULAR PURPOSE.  UNDER NO CIR-","CUMSTANCES ARE THEY LIABLE OR RESPON-","SIBLE FOR ANY DAMAGE, INCLUDING DATA","OR EQUIPMENT PROBLEMS RESULTING FROM","USING THE SOFTWARE AND DISKETTES.","YOU, THE BORROWER, BEAR ALL RISKS"
9400  DATA "AND MUST ARRANGE FOR YOUR OWN USER","SUPPORT.","*FOR FURTHER INFORMATION","READ THE PDSOF USER'S GUIDE BOOKLET.","YOU CAN READ IT AT THE LIBRARIAN'S","DESK.","*": REM <CTRL-J><CTRL-J>
63999  REM <CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H>  ---====] NOTICE [====---<CTRL-M><CTRL-M>       COPYRIGHT 1985<CTRL-M>   PUBLIC DOMAIN RESEARCH<CTRL-M><CTRL-M>ANYONE WISHING TO DISTRIBUTE<CTRL-M>THIS PROGRAM MUST OBTAIN THE<CTRL-M>EXPRESSED WRITTEN CONSENT OF<CTRL-M>THE PUBLISHER.<CTRL-M><CTRL-M>       ----==][==----