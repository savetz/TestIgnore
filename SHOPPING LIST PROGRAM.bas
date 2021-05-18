100  REM <CTRL-J><CTRL-J>PROGRAM TITLE<CTRL-J>
110  GOTO 400
200  HTAB (22 -( LEN(H$)/2)): PRINT H$: RETURN 
300  VTAB 6:H$ = "S H O P P I N G   L I S T": GOSUB 200
310  VTAB 9:H$ = "PROGRAM BY JIM PEARSON": GOSUB 200
320  VTAB 12:H$ = "MODIFIED BY DAVID HURLEY": GOSUB 200: RETURN 
400  POKE 768,173: POKE 769,48: POKE 770,192: POKE 771,136: POKE 772,208: POKE 773,4: POKE 774,198: POKE 775,7: POKE 776,240: POKE 777,8: POKE 778,202: POKE 779,208: POKE 780,246: POKE 781,166: POKE 782,6: POKE 783,76: POKE 784,0: POKE 785,3: POKE 786,96: POKE 787,0
410  HOME : INVERSE : FOR H = 1 TO 19: VTAB 1: HTAB 21 -H: PRINT " ";: HTAB 20 +H: PRINT " ";: VTAB 18: HTAB 21 -H: PRINT " ";: HTAB 20 +H: PRINT " ";: NEXT 
420  FOR I = 1 TO 8: VTAB 10 -I: HTAB 1: PRINT " ";: HTAB 40: PRINT " ";: VTAB 9 +I: HTAB 1: PRINT " ";: HTAB 40: PRINT " ";: NEXT 
430  VTAB 2: HTAB 2: PRINT " ";: HTAB 39: PRINT " ": VTAB 17: HTAB 2: PRINT " ";: HTAB 39: PRINT " ";: NORMAL 
440  GOSUB 300
500  POKE 6,222: POKE 7,77: CALL 768: FOR W = 1 TO 200: NEXT : POKE 6,222: POKE 7,30: CALL 768: POKE 6,222: POKE 7,30: CALL 768: POKE 6,222: POKE 7,30: CALL 768: POKE 6,149: POKE 7,212: CALL 768
600 WD$ = "                                        ... AN AWARD-WINNING PROGRAM PRESENTED BY PUBLIC DOMAIN SOFTWARE ON FILE FOR THE USE OF THE PATRONS OF THIS LIBRARY ............. PRESS ANY KEY TO CONTINUE .........."
610 Q$ = "----------------------------------------":Q = 1: NORMAL : VTAB 21: HTAB 1: PRINT Q$: PRINT Q$;: POKE  -16368,0:L =  LEN(WD$):W = 75
620  IF  PEEK( -16384) >127  THEN  POKE  -16368,0: HOME : NORMAL : RUN 1000
630 BN$ =  LEFT$(WD$,40): IF L >166  THEN WD$ =  MID$ (WD$,2,L -1):L = L -1: GOTO 650
640 WD$ =  MID$ (WD$,2,L -1) + LEFT$(WD$,1)
650  VTAB 22: HTAB 1: PRINT BN$: FOR WW = 1 TO W: NEXT : GOTO 620
999  TEXT : HOME : VTAB 10: HTAB 6: PRINT "LOADING SELECT-A-PROGRAM MENU": PRINT : HTAB 13: PRINT "PLEASE WAIT ...":D$ =  CHR$(13) + CHR$(4): PRINT D$"RUN MENU": REM <CTRL-M><CTRL-J><CTRL-J>         END OF TITLE<CTRL-J>
1000  REM <CTRL-M><CTRL-M><CTRL-M>SHOPPING LIST PROGRAM<CTRL-M><CTRL-M>BY JIM PEARSON<CTRL-M><CTRL-M>MODIFIED BY DAVID HURLEY<CTRL-M><CTRL-M>
1010  GOSUB 9000
1040 D$ =  CHR$(13) + CHR$(4): DIM L$(100):N$ = "SHOPPING LIST"
1050  TEXT 
1060  HOME : PRINT D$;"PR#0": ONERR  GOTO 5000
1500  REM  * READ LIST IF IT EXISTS*
1510  PRINT D$;"OPEN";N$
1520  PRINT D$;"READ";N$
1530  INPUT N
1540  FOR I = 1 TO N
1550  INPUT L$(I)
1560  IF L$(I) = "END"  THEN  PRINT D$;"CLOSE": GOTO 3010
1570  NEXT 
2000  REM    * CREATE LIST *
2010  HOME :N = 1
2020  PRINT "ENTER 'E' TO END INPUT": POKE 34, PEEK(37): PRINT 
2030  PRINT "MAXIMUM 13 CHARACTERS PER ITEM": PRINT 
2040  PRINT "ITEM NUMBER ";N;" ";: INPUT "";L$(N)
2050  IF L$(N) = "E"  THEN  GOTO 2090
2060 N = N +1
2070  IF N = 101 GOTO 5020
2080  GOTO 2040
2090  PRINT D$;"OPEN";N$: PRINT D$;"DELETE";N$: PRINT D$;"OPEN";N$: PRINT D$;"WRITE";N$
2100  PRINT N
2110  FOR I = 1 TO N -1
2120  PRINT L$(I)
2130  NEXT 
2140  PRINT "END"
2150  PRINT D$;"CLOSE";N$
2160  POKE 34,0
2170  HOME 
3000  REM   * LOOK AT LIST *
3010  PRINT "*** CURRENT SHOPPING LIST ***": PRINT 
3020  FOR I = 1 TO N -1  STEP 2
3030  PRINT I;" ";L$(I);: POKE 36,25: IF L$(I +1) < >"END"  AND L$(I +1) < >"E"  THEN  PRINT (I +1);" ";L$(I +1)
3040  NEXT 
3050  PRINT D$: PRINT : PRINT "DO YOU WISH TO MAKE ADDITIONS ";: INPUT A$
3060  IF  LEFT$(A$,1) < >"Y"  THEN 4000
3070  GOTO 2020
4000  POKE 34,0: HOME : VTAB 2: PRINT "PRESS 'Y' TO PRINT SHOPPING LIST        PRESS 'N' TO QUIT                       ========================================";: INPUT "";A$
4010  IF  LEFT$(A$,1) = "Y"  THEN  INVERSE : PRINT : PRINT "TYPE 'D' TO DESTROY LIST AFTER PRINTING": NORMAL : GOTO 4030
4020  GOTO 999
4030  PRINT : PRINT "TYPE 'S' TO SAVE THE LIST AFTER PRINTING": PRINT : PRINT 
4040  INPUT A$
4050  IF A$ = "D"  OR A$ = "S"  THEN 4070
4060  GOTO 4040
4070  PRINT : PRINT D$;"PR#1": POKE 36,10: PRINT "** CURRENT SHOPPING LIST **": PRINT 
4080  FOR I = 1 TO N -1
4090  PRINT I;" ";L$(I)
4100  NEXT 
4110  PRINT : POKE 36,13: PRINT "** END SHOPPING LIST **"
4120  PRINT D$;"PR#0"
4130  IF A$ = "S"  THEN  PRINT "    FILE ALREADY SAVED .... ": FOR W = 1 TO 3000: NEXT : GOTO 999
4140  PRINT : PRINT D$;"PR#0": PRINT D$;"DELETE";N$: PRINT "LIST DELETED"
5000  IF  PEEK(222) = 5  THEN  PRINT "SHOPPING LIST DOES NOT EXIST": PRINT : INPUT "DO YOU WISH TO CREATE ONE? ";A$
5010  IF  LEFT$(A$,1) = "Y"  THEN  GOTO 2010
5015  GOTO 4060
5020  HOME : PRINT : INVERSE : PRINT "LIST IS FULL.": NORMAL : PRINT : PRINT "MUST PRINT THIS LIST AND CONTINUE": PRINT "NEW LIST.": PRINT : PRINT "PRESS RETURN";: CALL  -676:A$ = "Y": POKE 34,0: HOME : GOTO 4010
9000  HOME :Q$ = "----------------------------------------": PRINT Q$: PRINT Q$: VTAB 2: HTAB 16: PRINT "IMPORTANT"
9010  VTAB 7: HTAB 3: PRINT "1. DOES THIS DISKETTE CONTAIN ANY          OTHER FILES BESIDES THIS                PROGRAM AND ITS SUPPORT FILES?"
9020  VTAB 12: HTAB 3: PRINT "2. IS THIS DISKETTE WRITE-PROTECTED?       (THAT IS, DOES IT HAVE A TAB ON         ITS WRITE-PROTECT NOTCH?)"
9030  VTAB 17: PRINT : HTAB 4: PRINT "TYPE 'Y' IF THE ANSWER IS 'YES' TO      EITHER OF THE ABOVE TWO QUESTIONS."
9040  PRINT : HTAB 4: PRINT "PRESS ANY OTHER KEY IF THE ANSWER       IS 'NO' TO BOTH QUESTIONS. ";
9050  GET Z$
9060  IF Z$ < >"Y"  THEN  RETURN 
9070  VTAB 2: HTAB 9: PRINT "WARNING TO NOVICE USERS": VTAB 5: CALL  -958
9080  PRINT : PRINT "THIS PROGRAM CAN CREATE OR MODIFY OTHER PROGRAMS AND FILES."
9090  PRINT : PRINT : PRINT "THIS COULD POSSIBLY ERASE OR OTHERWISE  DAMAGE OTHER PROGRAMS ON THIS DISKETTE."
9100  PRINT : PRINT : PRINT "TO BE SAFE, COPY THIS PROGRAM (AND ITS  SUPPORT FILES) ONTO ITS OWN FORMATTED,  BLANK DISKETTE.  DO NOT COPY ANY OTHER  FILES ONTO IT."
9110  VTAB 23: PRINT "    PRESS ANY KEY TO CONTINUE ... ";: GET Z$
9120  VTAB 2: HTAB 1: PRINT  TAB( 14)"INSTRUCTIONS" TAB( 41);
9130  VTAB 5: CALL  -958: PRINT " FIRST, FORMAT A BLANK DISKETTE.  THEN,  COPY THESE PROGRAMS AND FILES ONTO IT:"
9140  PRINT : HTAB 12: PRINT "---------------------            *A 021 SHOPPING LIST PROGRAM             T 002 SHOPPING LIST                           ---------------------"
9150  PRINT : PRINT " TO COPY THOSE FILES, USE APPLE'S FILEM  OR FID UTILITY."
9160  PRINT : PRINT " DO NOT WRITE-PROTECT YOUR NEW DISKETTE. OTHERWISE, THIS PROGRAM MIGHT CRASH     BECAUSE IT WON'T BE ABLE TO CREATE OR   MODIFY THE NECESSARY FILES."
9170  VTAB 22: PRINT " () TYPE 'Q' TO QUIT THIS PROGRAM NOW.   () PRESS ANY OTHER KEY TO RUN IT.";: GET Z$
9180  IF Z$ = "Q"  THEN 999
9190  RETURN 
60660  REM <CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H>          <CTRL-M><CTRL-M>   -------- NOTICE --------<CTRL-M><CTRL-M> ALL ENHANCEMENTS TO THIS PRO-<CTRL-M>GRAM   ARE   COPYRIGHTED  1985<CTRL-M>PUBLIC  DOMAIN RESEARCH.  ANY-<CTRL-M>ONE WISHING TO DISTRIBUTE THIS<CTRL-M>MODIFIED  PROGRAM   MUST  HAVE
63999  REM <CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H>THE EXPRESSED WRITTEN  CONSENT<CTRL-M>OF THE  PUBLISHER.  LEGITIMATE<CTRL-M>USER GROUPS  MAY  REQUEST THIS<CTRL-M>PERMISSION.<CTRL-M><CTRL-M>    ----------//----------<CTRL-M>