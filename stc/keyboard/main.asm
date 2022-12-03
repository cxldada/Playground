;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Nixie_PARM_2
	.globl _main
	.globl _MatrixKey
	.globl _LCD_ShowBinNum
	.globl _LCD_ShowHexNum
	.globl _LCD_ShowSignedNum
	.globl _LCD_ShowNum
	.globl _LCD_Pow
	.globl _LCD_ShowString
	.globl _LCD_ShowChar
	.globl _LCD_Init
	.globl _LCD_SetCursor
	.globl _LCD_WriteData
	.globl _LCD_WriteCommand
	.globl _LCD_Delay
	.globl _Nixie
	.globl _delay
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _KeyNum
	.globl _LCD_ShowBinNum_PARM_4
	.globl _LCD_ShowBinNum_PARM_3
	.globl _LCD_ShowBinNum_PARM_2
	.globl _LCD_ShowHexNum_PARM_4
	.globl _LCD_ShowHexNum_PARM_3
	.globl _LCD_ShowHexNum_PARM_2
	.globl _LCD_ShowSignedNum_PARM_4
	.globl _LCD_ShowSignedNum_PARM_3
	.globl _LCD_ShowSignedNum_PARM_2
	.globl _LCD_ShowNum_PARM_4
	.globl _LCD_ShowNum_PARM_3
	.globl _LCD_ShowNum_PARM_2
	.globl _LCD_Pow_PARM_2
	.globl _LCD_ShowString_PARM_3
	.globl _LCD_ShowString_PARM_2
	.globl _LCD_ShowChar_PARM_3
	.globl _LCD_ShowChar_PARM_2
	.globl _LCD_SetCursor_PARM_2
	.globl _NixieTable
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_NixieTable::
	.ds 17
_LCD_SetCursor_PARM_2:
	.ds 1
_LCD_ShowChar_PARM_2:
	.ds 1
_LCD_ShowChar_PARM_3:
	.ds 1
_LCD_ShowString_PARM_2:
	.ds 1
_LCD_ShowString_PARM_3:
	.ds 3
_LCD_Pow_PARM_2:
	.ds 2
_LCD_ShowNum_PARM_2:
	.ds 1
_LCD_ShowNum_PARM_3:
	.ds 2
_LCD_ShowNum_PARM_4:
	.ds 1
_LCD_ShowSignedNum_PARM_2:
	.ds 1
_LCD_ShowSignedNum_PARM_3:
	.ds 2
_LCD_ShowSignedNum_PARM_4:
	.ds 1
_LCD_ShowHexNum_PARM_2:
	.ds 1
_LCD_ShowHexNum_PARM_3:
	.ds 2
_LCD_ShowHexNum_PARM_4:
	.ds 1
_LCD_ShowBinNum_PARM_2:
	.ds 1
_LCD_ShowBinNum_PARM_3:
	.ds 2
_LCD_ShowBinNum_PARM_4:
	.ds 1
