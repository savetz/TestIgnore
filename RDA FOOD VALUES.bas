100  REM <CTRL-J><CTRL-J>PROGRAM TITLE SCREEN<CTRL-J><CTRL-J>
110  GOTO 400
200  HTAB (22 - LEN(H$)/2): PRINT H$;: RETURN : REM  CENTER STRING
300  REM <CTRL-J><CTRL-J>TITLE STRINGS<CTRL-J>
310  VTAB 7:H$ = "R D A   F O O D   V A L U E S": GOSUB 200
320  VTAB 11:H$ = "BY CURT TORGERSON": GOSUB 200
350  RETURN 
400  REM <CTRL-J><CTRL-J>INIT VARIBLES<CTRL-J><CTRL-J>
410  REM  SOUND ROUTINES
420  POKE 768,173: POKE 769,48: POKE 770,192: POKE 771,136: POKE 772,208: POKE 773,4: POKE 774,198: POKE 775,7: POKE 776,240: POKE 777,8: POKE 778,202: POKE 779,208: POKE 780,246: POKE 781,166: POKE 782,6: POKE 783,76: POKE 784,0: POKE 785,3: POKE 786,96: POKE 787,0:
430  REM  BORDER AND TITLES
440  HOME : INVERSE 
450  FOR H = 1 TO 19: VTAB 1: HTAB 21 -H: PRINT " ";: HTAB 20 +H: PRINT " ";: VTAB 18: HTAB 21 -H: PRINT " ";: HTAB 20 +H: PRINT " ";: NEXT 
460  FOR I = 1 TO 8: VTAB 10 -I: HTAB 1: PRINT " ";: HTAB 40: PRINT " ";: VTAB 9 +I: HTAB 1: PRINT " ";: HTAB 40: PRINT " ";: NEXT 
470  VTAB 2: HTAB 2: PRINT " ";: HTAB 39: PRINT " ": VTAB 17: HTAB 2: PRINT " ";: HTAB 39: PRINT " ";: NORMAL 
480  GOSUB 300
500  REM <CTRL-J><CTRL-J>TUNE<CTRL-J>
510  POKE 6,222: POKE 7,77: CALL 768: FOR W = 1 TO 200: NEXT : POKE 6,222: POKE 7,30: CALL 768: POKE 6,222: POKE 7,30: CALL 768: POKE 6,222: POKE 7,30: CALL 768: POKE 6,149: POKE 7,212: CALL 768
600  REM <CTRL-J><CTRL-J>STREAMER<CTRL-J>
605 Q$ = "----------------------------------------"
610 Q = 1: NORMAL : VTAB 21: HTAB 1: PRINT Q$: PRINT Q$;
620 WD$ = "                                      ... AN AWARD-WINNING PROGRAM PRESENTED BY PUBLIC DOMAIN SOFTWARE ON FILE FOR THE USE OF THE PATRONS OF THIS LIBRARY...........PRESS ANY KEY TO CONTINUE..........."
630  POKE  -16368,0:L =  LEN(WD$):SS = 60
640  FOR I = 1 TO L -1: IF  PEEK( -16384) >127  THEN  POKE  -16368,0: HOME : NORMAL : GOTO 1000
650  IF I +39 <L  THEN BN$ =  MID$ (WD$,I,40): GOTO 680
660  IF I +39 = L  THEN BN$ =  LEFT$(WD$,1) + RIGHT$(WD$,39): GOTO 680
670 BN$ =  RIGHT$(WD$,L -I +1) + LEFT$(WD$,(39 -(L -I)))
680  VTAB 22: HTAB 1: PRINT BN$
690  IF Q = 1  AND I = (L -40)  THEN Q = 0:WD$ =  RIGHT$(WD$, LEN(WD$) -40)
700  FOR WW = 1 TO SS: NEXT : NEXT : GOTO 630
710  GOTO 630
999  TEXT : HOME : VTAB 10: HTAB 6: PRINT "LOADING SELECT-A-PROGRAM MENU": PRINT : HTAB 13: PRINT "PLEASE WAIT ...":D$ =  CHR$(13) + CHR$(4): PRINT D$"RUN MENU": REM <CTRL-J><CTRL-J><CTRL-J>
1000  REM <CTRL-M><CTRL-M>FOOD GRAPH<CTRL-M>BY CURT TORGERSON<CTRL-M>
1010  REM  DATA DERIVED FROM
1020  REM  THE NATIONAL DAIRY
1030  REM  COUNCIL ASSIGNMENTS<CTRL-J><CTRL-J>
1040  TEXT : HOME :D$ =  CHR$(4):LF$ =  CHR$(10)
1050 N1 = 62:BADSP = 70: SPEED= 255
1060  FOR K = 0 TO 23
1070  READ NTE: POKE 944 +K,NTE
1080  NEXT K
1090  REM   
1100  REM <CTRL-M>--> INFORMATION ON PROGRAM
1110  VTAB 8: PRINT "  DO YOU WANT INSTRUCTIONS?   (Y/N)<CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H>";
1115  GET I$: IF I$ < >"Y"  AND I$ < >"N"  THEN 1115
1120  IF I$ < >"Y"  THEN 1450
1130  HOME : VTAB 2: PRINT "ENTER THE NAME OF A COMMON FOOD AND     THIS PROGRAM WILL SEARCH FOR IT."
1140  PRINT : PRINT "IF THE FOOD IS FOUND, A GRAPH           ILLUSTRATING THAT FOOD'S CONTRIBUTION"
1150  PRINT "TO THE U.S. RECOMMENDED DAILY           ALLOWANCE WILL BE PRINTED ON THE        SCREEN IN COLOR."
1160  GOSUB 1890
1170  VTAB 2: PRINT "NOTE THAT THE RECOMMENDED DAILY"
1180  PRINT "ALLOWANCES CHANGE SOMEWHAT DEPENDING"
1190  PRINT "ON WHETHER THE USER IS MALE, FEMALE,"
1200  PRINT "UNDER 11 YEARS, UNDER 15 YEARS OR"
1210  PRINT "UNDER 18 YEARS OF AGE"
1220  PRINT : PRINT "ALSO NOTE THAT THE GRAPH'S UPPER LIMIT"
1230  PRINT "IS 39% AND SOME FOODS MAY SUPPLY MORE"
1240  PRINT "THAN THAT PERCENTAGE."
1250  GOSUB 1890
1260  PRINT : PRINT "TO EXIT A GRAPH, PRESS THE 'SPACE BAR'."
1270  VTAB 2: PRINT "IMPORTANT:  THE FOODS MUST BE SPELLED   EXACTLY AS THEY ARE PRESENTED IN THE    LIST."
1280  GOSUB 1890: GOSUB 1310: GOSUB 1890
1290  GOTO 1450
1300  REM     --> FOOD INFO SUBROUTINE
1310  VTAB 2: PRINT "ON THE LEFT OF THE SCREEN WILL BE"
1320  PRINT "7 WHITE BLOCKS, REPRESENTING THE"
1330  PRINT "5%, 10% 15%, 20%, 25%, 30% AND 35%"
1340  PRINT "U.S. RECOMMENDED DAILY ALLOWANCES."
1350  PRINT : PRINT "THE FOLLOWING ABBREVIATIONS ARE USED    BELOW THE BAR GRAPH:"
1360  PRINT : PRINT "   CAL = CALORIES"
1370  PRINT "   PRO = PROTEIN"
1380  PRINT "   V-A = VITAMIN A"
1390  PRINT "   V-C = VITAMIN C"
1400  PRINT "   THI = THIAMIN                           RIB = RIBOFLAVIN"
1410  PRINT "   NIA = NIACIN                           CALC = CALCIUM"
1420  PRINT "    IR = IRON"
1430  RETURN 
1440  REM    -->READ BLOCK OF FOOD DATA
1450  DIM FOOD$(N1),PRTN$(N1),X(N1,9)
1460  POKE 944,183: CALL 946
1470  VTAB 12: HTAB 15: PRINT "FOOD RECORDS READ"
1480  FOR K = 1 TO N1
1490  READ FOOD$(K),PRTN$(K),X(K,1),X(K,2),X(K,3),X(K,4),X(K,5),X(K,6),X(K,7),X(K,8),X(K,9)
1500  VTAB 12: PRINT  TAB( 10)K
1510  NEXT K: POKE 944,220: CALL 946
1520  GOSUB 1550: GOSUB 1890: GOTO 1630
1530  REM  
1540  REM   --> FOOD LIST SUBROUTINE
1550  HOME : VTAB 3: PRINT "   FIRST PART OF THE FOOD LIST:";LF$
1560  FOR J = 1 TO N1  STEP 2
1570  PRINT FOOD$(J); TAB( 22);FOOD$(J +1)
1580  IF J < >29  THEN 1600
1590  GOSUB 1890: VTAB 5
1600  NEXT J: RETURN 
1610  REM      
1620  REM          --> MAIN ROUTINE
1630  HOME : VTAB 2: INPUT "...TYPE FOOD NAME FOR GRAPH             ...TYPE 'HELP' TO SEE FOOD LIST AGAIN   ...TYPE 'STOP' TO EXIT PROGRAM          ";L$
1640  IF L$ < >"HELP"  THEN 1680
1650  HOME : GOSUB 1550: GOSUB 1890
1670  VTAB 10: PRINT "CHOOSE YOUR FOOD AGAIN.": GOSUB 1890: GOTO 1630
1680  IF L$ = "STOP"  THEN 2270
1690  FOR K = 1 TO N1
1700  IF L$ = FOOD$(K)  THEN 1940
1710  NEXT K
1720 BADSP = BADSP +10
1730  IF BADSP <205  THEN 1760
1740  HOME : VTAB 12: HTAB 12: PRINT "***SPELLING ERRORS***"
1750  VTAB 14: HTAB 15: PRINT "***PROGRAM ENDS***": GOTO 2860
1760  POKE 944,BADSP
1770  CALL 946: VTAB 14
1780  PRINT " --> SORRY, ";L$;" NOT ON LIST <--"
1790  VTAB 16: PRINT "PRESS RETURN."
1800  GET A$: HOME : GOTO 1630
1810  NEXT K
1820  GOSUB 2060
1830  VTAB 12: INPUT " TYPE STOP OR ANOTHER FOOD: ";FOOD$
1840  IF FOOD$ = "STOP"  THEN 2250
1850  GOTO 1630
1860  REM    --> END OF MAIN ROUTINE
1870  REM   
1880  REM    --> PAGE SUBROUTINE
1890  VTAB 23: PRINT "PRESS ANY KEY TO CONTINUE...";
1900  GET A$: HOME : RETURN 
1910  REM   
1920  REM   
1930  REM    --> CALL GRAPHICS, STOP, RETURN
1940  GOSUB 2030
1950  VTAB 12: INPUT "ANOTHER FOOD GRAPH (Y,N)? ";A$:A$ =  LEFT$(A$,1)
1960  IF A$ = "Y"  THEN 1630
1970  IF A$ = "N"  THEN 2870
1980  POKE 944,20: CALL 946: POKE 944,22: CALL 946
1990  HOME : VTAB 12: PRINT "DO YOU MEAN YES OR NO??????"
2000  FOR K = 1 TO 800: NEXT K: HOME : GOTO 1950
2010  REM  
2020  REM   --> GRAPH SUBROUTINE
2030  GR 
2040  PRINT "     CAL PRO V-A V-C THI RIB NIA CALC IR"
2050  PRINT "% OF DAILY NEED.  SERVING SIZE OF ...": PRINT FOOD$(K);", ";PRTN$(K)".";
2060 P = 3
2070  COLOR= 10: FOR J = 5 TO 35  STEP 5
2080  VLIN 39 -J,39 -J +1 AT 1
2090  NEXT J
2100  FOR L = 1 TO 9
2110  COLOR= L
2120 P = P +4
2130  VLIN 39,39 -X(K,L) AT P
2140  NEXT L
2150  POKE 944,25: CALL 946
2160  GET A$: TEXT : HOME : RETURN 
2170  REM  
2180  REM   --> TONE GENERATOR DATA BLOCK
2190  DATA   255,255,173,48,192,136,208,5
2200  DATA   206,177,3,240,9,202,208,245
2210  DATA   174,176,3,76,178,3,96,0
2220  REM  
2230  REM   --> FOOD DATA BLOCK
2240  DATA   "CHEDDAR CHEESE","1 OZ",6,15,5,2,1,6,1,21,1
2250  DATA   "COTTAGE CHEESE","1/2 CUP",6,34,4,0,3,17,1,12,2
2260  DATA   "ICE CREAM","1/2 CUP",7,6,7,2,3,8,1,8,1
2270  DATA   MILK,"1 CUP",7,16,5,4,7,28,1,29,0
2280  DATA   "CHOCOLATE MILK","1 CUP",11,19,6,5,5,25,2,27,4
2290  DATA   "SKIM MILK","1 CUP",4,16,10,4,7,28,1,30,0
2300  DATA   YOGURT,"1 CUP",11,20,2,8,6,24,1,29,1
2310  DATA   "BEEF LIVER","3 OZ",10,39,39,38,16,39,39,1,39
2320  DATA   BACON,"2 SLICES",5,10,0,0,6,4,5,0,4
2330  DATA   "FRIED CHICKEN","3 OZ",10,39,3,0,4,23,30,1,12
2340  DATA   "FRANKFURTER","2 OZ",9,16,0,0,7,7,8,1,6
2350  DATA   "PEANUT BUTTER","2 TBSP",9,14,0,0,3,2,26,2,3
2360  DATA   "PORK CHOP","3 OZ",15,39,0,0,39,14,25,1,16
2370  DATA   "APPLE","MEDIUM SIZE",4,1,2,10,3,2,0,1,2
2380  DATA   "FRENCH FRIES","20 PIECES",12,6,0,30,7,5,13,1,6
2390  DATA   "BANANA","MEDIUM SIZE",5,2,5,20,4,4,4,1,4
2400  DATA   "GREEN BEANS","1/2 CUP",1,2,7,14,3,4,2,4,3
2410  DATA   CARROT,"5 IN.",1,1,39,7,2,2,1,2,2
2420  DATA   CORN,"1/2 CUP",4,3,67,6,2,3,5,1,3
2430  DATA   GRAPEFRUIT,"1/2 MEDIUM",2,1,10,39,3,2,2,3,4
2440  DATA   SPINACH,"1/2 CUP",0,3,39,39,5,7,2,10,8
2450  DATA   LETTUCE,"2 LEAVES",0,1,19,15,2,2,1,3,4
2460  DATA   "GREEN SALAD","3/4 CUP",1,1,27,39,2,2,1,3,3
2470  DATA   "ORANGE JUICE","1/2 CUP",3,1,5,39,7,0,2,1,0
2480  DATA   PEAS,"1/2 CUP",3,6,10,17,16,5,8,2,9
2490  DATA   "BAKED POTATO","5 OZ",6,5,0,39,8,4,13,1,7
2500  DATA   TOMATO,"3 SLICES",1,1,18,39,4,3,4,1,3
2510  DATA   "WHITE BREAD",SLICE,3,3,0,0,7,4,4,2,3
2520  DATA   "WHOLE WHEAT BREAD",SLICE,3,4,0,0,4,2,4,3,4
2530  DATA   "CORN FLAKES","3/4 CUP",4,2,0,0,6,1,2,0,2
2540  DATA   RICE,"1/2 CUP",6,3,0,0,7,5,6,1,5
2550  DATA   "HOT DOG","BUN AND WIENER",6,5,0,0,11,7,8,3,4
2560  DATA   HAMBURGER,"3 OZ",9,39,0,0,5,11,25,1,16
2570  DATA   "BAKED BEANS","1/2 CUP",8,12,3,5,7,2,4,7,14
2580  DATA   "MACRONI AND CHEESE","1/2 CUP",11,13,9,0,8,12,6,18,6
2590  DATA   PIZZA,"1/4 14' CHEESE PIE",18,18,19,20,25,28,19,33,16
2600  DATA   "CHOCOLATE BAR","1 OZ",7,3,2,0,2,7,1,8,2
2610  DATA   BUTTER,"1 TSP",2,0,4,0,0,0,0,0,0
2620  DATA   "CHOCOLATE CAKE","1/16 2'+ICIN",12,5,2,0,1,4,1,4,3
2630  DATA   "COFFEE,CREAM,SUGAR",CUP,2,1,1,0,1,1,3,2,1
2640  DATA   "SUGAR COOKIE","3 IN",4,2,0,0,3,2,2,2,2
2650  DATA   JELLO,"1/2 CUP",4,3,0,0,0,0,0,0,0
2660  DATA   WHISKEY,"1 OZ",5,0,0,0,0,0,0,0,0
2670  DATA   "APPLE PIE","1/6 SLICE",19,5,1,3,10,8,9,1,6
2680  DATA   POPCORN,"1 CUP PLAIN",1,1,0,0,0,1,1,0,1
2690  DATA   "POTATO CHIPS","10 2 IN",6,1,0,5,3,1,6,1,2
2700  DATA   COLA,"8 OZ",5,0,0,0,0,0,0,0,0
2710  DATA   DOUGHNUT,"1 PLAIN",6,2,1,0,5,4,3,1,2
2720  DATA   TUNA,"3 OZ",8,39,1,0,3,6,39,1,9
2730  DATA   TACO,"ONE BEEF",11,38,7,7,7,11,15,17,14
2740  DATA   BROCCOLI,"1/2 CUP",1,4,39,39,5,9,3,7,3
2750  DATA   PEANUTS,"1/4 CUP",11,14,0,0,8,3,31,3,4
2760  DATA    "ROAST BEEF","3 OZ",9,39,0,0,3,12,20,1,18
2770  DATA    "BAKED HAM","3 OZ",9,39,0,0,37,15,25,1,18
2780  DATA    BOLOGNA,"1 OZ",4,8,0,0,3,4,4,4,3
2790  DATA    WATERMELON,"1 CUP",3,1,24,23,4,4,2,1,6
2800  DATA    BAGEL,"ONE PLAIN",8,9,1,0,9,6,6,1,7
2810  DATA     "CHICKEN NOODL'SOUP","1 CUP",3,5,1,0,1,1,4,1,3
2820  DATA     "SPAGHETTI/M'BALL","1 CUP",17,29,32,37,17,18,20,12,21
2830  DATA    COLESLAW,"1/2 CUP",4,1,2,27,2,2,1,3,1
2840  DATA    STRAWBERRIES,"1/2 CUP",1,1,1,39,1,3,2,2,4
2850  DATA    PINEAPPLE,"LARGE SLICE",5,1,1,15,7,1,1,1,2
2860  FOR K = 1 TO 400: NEXT K
2870  POKE 944,95: CALL 946
2880  POKE 944,132: CALL 946
2890  POKE 944,126: CALL 946
2900  POKE 944,104: CALL 946
2910  GOTO 999
60660  REM <CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H>          <CTRL-M><CTRL-M>   -------- NOTICE --------<CTRL-M><CTRL-M> ALL ENHANCEMENTS TO THIS PRO-<CTRL-M>GRAM   ARE   COPYRIGHTED  1985<CTRL-M>PUBLIC  DOMAIN RESEARCH.  ANY-<CTRL-M>ONE WISHING TO DISTRIBUTE THIS<CTRL-M>MODIFIED  PROGRAM   MUST  HAVE
63999  REM <CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H><CTRL-H>THE EXPRESSED WRITTEN  CONSENT<CTRL-M>OF THE  PUBLISHER.  LEGITIMATE<CTRL-M>USER GROUPS  MAY  REQUEST THIS<CTRL-M>PERMISSION.<CTRL-M><CTRL-M>    ----------//----------<CTRL-M>