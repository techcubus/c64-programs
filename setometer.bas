1 POKE828,169:POKE829,001:POKE830,109:POKE831,033
2 POKE832,208:POKE834,141:POKE835,033:POKE836,208
3 POKE837,096:POKE833,024
10 GOTO50
20 OPEN15,8,15:PRINT#15,"S0:SETOMETER"
30 SAVE"SETOMETER",8
40 CLOSE 15:END
50 SB=PEEK(53281):SF=PEEK(53280):SX=PEEK(646)
60 POKE53280,2:POKE53281,0:POKE646,12:A$="SETOMETER"
70 PRINT"“"TAB(LEN(A$)/2)A$
80 PRINT"    ·········"
90 PRINT"THIS IS TO HELP YOU SET THE SETTINGS ON"
100 PRINT"YOUR MONITOR."
110 PRINT"········································";
120 PRINT"PRESS..."
130 PRINT"1’ FOR BRIGHTNESS"
140 PRINT"2’ FOR TINT"
150 PRINT"3’ FOR COLOR"
160 PRINT"4’ FOR SHARPNESS"
170 PRINT"5’ FOR CONTRAST"
180 PRINT"6’ FOR H. AND V. POSITION"
190 PRINT"Q’ TO QUIT"
200 GETA$:IFA$=""THEN200
210 IFA$="1"THEN290
220 IFA$="2"THEN530
230 IFA$="3"THEN670
240 IFA$="4"THEN910
250 IFA$="5"THEN1000
260 IFA$="6"THEN
270 IFA$="Q"THEN
280 GOTO200
290 PRINT"“":FORB=1TO12
300 PRINT"        —        ˜        ›                ";
310 NEXTB
320 FORC=1TO12
330 PRINT"        ›        ˜        —                ";
340 NEXTC
350 CG=0
360 FORGS=1984TO2023
370 POKEGS,32+128
380 NEXTGS
390 FORG2=56256TO56295STEP8
400 IFCG=0THENCL=2
410 IFCG=2THENCL=8
420 IFCG=4THENCL=7
430 IFCG=6THENCL=5
440 IFCG=8THENCL=6
450 FORG3=1TO8
460 POKEG2+(G3-1),CL
470 NEXTG3
480 CG=CG+2
490 NEXTG2
500 GETC$:IFC$=""THEN500
510 IFC$=CHR$(13)THEN60
520 GOTO500
530 PRINT"“"
540 PRINT"                                        ’";
550 FORHH=1TO23
560 PRINT"         ™        ž        –               ’";
570 NEXT HH
580 FORBA=1984TO2023
590 POKEBA,32+128
600 NEXTBA
610 FORBC=56256TO56295
620 POKEBC,6
630 NEXTBC
640 GETC$:IFC$=""THEN640
650 IFC$=CHR$(13)THEN60
660 GOTO640
670 POKE53280,2:POKE53281,0:PRINT"“"
680 PRINT"COLOR GUN TESTER"
690 PRINT"PRESS:"
700 PRINT"1’ FOR NTSC COLOR TEST PATTERN"
710 PRINT"2’ FOR COLOR PALETTE"
720 PRINT"3’ FOR PHOSPHOR TEST"
730 PRINT"4’ FOR GRAY PALETTE"
740 GETA$:IFA$=""THEN740
750 IFA$="1"THEN810
760 IFA$="2"THEN1240
770 IFA$="3"THEN PRINT"TBA"
780 IFA$="4"THEN2240
790 IFA$=CHR$(13)ORA$="_"ORA$="ˆ"THEN60
800 GOTO740
810 POKE53280,0:POKE53281,0:PRINT"“":RESTORE
820 FORA=1TO20:PRINT"";
830 PRINT"          ž          ™     œ          š     ";
840 NEXT
850 FORA=1TO4:PRINT"˜          ›          ";
860 PRINT"—                    ";:NEXT
870 POKE198,0
880 GETZ$:IFZ$=""THEN880
890 IFZ$=CHR$(13)THEN670
900 GOTO880
910 PRINT"“"
920 FORLO= 1024 TO 2023
930 POKELO,102:POKELO+54272,PEEK(646)
940 GETV$:IFV$=""THEN960
950 IFV$=CHR$(13)THEN60
960 NEXT
970 GETV$:IFV$=""THEN970
980 IFV$=CHR$(13)THEN60
990 GOTO970
1000 PRINT"“":POKE53280,1
1010 FORG=1TO12
1020 PRINT"                                        ";
1030 NEXT
1040 PRINT"                                        ’";
1050 PRINT"                                        ’";
1060 PRINT"                                        ’";
1070 PRINT"                                        ’";
1080 PRINT"                                        ’";
1090 PRINT"                                        ’";
1100 FORZ=1TO5
1110 FORQ=1TO40
1120 PRINT"¦";
1130 NEXTQ
1140 NEXTZ
1150 FORSA=1024TO1063
1160 POKESA,102:POKESA+54272,1
1170 NEXTSA
1180 FORDS=1984TO2023
1190 POKEDS,102:POKEDS+54272,1
1200 NEXTDS
1210 GETR$:IFR$=""THEN1210
1220 IFR$=CHR$(13)THEN60
1230 GOTO1210
1240 REM LARGE BLOCKS
1241 POKE53280,0:POKE53281,0:RESTORE
1250 G=13*4096:POKEG+33,0
1260 S$=""
1270 PRINT"“":CD$="Ÿœž•–—˜™š›"
1280 DATA"BLACK","WHITE’","RED"
1290 DATA"ŸCYAN","œPURPLE","GREEN"
1300 DATA"BLUE","žYELLOW","ORANGE"
1310 DATA"•BROWN","–PINK","—GRAY 1"
1320 DATA"˜GRAY 2","™LT GREEN","šLT BLUE"
1330 DATA"›GRAY 3"
1340 FORX=0TO3
1350 FORY=1TO5
1360 FORZ=1TO4
1370 PRINT" "MID$(CD$,X*4+Z,1)"        ’ ";
1380 NEXTZ
1390 NEXTY
1400 IF X<>3THENPRINT
1410 NEXTX
1420 PRINT""SPC(1)"Ï······Ð"SPC(32)"¥      ª"
1430 PRINTSPC(1)"¥      §"SPC(32)"¥      §"
1440 PRINTSPC(1)"Ì¯¯¯¯¯¯º"
1450 PRINT"";:FORX=1TO4
1460 READA$,B$,C$,D$
1470 PRINT"";:IFX=1THENPRINT"‘";
1480 PRINT""A$,""B$,""C$,""D$
1490 NEXTX
1500 GETX$:IFX$=""THEN1500
1510 IFX$=CHR$(13)THEN670
1520 SYS828:GOTO1500
2240 REM LARGE GRAY BLOCKS
2241 POKE53280,0:POKE53281,0:RESTORE
2250 G=13*4096:POKEG+33,0
2260 S$=""
2270 PRINT"“":CD$="•—œš˜–Ÿ›ž™"
2280 DATA"BLACK","WHITE’","RED"
2290 DATA"ŸCYAN","œPURPLE","GREEN"
2300 DATA"BLUE","žYELLOW","ORANGE"
2310 DATA"•BROWN","–PINK","—GRAY 1"
2320 DATA"˜GRAY 2","™LT GREEN","šLT BLUE"
2330 DATA"›GRAY 3"
2340 FORX=0TO3
2350 FORY=1TO5
2360 FORZ=1TO4
2370 PRINT" "MID$(CD$,X*4+Z,1)"        ’ ";
2380 NEXTZ
2390 NEXTY
2400 IF X<>3THENPRINT
2410 NEXTX
2420 PRINT""SPC(1)"Ï······Ð"SPC(32)"¥      ª"
2430 PRINTSPC(1)"¥      §"SPC(32)"¥      §"
2440 PRINTSPC(1)"Ì¯¯¯¯¯¯º"
2450 PRINT"";:FORX=1TO4
2460 READA$,B$,C$,D$
2470 PRINT"";:IFX=1THENPRINT"‘";
2480 PRINT""A$,""B$,""C$,""D$
2490 NEXTX
2500 GETX$:IFX$=""THEN2500
2510 IFX$=CHR$(13)THEN670
2520 SYS828:GOTO2500
3000 REM PHOSPHOR TEST
