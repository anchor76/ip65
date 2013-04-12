 GOWARM         = $00
 GOSTROUT       = $03
 USR            = $0A
 CHARAC         = $0D
 ENDCHR         = $0E
 TKN_CNTR       = $0F
 EOL_PNTR       = $0F
 NUMDIM         = $0F
 DIMFLG         = $10
 VALTYP         = $11
 DATAFLG        = $13
 GARFLG         = $13
 SUBFLG         = $14
 INPUTFLG       = $15
 CPRMASK        = $16
 SIGNFLG        = $16
 HGR_SHAPE      = $1A
 HGR_BITS       = $1C
 HGR_COUNT      = $1D
 MON_CH         = $24
 MON_GBASL      = $26
 MON_GBASH      = $27
 MON_H2         = $2C
 MON_V2         = $2D
 MON_HMASK      = $30
 MON_INVFLG     = $32
 MON_PROMPT     = $33
 MON_A1L        = $3C
 MON_A1H        = $3D
 MON_A2L        = $3E
 MON_A2H        = $3F
 LINNUM         = $50
 TEMPPT         = $52
 LASTPT         = $53
 TEMPST         = $55
 INDEX          = $5E
 DEST           = $60
 RESULT         = $62
 TXTTAB         = $67
 VARTAB         = $69
 ARYTAB         = $6B
 STREND         = $6D
 FRETOP         = $6F
 FRESPC         = $71
 MEMSIZ         = $73
 CURLIN         = $75
 OLDLIN         = $77
 OLDTEXT        = $79
 DATLIN         = $7B
 DATPTR         = $7D
 INPTR          = $7F
 VARNAM         = $81
 VARPNT         = $83
 FORPNT         = $85
 TXPSV          = $87
 LASTOP         = $87
 CPRTYP         = $89
 TEMP3          = $8A
 FNCNAM         = $8A
 DSCPTR         = $8C
 DSCLEN         = $8F
 JMPADRS        = $90
 LENGTH         = $91
 ARG_EXTENSION  = $92
 TEMP1          = $93
 ARYPNT         = $94
 HIGHDS         = $94
 HIGHTR         = $96
 TEMP2          = $98
 TMPEXP         = $99
 INDX           = $99
 EXPON          = $9A
 DPFLG          = $9B
 LOWTR          = $9B
 EXPSGN         = $9C
 FAC            = $9D
 DSCTMP         = $9D
 VPNT           = $A0
 FAC_SIGN       = $A2
 SERLEN         = $A3
 SHIFT_SIGN_EXT = $A4
 ARG            = $A5
 ARG_SIGN       = $AA
 SGNCPR         = $AB
 FAC_EXTENSION  = $AC
 SERPNT         = $AD
 STRNG1         = $AB
 STRNG2         = $AD
 PRGEND         = $AF
 CHRGET         = $B1
 CHRGOT         = $B7
 TXTPTR         = $B8
 RNDSEED        = $C9
 HGR_DX         = $D0
 HGR_DY         = $D2
 HGR_QUADRANT   = $D3
 HGR_E          = $D4
 LOCK           = $D6
 ERRFLG         = $D8
 ERRLIN         = $DA
 ERRPOS         = $DC
 ERRNUM         = $DE
 ERRSTK         = $DF
 HGR_X          = $E0
 HGR_Y          = $E2
 HGR_COLOR      = $E4
 HGR_HORIZ      = $E5
 HGR_PAGE       = $E6
 HGR_SCALE      = $E7
 HGR_SHAPE_PNTR = $E8
 HGR_COLLISIONS = $EA
 FIRST          = $F0
 SPEEDZ         = $F1
 TRCFLG         = $F2
 FLASH_BIT      = $F3
 TXTPSV         = $F4
 CURLSV         = $F6
 REMSTK         = $F8
 HGR_ROTATION   = $F9