_KeyNum::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_Nixie_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	../include/tools.h:26: unsigned char NixieTable[] = {0x3F, 0x06, 0x5B, 0x4f, 0x66, 0x6D,
	mov	_NixieTable,#0x3f
	mov	(_NixieTable + 0x0001),#0x06
	mov	(_NixieTable + 0x0002),#0x5b
	mov	(_NixieTable + 0x0003),#0x4f
	mov	(_NixieTable + 0x0004),#0x66
	mov	(_NixieTable + 0x0005),#0x6d
	mov	(_NixieTable + 0x0006),#0x7d
	mov	(_NixieTable + 0x0007),#0x07
	mov	(_NixieTable + 0x0008),#0x7f
	mov	(_NixieTable + 0x0009),#0x6f
	mov	(_NixieTable + 0x000a),#0x77
	mov	(_NixieTable + 0x000b),#0x7c
	mov	(_NixieTable + 0x000c),#0x39
	mov	(_NixieTable + 0x000d),#0x5e
	mov	(_NixieTable + 0x000e),#0x79
	mov	(_NixieTable + 0x000f),#0x71
	mov	(_NixieTable + 0x0010),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated to registers 
;i                         Allocated to registers r4 
;j                         Allocated to registers r5 
;------------------------------------------------------------
;	../include/tools.h:6: void delay(unsigned int ms) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	../include/tools.h:9: while (ms--) {
00107$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00134$
	dec	r7
00134$:
	mov	a,r4
	orl	a,r5
	jz	00110$
;	../include/tools.h:13: while (--j)
	mov	r5,#0xef
	mov	r4,#0x02
00101$:
	djnz	r5,00101$
;	../include/tools.h:15: } while (--i);
	djnz	r4,00101$
	sjmp	00107$
00110$:
;	../include/tools.h:17: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Nixie'
;------------------------------------------------------------
;number                    Allocated with name '_Nixie_PARM_2'
;localtion                 Allocated to registers r7 
;------------------------------------------------------------
;	../include/tools.h:29: void Nixie(unsigned char localtion, unsigned char number) {
;	-----------------------------------------
;	 function Nixie
;	-----------------------------------------
_Nixie:
;	../include/tools.h:30: switch (localtion) {
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x08
	jnc	00116$
	ljmp	00109$
00116$:
	mov	a,r7
	add	a,#(00117$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00118$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00117$:
	.db	00109$
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00118$:
	.db	00109$>>8
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	../include/tools.h:31: case 1: {
00101$:
;	../include/tools.h:32: P2_4 = 1;
;	assignBit
	setb	_P2_4
;	../include/tools.h:33: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	../include/tools.h:34: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	../include/tools.h:35: break;
;	../include/tools.h:37: case 2: {
	sjmp	00109$
00102$:
;	../include/tools.h:38: P2_4 = 1;
;	assignBit
	setb	_P2_4
;	../include/tools.h:39: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	../include/tools.h:40: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	../include/tools.h:41: break;
;	../include/tools.h:43: case 3: {
	sjmp	00109$
00103$:
;	../include/tools.h:44: P2_4 = 1;
;	assignBit
	setb	_P2_4
;	../include/tools.h:45: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	../include/tools.h:46: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	../include/tools.h:47: break;
;	../include/tools.h:49: case 4: {
	sjmp	00109$
00104$:
;	../include/tools.h:50: P2_4 = 1;
;	assignBit
	setb	_P2_4
;	../include/tools.h:51: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	../include/tools.h:52: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	../include/tools.h:53: break;
;	../include/tools.h:55: case 5: {
	sjmp	00109$
00105$:
;	../include/tools.h:56: P2_4 = 0;
;	assignBit
	clr	_P2_4
;	../include/tools.h:57: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	../include/tools.h:58: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	../include/tools.h:59: break;
;	../include/tools.h:61: case 6: {
	sjmp	00109$
00106$:
;	../include/tools.h:62: P2_4 = 0;
;	assignBit
	clr	_P2_4
;	../include/tools.h:63: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	../include/tools.h:64: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	../include/tools.h:65: break;
;	../include/tools.h:67: case 7: {
	sjmp	00109$
00107$:
;	../include/tools.h:68: P2_4 = 0;
;	assignBit
	clr	_P2_4
;	../include/tools.h:69: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	../include/tools.h:70: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	../include/tools.h:71: break;
;	../include/tools.h:73: case 8: {
	sjmp	00109$
00108$:
;	../include/tools.h:74: P2_4 = 0;
;	assignBit
	clr	_P2_4
;	../include/tools.h:75: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	../include/tools.h:76: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	../include/tools.h:79: }
00109$:
;	../include/tools.h:81: P0 = NixieTable[number];
	mov	a,_Nixie_PARM_2
	add	a,#_NixieTable
	mov	r1,a
	mov	_P0,@r1
;	../include/tools.h:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	../include/tools.h:93: void LCD_Delay()
;	-----------------------------------------
;	 function LCD_Delay
;	-----------------------------------------
_LCD_Delay:
;	../include/tools.h:101: while (--j);
	mov	r7,#0xef
	mov	r6,#0x02
00101$:
	djnz	r7,00101$
;	../include/tools.h:102: } while (--i);
	djnz	r6,00101$
;	../include/tools.h:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_WriteCommand'
;------------------------------------------------------------
;Command                   Allocated to registers r7 
;------------------------------------------------------------
;	../include/tools.h:110: void LCD_WriteCommand(unsigned char Command)
;	-----------------------------------------
;	 function LCD_WriteCommand
;	-----------------------------------------
_LCD_WriteCommand:
	mov	r7,dpl
;	../include/tools.h:112: P2_6=0;
;	assignBit
	clr	_P2_6
;	../include/tools.h:113: P2_5=0;
;	assignBit
	clr	_P2_5
;	../include/tools.h:114: LCD_DataPort=Command;
	mov	_P0,r7
;	../include/tools.h:115: P2_7=1;
;	assignBit
	setb	_P2_7
;	../include/tools.h:116: LCD_Delay();
	lcall	_LCD_Delay
;	../include/tools.h:117: P2_7=0;
;	assignBit
	clr	_P2_7
;	../include/tools.h:118: LCD_Delay();
;	../include/tools.h:119: }
	ljmp	_LCD_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_WriteData'
;------------------------------------------------------------
;Data                      Allocated to registers r7 
;------------------------------------------------------------
;	../include/tools.h:126: void LCD_WriteData(unsigned char Data)
;	-----------------------------------------
;	 function LCD_WriteData
;	-----------------------------------------
_LCD_WriteData:
	mov	r7,dpl
;	../include/tools.h:128: P2_6=1;
;	assignBit
	setb	_P2_6
;	../include/tools.h:129: P2_5=0;
;	assignBit
	clr	_P2_5
;	../include/tools.h:130: LCD_DataPort=Data;
	mov	_P0,r7
;	../include/tools.h:131: P2_7=1;
;	assignBit
	setb	_P2_7
;	../include/tools.h:132: LCD_Delay();
	lcall	_LCD_Delay
;	../include/tools.h:133: P2_7=0;
;	assignBit
	clr	_P2_7
;	../include/tools.h:134: LCD_Delay();
;	../include/tools.h:135: }
	ljmp	_LCD_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SetCursor'
;------------------------------------------------------------
;Column                    Allocated with name '_LCD_SetCursor_PARM_2'
;Line                      Allocated to registers r7 
;------------------------------------------------------------
;	../include/tools.h:143: void LCD_SetCursor(unsigned char Line,unsigned char Column)
;	-----------------------------------------
;	 function LCD_SetCursor
;	-----------------------------------------
_LCD_SetCursor:
	mov	r7,dpl
;	../include/tools.h:145: if(Line==1)
	cjne	r7,#0x01,00104$
;	../include/tools.h:147: LCD_WriteCommand(0x80|(Column-1));
	mov	r6,_LCD_SetCursor_PARM_2
	dec	r6
	mov	a,#0x80
	orl	a,r6
	mov	dpl,a
	ljmp	_LCD_WriteCommand
00104$:
;	../include/tools.h:149: else if(Line==2)
	cjne	r7,#0x02,00106$
;	../include/tools.h:151: LCD_WriteCommand(0x80|(Column-1+0x40));
	mov	r7,_LCD_SetCursor_PARM_2
	mov	a,#0x3f
	add	a,r7
	mov	r7,a
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
;	../include/tools.h:153: }
	ljmp	_LCD_WriteCommand
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Init'
;------------------------------------------------------------
;	../include/tools.h:160: void LCD_Init()
;	-----------------------------------------
;	 function LCD_Init
;	-----------------------------------------
_LCD_Init:
;	../include/tools.h:162: LCD_WriteCommand(0x38);//八位数据接口，两行显示，5*7点阵
	mov	dpl,#0x38
	lcall	_LCD_WriteCommand
;	../include/tools.h:163: LCD_WriteCommand(0x0c);//显示开，光标关，闪烁关
	mov	dpl,#0x0c
	lcall	_LCD_WriteCommand
;	../include/tools.h:164: LCD_WriteCommand(0x06);//数据读写操作后，光标自动加一，画面不动
	mov	dpl,#0x06
	lcall	_LCD_WriteCommand
;	../include/tools.h:165: LCD_WriteCommand(0x01);//光标复位，清屏
	mov	dpl,#0x01
;	../include/tools.h:166: }
	ljmp	_LCD_WriteCommand
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_ShowChar'
;------------------------------------------------------------
;Column                    Allocated with name '_LCD_ShowChar_PARM_2'
;Char                      Allocated with name '_LCD_ShowChar_PARM_3'
;Line                      Allocated to registers r7 
;------------------------------------------------------------
;	../include/tools.h:175: void LCD_ShowChar(unsigned char Line,unsigned char Column,char Char)
;	-----------------------------------------
;	 function LCD_ShowChar
;	-----------------------------------------
_LCD_ShowChar:
;	../include/tools.h:177: LCD_SetCursor(Line,Column);
	mov	_LCD_SetCursor_PARM_2,_LCD_ShowChar_PARM_2
	lcall	_LCD_SetCursor
;	../include/tools.h:178: LCD_WriteData(Char);
	mov	dpl,_LCD_ShowChar_PARM_3
;	../include/tools.h:179: }
	ljmp	_LCD_WriteData
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_ShowString'
;------------------------------------------------------------
;Column                    Allocated with name '_LCD_ShowString_PARM_2'
;String                    Allocated with name '_LCD_ShowString_PARM_3'
;Line                      Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	../include/tools.h:188: void LCD_ShowString(unsigned char Line,unsigned char Column,char *String)
;	-----------------------------------------
;	 function LCD_ShowString
;	-----------------------------------------
_LCD_ShowString:
;	../include/tools.h:191: LCD_SetCursor(Line,Column);
	mov	_LCD_SetCursor_PARM_2,_LCD_ShowString_PARM_2
	lcall	_LCD_SetCursor
;	../include/tools.h:192: for(i=0;String[i]!='\0';i++)
	mov	r7,#0x00
00103$:
	mov	a,r7
	add	a,_LCD_ShowString_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_LCD_ShowString_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_LCD_ShowString_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	jz	00105$
;	../include/tools.h:194: LCD_WriteData(String[i]);
	mov	dpl,r6
	push	ar7
	lcall	_LCD_WriteData
	pop	ar7
;	../include/tools.h:192: for(i=0;String[i]!='\0';i++)
	inc	r7
	sjmp	00103$
00105$:
;	../include/tools.h:196: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Pow'
;------------------------------------------------------------
;Y                         Allocated with name '_LCD_Pow_PARM_2'
;X                         Allocated to registers r6 r7 
;i                         Allocated to registers r3 
;Result                    Allocated to registers r4 r5 
;------------------------------------------------------------
;	../include/tools.h:201: int LCD_Pow(int X,int Y)
;	-----------------------------------------
;	 function LCD_Pow
;	-----------------------------------------
_LCD_Pow:
	mov	r6,dpl
	mov	r7,dph
;	../include/tools.h:204: int Result=1;
	mov	r4,#0x01
	mov	r5,#0x00
;	../include/tools.h:205: for(i=0;i<Y;i++)
	mov	r3,#0x00
00103$:
	mov	ar1,r3
	mov	r2,#0x00
	clr	c
	mov	a,r1
	subb	a,_LCD_Pow_PARM_2
	mov	a,r2
	xrl	a,#0x80
	mov	b,(_LCD_Pow_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	../include/tools.h:207: Result*=X;
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar3
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar6
	pop	ar7
;	../include/tools.h:205: for(i=0;i<Y;i++)
	inc	r3
	sjmp	00103$
00101$:
;	../include/tools.h:209: return Result;
	mov	dpl,r4
	mov	dph,r5
;	../include/tools.h:210: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_ShowNum'
;------------------------------------------------------------
;Column                    Allocated with name '_LCD_ShowNum_PARM_2'
;Number                    Allocated with name '_LCD_ShowNum_PARM_3'
;Length                    Allocated with name '_LCD_ShowNum_PARM_4'
;Line                      Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	../include/tools.h:220: void LCD_ShowNum(unsigned char Line,unsigned char Column,unsigned int Number,unsigned char Length)
;	-----------------------------------------
;	 function LCD_ShowNum
;	-----------------------------------------
_LCD_ShowNum:
;	../include/tools.h:223: LCD_SetCursor(Line,Column);
	mov	_LCD_SetCursor_PARM_2,_LCD_ShowNum_PARM_2
	lcall	_LCD_SetCursor
;	../include/tools.h:224: for(i=Length;i>0;i--)
	mov	r7,_LCD_ShowNum_PARM_4
00103$:
	mov	a,r7
	jz	00105$
;	../include/tools.h:226: LCD_WriteData(Number/LCD_Pow(10,i-1)%10+'0');
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xff
	mov	_LCD_Pow_PARM_2,a
	mov	a,r6
	addc	a,#0xff
	mov	(_LCD_Pow_PARM_2 + 1),a
	mov	dptr,#0x000a
	push	ar7
	lcall	_LCD_Pow
	mov	r5,dpl
	mov	r6,dph
	mov	__divuint_PARM_2,r5
	mov	(__divuint_PARM_2 + 1),r6
	mov	dpl,_LCD_ShowNum_PARM_3
	mov	dph,(_LCD_ShowNum_PARM_3 + 1)
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_LCD_WriteData
	pop	ar7
;	../include/tools.h:224: for(i=Length;i>0;i--)
	dec	r7
	sjmp	00103$
00105$:
;	../include/tools.h:228: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_ShowSignedNum'
;------------------------------------------------------------
;Column                    Allocated with name '_LCD_ShowSignedNum_PARM_2'
;Number                    Allocated with name '_LCD_ShowSignedNum_PARM_3'
;Length                    Allocated with name '_LCD_ShowSignedNum_PARM_4'
;Line                      Allocated to registers r7 
;i                         Allocated to registers 
;Number1                   Allocated to registers r6 r7 
;------------------------------------------------------------
;	../include/tools.h:238: void LCD_ShowSignedNum(unsigned char Line,unsigned char Column,int Number,unsigned char Length)
;	-----------------------------------------
;	 function LCD_ShowSignedNum
;	-----------------------------------------
_LCD_ShowSignedNum:
;	../include/tools.h:242: LCD_SetCursor(Line,Column);
	mov	_LCD_SetCursor_PARM_2,_LCD_ShowSignedNum_PARM_2
	lcall	_LCD_SetCursor
;	../include/tools.h:243: if(Number>=0)
	mov	a,(_LCD_ShowSignedNum_PARM_3 + 1)
	jb	acc.7,00102$
;	../include/tools.h:245: LCD_WriteData('+');
	mov	dpl,#0x2b
	lcall	_LCD_WriteData
;	../include/tools.h:246: Number1=Number;
	mov	r6,_LCD_ShowSignedNum_PARM_3
	mov	r7,(_LCD_ShowSignedNum_PARM_3 + 1)
	sjmp	00103$
00102$:
;	../include/tools.h:250: LCD_WriteData('-');
	mov	dpl,#0x2d
	lcall	_LCD_WriteData
;	../include/tools.h:251: Number1=-Number;
	clr	c
	clr	a
	subb	a,_LCD_ShowSignedNum_PARM_3
	mov	r6,a
	clr	a
	subb	a,(_LCD_ShowSignedNum_PARM_3 + 1)
	mov	r7,a
00103$:
;	../include/tools.h:253: for(i=Length;i>0;i--)
	mov	r5,_LCD_ShowSignedNum_PARM_4
00106$:
	mov	a,r5
	jz	00108$
;	../include/tools.h:255: LCD_WriteData(Number1/LCD_Pow(10,i-1)%10+'0');
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,r3
	add	a,#0xff
	mov	_LCD_Pow_PARM_2,a
	mov	a,r4
	addc	a,#0xff
	mov	(_LCD_Pow_PARM_2 + 1),a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_Pow
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	__divuint_PARM_2,r3
	mov	(__divuint_PARM_2 + 1),r4
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_WriteData
	pop	ar5
	pop	ar6
	pop	ar7
;	../include/tools.h:253: for(i=Length;i>0;i--)
	dec	r5
	sjmp	00106$
00108$:
;	../include/tools.h:257: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_ShowHexNum'
;------------------------------------------------------------
;Column                    Allocated with name '_LCD_ShowHexNum_PARM_2'
;Number                    Allocated with name '_LCD_ShowHexNum_PARM_3'
;Length                    Allocated with name '_LCD_ShowHexNum_PARM_4'
;Line                      Allocated to registers r7 
;i                         Allocated to registers 
;SingleNumber              Allocated to registers r5 
;------------------------------------------------------------
;	../include/tools.h:267: void LCD_ShowHexNum(unsigned char Line,unsigned char Column,unsigned int Number,unsigned char Length)
;	-----------------------------------------
;	 function LCD_ShowHexNum
;	-----------------------------------------
_LCD_ShowHexNum:
;	../include/tools.h:270: LCD_SetCursor(Line,Column);
	mov	_LCD_SetCursor_PARM_2,_LCD_ShowHexNum_PARM_2
	lcall	_LCD_SetCursor
;	../include/tools.h:271: for(i=Length;i>0;i--)
	mov	r7,_LCD_ShowHexNum_PARM_4
00106$:
	mov	a,r7
	jz	00108$
;	../include/tools.h:273: SingleNumber=Number/LCD_Pow(16,i-1)%16;
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xff
	mov	_LCD_Pow_PARM_2,a
	mov	a,r6
	addc	a,#0xff
	mov	(_LCD_Pow_PARM_2 + 1),a
	mov	dptr,#0x0010
	push	ar7
	lcall	_LCD_Pow
	mov	r5,dpl
	mov	r6,dph
	mov	__divuint_PARM_2,r5
	mov	(__divuint_PARM_2 + 1),r6
	mov	dpl,_LCD_ShowHexNum_PARM_3
	mov	dph,(_LCD_ShowHexNum_PARM_3 + 1)
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	anl	a,#0x0f
	mov	r5,a
;	../include/tools.h:274: if(SingleNumber<10)
	cjne	r5,#0x0a,00126$
00126$:
	jnc	00102$
;	../include/tools.h:276: LCD_WriteData(SingleNumber+'0');
	mov	ar6,r5
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	push	ar7
	lcall	_LCD_WriteData
	pop	ar7
	sjmp	00107$
00102$:
;	../include/tools.h:280: LCD_WriteData(SingleNumber-10+'A');
	mov	a,#0x37
	add	a,r5
	mov	dpl,a
	push	ar7
	lcall	_LCD_WriteData
	pop	ar7
00107$:
;	../include/tools.h:271: for(i=Length;i>0;i--)
	dec	r7
	sjmp	00106$
00108$:
;	../include/tools.h:283: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_ShowBinNum'
;------------------------------------------------------------
;Column                    Allocated with name '_LCD_ShowBinNum_PARM_2'
;Number                    Allocated with name '_LCD_ShowBinNum_PARM_3'
;Length                    Allocated with name '_LCD_ShowBinNum_PARM_4'
;Line                      Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	../include/tools.h:293: void LCD_ShowBinNum(unsigned char Line,unsigned char Column,unsigned int Number,unsigned char Length)
;	-----------------------------------------
;	 function LCD_ShowBinNum
;	-----------------------------------------
_LCD_ShowBinNum:
;	../include/tools.h:296: LCD_SetCursor(Line,Column);
	mov	_LCD_SetCursor_PARM_2,_LCD_ShowBinNum_PARM_2
	lcall	_LCD_SetCursor
;	../include/tools.h:297: for(i=Length;i>0;i--)
	mov	r7,_LCD_ShowBinNum_PARM_4
00103$:
	mov	a,r7
	jz	00105$
;	../include/tools.h:299: LCD_WriteData(Number/LCD_Pow(2,i-1)%2+'0');
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xff
	mov	_LCD_Pow_PARM_2,a
	mov	a,r6
	addc	a,#0xff
	mov	(_LCD_Pow_PARM_2 + 1),a
	mov	dptr,#0x0002
	push	ar7
	lcall	_LCD_Pow
	mov	r5,dpl
	mov	r6,dph
	mov	__divuint_PARM_2,r5
	mov	(__divuint_PARM_2 + 1),r6
	mov	dpl,_LCD_ShowBinNum_PARM_3
	mov	dph,(_LCD_ShowBinNum_PARM_3 + 1)
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	anl	a,#0x01
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_WriteData
	pop	ar7
;	../include/tools.h:297: for(i=Length;i>0;i--)
	dec	r7
	sjmp	00103$
00105$:
;	../include/tools.h:301: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MatrixKey'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	../include/tools.h:303: unsigned char MatrixKey() {
;	-----------------------------------------
;	 function MatrixKey
;	-----------------------------------------
_MatrixKey:
;	../include/tools.h:304: unsigned char key = 0;
	mov	r7,#0x00
;	../include/tools.h:306: P1 = 0xFF;
	mov	_P1,#0xff
;	../include/tools.h:307: P1_3 = 0;
;	assignBit
	clr	_P1_3
;	../include/tools.h:308: if (P1_7 == 0) {
	jb	_P1_7,00105$
;	../include/tools.h:309: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:310: while (P1_7 == 0) {
00101$:
	jnb	_P1_7,00101$
;	../include/tools.h:312: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:313: key = 1;
	mov	r7,#0x01
00105$:
;	../include/tools.h:315: if (P1_6 == 0) {
	jb	_P1_6,00110$
;	../include/tools.h:316: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:317: while (P1_6 == 0) {
00106$:
	jnb	_P1_6,00106$
;	../include/tools.h:319: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:320: key = 5;
	mov	r7,#0x05
00110$:
;	../include/tools.h:322: if (P1_5 == 0) {
	jb	_P1_5,00115$
;	../include/tools.h:323: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:324: while (P1_5 == 0) {
00111$:
	jnb	_P1_5,00111$
;	../include/tools.h:326: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:327: key = 9;
	mov	r7,#0x09
00115$:
;	../include/tools.h:329: if (P1_4 == 0) {
	jb	_P1_4,00120$
;	../include/tools.h:330: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:331: while (P1_4 == 0) {
00116$:
	jnb	_P1_4,00116$
;	../include/tools.h:333: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:334: key = 13;
	mov	r7,#0x0d
00120$:
;	../include/tools.h:337: P1 = 0xFF;
	mov	_P1,#0xff
;	../include/tools.h:338: P1_2 = 0;
;	assignBit
	clr	_P1_2
;	../include/tools.h:339: if (P1_7 == 0) {
	jb	_P1_7,00125$
;	../include/tools.h:340: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:341: while (P1_7 == 0) {
00121$:
	jnb	_P1_7,00121$
;	../include/tools.h:343: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:344: key = 2;
	mov	r7,#0x02
00125$:
;	../include/tools.h:346: if (P1_6 == 0) {
	jb	_P1_6,00130$
;	../include/tools.h:347: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:348: while (P1_6 == 0) {
00126$:
	jnb	_P1_6,00126$
;	../include/tools.h:350: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:351: key = 6;
	mov	r7,#0x06
00130$:
;	../include/tools.h:353: if (P1_5 == 0) {
	jb	_P1_5,00135$
;	../include/tools.h:354: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:355: while (P1_5 == 0) {
00131$:
	jnb	_P1_5,00131$
;	../include/tools.h:357: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:358: key = 10;
	mov	r7,#0x0a
00135$:
;	../include/tools.h:360: if (P1_4 == 0) {
	jb	_P1_4,00140$
;	../include/tools.h:361: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:362: while (P1_4 == 0) {
00136$:
	jnb	_P1_4,00136$
;	../include/tools.h:364: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:365: key = 14;
	mov	r7,#0x0e
00140$:
;	../include/tools.h:368: P1 = 0xFF;
	mov	_P1,#0xff
;	../include/tools.h:369: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	../include/tools.h:370: if (P1_7 == 0) {
	jb	_P1_7,00145$
;	../include/tools.h:371: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:372: while (P1_7 == 0) {
00141$:
	jnb	_P1_7,00141$
;	../include/tools.h:374: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:375: key = 3;
	mov	r7,#0x03
00145$:
;	../include/tools.h:377: if (P1_6 == 0) {
	jb	_P1_6,00150$
;	../include/tools.h:378: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:379: while (P1_6 == 0) {
00146$:
	jnb	_P1_6,00146$
;	../include/tools.h:381: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:382: key = 7;
	mov	r7,#0x07
00150$:
;	../include/tools.h:384: if (P1_5 == 0) {
	jb	_P1_5,00155$
;	../include/tools.h:385: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:386: while (P1_5 == 0) {
00151$:
	jnb	_P1_5,00151$
;	../include/tools.h:388: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:389: key = 11;
	mov	r7,#0x0b
00155$:
;	../include/tools.h:391: if (P1_4 == 0) {
	jb	_P1_4,00160$
;	../include/tools.h:392: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:393: while (P1_4 == 0) {
00156$:
	jnb	_P1_4,00156$
;	../include/tools.h:395: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:396: key = 15;
	mov	r7,#0x0f
00160$:
;	../include/tools.h:399: P1 = 0xFF;
	mov	_P1,#0xff
;	../include/tools.h:400: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	../include/tools.h:401: if (P1_7 == 0) {
	jb	_P1_7,00165$
;	../include/tools.h:402: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:403: while (P1_7 == 0) {
00161$:
	jnb	_P1_7,00161$
;	../include/tools.h:405: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:406: key = 4;
	mov	r7,#0x04
00165$:
;	../include/tools.h:408: if (P1_6 == 0) {
	jb	_P1_6,00170$
;	../include/tools.h:409: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:410: while (P1_6 == 0) {
00166$:
	jnb	_P1_6,00166$
;	../include/tools.h:412: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:413: key = 8;
	mov	r7,#0x08
00170$:
;	../include/tools.h:415: if (P1_5 == 0) {
	jb	_P1_5,00175$
;	../include/tools.h:416: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:417: while (P1_5 == 0) {
00171$:
	jnb	_P1_5,00171$
;	../include/tools.h:419: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:420: key = 12;
	mov	r7,#0x0c
00175$:
;	../include/tools.h:422: if (P1_4 == 0) {
	jb	_P1_4,00180$
;	../include/tools.h:423: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:424: while (P1_4 == 0) {
00176$:
	jnb	_P1_4,00176$
;	../include/tools.h:426: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	../include/tools.h:427: key = 16;
	mov	r7,#0x10
00180$:
;	../include/tools.h:430: return key;
	mov	dpl,r7
;	../include/tools.h:431: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:5: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:6: LCD_Init();
	lcall	_LCD_Init
;	main.c:7: LCD_ShowString(1, 1, "cxldada");
	mov	_LCD_ShowString_PARM_3,#___str_0
	mov	(_LCD_ShowString_PARM_3 + 1),#(___str_0 >> 8)
	mov	(_LCD_ShowString_PARM_3 + 2),#0x80
	mov	_LCD_ShowString_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_LCD_ShowString
;	main.c:8: while (1) {
00104$:
;	main.c:9: KeyNum = MatrixKey();
	lcall	_MatrixKey
;	main.c:10: if(KeyNum) {
	mov	a,dpl
	mov	_KeyNum,a
	jz	00104$
;	main.c:11: LCD_ShowNum(2, 1, KeyNum, 2);
	mov	_LCD_ShowNum_PARM_3,_KeyNum
	mov	(_LCD_ShowNum_PARM_3 + 1),#0x00
	mov	_LCD_ShowNum_PARM_2,#0x01
	mov	_LCD_ShowNum_PARM_4,#0x02
	mov	dpl,#0x02
	lcall	_LCD_ShowNum
;	main.c:14: }
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "cxldada"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
