                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Nixie_PARM_2
                                     12 	.globl _main
                                     13 	.globl _MatrixKey
                                     14 	.globl _LCD_ShowBinNum
                                     15 	.globl _LCD_ShowHexNum
                                     16 	.globl _LCD_ShowSignedNum
                                     17 	.globl _LCD_ShowNum
                                     18 	.globl _LCD_Pow
                                     19 	.globl _LCD_ShowString
                                     20 	.globl _LCD_ShowChar
                                     21 	.globl _LCD_Init
                                     22 	.globl _LCD_SetCursor
                                     23 	.globl _LCD_WriteData
                                     24 	.globl _LCD_WriteCommand
                                     25 	.globl _LCD_Delay
                                     26 	.globl _Nixie
                                     27 	.globl _delay
                                     28 	.globl _TF2
                                     29 	.globl _EXF2
                                     30 	.globl _RCLK
                                     31 	.globl _TCLK
                                     32 	.globl _EXEN2
                                     33 	.globl _TR2
                                     34 	.globl _C_T2
                                     35 	.globl _CP_RL2
                                     36 	.globl _T2CON_7
                                     37 	.globl _T2CON_6
                                     38 	.globl _T2CON_5
                                     39 	.globl _T2CON_4
                                     40 	.globl _T2CON_3
                                     41 	.globl _T2CON_2
                                     42 	.globl _T2CON_1
                                     43 	.globl _T2CON_0
                                     44 	.globl _PT2
                                     45 	.globl _ET2
                                     46 	.globl _CY
                                     47 	.globl _AC
                                     48 	.globl _F0
                                     49 	.globl _RS1
                                     50 	.globl _RS0
                                     51 	.globl _OV
                                     52 	.globl _F1
                                     53 	.globl _P
                                     54 	.globl _PS
                                     55 	.globl _PT1
                                     56 	.globl _PX1
                                     57 	.globl _PT0
                                     58 	.globl _PX0
                                     59 	.globl _RD
                                     60 	.globl _WR
                                     61 	.globl _T1
                                     62 	.globl _T0
                                     63 	.globl _INT1
                                     64 	.globl _INT0
                                     65 	.globl _TXD
                                     66 	.globl _RXD
                                     67 	.globl _P3_7
                                     68 	.globl _P3_6
                                     69 	.globl _P3_5
                                     70 	.globl _P3_4
                                     71 	.globl _P3_3
                                     72 	.globl _P3_2
                                     73 	.globl _P3_1
                                     74 	.globl _P3_0
                                     75 	.globl _EA
                                     76 	.globl _ES
                                     77 	.globl _ET1
                                     78 	.globl _EX1
                                     79 	.globl _ET0
                                     80 	.globl _EX0
                                     81 	.globl _P2_7
                                     82 	.globl _P2_6
                                     83 	.globl _P2_5
                                     84 	.globl _P2_4
                                     85 	.globl _P2_3
                                     86 	.globl _P2_2
                                     87 	.globl _P2_1
                                     88 	.globl _P2_0
                                     89 	.globl _SM0
                                     90 	.globl _SM1
                                     91 	.globl _SM2
                                     92 	.globl _REN
                                     93 	.globl _TB8
                                     94 	.globl _RB8
                                     95 	.globl _TI
                                     96 	.globl _RI
                                     97 	.globl _P1_7
                                     98 	.globl _P1_6
                                     99 	.globl _P1_5
                                    100 	.globl _P1_4
                                    101 	.globl _P1_3
                                    102 	.globl _P1_2
                                    103 	.globl _P1_1
                                    104 	.globl _P1_0
                                    105 	.globl _TF1
                                    106 	.globl _TR1
                                    107 	.globl _TF0
                                    108 	.globl _TR0
                                    109 	.globl _IE1
                                    110 	.globl _IT1
                                    111 	.globl _IE0
                                    112 	.globl _IT0
                                    113 	.globl _P0_7
                                    114 	.globl _P0_6
                                    115 	.globl _P0_5
                                    116 	.globl _P0_4
                                    117 	.globl _P0_3
                                    118 	.globl _P0_2
                                    119 	.globl _P0_1
                                    120 	.globl _P0_0
                                    121 	.globl _TH2
                                    122 	.globl _TL2
                                    123 	.globl _RCAP2H
                                    124 	.globl _RCAP2L
                                    125 	.globl _T2CON
                                    126 	.globl _B
                                    127 	.globl _ACC
                                    128 	.globl _PSW
                                    129 	.globl _IP
                                    130 	.globl _P3
                                    131 	.globl _IE
                                    132 	.globl _P2
                                    133 	.globl _SBUF
                                    134 	.globl _SCON
                                    135 	.globl _P1
                                    136 	.globl _TH1
                                    137 	.globl _TH0
                                    138 	.globl _TL1
                                    139 	.globl _TL0
                                    140 	.globl _TMOD
                                    141 	.globl _TCON
                                    142 	.globl _PCON
                                    143 	.globl _DPH
                                    144 	.globl _DPL
                                    145 	.globl _SP
                                    146 	.globl _P0
                                    147 	.globl _KeyNum
                                    148 	.globl _LCD_ShowBinNum_PARM_4
                                    149 	.globl _LCD_ShowBinNum_PARM_3
                                    150 	.globl _LCD_ShowBinNum_PARM_2
                                    151 	.globl _LCD_ShowHexNum_PARM_4
                                    152 	.globl _LCD_ShowHexNum_PARM_3
                                    153 	.globl _LCD_ShowHexNum_PARM_2
                                    154 	.globl _LCD_ShowSignedNum_PARM_4
                                    155 	.globl _LCD_ShowSignedNum_PARM_3
                                    156 	.globl _LCD_ShowSignedNum_PARM_2
                                    157 	.globl _LCD_ShowNum_PARM_4
                                    158 	.globl _LCD_ShowNum_PARM_3
                                    159 	.globl _LCD_ShowNum_PARM_2
                                    160 	.globl _LCD_Pow_PARM_2
                                    161 	.globl _LCD_ShowString_PARM_3
                                    162 	.globl _LCD_ShowString_PARM_2
                                    163 	.globl _LCD_ShowChar_PARM_3
                                    164 	.globl _LCD_ShowChar_PARM_2
                                    165 	.globl _LCD_SetCursor_PARM_2
                                    166 	.globl _NixieTable
                                    167 ;--------------------------------------------------------
                                    168 ; special function registers
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000080   172 _P0	=	0x0080
                           000081   173 _SP	=	0x0081
                           000082   174 _DPL	=	0x0082
                           000083   175 _DPH	=	0x0083
                           000087   176 _PCON	=	0x0087
                           000088   177 _TCON	=	0x0088
                           000089   178 _TMOD	=	0x0089
                           00008A   179 _TL0	=	0x008a
                           00008B   180 _TL1	=	0x008b
                           00008C   181 _TH0	=	0x008c
                           00008D   182 _TH1	=	0x008d
                           000090   183 _P1	=	0x0090
                           000098   184 _SCON	=	0x0098
                           000099   185 _SBUF	=	0x0099
                           0000A0   186 _P2	=	0x00a0
                           0000A8   187 _IE	=	0x00a8
                           0000B0   188 _P3	=	0x00b0
                           0000B8   189 _IP	=	0x00b8
                           0000D0   190 _PSW	=	0x00d0
                           0000E0   191 _ACC	=	0x00e0
                           0000F0   192 _B	=	0x00f0
                           0000C8   193 _T2CON	=	0x00c8
                           0000CA   194 _RCAP2L	=	0x00ca
                           0000CB   195 _RCAP2H	=	0x00cb
                           0000CC   196 _TL2	=	0x00cc
                           0000CD   197 _TH2	=	0x00cd
                                    198 ;--------------------------------------------------------
                                    199 ; special function bits
                                    200 ;--------------------------------------------------------
                                    201 	.area RSEG    (ABS,DATA)
      000000                        202 	.org 0x0000
                           000080   203 _P0_0	=	0x0080
                           000081   204 _P0_1	=	0x0081
                           000082   205 _P0_2	=	0x0082
                           000083   206 _P0_3	=	0x0083
                           000084   207 _P0_4	=	0x0084
                           000085   208 _P0_5	=	0x0085
                           000086   209 _P0_6	=	0x0086
                           000087   210 _P0_7	=	0x0087
                           000088   211 _IT0	=	0x0088
                           000089   212 _IE0	=	0x0089
                           00008A   213 _IT1	=	0x008a
                           00008B   214 _IE1	=	0x008b
                           00008C   215 _TR0	=	0x008c
                           00008D   216 _TF0	=	0x008d
                           00008E   217 _TR1	=	0x008e
                           00008F   218 _TF1	=	0x008f
                           000090   219 _P1_0	=	0x0090
                           000091   220 _P1_1	=	0x0091
                           000092   221 _P1_2	=	0x0092
                           000093   222 _P1_3	=	0x0093
                           000094   223 _P1_4	=	0x0094
                           000095   224 _P1_5	=	0x0095
                           000096   225 _P1_6	=	0x0096
                           000097   226 _P1_7	=	0x0097
                           000098   227 _RI	=	0x0098
                           000099   228 _TI	=	0x0099
                           00009A   229 _RB8	=	0x009a
                           00009B   230 _TB8	=	0x009b
                           00009C   231 _REN	=	0x009c
                           00009D   232 _SM2	=	0x009d
                           00009E   233 _SM1	=	0x009e
                           00009F   234 _SM0	=	0x009f
                           0000A0   235 _P2_0	=	0x00a0
                           0000A1   236 _P2_1	=	0x00a1
                           0000A2   237 _P2_2	=	0x00a2
                           0000A3   238 _P2_3	=	0x00a3
                           0000A4   239 _P2_4	=	0x00a4
                           0000A5   240 _P2_5	=	0x00a5
                           0000A6   241 _P2_6	=	0x00a6
                           0000A7   242 _P2_7	=	0x00a7
                           0000A8   243 _EX0	=	0x00a8
                           0000A9   244 _ET0	=	0x00a9
                           0000AA   245 _EX1	=	0x00aa
                           0000AB   246 _ET1	=	0x00ab
                           0000AC   247 _ES	=	0x00ac
                           0000AF   248 _EA	=	0x00af
                           0000B0   249 _P3_0	=	0x00b0
                           0000B1   250 _P3_1	=	0x00b1
                           0000B2   251 _P3_2	=	0x00b2
                           0000B3   252 _P3_3	=	0x00b3
                           0000B4   253 _P3_4	=	0x00b4
                           0000B5   254 _P3_5	=	0x00b5
                           0000B6   255 _P3_6	=	0x00b6
                           0000B7   256 _P3_7	=	0x00b7
                           0000B0   257 _RXD	=	0x00b0
                           0000B1   258 _TXD	=	0x00b1
                           0000B2   259 _INT0	=	0x00b2
                           0000B3   260 _INT1	=	0x00b3
                           0000B4   261 _T0	=	0x00b4
                           0000B5   262 _T1	=	0x00b5
                           0000B6   263 _WR	=	0x00b6
                           0000B7   264 _RD	=	0x00b7
                           0000B8   265 _PX0	=	0x00b8
                           0000B9   266 _PT0	=	0x00b9
                           0000BA   267 _PX1	=	0x00ba
                           0000BB   268 _PT1	=	0x00bb
                           0000BC   269 _PS	=	0x00bc
                           0000D0   270 _P	=	0x00d0
                           0000D1   271 _F1	=	0x00d1
                           0000D2   272 _OV	=	0x00d2
                           0000D3   273 _RS0	=	0x00d3
                           0000D4   274 _RS1	=	0x00d4
                           0000D5   275 _F0	=	0x00d5
                           0000D6   276 _AC	=	0x00d6
                           0000D7   277 _CY	=	0x00d7
                           0000AD   278 _ET2	=	0x00ad
                           0000BD   279 _PT2	=	0x00bd
                           0000C8   280 _T2CON_0	=	0x00c8
                           0000C9   281 _T2CON_1	=	0x00c9
                           0000CA   282 _T2CON_2	=	0x00ca
                           0000CB   283 _T2CON_3	=	0x00cb
                           0000CC   284 _T2CON_4	=	0x00cc
                           0000CD   285 _T2CON_5	=	0x00cd
                           0000CE   286 _T2CON_6	=	0x00ce
                           0000CF   287 _T2CON_7	=	0x00cf
                           0000C8   288 _CP_RL2	=	0x00c8
                           0000C9   289 _C_T2	=	0x00c9
                           0000CA   290 _TR2	=	0x00ca
                           0000CB   291 _EXEN2	=	0x00cb
                           0000CC   292 _TCLK	=	0x00cc
                           0000CD   293 _RCLK	=	0x00cd
                           0000CE   294 _EXF2	=	0x00ce
                           0000CF   295 _TF2	=	0x00cf
                                    296 ;--------------------------------------------------------
                                    297 ; overlayable register banks
                                    298 ;--------------------------------------------------------
                                    299 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        300 	.ds 8
                                    301 ;--------------------------------------------------------
                                    302 ; internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area DSEG    (DATA)
      000008                        305 _NixieTable::
      000008                        306 	.ds 17
      000019                        307 _LCD_SetCursor_PARM_2:
      000019                        308 	.ds 1
      00001A                        309 _LCD_ShowChar_PARM_2:
      00001A                        310 	.ds 1
      00001B                        311 _LCD_ShowChar_PARM_3:
      00001B                        312 	.ds 1
      00001C                        313 _LCD_ShowString_PARM_2:
      00001C                        314 	.ds 1
      00001D                        315 _LCD_ShowString_PARM_3:
      00001D                        316 	.ds 3
      000020                        317 _LCD_Pow_PARM_2:
      000020                        318 	.ds 2
      000022                        319 _LCD_ShowNum_PARM_2:
      000022                        320 	.ds 1
      000023                        321 _LCD_ShowNum_PARM_3:
      000023                        322 	.ds 2
      000025                        323 _LCD_ShowNum_PARM_4:
      000025                        324 	.ds 1
      000026                        325 _LCD_ShowSignedNum_PARM_2:
      000026                        326 	.ds 1
      000027                        327 _LCD_ShowSignedNum_PARM_3:
      000027                        328 	.ds 2
      000029                        329 _LCD_ShowSignedNum_PARM_4:
      000029                        330 	.ds 1
      00002A                        331 _LCD_ShowHexNum_PARM_2:
      00002A                        332 	.ds 1
      00002B                        333 _LCD_ShowHexNum_PARM_3:
      00002B                        334 	.ds 2
      00002D                        335 _LCD_ShowHexNum_PARM_4:
      00002D                        336 	.ds 1
      00002E                        337 _LCD_ShowBinNum_PARM_2:
      00002E                        338 	.ds 1
      00002F                        339 _LCD_ShowBinNum_PARM_3:
      00002F                        340 	.ds 2
      000031                        341 _LCD_ShowBinNum_PARM_4:
      000031                        342 	.ds 1
      000032                        343 _KeyNum::
      000032                        344 	.ds 1
                                    345 ;--------------------------------------------------------
                                    346 ; overlayable items in internal ram 
                                    347 ;--------------------------------------------------------
                                    348 	.area	OSEG    (OVR,DATA)
                                    349 	.area	OSEG    (OVR,DATA)
      000033                        350 _Nixie_PARM_2:
      000033                        351 	.ds 1
                                    352 	.area	OSEG    (OVR,DATA)
                                    353 ;--------------------------------------------------------
                                    354 ; Stack segment in internal ram 
                                    355 ;--------------------------------------------------------
                                    356 	.area	SSEG
      000035                        357 __start__stack:
      000035                        358 	.ds	1
                                    359 
                                    360 ;--------------------------------------------------------
                                    361 ; indirectly addressable internal ram data
                                    362 ;--------------------------------------------------------
                                    363 	.area ISEG    (DATA)
                                    364 ;--------------------------------------------------------
                                    365 ; absolute internal ram data
                                    366 ;--------------------------------------------------------
                                    367 	.area IABS    (ABS,DATA)
                                    368 	.area IABS    (ABS,DATA)
                                    369 ;--------------------------------------------------------
                                    370 ; bit data
                                    371 ;--------------------------------------------------------
                                    372 	.area BSEG    (BIT)
                                    373 ;--------------------------------------------------------
                                    374 ; paged external ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area PSEG    (PAG,XDATA)
                                    377 ;--------------------------------------------------------
                                    378 ; external ram data
                                    379 ;--------------------------------------------------------
                                    380 	.area XSEG    (XDATA)
                                    381 ;--------------------------------------------------------
                                    382 ; absolute external ram data
                                    383 ;--------------------------------------------------------
                                    384 	.area XABS    (ABS,XDATA)
                                    385 ;--------------------------------------------------------
                                    386 ; external initialized ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area XISEG   (XDATA)
                                    389 	.area HOME    (CODE)
                                    390 	.area GSINIT0 (CODE)
                                    391 	.area GSINIT1 (CODE)
                                    392 	.area GSINIT2 (CODE)
                                    393 	.area GSINIT3 (CODE)
                                    394 	.area GSINIT4 (CODE)
                                    395 	.area GSINIT5 (CODE)
                                    396 	.area GSINIT  (CODE)
                                    397 	.area GSFINAL (CODE)
                                    398 	.area CSEG    (CODE)
                                    399 ;--------------------------------------------------------
                                    400 ; interrupt vector 
                                    401 ;--------------------------------------------------------
                                    402 	.area HOME    (CODE)
      000000                        403 __interrupt_vect:
      000000 02 00 06         [24]  404 	ljmp	__sdcc_gsinit_startup
                                    405 ;--------------------------------------------------------
                                    406 ; global & static initialisations
                                    407 ;--------------------------------------------------------
                                    408 	.area HOME    (CODE)
                                    409 	.area GSINIT  (CODE)
                                    410 	.area GSFINAL (CODE)
                                    411 	.area GSINIT  (CODE)
                                    412 	.globl __sdcc_gsinit_startup
                                    413 	.globl __sdcc_program_startup
                                    414 	.globl __start__stack
                                    415 	.globl __mcs51_genXINIT
                                    416 	.globl __mcs51_genXRAMCLEAR
                                    417 	.globl __mcs51_genRAMCLEAR
                                    418 ;	../include/tools.h:26: unsigned char NixieTable[] = {0x3F, 0x06, 0x5B, 0x4f, 0x66, 0x6D,
      00005F 75 08 3F         [24]  419 	mov	_NixieTable,#0x3f
      000062 75 09 06         [24]  420 	mov	(_NixieTable + 0x0001),#0x06
      000065 75 0A 5B         [24]  421 	mov	(_NixieTable + 0x0002),#0x5b
      000068 75 0B 4F         [24]  422 	mov	(_NixieTable + 0x0003),#0x4f
      00006B 75 0C 66         [24]  423 	mov	(_NixieTable + 0x0004),#0x66
      00006E 75 0D 6D         [24]  424 	mov	(_NixieTable + 0x0005),#0x6d
      000071 75 0E 7D         [24]  425 	mov	(_NixieTable + 0x0006),#0x7d
      000074 75 0F 07         [24]  426 	mov	(_NixieTable + 0x0007),#0x07
      000077 75 10 7F         [24]  427 	mov	(_NixieTable + 0x0008),#0x7f
      00007A 75 11 6F         [24]  428 	mov	(_NixieTable + 0x0009),#0x6f
      00007D 75 12 77         [24]  429 	mov	(_NixieTable + 0x000a),#0x77
      000080 75 13 7C         [24]  430 	mov	(_NixieTable + 0x000b),#0x7c
      000083 75 14 39         [24]  431 	mov	(_NixieTable + 0x000c),#0x39
      000086 75 15 5E         [24]  432 	mov	(_NixieTable + 0x000d),#0x5e
      000089 75 16 79         [24]  433 	mov	(_NixieTable + 0x000e),#0x79
      00008C 75 17 71         [24]  434 	mov	(_NixieTable + 0x000f),#0x71
      00008F 75 18 00         [24]  435 	mov	(_NixieTable + 0x0010),#0x00
                                    436 	.area GSFINAL (CODE)
      000092 02 00 03         [24]  437 	ljmp	__sdcc_program_startup
                                    438 ;--------------------------------------------------------
                                    439 ; Home
                                    440 ;--------------------------------------------------------
                                    441 	.area HOME    (CODE)
                                    442 	.area HOME    (CODE)
      000003                        443 __sdcc_program_startup:
      000003 02 04 C9         [24]  444 	ljmp	_main
                                    445 ;	return from main will return to caller
                                    446 ;--------------------------------------------------------
                                    447 ; code
                                    448 ;--------------------------------------------------------
                                    449 	.area CSEG    (CODE)
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'delay'
                                    452 ;------------------------------------------------------------
                                    453 ;ms                        Allocated to registers 
                                    454 ;i                         Allocated to registers r4 
                                    455 ;j                         Allocated to registers r5 
                                    456 ;------------------------------------------------------------
                                    457 ;	../include/tools.h:6: void delay(unsigned int ms) {
                                    458 ;	-----------------------------------------
                                    459 ;	 function delay
                                    460 ;	-----------------------------------------
      000095                        461 _delay:
                           000007   462 	ar7 = 0x07
                           000006   463 	ar6 = 0x06
                           000005   464 	ar5 = 0x05
                           000004   465 	ar4 = 0x04
                           000003   466 	ar3 = 0x03
                           000002   467 	ar2 = 0x02
                           000001   468 	ar1 = 0x01
                           000000   469 	ar0 = 0x00
      000095 AE 82            [24]  470 	mov	r6,dpl
      000097 AF 83            [24]  471 	mov	r7,dph
                                    472 ;	../include/tools.h:9: while (ms--) {
      000099                        473 00107$:
      000099 8E 04            [24]  474 	mov	ar4,r6
      00009B 8F 05            [24]  475 	mov	ar5,r7
      00009D 1E               [12]  476 	dec	r6
      00009E BE FF 01         [24]  477 	cjne	r6,#0xff,00134$
      0000A1 1F               [12]  478 	dec	r7
      0000A2                        479 00134$:
      0000A2 EC               [12]  480 	mov	a,r4
      0000A3 4D               [12]  481 	orl	a,r5
      0000A4 60 0A            [24]  482 	jz	00110$
                                    483 ;	../include/tools.h:13: while (--j)
      0000A6 7D EF            [12]  484 	mov	r5,#0xef
      0000A8 7C 02            [12]  485 	mov	r4,#0x02
      0000AA                        486 00101$:
      0000AA DD FE            [24]  487 	djnz	r5,00101$
                                    488 ;	../include/tools.h:15: } while (--i);
      0000AC DC FC            [24]  489 	djnz	r4,00101$
      0000AE 80 E9            [24]  490 	sjmp	00107$
      0000B0                        491 00110$:
                                    492 ;	../include/tools.h:17: }
      0000B0 22               [24]  493 	ret
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'Nixie'
                                    496 ;------------------------------------------------------------
                                    497 ;number                    Allocated with name '_Nixie_PARM_2'
                                    498 ;localtion                 Allocated to registers r7 
                                    499 ;------------------------------------------------------------
                                    500 ;	../include/tools.h:29: void Nixie(unsigned char localtion, unsigned char number) {
                                    501 ;	-----------------------------------------
                                    502 ;	 function Nixie
                                    503 ;	-----------------------------------------
      0000B1                        504 _Nixie:
                                    505 ;	../include/tools.h:30: switch (localtion) {
      0000B1 E5 82            [12]  506 	mov	a,dpl
      0000B3 FF               [12]  507 	mov	r7,a
      0000B4 24 F7            [12]  508 	add	a,#0xff - 0x08
      0000B6 50 03            [24]  509 	jnc	00116$
      0000B8 02 01 19         [24]  510 	ljmp	00109$
      0000BB                        511 00116$:
      0000BB EF               [12]  512 	mov	a,r7
      0000BC 24 0A            [12]  513 	add	a,#(00117$-3-.)
      0000BE 83               [24]  514 	movc	a,@a+pc
      0000BF F5 82            [12]  515 	mov	dpl,a
      0000C1 EF               [12]  516 	mov	a,r7
      0000C2 24 0D            [12]  517 	add	a,#(00118$-3-.)
      0000C4 83               [24]  518 	movc	a,@a+pc
      0000C5 F5 83            [12]  519 	mov	dph,a
      0000C7 E4               [12]  520 	clr	a
      0000C8 73               [24]  521 	jmp	@a+dptr
      0000C9                        522 00117$:
      0000C9 19                     523 	.db	00109$
      0000CA DB                     524 	.db	00101$
      0000CB E3                     525 	.db	00102$
      0000CC EB                     526 	.db	00103$
      0000CD F3                     527 	.db	00104$
      0000CE FB                     528 	.db	00105$
      0000CF 03                     529 	.db	00106$
      0000D0 0B                     530 	.db	00107$
      0000D1 13                     531 	.db	00108$
      0000D2                        532 00118$:
      0000D2 01                     533 	.db	00109$>>8
      0000D3 00                     534 	.db	00101$>>8
      0000D4 00                     535 	.db	00102$>>8
      0000D5 00                     536 	.db	00103$>>8
      0000D6 00                     537 	.db	00104$>>8
      0000D7 00                     538 	.db	00105$>>8
      0000D8 01                     539 	.db	00106$>>8
      0000D9 01                     540 	.db	00107$>>8
      0000DA 01                     541 	.db	00108$>>8
                                    542 ;	../include/tools.h:31: case 1: {
      0000DB                        543 00101$:
                                    544 ;	../include/tools.h:32: P2_4 = 1;
                                    545 ;	assignBit
      0000DB D2 A4            [12]  546 	setb	_P2_4
                                    547 ;	../include/tools.h:33: P2_3 = 1;
                                    548 ;	assignBit
      0000DD D2 A3            [12]  549 	setb	_P2_3
                                    550 ;	../include/tools.h:34: P2_2 = 1;
                                    551 ;	assignBit
      0000DF D2 A2            [12]  552 	setb	_P2_2
                                    553 ;	../include/tools.h:35: break;
                                    554 ;	../include/tools.h:37: case 2: {
      0000E1 80 36            [24]  555 	sjmp	00109$
      0000E3                        556 00102$:
                                    557 ;	../include/tools.h:38: P2_4 = 1;
                                    558 ;	assignBit
      0000E3 D2 A4            [12]  559 	setb	_P2_4
                                    560 ;	../include/tools.h:39: P2_3 = 1;
                                    561 ;	assignBit
      0000E5 D2 A3            [12]  562 	setb	_P2_3
                                    563 ;	../include/tools.h:40: P2_2 = 0;
                                    564 ;	assignBit
      0000E7 C2 A2            [12]  565 	clr	_P2_2
                                    566 ;	../include/tools.h:41: break;
                                    567 ;	../include/tools.h:43: case 3: {
      0000E9 80 2E            [24]  568 	sjmp	00109$
      0000EB                        569 00103$:
                                    570 ;	../include/tools.h:44: P2_4 = 1;
                                    571 ;	assignBit
      0000EB D2 A4            [12]  572 	setb	_P2_4
                                    573 ;	../include/tools.h:45: P2_3 = 0;
                                    574 ;	assignBit
      0000ED C2 A3            [12]  575 	clr	_P2_3
                                    576 ;	../include/tools.h:46: P2_2 = 1;
                                    577 ;	assignBit
      0000EF D2 A2            [12]  578 	setb	_P2_2
                                    579 ;	../include/tools.h:47: break;
                                    580 ;	../include/tools.h:49: case 4: {
      0000F1 80 26            [24]  581 	sjmp	00109$
      0000F3                        582 00104$:
                                    583 ;	../include/tools.h:50: P2_4 = 1;
                                    584 ;	assignBit
      0000F3 D2 A4            [12]  585 	setb	_P2_4
                                    586 ;	../include/tools.h:51: P2_3 = 0;
                                    587 ;	assignBit
      0000F5 C2 A3            [12]  588 	clr	_P2_3
                                    589 ;	../include/tools.h:52: P2_2 = 0;
                                    590 ;	assignBit
      0000F7 C2 A2            [12]  591 	clr	_P2_2
                                    592 ;	../include/tools.h:53: break;
                                    593 ;	../include/tools.h:55: case 5: {
      0000F9 80 1E            [24]  594 	sjmp	00109$
      0000FB                        595 00105$:
                                    596 ;	../include/tools.h:56: P2_4 = 0;
                                    597 ;	assignBit
      0000FB C2 A4            [12]  598 	clr	_P2_4
                                    599 ;	../include/tools.h:57: P2_3 = 1;
                                    600 ;	assignBit
      0000FD D2 A3            [12]  601 	setb	_P2_3
                                    602 ;	../include/tools.h:58: P2_2 = 1;
                                    603 ;	assignBit
      0000FF D2 A2            [12]  604 	setb	_P2_2
                                    605 ;	../include/tools.h:59: break;
                                    606 ;	../include/tools.h:61: case 6: {
      000101 80 16            [24]  607 	sjmp	00109$
      000103                        608 00106$:
                                    609 ;	../include/tools.h:62: P2_4 = 0;
                                    610 ;	assignBit
      000103 C2 A4            [12]  611 	clr	_P2_4
                                    612 ;	../include/tools.h:63: P2_3 = 1;
                                    613 ;	assignBit
      000105 D2 A3            [12]  614 	setb	_P2_3
                                    615 ;	../include/tools.h:64: P2_2 = 0;
                                    616 ;	assignBit
      000107 C2 A2            [12]  617 	clr	_P2_2
                                    618 ;	../include/tools.h:65: break;
                                    619 ;	../include/tools.h:67: case 7: {
      000109 80 0E            [24]  620 	sjmp	00109$
      00010B                        621 00107$:
                                    622 ;	../include/tools.h:68: P2_4 = 0;
                                    623 ;	assignBit
      00010B C2 A4            [12]  624 	clr	_P2_4
                                    625 ;	../include/tools.h:69: P2_3 = 0;
                                    626 ;	assignBit
      00010D C2 A3            [12]  627 	clr	_P2_3
                                    628 ;	../include/tools.h:70: P2_2 = 1;
                                    629 ;	assignBit
      00010F D2 A2            [12]  630 	setb	_P2_2
                                    631 ;	../include/tools.h:71: break;
                                    632 ;	../include/tools.h:73: case 8: {
      000111 80 06            [24]  633 	sjmp	00109$
      000113                        634 00108$:
                                    635 ;	../include/tools.h:74: P2_4 = 0;
                                    636 ;	assignBit
      000113 C2 A4            [12]  637 	clr	_P2_4
                                    638 ;	../include/tools.h:75: P2_3 = 0;
                                    639 ;	assignBit
      000115 C2 A3            [12]  640 	clr	_P2_3
                                    641 ;	../include/tools.h:76: P2_2 = 0;
                                    642 ;	assignBit
      000117 C2 A2            [12]  643 	clr	_P2_2
                                    644 ;	../include/tools.h:79: }
      000119                        645 00109$:
                                    646 ;	../include/tools.h:81: P0 = NixieTable[number];
      000119 E5 33            [12]  647 	mov	a,_Nixie_PARM_2
      00011B 24 08            [12]  648 	add	a,#_NixieTable
      00011D F9               [12]  649 	mov	r1,a
      00011E 87 80            [24]  650 	mov	_P0,@r1
                                    651 ;	../include/tools.h:82: }
      000120 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'LCD_Delay'
                                    655 ;------------------------------------------------------------
                                    656 ;i                         Allocated to registers r6 
                                    657 ;j                         Allocated to registers r7 
                                    658 ;------------------------------------------------------------
                                    659 ;	../include/tools.h:93: void LCD_Delay()
                                    660 ;	-----------------------------------------
                                    661 ;	 function LCD_Delay
                                    662 ;	-----------------------------------------
      000121                        663 _LCD_Delay:
                                    664 ;	../include/tools.h:101: while (--j);
      000121 7F EF            [12]  665 	mov	r7,#0xef
      000123 7E 02            [12]  666 	mov	r6,#0x02
      000125                        667 00101$:
      000125 DF FE            [24]  668 	djnz	r7,00101$
                                    669 ;	../include/tools.h:102: } while (--i);
      000127 DE FC            [24]  670 	djnz	r6,00101$
                                    671 ;	../include/tools.h:103: }
      000129 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'LCD_WriteCommand'
                                    675 ;------------------------------------------------------------
                                    676 ;Command                   Allocated to registers r7 
                                    677 ;------------------------------------------------------------
                                    678 ;	../include/tools.h:110: void LCD_WriteCommand(unsigned char Command)
                                    679 ;	-----------------------------------------
                                    680 ;	 function LCD_WriteCommand
                                    681 ;	-----------------------------------------
      00012A                        682 _LCD_WriteCommand:
      00012A AF 82            [24]  683 	mov	r7,dpl
                                    684 ;	../include/tools.h:112: P2_6=0;
                                    685 ;	assignBit
      00012C C2 A6            [12]  686 	clr	_P2_6
                                    687 ;	../include/tools.h:113: P2_5=0;
                                    688 ;	assignBit
      00012E C2 A5            [12]  689 	clr	_P2_5
                                    690 ;	../include/tools.h:114: LCD_DataPort=Command;
      000130 8F 80            [24]  691 	mov	_P0,r7
                                    692 ;	../include/tools.h:115: P2_7=1;
                                    693 ;	assignBit
      000132 D2 A7            [12]  694 	setb	_P2_7
                                    695 ;	../include/tools.h:116: LCD_Delay();
      000134 12 01 21         [24]  696 	lcall	_LCD_Delay
                                    697 ;	../include/tools.h:117: P2_7=0;
                                    698 ;	assignBit
      000137 C2 A7            [12]  699 	clr	_P2_7
                                    700 ;	../include/tools.h:118: LCD_Delay();
                                    701 ;	../include/tools.h:119: }
      000139 02 01 21         [24]  702 	ljmp	_LCD_Delay
                                    703 ;------------------------------------------------------------
                                    704 ;Allocation info for local variables in function 'LCD_WriteData'
                                    705 ;------------------------------------------------------------
                                    706 ;Data                      Allocated to registers r7 
                                    707 ;------------------------------------------------------------
                                    708 ;	../include/tools.h:126: void LCD_WriteData(unsigned char Data)
                                    709 ;	-----------------------------------------
                                    710 ;	 function LCD_WriteData
                                    711 ;	-----------------------------------------
      00013C                        712 _LCD_WriteData:
      00013C AF 82            [24]  713 	mov	r7,dpl
                                    714 ;	../include/tools.h:128: P2_6=1;
                                    715 ;	assignBit
      00013E D2 A6            [12]  716 	setb	_P2_6
                                    717 ;	../include/tools.h:129: P2_5=0;
                                    718 ;	assignBit
      000140 C2 A5            [12]  719 	clr	_P2_5
                                    720 ;	../include/tools.h:130: LCD_DataPort=Data;
      000142 8F 80            [24]  721 	mov	_P0,r7
                                    722 ;	../include/tools.h:131: P2_7=1;
                                    723 ;	assignBit
      000144 D2 A7            [12]  724 	setb	_P2_7
                                    725 ;	../include/tools.h:132: LCD_Delay();
      000146 12 01 21         [24]  726 	lcall	_LCD_Delay
                                    727 ;	../include/tools.h:133: P2_7=0;
                                    728 ;	assignBit
      000149 C2 A7            [12]  729 	clr	_P2_7
                                    730 ;	../include/tools.h:134: LCD_Delay();
                                    731 ;	../include/tools.h:135: }
      00014B 02 01 21         [24]  732 	ljmp	_LCD_Delay
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'LCD_SetCursor'
                                    735 ;------------------------------------------------------------
                                    736 ;Column                    Allocated with name '_LCD_SetCursor_PARM_2'
                                    737 ;Line                      Allocated to registers r7 
                                    738 ;------------------------------------------------------------
                                    739 ;	../include/tools.h:143: void LCD_SetCursor(unsigned char Line,unsigned char Column)
                                    740 ;	-----------------------------------------
                                    741 ;	 function LCD_SetCursor
                                    742 ;	-----------------------------------------
      00014E                        743 _LCD_SetCursor:
      00014E AF 82            [24]  744 	mov	r7,dpl
                                    745 ;	../include/tools.h:145: if(Line==1)
      000150 BF 01 0B         [24]  746 	cjne	r7,#0x01,00104$
                                    747 ;	../include/tools.h:147: LCD_WriteCommand(0x80|(Column-1));
      000153 AE 19            [24]  748 	mov	r6,_LCD_SetCursor_PARM_2
      000155 1E               [12]  749 	dec	r6
      000156 74 80            [12]  750 	mov	a,#0x80
      000158 4E               [12]  751 	orl	a,r6
      000159 F5 82            [12]  752 	mov	dpl,a
      00015B 02 01 2A         [24]  753 	ljmp	_LCD_WriteCommand
      00015E                        754 00104$:
                                    755 ;	../include/tools.h:149: else if(Line==2)
      00015E BF 02 0E         [24]  756 	cjne	r7,#0x02,00106$
                                    757 ;	../include/tools.h:151: LCD_WriteCommand(0x80|(Column-1+0x40));
      000161 AF 19            [24]  758 	mov	r7,_LCD_SetCursor_PARM_2
      000163 74 3F            [12]  759 	mov	a,#0x3f
      000165 2F               [12]  760 	add	a,r7
      000166 FF               [12]  761 	mov	r7,a
      000167 74 80            [12]  762 	mov	a,#0x80
      000169 4F               [12]  763 	orl	a,r7
      00016A F5 82            [12]  764 	mov	dpl,a
                                    765 ;	../include/tools.h:153: }
      00016C 02 01 2A         [24]  766 	ljmp	_LCD_WriteCommand
      00016F                        767 00106$:
      00016F 22               [24]  768 	ret
                                    769 ;------------------------------------------------------------
                                    770 ;Allocation info for local variables in function 'LCD_Init'
                                    771 ;------------------------------------------------------------
                                    772 ;	../include/tools.h:160: void LCD_Init()
                                    773 ;	-----------------------------------------
                                    774 ;	 function LCD_Init
                                    775 ;	-----------------------------------------
      000170                        776 _LCD_Init:
                                    777 ;	../include/tools.h:162: LCD_WriteCommand(0x38);//八位数据接口，两行显示，5*7点阵
      000170 75 82 38         [24]  778 	mov	dpl,#0x38
      000173 12 01 2A         [24]  779 	lcall	_LCD_WriteCommand
                                    780 ;	../include/tools.h:163: LCD_WriteCommand(0x0c);//显示开，光标关，闪烁关
      000176 75 82 0C         [24]  781 	mov	dpl,#0x0c
      000179 12 01 2A         [24]  782 	lcall	_LCD_WriteCommand
                                    783 ;	../include/tools.h:164: LCD_WriteCommand(0x06);//数据读写操作后，光标自动加一，画面不动
      00017C 75 82 06         [24]  784 	mov	dpl,#0x06
      00017F 12 01 2A         [24]  785 	lcall	_LCD_WriteCommand
                                    786 ;	../include/tools.h:165: LCD_WriteCommand(0x01);//光标复位，清屏
      000182 75 82 01         [24]  787 	mov	dpl,#0x01
                                    788 ;	../include/tools.h:166: }
      000185 02 01 2A         [24]  789 	ljmp	_LCD_WriteCommand
                                    790 ;------------------------------------------------------------
                                    791 ;Allocation info for local variables in function 'LCD_ShowChar'
                                    792 ;------------------------------------------------------------
                                    793 ;Column                    Allocated with name '_LCD_ShowChar_PARM_2'
                                    794 ;Char                      Allocated with name '_LCD_ShowChar_PARM_3'
                                    795 ;Line                      Allocated to registers r7 
                                    796 ;------------------------------------------------------------
                                    797 ;	../include/tools.h:175: void LCD_ShowChar(unsigned char Line,unsigned char Column,char Char)
                                    798 ;	-----------------------------------------
                                    799 ;	 function LCD_ShowChar
                                    800 ;	-----------------------------------------
      000188                        801 _LCD_ShowChar:
                                    802 ;	../include/tools.h:177: LCD_SetCursor(Line,Column);
      000188 85 1A 19         [24]  803 	mov	_LCD_SetCursor_PARM_2,_LCD_ShowChar_PARM_2
      00018B 12 01 4E         [24]  804 	lcall	_LCD_SetCursor
                                    805 ;	../include/tools.h:178: LCD_WriteData(Char);
      00018E 85 1B 82         [24]  806 	mov	dpl,_LCD_ShowChar_PARM_3
                                    807 ;	../include/tools.h:179: }
      000191 02 01 3C         [24]  808 	ljmp	_LCD_WriteData
                                    809 ;------------------------------------------------------------
                                    810 ;Allocation info for local variables in function 'LCD_ShowString'
                                    811 ;------------------------------------------------------------
                                    812 ;Column                    Allocated with name '_LCD_ShowString_PARM_2'
                                    813 ;String                    Allocated with name '_LCD_ShowString_PARM_3'
                                    814 ;Line                      Allocated to registers r7 
                                    815 ;i                         Allocated to registers r7 
                                    816 ;------------------------------------------------------------
                                    817 ;	../include/tools.h:188: void LCD_ShowString(unsigned char Line,unsigned char Column,char *String)
                                    818 ;	-----------------------------------------
                                    819 ;	 function LCD_ShowString
                                    820 ;	-----------------------------------------
      000194                        821 _LCD_ShowString:
                                    822 ;	../include/tools.h:191: LCD_SetCursor(Line,Column);
      000194 85 1C 19         [24]  823 	mov	_LCD_SetCursor_PARM_2,_LCD_ShowString_PARM_2
      000197 12 01 4E         [24]  824 	lcall	_LCD_SetCursor
                                    825 ;	../include/tools.h:192: for(i=0;String[i]!='\0';i++)
      00019A 7F 00            [12]  826 	mov	r7,#0x00
      00019C                        827 00103$:
      00019C EF               [12]  828 	mov	a,r7
      00019D 25 1D            [12]  829 	add	a,_LCD_ShowString_PARM_3
      00019F FC               [12]  830 	mov	r4,a
      0001A0 E4               [12]  831 	clr	a
      0001A1 35 1E            [12]  832 	addc	a,(_LCD_ShowString_PARM_3 + 1)
      0001A3 FD               [12]  833 	mov	r5,a
      0001A4 AE 1F            [24]  834 	mov	r6,(_LCD_ShowString_PARM_3 + 2)
      0001A6 8C 82            [24]  835 	mov	dpl,r4
      0001A8 8D 83            [24]  836 	mov	dph,r5
      0001AA 8E F0            [24]  837 	mov	b,r6
      0001AC 12 05 8E         [24]  838 	lcall	__gptrget
      0001AF FE               [12]  839 	mov	r6,a
      0001B0 60 0C            [24]  840 	jz	00105$
                                    841 ;	../include/tools.h:194: LCD_WriteData(String[i]);
      0001B2 8E 82            [24]  842 	mov	dpl,r6
      0001B4 C0 07            [24]  843 	push	ar7
      0001B6 12 01 3C         [24]  844 	lcall	_LCD_WriteData
      0001B9 D0 07            [24]  845 	pop	ar7
                                    846 ;	../include/tools.h:192: for(i=0;String[i]!='\0';i++)
      0001BB 0F               [12]  847 	inc	r7
      0001BC 80 DE            [24]  848 	sjmp	00103$
      0001BE                        849 00105$:
                                    850 ;	../include/tools.h:196: }
      0001BE 22               [24]  851 	ret
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'LCD_Pow'
                                    854 ;------------------------------------------------------------
                                    855 ;Y                         Allocated with name '_LCD_Pow_PARM_2'
                                    856 ;X                         Allocated to registers r6 r7 
                                    857 ;i                         Allocated to registers r3 
                                    858 ;Result                    Allocated to registers r4 r5 
                                    859 ;------------------------------------------------------------
                                    860 ;	../include/tools.h:201: int LCD_Pow(int X,int Y)
                                    861 ;	-----------------------------------------
                                    862 ;	 function LCD_Pow
                                    863 ;	-----------------------------------------
      0001BF                        864 _LCD_Pow:
      0001BF AE 82            [24]  865 	mov	r6,dpl
      0001C1 AF 83            [24]  866 	mov	r7,dph
                                    867 ;	../include/tools.h:204: int Result=1;
      0001C3 7C 01            [12]  868 	mov	r4,#0x01
      0001C5 7D 00            [12]  869 	mov	r5,#0x00
                                    870 ;	../include/tools.h:205: for(i=0;i<Y;i++)
      0001C7 7B 00            [12]  871 	mov	r3,#0x00
      0001C9                        872 00103$:
      0001C9 8B 01            [24]  873 	mov	ar1,r3
      0001CB 7A 00            [12]  874 	mov	r2,#0x00
      0001CD C3               [12]  875 	clr	c
      0001CE E9               [12]  876 	mov	a,r1
      0001CF 95 20            [12]  877 	subb	a,_LCD_Pow_PARM_2
      0001D1 EA               [12]  878 	mov	a,r2
      0001D2 64 80            [12]  879 	xrl	a,#0x80
      0001D4 85 21 F0         [24]  880 	mov	b,(_LCD_Pow_PARM_2 + 1)
      0001D7 63 F0 80         [24]  881 	xrl	b,#0x80
      0001DA 95 F0            [12]  882 	subb	a,b
      0001DC 50 1E            [24]  883 	jnc	00101$
                                    884 ;	../include/tools.h:207: Result*=X;
      0001DE 8E 33            [24]  885 	mov	__mulint_PARM_2,r6
      0001E0 8F 34            [24]  886 	mov	(__mulint_PARM_2 + 1),r7
      0001E2 8C 82            [24]  887 	mov	dpl,r4
      0001E4 8D 83            [24]  888 	mov	dph,r5
      0001E6 C0 07            [24]  889 	push	ar7
      0001E8 C0 06            [24]  890 	push	ar6
      0001EA C0 03            [24]  891 	push	ar3
      0001EC 12 05 24         [24]  892 	lcall	__mulint
      0001EF AC 82            [24]  893 	mov	r4,dpl
      0001F1 AD 83            [24]  894 	mov	r5,dph
      0001F3 D0 03            [24]  895 	pop	ar3
      0001F5 D0 06            [24]  896 	pop	ar6
      0001F7 D0 07            [24]  897 	pop	ar7
                                    898 ;	../include/tools.h:205: for(i=0;i<Y;i++)
      0001F9 0B               [12]  899 	inc	r3
      0001FA 80 CD            [24]  900 	sjmp	00103$
      0001FC                        901 00101$:
                                    902 ;	../include/tools.h:209: return Result;
      0001FC 8C 82            [24]  903 	mov	dpl,r4
      0001FE 8D 83            [24]  904 	mov	dph,r5
                                    905 ;	../include/tools.h:210: }
      000200 22               [24]  906 	ret
                                    907 ;------------------------------------------------------------
                                    908 ;Allocation info for local variables in function 'LCD_ShowNum'
                                    909 ;------------------------------------------------------------
                                    910 ;Column                    Allocated with name '_LCD_ShowNum_PARM_2'
                                    911 ;Number                    Allocated with name '_LCD_ShowNum_PARM_3'
                                    912 ;Length                    Allocated with name '_LCD_ShowNum_PARM_4'
                                    913 ;Line                      Allocated to registers r7 
                                    914 ;i                         Allocated to registers 
                                    915 ;------------------------------------------------------------
                                    916 ;	../include/tools.h:220: void LCD_ShowNum(unsigned char Line,unsigned char Column,unsigned int Number,unsigned char Length)
                                    917 ;	-----------------------------------------
                                    918 ;	 function LCD_ShowNum
                                    919 ;	-----------------------------------------
      000201                        920 _LCD_ShowNum:
                                    921 ;	../include/tools.h:223: LCD_SetCursor(Line,Column);
      000201 85 22 19         [24]  922 	mov	_LCD_SetCursor_PARM_2,_LCD_ShowNum_PARM_2
      000204 12 01 4E         [24]  923 	lcall	_LCD_SetCursor
                                    924 ;	../include/tools.h:224: for(i=Length;i>0;i--)
      000207 AF 25            [24]  925 	mov	r7,_LCD_ShowNum_PARM_4
      000209                        926 00103$:
      000209 EF               [12]  927 	mov	a,r7
      00020A 60 3F            [24]  928 	jz	00105$
                                    929 ;	../include/tools.h:226: LCD_WriteData(Number/LCD_Pow(10,i-1)%10+'0');
      00020C 8F 05            [24]  930 	mov	ar5,r7
      00020E 7E 00            [12]  931 	mov	r6,#0x00
      000210 ED               [12]  932 	mov	a,r5
      000211 24 FF            [12]  933 	add	a,#0xff
      000213 F5 20            [12]  934 	mov	_LCD_Pow_PARM_2,a
      000215 EE               [12]  935 	mov	a,r6
      000216 34 FF            [12]  936 	addc	a,#0xff
      000218 F5 21            [12]  937 	mov	(_LCD_Pow_PARM_2 + 1),a
      00021A 90 00 0A         [24]  938 	mov	dptr,#0x000a
      00021D C0 07            [24]  939 	push	ar7
      00021F 12 01 BF         [24]  940 	lcall	_LCD_Pow
      000222 AD 82            [24]  941 	mov	r5,dpl
      000224 AE 83            [24]  942 	mov	r6,dph
      000226 8D 33            [24]  943 	mov	__divuint_PARM_2,r5
      000228 8E 34            [24]  944 	mov	(__divuint_PARM_2 + 1),r6
      00022A 85 23 82         [24]  945 	mov	dpl,_LCD_ShowNum_PARM_3
      00022D 85 24 83         [24]  946 	mov	dph,(_LCD_ShowNum_PARM_3 + 1)
      000230 12 04 FB         [24]  947 	lcall	__divuint
      000233 75 33 0A         [24]  948 	mov	__moduint_PARM_2,#0x0a
      000236 75 34 00         [24]  949 	mov	(__moduint_PARM_2 + 1),#0x00
      000239 12 05 41         [24]  950 	lcall	__moduint
      00023C AD 82            [24]  951 	mov	r5,dpl
      00023E 74 30            [12]  952 	mov	a,#0x30
      000240 2D               [12]  953 	add	a,r5
      000241 F5 82            [12]  954 	mov	dpl,a
      000243 12 01 3C         [24]  955 	lcall	_LCD_WriteData
      000246 D0 07            [24]  956 	pop	ar7
                                    957 ;	../include/tools.h:224: for(i=Length;i>0;i--)
      000248 1F               [12]  958 	dec	r7
      000249 80 BE            [24]  959 	sjmp	00103$
      00024B                        960 00105$:
                                    961 ;	../include/tools.h:228: }
      00024B 22               [24]  962 	ret
                                    963 ;------------------------------------------------------------
                                    964 ;Allocation info for local variables in function 'LCD_ShowSignedNum'
                                    965 ;------------------------------------------------------------
                                    966 ;Column                    Allocated with name '_LCD_ShowSignedNum_PARM_2'
                                    967 ;Number                    Allocated with name '_LCD_ShowSignedNum_PARM_3'
                                    968 ;Length                    Allocated with name '_LCD_ShowSignedNum_PARM_4'
                                    969 ;Line                      Allocated to registers r7 
                                    970 ;i                         Allocated to registers 
                                    971 ;Number1                   Allocated to registers r6 r7 
                                    972 ;------------------------------------------------------------
                                    973 ;	../include/tools.h:238: void LCD_ShowSignedNum(unsigned char Line,unsigned char Column,int Number,unsigned char Length)
                                    974 ;	-----------------------------------------
                                    975 ;	 function LCD_ShowSignedNum
                                    976 ;	-----------------------------------------
      00024C                        977 _LCD_ShowSignedNum:
                                    978 ;	../include/tools.h:242: LCD_SetCursor(Line,Column);
      00024C 85 26 19         [24]  979 	mov	_LCD_SetCursor_PARM_2,_LCD_ShowSignedNum_PARM_2
      00024F 12 01 4E         [24]  980 	lcall	_LCD_SetCursor
                                    981 ;	../include/tools.h:243: if(Number>=0)
      000252 E5 28            [12]  982 	mov	a,(_LCD_ShowSignedNum_PARM_3 + 1)
      000254 20 E7 0C         [24]  983 	jb	acc.7,00102$
                                    984 ;	../include/tools.h:245: LCD_WriteData('+');
      000257 75 82 2B         [24]  985 	mov	dpl,#0x2b
      00025A 12 01 3C         [24]  986 	lcall	_LCD_WriteData
                                    987 ;	../include/tools.h:246: Number1=Number;
      00025D AE 27            [24]  988 	mov	r6,_LCD_ShowSignedNum_PARM_3
      00025F AF 28            [24]  989 	mov	r7,(_LCD_ShowSignedNum_PARM_3 + 1)
      000261 80 0F            [24]  990 	sjmp	00103$
      000263                        991 00102$:
                                    992 ;	../include/tools.h:250: LCD_WriteData('-');
      000263 75 82 2D         [24]  993 	mov	dpl,#0x2d
      000266 12 01 3C         [24]  994 	lcall	_LCD_WriteData
                                    995 ;	../include/tools.h:251: Number1=-Number;
      000269 C3               [12]  996 	clr	c
      00026A E4               [12]  997 	clr	a
      00026B 95 27            [12]  998 	subb	a,_LCD_ShowSignedNum_PARM_3
      00026D FE               [12]  999 	mov	r6,a
      00026E E4               [12] 1000 	clr	a
      00026F 95 28            [12] 1001 	subb	a,(_LCD_ShowSignedNum_PARM_3 + 1)
      000271 FF               [12] 1002 	mov	r7,a
      000272                       1003 00103$:
                                   1004 ;	../include/tools.h:253: for(i=Length;i>0;i--)
      000272 AD 29            [24] 1005 	mov	r5,_LCD_ShowSignedNum_PARM_4
      000274                       1006 00106$:
      000274 ED               [12] 1007 	mov	a,r5
      000275 60 51            [24] 1008 	jz	00108$
                                   1009 ;	../include/tools.h:255: LCD_WriteData(Number1/LCD_Pow(10,i-1)%10+'0');
      000277 8D 03            [24] 1010 	mov	ar3,r5
      000279 7C 00            [12] 1011 	mov	r4,#0x00
      00027B EB               [12] 1012 	mov	a,r3
      00027C 24 FF            [12] 1013 	add	a,#0xff
      00027E F5 20            [12] 1014 	mov	_LCD_Pow_PARM_2,a
      000280 EC               [12] 1015 	mov	a,r4
      000281 34 FF            [12] 1016 	addc	a,#0xff
      000283 F5 21            [12] 1017 	mov	(_LCD_Pow_PARM_2 + 1),a
      000285 90 00 0A         [24] 1018 	mov	dptr,#0x000a
      000288 C0 07            [24] 1019 	push	ar7
      00028A C0 06            [24] 1020 	push	ar6
      00028C C0 05            [24] 1021 	push	ar5
      00028E 12 01 BF         [24] 1022 	lcall	_LCD_Pow
      000291 AB 82            [24] 1023 	mov	r3,dpl
      000293 AC 83            [24] 1024 	mov	r4,dph
      000295 D0 05            [24] 1025 	pop	ar5
      000297 D0 06            [24] 1026 	pop	ar6
      000299 D0 07            [24] 1027 	pop	ar7
      00029B 8B 33            [24] 1028 	mov	__divuint_PARM_2,r3
      00029D 8C 34            [24] 1029 	mov	(__divuint_PARM_2 + 1),r4
      00029F 8E 82            [24] 1030 	mov	dpl,r6
      0002A1 8F 83            [24] 1031 	mov	dph,r7
      0002A3 C0 07            [24] 1032 	push	ar7
      0002A5 C0 06            [24] 1033 	push	ar6
      0002A7 C0 05            [24] 1034 	push	ar5
      0002A9 12 04 FB         [24] 1035 	lcall	__divuint
      0002AC 75 33 0A         [24] 1036 	mov	__moduint_PARM_2,#0x0a
      0002AF 75 34 00         [24] 1037 	mov	(__moduint_PARM_2 + 1),#0x00
      0002B2 12 05 41         [24] 1038 	lcall	__moduint
      0002B5 AB 82            [24] 1039 	mov	r3,dpl
      0002B7 74 30            [12] 1040 	mov	a,#0x30
      0002B9 2B               [12] 1041 	add	a,r3
      0002BA F5 82            [12] 1042 	mov	dpl,a
      0002BC 12 01 3C         [24] 1043 	lcall	_LCD_WriteData
      0002BF D0 05            [24] 1044 	pop	ar5
      0002C1 D0 06            [24] 1045 	pop	ar6
      0002C3 D0 07            [24] 1046 	pop	ar7
                                   1047 ;	../include/tools.h:253: for(i=Length;i>0;i--)
      0002C5 1D               [12] 1048 	dec	r5
      0002C6 80 AC            [24] 1049 	sjmp	00106$
      0002C8                       1050 00108$:
                                   1051 ;	../include/tools.h:257: }
      0002C8 22               [24] 1052 	ret
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'LCD_ShowHexNum'
                                   1055 ;------------------------------------------------------------
                                   1056 ;Column                    Allocated with name '_LCD_ShowHexNum_PARM_2'
                                   1057 ;Number                    Allocated with name '_LCD_ShowHexNum_PARM_3'
                                   1058 ;Length                    Allocated with name '_LCD_ShowHexNum_PARM_4'
                                   1059 ;Line                      Allocated to registers r7 
                                   1060 ;i                         Allocated to registers 
                                   1061 ;SingleNumber              Allocated to registers r5 
                                   1062 ;------------------------------------------------------------
                                   1063 ;	../include/tools.h:267: void LCD_ShowHexNum(unsigned char Line,unsigned char Column,unsigned int Number,unsigned char Length)
                                   1064 ;	-----------------------------------------
                                   1065 ;	 function LCD_ShowHexNum
                                   1066 ;	-----------------------------------------
      0002C9                       1067 _LCD_ShowHexNum:
                                   1068 ;	../include/tools.h:270: LCD_SetCursor(Line,Column);
      0002C9 85 2A 19         [24] 1069 	mov	_LCD_SetCursor_PARM_2,_LCD_ShowHexNum_PARM_2
      0002CC 12 01 4E         [24] 1070 	lcall	_LCD_SetCursor
                                   1071 ;	../include/tools.h:271: for(i=Length;i>0;i--)
      0002CF AF 2D            [24] 1072 	mov	r7,_LCD_ShowHexNum_PARM_4
      0002D1                       1073 00106$:
      0002D1 EF               [12] 1074 	mov	a,r7
      0002D2 60 55            [24] 1075 	jz	00108$
                                   1076 ;	../include/tools.h:273: SingleNumber=Number/LCD_Pow(16,i-1)%16;
      0002D4 8F 05            [24] 1077 	mov	ar5,r7
      0002D6 7E 00            [12] 1078 	mov	r6,#0x00
      0002D8 ED               [12] 1079 	mov	a,r5
      0002D9 24 FF            [12] 1080 	add	a,#0xff
      0002DB F5 20            [12] 1081 	mov	_LCD_Pow_PARM_2,a
      0002DD EE               [12] 1082 	mov	a,r6
      0002DE 34 FF            [12] 1083 	addc	a,#0xff
      0002E0 F5 21            [12] 1084 	mov	(_LCD_Pow_PARM_2 + 1),a
      0002E2 90 00 10         [24] 1085 	mov	dptr,#0x0010
      0002E5 C0 07            [24] 1086 	push	ar7
      0002E7 12 01 BF         [24] 1087 	lcall	_LCD_Pow
      0002EA AD 82            [24] 1088 	mov	r5,dpl
      0002EC AE 83            [24] 1089 	mov	r6,dph
      0002EE 8D 33            [24] 1090 	mov	__divuint_PARM_2,r5
      0002F0 8E 34            [24] 1091 	mov	(__divuint_PARM_2 + 1),r6
      0002F2 85 2B 82         [24] 1092 	mov	dpl,_LCD_ShowHexNum_PARM_3
      0002F5 85 2C 83         [24] 1093 	mov	dph,(_LCD_ShowHexNum_PARM_3 + 1)
      0002F8 12 04 FB         [24] 1094 	lcall	__divuint
      0002FB E5 82            [12] 1095 	mov	a,dpl
      0002FD 85 83 F0         [24] 1096 	mov	b,dph
      000300 D0 07            [24] 1097 	pop	ar7
      000302 54 0F            [12] 1098 	anl	a,#0x0f
      000304 FD               [12] 1099 	mov	r5,a
                                   1100 ;	../include/tools.h:274: if(SingleNumber<10)
      000305 BD 0A 00         [24] 1101 	cjne	r5,#0x0a,00126$
      000308                       1102 00126$:
      000308 50 10            [24] 1103 	jnc	00102$
                                   1104 ;	../include/tools.h:276: LCD_WriteData(SingleNumber+'0');
      00030A 8D 06            [24] 1105 	mov	ar6,r5
      00030C 74 30            [12] 1106 	mov	a,#0x30
      00030E 2E               [12] 1107 	add	a,r6
      00030F F5 82            [12] 1108 	mov	dpl,a
      000311 C0 07            [24] 1109 	push	ar7
      000313 12 01 3C         [24] 1110 	lcall	_LCD_WriteData
      000316 D0 07            [24] 1111 	pop	ar7
      000318 80 0C            [24] 1112 	sjmp	00107$
      00031A                       1113 00102$:
                                   1114 ;	../include/tools.h:280: LCD_WriteData(SingleNumber-10+'A');
      00031A 74 37            [12] 1115 	mov	a,#0x37
      00031C 2D               [12] 1116 	add	a,r5
      00031D F5 82            [12] 1117 	mov	dpl,a
      00031F C0 07            [24] 1118 	push	ar7
      000321 12 01 3C         [24] 1119 	lcall	_LCD_WriteData
      000324 D0 07            [24] 1120 	pop	ar7
      000326                       1121 00107$:
                                   1122 ;	../include/tools.h:271: for(i=Length;i>0;i--)
      000326 1F               [12] 1123 	dec	r7
      000327 80 A8            [24] 1124 	sjmp	00106$
      000329                       1125 00108$:
                                   1126 ;	../include/tools.h:283: }
      000329 22               [24] 1127 	ret
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function 'LCD_ShowBinNum'
                                   1130 ;------------------------------------------------------------
                                   1131 ;Column                    Allocated with name '_LCD_ShowBinNum_PARM_2'
                                   1132 ;Number                    Allocated with name '_LCD_ShowBinNum_PARM_3'
                                   1133 ;Length                    Allocated with name '_LCD_ShowBinNum_PARM_4'
                                   1134 ;Line                      Allocated to registers r7 
                                   1135 ;i                         Allocated to registers 
                                   1136 ;------------------------------------------------------------
                                   1137 ;	../include/tools.h:293: void LCD_ShowBinNum(unsigned char Line,unsigned char Column,unsigned int Number,unsigned char Length)
                                   1138 ;	-----------------------------------------
                                   1139 ;	 function LCD_ShowBinNum
                                   1140 ;	-----------------------------------------
      00032A                       1141 _LCD_ShowBinNum:
                                   1142 ;	../include/tools.h:296: LCD_SetCursor(Line,Column);
      00032A 85 2E 19         [24] 1143 	mov	_LCD_SetCursor_PARM_2,_LCD_ShowBinNum_PARM_2
      00032D 12 01 4E         [24] 1144 	lcall	_LCD_SetCursor
                                   1145 ;	../include/tools.h:297: for(i=Length;i>0;i--)
      000330 AF 31            [24] 1146 	mov	r7,_LCD_ShowBinNum_PARM_4
      000332                       1147 00103$:
      000332 EF               [12] 1148 	mov	a,r7
      000333 60 3A            [24] 1149 	jz	00105$
                                   1150 ;	../include/tools.h:299: LCD_WriteData(Number/LCD_Pow(2,i-1)%2+'0');
      000335 8F 05            [24] 1151 	mov	ar5,r7
      000337 7E 00            [12] 1152 	mov	r6,#0x00
      000339 ED               [12] 1153 	mov	a,r5
      00033A 24 FF            [12] 1154 	add	a,#0xff
      00033C F5 20            [12] 1155 	mov	_LCD_Pow_PARM_2,a
      00033E EE               [12] 1156 	mov	a,r6
      00033F 34 FF            [12] 1157 	addc	a,#0xff
      000341 F5 21            [12] 1158 	mov	(_LCD_Pow_PARM_2 + 1),a
      000343 90 00 02         [24] 1159 	mov	dptr,#0x0002
      000346 C0 07            [24] 1160 	push	ar7
      000348 12 01 BF         [24] 1161 	lcall	_LCD_Pow
      00034B AD 82            [24] 1162 	mov	r5,dpl
      00034D AE 83            [24] 1163 	mov	r6,dph
      00034F 8D 33            [24] 1164 	mov	__divuint_PARM_2,r5
      000351 8E 34            [24] 1165 	mov	(__divuint_PARM_2 + 1),r6
      000353 85 2F 82         [24] 1166 	mov	dpl,_LCD_ShowBinNum_PARM_3
      000356 85 30 83         [24] 1167 	mov	dph,(_LCD_ShowBinNum_PARM_3 + 1)
      000359 12 04 FB         [24] 1168 	lcall	__divuint
      00035C E5 82            [12] 1169 	mov	a,dpl
      00035E 85 83 F0         [24] 1170 	mov	b,dph
      000361 54 01            [12] 1171 	anl	a,#0x01
      000363 24 30            [12] 1172 	add	a,#0x30
      000365 F5 82            [12] 1173 	mov	dpl,a
      000367 12 01 3C         [24] 1174 	lcall	_LCD_WriteData
      00036A D0 07            [24] 1175 	pop	ar7
                                   1176 ;	../include/tools.h:297: for(i=Length;i>0;i--)
      00036C 1F               [12] 1177 	dec	r7
      00036D 80 C3            [24] 1178 	sjmp	00103$
      00036F                       1179 00105$:
                                   1180 ;	../include/tools.h:301: }
      00036F 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'MatrixKey'
                                   1184 ;------------------------------------------------------------
                                   1185 ;key                       Allocated to registers r7 
                                   1186 ;------------------------------------------------------------
                                   1187 ;	../include/tools.h:303: unsigned char MatrixKey() {
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function MatrixKey
                                   1190 ;	-----------------------------------------
      000370                       1191 _MatrixKey:
                                   1192 ;	../include/tools.h:304: unsigned char key = 0;
      000370 7F 00            [12] 1193 	mov	r7,#0x00
                                   1194 ;	../include/tools.h:306: P1 = 0xFF;
      000372 75 90 FF         [24] 1195 	mov	_P1,#0xff
                                   1196 ;	../include/tools.h:307: P1_3 = 0;
                                   1197 ;	assignBit
      000375 C2 93            [12] 1198 	clr	_P1_3
                                   1199 ;	../include/tools.h:308: if (P1_7 == 0) {
      000377 20 97 11         [24] 1200 	jb	_P1_7,00105$
                                   1201 ;	../include/tools.h:309: delay(20);
      00037A 90 00 14         [24] 1202 	mov	dptr,#0x0014
      00037D 12 00 95         [24] 1203 	lcall	_delay
                                   1204 ;	../include/tools.h:310: while (P1_7 == 0) {
      000380                       1205 00101$:
      000380 30 97 FD         [24] 1206 	jnb	_P1_7,00101$
                                   1207 ;	../include/tools.h:312: delay(20);
      000383 90 00 14         [24] 1208 	mov	dptr,#0x0014
      000386 12 00 95         [24] 1209 	lcall	_delay
                                   1210 ;	../include/tools.h:313: key = 1;
      000389 7F 01            [12] 1211 	mov	r7,#0x01
      00038B                       1212 00105$:
                                   1213 ;	../include/tools.h:315: if (P1_6 == 0) {
      00038B 20 96 11         [24] 1214 	jb	_P1_6,00110$
                                   1215 ;	../include/tools.h:316: delay(20);
      00038E 90 00 14         [24] 1216 	mov	dptr,#0x0014
      000391 12 00 95         [24] 1217 	lcall	_delay
                                   1218 ;	../include/tools.h:317: while (P1_6 == 0) {
      000394                       1219 00106$:
      000394 30 96 FD         [24] 1220 	jnb	_P1_6,00106$
                                   1221 ;	../include/tools.h:319: delay(20);
      000397 90 00 14         [24] 1222 	mov	dptr,#0x0014
      00039A 12 00 95         [24] 1223 	lcall	_delay
                                   1224 ;	../include/tools.h:320: key = 5;
      00039D 7F 05            [12] 1225 	mov	r7,#0x05
      00039F                       1226 00110$:
                                   1227 ;	../include/tools.h:322: if (P1_5 == 0) {
      00039F 20 95 11         [24] 1228 	jb	_P1_5,00115$
                                   1229 ;	../include/tools.h:323: delay(20);
      0003A2 90 00 14         [24] 1230 	mov	dptr,#0x0014
      0003A5 12 00 95         [24] 1231 	lcall	_delay
                                   1232 ;	../include/tools.h:324: while (P1_5 == 0) {
      0003A8                       1233 00111$:
      0003A8 30 95 FD         [24] 1234 	jnb	_P1_5,00111$
                                   1235 ;	../include/tools.h:326: delay(20);
      0003AB 90 00 14         [24] 1236 	mov	dptr,#0x0014
      0003AE 12 00 95         [24] 1237 	lcall	_delay
                                   1238 ;	../include/tools.h:327: key = 9;
      0003B1 7F 09            [12] 1239 	mov	r7,#0x09
      0003B3                       1240 00115$:
                                   1241 ;	../include/tools.h:329: if (P1_4 == 0) {
      0003B3 20 94 11         [24] 1242 	jb	_P1_4,00120$
                                   1243 ;	../include/tools.h:330: delay(20);
      0003B6 90 00 14         [24] 1244 	mov	dptr,#0x0014
      0003B9 12 00 95         [24] 1245 	lcall	_delay
                                   1246 ;	../include/tools.h:331: while (P1_4 == 0) {
      0003BC                       1247 00116$:
      0003BC 30 94 FD         [24] 1248 	jnb	_P1_4,00116$
                                   1249 ;	../include/tools.h:333: delay(20);
      0003BF 90 00 14         [24] 1250 	mov	dptr,#0x0014
      0003C2 12 00 95         [24] 1251 	lcall	_delay
                                   1252 ;	../include/tools.h:334: key = 13;
      0003C5 7F 0D            [12] 1253 	mov	r7,#0x0d
      0003C7                       1254 00120$:
                                   1255 ;	../include/tools.h:337: P1 = 0xFF;
      0003C7 75 90 FF         [24] 1256 	mov	_P1,#0xff
                                   1257 ;	../include/tools.h:338: P1_2 = 0;
                                   1258 ;	assignBit
      0003CA C2 92            [12] 1259 	clr	_P1_2
                                   1260 ;	../include/tools.h:339: if (P1_7 == 0) {
      0003CC 20 97 11         [24] 1261 	jb	_P1_7,00125$
                                   1262 ;	../include/tools.h:340: delay(20);
      0003CF 90 00 14         [24] 1263 	mov	dptr,#0x0014
      0003D2 12 00 95         [24] 1264 	lcall	_delay
                                   1265 ;	../include/tools.h:341: while (P1_7 == 0) {
      0003D5                       1266 00121$:
      0003D5 30 97 FD         [24] 1267 	jnb	_P1_7,00121$
                                   1268 ;	../include/tools.h:343: delay(20);
      0003D8 90 00 14         [24] 1269 	mov	dptr,#0x0014
      0003DB 12 00 95         [24] 1270 	lcall	_delay
                                   1271 ;	../include/tools.h:344: key = 2;
      0003DE 7F 02            [12] 1272 	mov	r7,#0x02
      0003E0                       1273 00125$:
                                   1274 ;	../include/tools.h:346: if (P1_6 == 0) {
      0003E0 20 96 11         [24] 1275 	jb	_P1_6,00130$
                                   1276 ;	../include/tools.h:347: delay(20);
      0003E3 90 00 14         [24] 1277 	mov	dptr,#0x0014
      0003E6 12 00 95         [24] 1278 	lcall	_delay
                                   1279 ;	../include/tools.h:348: while (P1_6 == 0) {
      0003E9                       1280 00126$:
      0003E9 30 96 FD         [24] 1281 	jnb	_P1_6,00126$
                                   1282 ;	../include/tools.h:350: delay(20);
      0003EC 90 00 14         [24] 1283 	mov	dptr,#0x0014
      0003EF 12 00 95         [24] 1284 	lcall	_delay
                                   1285 ;	../include/tools.h:351: key = 6;
      0003F2 7F 06            [12] 1286 	mov	r7,#0x06
      0003F4                       1287 00130$:
                                   1288 ;	../include/tools.h:353: if (P1_5 == 0) {
      0003F4 20 95 11         [24] 1289 	jb	_P1_5,00135$
                                   1290 ;	../include/tools.h:354: delay(20);
      0003F7 90 00 14         [24] 1291 	mov	dptr,#0x0014
      0003FA 12 00 95         [24] 1292 	lcall	_delay
                                   1293 ;	../include/tools.h:355: while (P1_5 == 0) {
      0003FD                       1294 00131$:
      0003FD 30 95 FD         [24] 1295 	jnb	_P1_5,00131$
                                   1296 ;	../include/tools.h:357: delay(20);
      000400 90 00 14         [24] 1297 	mov	dptr,#0x0014
      000403 12 00 95         [24] 1298 	lcall	_delay
                                   1299 ;	../include/tools.h:358: key = 10;
      000406 7F 0A            [12] 1300 	mov	r7,#0x0a
      000408                       1301 00135$:
                                   1302 ;	../include/tools.h:360: if (P1_4 == 0) {
      000408 20 94 11         [24] 1303 	jb	_P1_4,00140$
                                   1304 ;	../include/tools.h:361: delay(20);
      00040B 90 00 14         [24] 1305 	mov	dptr,#0x0014
      00040E 12 00 95         [24] 1306 	lcall	_delay
                                   1307 ;	../include/tools.h:362: while (P1_4 == 0) {
      000411                       1308 00136$:
      000411 30 94 FD         [24] 1309 	jnb	_P1_4,00136$
                                   1310 ;	../include/tools.h:364: delay(20);
      000414 90 00 14         [24] 1311 	mov	dptr,#0x0014
      000417 12 00 95         [24] 1312 	lcall	_delay
                                   1313 ;	../include/tools.h:365: key = 14;
      00041A 7F 0E            [12] 1314 	mov	r7,#0x0e
      00041C                       1315 00140$:
                                   1316 ;	../include/tools.h:368: P1 = 0xFF;
      00041C 75 90 FF         [24] 1317 	mov	_P1,#0xff
                                   1318 ;	../include/tools.h:369: P1_1 = 0;
                                   1319 ;	assignBit
      00041F C2 91            [12] 1320 	clr	_P1_1
                                   1321 ;	../include/tools.h:370: if (P1_7 == 0) {
      000421 20 97 11         [24] 1322 	jb	_P1_7,00145$
                                   1323 ;	../include/tools.h:371: delay(20);
      000424 90 00 14         [24] 1324 	mov	dptr,#0x0014
      000427 12 00 95         [24] 1325 	lcall	_delay
                                   1326 ;	../include/tools.h:372: while (P1_7 == 0) {
      00042A                       1327 00141$:
      00042A 30 97 FD         [24] 1328 	jnb	_P1_7,00141$
                                   1329 ;	../include/tools.h:374: delay(20);
      00042D 90 00 14         [24] 1330 	mov	dptr,#0x0014
      000430 12 00 95         [24] 1331 	lcall	_delay
                                   1332 ;	../include/tools.h:375: key = 3;
      000433 7F 03            [12] 1333 	mov	r7,#0x03
      000435                       1334 00145$:
                                   1335 ;	../include/tools.h:377: if (P1_6 == 0) {
      000435 20 96 11         [24] 1336 	jb	_P1_6,00150$
                                   1337 ;	../include/tools.h:378: delay(20);
      000438 90 00 14         [24] 1338 	mov	dptr,#0x0014
      00043B 12 00 95         [24] 1339 	lcall	_delay
                                   1340 ;	../include/tools.h:379: while (P1_6 == 0) {
      00043E                       1341 00146$:
      00043E 30 96 FD         [24] 1342 	jnb	_P1_6,00146$
                                   1343 ;	../include/tools.h:381: delay(20);
      000441 90 00 14         [24] 1344 	mov	dptr,#0x0014
      000444 12 00 95         [24] 1345 	lcall	_delay
                                   1346 ;	../include/tools.h:382: key = 7;
      000447 7F 07            [12] 1347 	mov	r7,#0x07
      000449                       1348 00150$:
                                   1349 ;	../include/tools.h:384: if (P1_5 == 0) {
      000449 20 95 11         [24] 1350 	jb	_P1_5,00155$
                                   1351 ;	../include/tools.h:385: delay(20);
      00044C 90 00 14         [24] 1352 	mov	dptr,#0x0014
      00044F 12 00 95         [24] 1353 	lcall	_delay
                                   1354 ;	../include/tools.h:386: while (P1_5 == 0) {
      000452                       1355 00151$:
      000452 30 95 FD         [24] 1356 	jnb	_P1_5,00151$
                                   1357 ;	../include/tools.h:388: delay(20);
      000455 90 00 14         [24] 1358 	mov	dptr,#0x0014
      000458 12 00 95         [24] 1359 	lcall	_delay
                                   1360 ;	../include/tools.h:389: key = 11;
      00045B 7F 0B            [12] 1361 	mov	r7,#0x0b
      00045D                       1362 00155$:
                                   1363 ;	../include/tools.h:391: if (P1_4 == 0) {
      00045D 20 94 11         [24] 1364 	jb	_P1_4,00160$
                                   1365 ;	../include/tools.h:392: delay(20);
      000460 90 00 14         [24] 1366 	mov	dptr,#0x0014
      000463 12 00 95         [24] 1367 	lcall	_delay
                                   1368 ;	../include/tools.h:393: while (P1_4 == 0) {
      000466                       1369 00156$:
      000466 30 94 FD         [24] 1370 	jnb	_P1_4,00156$
                                   1371 ;	../include/tools.h:395: delay(20);
      000469 90 00 14         [24] 1372 	mov	dptr,#0x0014
      00046C 12 00 95         [24] 1373 	lcall	_delay
                                   1374 ;	../include/tools.h:396: key = 15;
      00046F 7F 0F            [12] 1375 	mov	r7,#0x0f
      000471                       1376 00160$:
                                   1377 ;	../include/tools.h:399: P1 = 0xFF;
      000471 75 90 FF         [24] 1378 	mov	_P1,#0xff
                                   1379 ;	../include/tools.h:400: P1_0 = 0;
                                   1380 ;	assignBit
      000474 C2 90            [12] 1381 	clr	_P1_0
                                   1382 ;	../include/tools.h:401: if (P1_7 == 0) {
      000476 20 97 11         [24] 1383 	jb	_P1_7,00165$
                                   1384 ;	../include/tools.h:402: delay(20);
      000479 90 00 14         [24] 1385 	mov	dptr,#0x0014
      00047C 12 00 95         [24] 1386 	lcall	_delay
                                   1387 ;	../include/tools.h:403: while (P1_7 == 0) {
      00047F                       1388 00161$:
      00047F 30 97 FD         [24] 1389 	jnb	_P1_7,00161$
                                   1390 ;	../include/tools.h:405: delay(20);
      000482 90 00 14         [24] 1391 	mov	dptr,#0x0014
      000485 12 00 95         [24] 1392 	lcall	_delay
                                   1393 ;	../include/tools.h:406: key = 4;
      000488 7F 04            [12] 1394 	mov	r7,#0x04
      00048A                       1395 00165$:
                                   1396 ;	../include/tools.h:408: if (P1_6 == 0) {
      00048A 20 96 11         [24] 1397 	jb	_P1_6,00170$
                                   1398 ;	../include/tools.h:409: delay(20);
      00048D 90 00 14         [24] 1399 	mov	dptr,#0x0014
      000490 12 00 95         [24] 1400 	lcall	_delay
                                   1401 ;	../include/tools.h:410: while (P1_6 == 0) {
      000493                       1402 00166$:
      000493 30 96 FD         [24] 1403 	jnb	_P1_6,00166$
                                   1404 ;	../include/tools.h:412: delay(20);
      000496 90 00 14         [24] 1405 	mov	dptr,#0x0014
      000499 12 00 95         [24] 1406 	lcall	_delay
                                   1407 ;	../include/tools.h:413: key = 8;
      00049C 7F 08            [12] 1408 	mov	r7,#0x08
      00049E                       1409 00170$:
                                   1410 ;	../include/tools.h:415: if (P1_5 == 0) {
      00049E 20 95 11         [24] 1411 	jb	_P1_5,00175$
                                   1412 ;	../include/tools.h:416: delay(20);
      0004A1 90 00 14         [24] 1413 	mov	dptr,#0x0014
      0004A4 12 00 95         [24] 1414 	lcall	_delay
                                   1415 ;	../include/tools.h:417: while (P1_5 == 0) {
      0004A7                       1416 00171$:
      0004A7 30 95 FD         [24] 1417 	jnb	_P1_5,00171$
                                   1418 ;	../include/tools.h:419: delay(20);
      0004AA 90 00 14         [24] 1419 	mov	dptr,#0x0014
      0004AD 12 00 95         [24] 1420 	lcall	_delay
                                   1421 ;	../include/tools.h:420: key = 12;
      0004B0 7F 0C            [12] 1422 	mov	r7,#0x0c
      0004B2                       1423 00175$:
                                   1424 ;	../include/tools.h:422: if (P1_4 == 0) {
      0004B2 20 94 11         [24] 1425 	jb	_P1_4,00180$
                                   1426 ;	../include/tools.h:423: delay(20);
      0004B5 90 00 14         [24] 1427 	mov	dptr,#0x0014
      0004B8 12 00 95         [24] 1428 	lcall	_delay
                                   1429 ;	../include/tools.h:424: while (P1_4 == 0) {
      0004BB                       1430 00176$:
      0004BB 30 94 FD         [24] 1431 	jnb	_P1_4,00176$
                                   1432 ;	../include/tools.h:426: delay(20);
      0004BE 90 00 14         [24] 1433 	mov	dptr,#0x0014
      0004C1 12 00 95         [24] 1434 	lcall	_delay
                                   1435 ;	../include/tools.h:427: key = 16;
      0004C4 7F 10            [12] 1436 	mov	r7,#0x10
      0004C6                       1437 00180$:
                                   1438 ;	../include/tools.h:430: return key;
      0004C6 8F 82            [24] 1439 	mov	dpl,r7
                                   1440 ;	../include/tools.h:431: }
      0004C8 22               [24] 1441 	ret
                                   1442 ;------------------------------------------------------------
                                   1443 ;Allocation info for local variables in function 'main'
                                   1444 ;------------------------------------------------------------
                                   1445 ;	main.c:5: void main() {
                                   1446 ;	-----------------------------------------
                                   1447 ;	 function main
                                   1448 ;	-----------------------------------------
      0004C9                       1449 _main:
                                   1450 ;	main.c:6: LCD_Init();
      0004C9 12 01 70         [24] 1451 	lcall	_LCD_Init
                                   1452 ;	main.c:7: LCD_ShowString(1, 1, "cxldada");
      0004CC 75 1D AE         [24] 1453 	mov	_LCD_ShowString_PARM_3,#___str_0
      0004CF 75 1E 05         [24] 1454 	mov	(_LCD_ShowString_PARM_3 + 1),#(___str_0 >> 8)
      0004D2 75 1F 80         [24] 1455 	mov	(_LCD_ShowString_PARM_3 + 2),#0x80
      0004D5 75 1C 01         [24] 1456 	mov	_LCD_ShowString_PARM_2,#0x01
      0004D8 75 82 01         [24] 1457 	mov	dpl,#0x01
      0004DB 12 01 94         [24] 1458 	lcall	_LCD_ShowString
                                   1459 ;	main.c:8: while (1) {
      0004DE                       1460 00104$:
                                   1461 ;	main.c:9: KeyNum = MatrixKey();
      0004DE 12 03 70         [24] 1462 	lcall	_MatrixKey
                                   1463 ;	main.c:10: if(KeyNum) {
      0004E1 E5 82            [12] 1464 	mov	a,dpl
      0004E3 F5 32            [12] 1465 	mov	_KeyNum,a
      0004E5 60 F7            [24] 1466 	jz	00104$
                                   1467 ;	main.c:11: LCD_ShowNum(2, 1, KeyNum, 2);
      0004E7 85 32 23         [24] 1468 	mov	_LCD_ShowNum_PARM_3,_KeyNum
      0004EA 75 24 00         [24] 1469 	mov	(_LCD_ShowNum_PARM_3 + 1),#0x00
      0004ED 75 22 01         [24] 1470 	mov	_LCD_ShowNum_PARM_2,#0x01
      0004F0 75 25 02         [24] 1471 	mov	_LCD_ShowNum_PARM_4,#0x02
      0004F3 75 82 02         [24] 1472 	mov	dpl,#0x02
      0004F6 12 02 01         [24] 1473 	lcall	_LCD_ShowNum
                                   1474 ;	main.c:14: }
      0004F9 80 E3            [24] 1475 	sjmp	00104$
                                   1476 	.area CSEG    (CODE)
                                   1477 	.area CONST   (CODE)
                                   1478 	.area CONST   (CODE)
      0005AE                       1479 ___str_0:
      0005AE 63 78 6C 64 61 64 61  1480 	.ascii "cxldada"
      0005B5 00                    1481 	.db 0x00
                                   1482 	.area CSEG    (CODE)
                                   1483 	.area XINIT   (CODE)
                                   1484 	.area CABS    (ABS,CODE)