M_NEG	= $D0C7
M_EQU	= $D0CA
M_REL	= $D0CD
QT_ERROR	= $D353
QT_IN	= $D35B
QT_BREAK	= $D35D
BLTU	= $D393
BLTU2	= $D39A
CHKMEM	= $D3D6
REASON	= $D3E3
MEMERR	= $D410
ERROR	= $D412
INLIN	= $D52C
INLIN2	= $D52E
INCHR	= $D553
PARSE	= $D56C
FNDLIN	= $D61A
FL1	= $D61E
RTS_1	= $D648
NEW	= $D649
SCRTCH	= $D64B
CLEAR	= $D66A
CLEARC	= $D66C
STKINI	= $D683
RTS_2	= $D696
STXTPT	= $D697
LIST	= $D6A5
LIST_0	= $D6DA
LIST_1	= $D6FE
LIST_2	= $D702
LIST_3	= $D724
GETCHR	= $D72C
LIST_4	= $D734
FOR	= $D766
STEP	= $D7AF
NEWSTT	= $D7D2
TRACE_	= $D805
GOEND	= $D826
EXECUTE_STATEMENT=$D828
COLON_	= $D842
SYNERR_1	= $D846
SETDA	= $D853
RTS_3	= $D857
ISCNTC	= $D858
STOP	= $D86E
END	= $D870
END2	= $D871
END4	= $D88A
CONT	= $D896
RTS_4	= $D8AF
SAVE	= $D8B0
LOAD	= $D8C9
VARTIO	= $D8F0
PROGIO	= $D901
RUN	= $D912
GOSUB	= $D921
GOTO	= $D93E
RTS_5	= $D96A
POP	= $D96B
UNDERR	= $D97C
SYNERR_2	= $D981
RETURN	= $D984
DATA	= $D995
ADDON	= $D998
RTS_6	= $D9A2
DATAN	= $D9A3
REMN	= $D9A6
PULL3	= $D9C5
IF	= $D9C9
REM	= $D9DC
ONGOTO	= $D9EC
ON_1	= $D9F4
ON_2	= $D9F8
RTS_7	= $DA0B
LINGET	= $DA0C
LET	= $DA46
LET2	= $DA63
PUTSTR	= $DA7B
PRINT	= $DAD5
PRINT2	= $DAD7
CRDO	= $DAFB
NEGATE	= $DB00
RTS_8	= $DB02
NXSPC	= $DB2C
DOSPC	= $DB35
STROUT	= $DB3A
STRPRT	= $DB3D
OUTSP	= $DB57
OUTQUES	= $DB5A
OUTDO	= $DB5C
ERLIN	= $DB7F
INPERR	= $DB86
GET	= $DBA0
INPUT	= $DBB2
NXIN	= $DBDC
READ	= $DBE2
INPFIN	= $DC99
NEXT	= $DCF9
NEXT_1	= $DCFF
NEXT_2	= $DD02
GERR	= $DD0D
NEXT_3	= $DD0F
FRMNUM	= $DD67
CHKNUM	= $DD6A
CHKSTR	= $DD6C
CHKVAL	= $DD6D
JERROR	= $DD78
FRMEVL	= $DD7B
NXOP	= $DDD6
SAVOP	= $DDD7
PREFNC	= $DDF6
SNTXERR	= $DE0D
NOTMATH	= $DE35
GOEX	= $DE38
EXIT	= $DE5D
STRTXT	= $DE81
NOT_	= $DE90
EQUOP	= $DE98
FN_	= $DEA4
SGN_	= $DEAB
PARCHK	= $DEB2
CHKCLS	= $DEB8
CHKOPN	= $DEBB
CHKCOM	= $DEBE
SYNCHR	= $DEC0
SYNERR	= $DEC9
MIN	= $DECE
EQUL	= $DED0
SCREEN	= $DEF9
UNARY	= $DF0C
OR_KWD	= $DF4F
AND_KWD	= $DF55
FALSE	= $DF5D
TRUE	= $DF60
RELOPS	= $DF65
STRCMP	= $DF7D
NUMCMP	= $DFB0
PDL	= $DFCD
NXDIM	= $DFD6
DIM	= $DFD9
PTRGET	= $DFE3
BADNAM	= $DFF4
NAMOK	= $DFF7
ISLETC	= $E07D
C_ZERO	= $E09A
GETARY	= $E0ED
NEG32768	= $E101
MAKINT	= $E102
MKINT	= $E108
AYINT	= $E10C
MI1	= $E119
MI2	= $E11B
ARRAY	= $E11E
SUBERR	= $E196
IQERR	= $E199
JER	= $E19B
FAE_1	= $E253
GSE	= $E269
GME	= $E26C
FAE_2	= $E26F
FAE_3	= $E270
RTS_9	= $E2AC
MULTIPLY_SUBSCRIPT	= $E2AD
FRE	= $E2DE
GIVAYF	= $E2F2
POS	= $E2FF
SNGFLT	= $E301
ERRDIR	= $E306
UNDFNC	= $E30E
DEF	= $E313
FNC_	= $E341
FUNCT	= $E354
STR	= $E3C5
STRINI	= $E3D5
STRSPA	= $E3DD
STRLIT	= $E3E7
STRLT2	= $E3ED
PUTNEW	= $E42A
JERR	= $E432
PUTEMP	= $E435
GETSPA	= $E452
GARBAG	= $E484
CAT		= $E597
MOVINS	= $E5D4
MOVSTR	= $E5E2
FRESTR	= $E5FD
FREFAC	= $E600
FRETMP	= $E604
FRETMS	= $E635
CHRSTR	= $E646
MIDSTR	= $E691
LEN		= $E6D6
GETSTR	= $E6DC
ASC		= $E6E5
GOIQ	= $E6F2
GTBYTC	= $E6F5
GETBYT	= $E6F8
CONINT	= $E6FB
VAL		= $E707
POINT	= $E73D
GTNUM	= $E746
COMBYTE = $E74C
GETADR	= $E752
PEEK	= $E764
POKE	= $E77B
WAIT	= $E784
RTS_10	= $E79F
FADDH	= $E7A0
FSUB	= $E7A7
FSUBT	= $E7AA
FADD_1	= $E7B9
FADD	= $E7BE
FADDT	= $E7C1
FADD_2	= $E7CE
FADD_3	= $E7FA
FADD_4	= $E855
RTS_11	= $E89D
RTS_12	= $E8D4
CON_ONE	= $E916
POLY_LOG	= $E918
CON_SQR_HALF	= $E930
CON_SQR_TWO	= $E935
CON_NEG_HALF	= $E93A
CON_LOG_TWO	= $E93F
LOG	= $E941
GIQ	= $E948
LOG_2	= $E94B
FMULT	= $E97F
FMULTT	= $E982
RTS_13	= $E9E2
ZERO	= $EA31
JOV	= $EA36
MUL10	= $EA39
CON_TEN	= $EA53
DIV10	= $EA55
DIV	= $EA5E
FDIV	= $EA66
FDIVT	= $EA69
SETFOR	= $EB27
MFA	= $EB55
MAF	= $EB66
RTS_14	= $EB71
SIGN	= $EB82
SIGN1	= $EB86
SIGN2	= $EB88
RTS_15	= $EB8F
SGN	= $EB90
FLOAT	= $EB93
ABS	= $EBAF
FCOMP	= $EBB2
FCOMP2	= $EBB4
QINT	= $EBF2
RTS_16	= $EC11
QINT_2	= $EC12
INT	= $EC23
QINT_3	= $EC40
RTS_17	= $EC49
FIN	= $EC4A
FIN_1	= $EC61
FIN_2	= $EC64
FIN_3	= $EC66
FIN_4	= $EC87
FIN_5	= $EC8A
FIN_6	= $EC8C
FIN_10	= $EC98
FIN_7	= $EC9E
FIN_8	= $ECA0
FIN_9	= $ECC1
ADDACC	= $ECD5
GETEXP	= $ECE8
CON_99999999_9	= $ED0D
CON_999999999	= $ED12
CON_BILLION	= $ED17
INPRT	= $ED19
LINPRT	= $ED24
FOUT	= $ED34
FOUT_1	= $ED36
FOUT_2	= $ED8C
FOUT_3	= $EE17
FOUT_4	= $EE57
FOUT_5	= $EE5A
FOUT_6	= $EE5F
CON_HALF	= $EE67
DECTBL	= $EE6C
SQR	= $EE8D
FPWRT	= $EE97
NEGOP	= $EED0
RTS_18	= $EEDA
CON_LOG_E	= $EEDE
POLY_EXP	= $EEE0
EXP	= $EF09
RTS_19	= $EFA5
CON_RND_1	= $EFA9
CON_RND_2	= $EFAD
RND	= $EFAE
GO_MOVMF	= $EFE7
COS	= $EFEA
SIN	= $EFF1
SIN_1	= $F023
SIN_2	= $F026
TAN	= $F03A
TAN_1	= $F062
CON_PI_HALF	= $F069
CON_PI_DOUB	= $F06E
QUARTER	= $F073
POLY_SIN	= $F075
ATN	= $F09E
RTS_20	= $F0CD
POLY_ATN	= $F0CE
CALL	= $F1D5
GOERR	= $F206
PLOT	= $F225
HLIN	= $F232
VLIN	= $F241
COLOR	= $F24F
VTAB	= $F256
SPEED	= $F262
TRACE	= $F26D
NORMAL	= $F273
N_I_	= $F279
N_I_F_	= $F27B
FLASH	= $F280
HIMEM	= $F286
JMM	= $F296
SETHI	= $F299
LOMEM	= $F2A6
ONERR	= $F2CB
RESUME	= $F318
JSYN	= $F32E
DEL	= $F331
GR	= $F390
TEXT	= $F399
STORE	= $F39F
RECALL	= $F3BC
HGR2	= $F3D8
HGR	= $F3E2
SETHPG	= $F3EA
HCLR	= $F3F2
BKGND	= $F3F6
HPOSN	= $F411
HPLOT0	= $F457
LR_1	= $F46E
LR_2	= $F471
LR_3	= $F476
LR_4	= $F478
LRUDX1	= $F49C
LRUDX2	= $F49D
LRUD1	= $F4B3
LRUD2	= $F4B4
LRUD3	= $F4C4
LRUD4	= $F4C8
UD_1	= $F501
HLINRL	= $F530
HGLIN	= $F53A
MOVEX	= $F57C
MOVEX2	= $F581
MSKTBL	= $F5B8
CON_1C	= $F5B9
HFIND	= $F5CB
RTS_22	= $F600
DRAW0	= $F601
DRAW1	= $F605
XDRAW0	= $F65D
XDRAW1	= $F661
HFNS	= $F6B9
GGERR	= $F6E6
HCOLOR	= $F6E9
RTS_23	= $F6F5
COLORTBL	= $F6FC
HPLOT	= $F6FE
ROT	= $F721
SCALE	= $F727
DRWPNT	= $F72D
DRAW	= $F769
XDRAW	= $F76F
SHLOAD	= $F775
HTAB	= $F7E7

