10 POKE 53281,0:POKE 53280,14
20 PRINT"{clear}{white} BASIC TETRIS {$b0}{$c3:10}{$ae}     {$b0}{$c3:7}{$ae}";
30 PRINT"     2014     {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$ab}{$c3:5}{$b3} {lt. blue}SCORE{white} {$c2}";
40 PRINT" DAVID MURRAY {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}     {$c2}       {$c2}";
50 PRINT"              {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}     {$ad}{$c3:7}{$bd}";
60 PRINT"              {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
70 PRINT"              {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}  {$b0}{$c3:4}{$ae}"
80 PRINT"              {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$ab}{$c3:2}{$b3}{lt. blue}NEXT{white}{$c2}"
90 PRINT"              {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}  {$c2}{black}{rvrs on}{$cc:4}{rvrs off}{white}{$c2}"
100 PRINT"     {$b0}{$c3:5}{$ae}  {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}  {$c2}{black}{rvrs on}{$cc:4}{rvrs off}{white}{$c2}"
110 PRINT"     {$c2}{lt. blue}LEVEL{white}{$ab}{$c3:2}{$b3}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}  {$c2}{black}{rvrs on}{$cc:4}{rvrs off}{white}{$c2}"
120 PRINT"     {$c2}     {$c2}  {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}  {$c2}{black}{rvrs on}{$cc:4}{rvrs off}{white}{$c2}"
130 PRINT"     {$ad}{$c3:5}{$bd}  {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}  {$ad}{$c3:4}{$bd}"
140 PRINT" {gray1}{$af}{white}            {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
150 PRINT" {gray1}{rvrs on}Z{rvrs off} ROTATE{white}     {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
160 PRINT" {gray1}{$af}{white}            {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
170 PRINT" {gray1}{rvrs on},{rvrs off} LEFT{white}       {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
180 PRINT" {gray1}{$af}{white}            {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
190 PRINT" {gray1}{rvrs on}.{rvrs off} DROP{white}       {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
200 PRINT" {gray1}{$af}{white}            {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
210 PRINT" {gray1}{rvrs on}/{rvrs off} RIGHT{white}      {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
220 PRINT"              {$c2}{black}{rvrs on}{$cc:10}{rvrs off}{white}{$c2}"
230 PRINT"              {$ad}{$c3:10}{$bd}"
240 PRINT"                          "
250 PRINT"                          {home}"
260 GOTO 500
300 REM DRAW TETRIMINO
310 POKE TF+Q,C:POKE TF+W,C:POKE TF+E,C:POKE TF+R,C:RETURN
320 REM ERASE TETRIMINO
330 POKE TF+Q,0:POKETF+W,0:POKETF+E,0:POKETF+R,0:RETURN
340 REM DEFINE TETRIMINO
350 Q=D(P,1):W=D(P,2):E=D(P,3):R=D(P,4):RETURN
500 DIM D(7,4):DIM RA(7,4,4)
510 S=0:L=0:LL=25:P=0:NP=0:RO=1:REM SCORE LEVEL PIECE NEXT ROTATION
520 FOR X=1 TO 7:FOR Y=1 TO 4
530 READ D(X,Y):NEXT Y:NEXT X
540 DATA 1,41,81,121:REM I PIECE
550 DATA 2,42,82,81:REM J PIECE
560 DATA 1,41,81,82:REM L PIECE
570 DATA 41,42,81,82:REM O PIECE
580 DATA 41,42,80,81:REM S PIECE
590 DATA 40,41,42,81:REM T PIECE
600 DATA 40,41,81,82:REM Z PIECE
700 REM ROTATIONAL DATA
701 DATA 39,0,-39,-78:REM I
702 DATA -39,0,39,78:REM I
703 DATA 39,0,-39,-78:REM I
704 DATA -39,0,39,78:REM I
705 DATA 39,0,-39,2:REM J
706 DATA 41,0,-41,-80:REM J
707 DATA -39,0,39,-2:REM J
708 DATA -41,0,41,80:REM J
709 DATA 39,0,-39,-80:REM L
710 DATA 41,0,-41,-2:REM L
711 DATA -39,0,39,80:REM L
712 DATA -41,0,41,2:REM L
713 DATA 0,0,0,0:REM O
714 DATA 0,0,0,0:REM O
715 DATA 0,0,0,0:REM O
716 DATA 0,0,0,0:REM O
717 DATA 0,-41,2,-39:REM S
718 DATA 0,41,-2,39:REM S
719 DATA 0,-41,2,-39:REM S
720 DATA 0,41,-2,39:REM S
721 DATA 41,0,-41,-39:REM T
722 DATA -39,0,39,-41:REM T
723 DATA -41,0,41,39:REM T
724 DATA 39,0,-39,41:REM T
725 DATA 41,0,-39,-80:REM Z
726 DATA -41,0,39,80:REM Z
727 DATA 41,0,-39,-80:REM Z
728 DATA -41,0,39,80:REM Z
800 TF=55351:REM TETRIS FIELD
810 FOR Y=1 TO 7:FORX=1 TO 4:FOR Z=1 TO 4
820 READ RA(Y,X,Z):NEXT Z:NEXT X:NEXT Y
900 NP=4:GOSUB 1120:GOSUB1140:GOSUB 5510:GOTO 5000
1000 REM DRAW NEXT PIECE
1010 FOR X=55605 TO 55608:POKE X,0:NEXTX
1020 FOR X=55645 TO 55648:POKE X,0:NEXTX
1030 FOR X=55685 TO 55688:POKE X,0:NEXTX
1040 FOR X=55725 TO 55728:POKE X,0:NEXTX
1050 TY=55605:NC=NP+1
1060 FOR X=1 TO 4: POKE TY+D(NP,X),NC:NEXT X:RETURN
1100 REM UPDATE LEVEL
1120 PRINT"{home}{down:10}{right:6}{white}     {left:4}"L:RETURN
1130 REM UPDATE SCORE
1140 PRINT"{home}{down:3}{left:8}{white}       {left:7}"S
1150 B=INT(S/5000):IF B<>L THEN L=B:GOSUB 1120:LL=25-L*2
1160 RETURN
5000 GET A$
5010 T=T+1:IF T=LL THEN T=0:GOSUB 5260
5020 IF A$="Z"THEN GOSUB 5610
5030 IF A$=","THEN GOSUB 5190
5040 IF A$="/"THEN GOSUB 5120
5050 IF A$="."THEN GOSUB 5260
5100 GOTO 5000
5110 REM MOVE RIGHT
5120 GOSUB 330:REM ERASE PIECE
5130 Q=Q+1:W=W+1:E=E+1:R=R+1
5140 B=(PEEK(TF+Q)AND15)+(PEEK(TF+W)AND15)+(PEEK(TF+E)AND15)+(PEEK(TF+R)AND15)
5150 IF B<>0 THEN 5170
5160 GOSUB 310:RETURN
5170 Q=Q-1:W=W-1:E=E-1:R=R-1:GOSUB 310:RETURN
5180 REM MOVE LEFT
5190 GOSUB 330:REM ERASE PIECE
5200 Q=Q-1:W=W-1:E=E-1:R=R-1
5210 B=(PEEK(TF+Q)AND15)+(PEEK(TF+W)AND15)+(PEEK(TF+E)AND15)+(PEEK(TF+R)AND15)
5220 IF B<>0 THEN 5240
5230 GOSUB 310:RETURN
5240 Q=Q+1:W=W+1:E=E+1:R=R+1:GOSUB 310:RETURN
5250 REM LOWER PIECE
5260 GOSUB 330:REM ERASE PIECE
5270 Q=Q+40:W=W+40:E=E+40:R=R+40
5280 B=(PEEK(TF+Q)AND15)+(PEEK(TF+W)AND15)+(PEEK(TF+E)AND15)+(PEEK(TF+R)AND15)
5290 IF B<>0 THEN 5310
5300 GOSUB 310:RETURN
5310 Q=Q-40:W=W-40:E=E-40:R=R-40:GOSUB 310:GOSUB6000:GOSUB 5510:RETURN
5500 REM NEW PIECE
5510 P=NP:C=P+1:NP=INT(RND(1)*7)+1:GOSUB 1010:S=S+5:GOSUB1140
5520 GOSUB 350:Q=Q+4:W=W+4:E=E+4:R=R+4:RO=1:GOSUB 310
5530 RETURN
5600 REM ROTATE PIECE
5610 GOSUB 330:REM ERASE PIECE
5615 QQ=Q:WW=W:EE=E:RR=R
5620 Q=Q+RA(P,RO,1):W=W+RA(P,RO,2):E=E+RA(P,RO,3):R=R+RA(P,RO,4)
5625 REM PRINTQ","W","E","R
5630 B=(PEEK(TF+Q)AND15)+(PEEK(TF+W)AND15)+(PEEK(TF+E)AND15)+(PEEK(TF+R)AND15)
5640 IF B<>0 THEN 5670
5650 GOSUB 310:RO=RO+1:IF RO=5 THEN RO=1
5660 RETURN
5670 Q=QQ:W=WW:E=EE:R=RR:GOSUB 310:RETURN
6000 REM SCAN THE FIELD
6010 ZZ=0:SF=INT(Q/40):GOSUB 6110
6020 SG=INT(W/40):IF SG <> SF THEN SF=SG:GOSUB 6110
6030 SG=INT(E/40):IF SG <> SF THEN SF=SG:GOSUB 6110
6040 SG=INT(R/40):IF SG <> SF THEN SF=SG:GOSUB 6110
6050 IF ZZ<>0THEN GOSUB 6210:S=S+(ZZ*100)*2:GOSUB 1140
6060 RETURN
6100 REM DETECT LINE
6110 SS=SF*40+TF:Z=0
6120 FOR X=SS TO SS+9:IF (PEEK(X)AND15)<>0 THEN Z=Z+1
6130 NEXT X
6140 IF Z<>10 THEN RETURN
6150 FOR X=SS TO SS+9:POKE X,15:NEXT X:ZZ=ZZ+1:RETURN
6200 REM CLEAR LINES
6210 FOR Y=TF TO TF+760 STEP 40
6220 IF (PEEK(Y)AND15)=15 THEN GOSUB 6240
6230 NEXT Y:RETURN
6240 FOR X=0 TO 9:FOR YY=Y TO TF+40 STEP-40
6250 POKE YY+X,PEEK(YY+X-40):NEXT YY:NEXT X:RETURN