STACK            = $100
INPUT_BUFFER     = $200
AMPERSAND_VECTOR = $3F5 
KEYBOARD         = $C000
SW_TXTCLR        = $C050
SW_MIXCLR        = $C052
SW_MIXSET        = $C053
SW_LOWSCR        = $C054
SW_HISCR         = $C055
SW_LORES         = $C056
SW_HIRES         = $C057
MON_PLOT         = $F800
MON_HLINE        = $F819
MON_VLINE        = $F828
MON_SETCOL       = $F864
MON_SCRN         = $F871
MON_PREAD        = $FB1E
MON_SETTXT       = $FB39
MON_SETGR        = $FB40
MON_TABV         = $FB5B
MON_HOME         = $FC58
MON_WAIT         = $FCA8
MON_RD2BIT       = $FCFA
MON_RDKEY        = $FD0C
MON_GETLN        = $FD6A
MON_COUT         = $FDED
MON_INPORT       = $FE8B
MON_OUTPORT      = $FE95
MON_WRITE        = $FECD
MON_READ         = $FEFD
MON_READ2        = $FF02
TOKEN_FOR        = $81
TOKEN_DATA       = $83
TOKEN_POP        = $A1
TOKEN_GOTO       = $AB
TOKEN_GOSUB      = $B0
TOKEN_REM        = $B2
TOKEN_PRINT      = $BA
TOKEN_TAB        = $C0
TOKEN_TO         = $C1
TOKEN_FN         = $C2
TOKEN_SPC        = $C3
TOKEN_THEN       = $C4
TOKEN_AT         = $C5
TOKEN_NOT        = $C6
TOKEN_STEP       = $C7
TOKEN_PLUS       = $C8
TOKEN_MINUS      = $C9
TOKEN_GREATER    = $CF
TOKEN_EQUAL      = $D0
TOKEN_SGN        = $D2
TOKEN_SCRN       = $D7
TOKEN_LEFTSTR    = $E8