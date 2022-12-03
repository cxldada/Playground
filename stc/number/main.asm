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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_Nixie_PARM_2:
	.ds 1
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
;	../include/tools.h:23: unsigned char NixieTable[] = {
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
;	../include/tools.h:3: void delay(unsigned int ms) {
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
;	../include/tools.h:6: while (ms--) {
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
;	../include/tools.h:10: while (--j)
	mov	r5,#0xef
	mov	r4,#0x02
00101$:
	djnz	r5,00101$
;	../include/tools.h:12: } while (--i);
	djnz	r4,00101$
	sjmp	00107$
00110$:
;	../include/tools.h:14: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Nixie'
;------------------------------------------------------------
;number                    Allocated with name '_Nixie_PARM_2'
;localtion                 Allocated to registers r7 
;------------------------------------------------------------
;	../include/tools.h:42: void Nixie(unsigned char localtion, unsigned char number) {
;	-----------------------------------------
;	 function Nixie
;	-----------------------------------------
_Nixie:
;	../include/tools.h:43: switch (localtion) {
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
;	../include/tools.h:44: case 1: {
00101$:
;	../include/tools.h:45: P2_4 = 1;
;	assignBit
	setb	_P2_4
;	../include/tools.h:46: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	../include/tools.h:47: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	../include/tools.h:48: break;
;	../include/tools.h:50: case 2: {
	sjmp	00109$
00102$:
;	../include/tools.h:51: P2_4 = 1;
;	assignBit
	setb	_P2_4
;	../include/tools.h:52: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	../include/tools.h:53: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	../include/tools.h:54: break;
;	../include/tools.h:56: case 3: {
	sjmp	00109$
00103$:
;	../include/tools.h:57: P2_4 = 1;
;	assignBit
	setb	_P2_4
;	../include/tools.h:58: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	../include/tools.h:59: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	../include/tools.h:60: break;
;	../include/tools.h:62: case 4: {
	sjmp	00109$
00104$:
;	../include/tools.h:63: P2_4 = 1;
;	assignBit
	setb	_P2_4
;	../include/tools.h:64: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	../include/tools.h:65: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	../include/tools.h:66: break;
;	../include/tools.h:68: case 5: {
	sjmp	00109$
00105$:
;	../include/tools.h:69: P2_4 = 0;
;	assignBit
	clr	_P2_4
;	../include/tools.h:70: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	../include/tools.h:71: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	../include/tools.h:72: break;
;	../include/tools.h:74: case 6: {
	sjmp	00109$
00106$:
;	../include/tools.h:75: P2_4 = 0;
;	assignBit
	clr	_P2_4
;	../include/tools.h:76: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	../include/tools.h:77: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	../include/tools.h:78: break;
;	../include/tools.h:80: case 7: {
	sjmp	00109$
00107$:
;	../include/tools.h:81: P2_4 = 0;
;	assignBit
	clr	_P2_4
;	../include/tools.h:82: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	../include/tools.h:83: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	../include/tools.h:84: break;
;	../include/tools.h:86: case 8: {
	sjmp	00109$
00108$:
;	../include/tools.h:87: P2_4 = 0;
;	assignBit
	clr	_P2_4
;	../include/tools.h:88: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	../include/tools.h:89: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	../include/tools.h:92: }
00109$:
;	../include/tools.h:94: P0 = NixieTable[number];
	mov	a,_Nixie_PARM_2
	add	a,#_NixieTable
	mov	r1,a
	mov	_P0,@r1
;	../include/tools.h:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:3: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:4: while (1) {
00102$:
;	main.c:5: Nixie(1, 1);
	mov	_Nixie_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_Nixie
;	main.c:6: Nixie(1, Nixie_Null);
	mov	_Nixie_PARM_2,#0x10
	mov	dpl,#0x01
	lcall	_Nixie
;	main.c:7: Nixie(2, 9);
	mov	_Nixie_PARM_2,#0x09
	mov	dpl,#0x02
	lcall	_Nixie
;	main.c:8: Nixie(2, Nixie_Null);
	mov	_Nixie_PARM_2,#0x10
	mov	dpl,#0x02
	lcall	_Nixie
;	main.c:9: Nixie(3, 9);
	mov	_Nixie_PARM_2,#0x09
	mov	dpl,#0x03
	lcall	_Nixie
;	main.c:10: Nixie(3, Nixie_Null);
	mov	_Nixie_PARM_2,#0x10
	mov	dpl,#0x03
	lcall	_Nixie
;	main.c:11: Nixie(4, 6);
	mov	_Nixie_PARM_2,#0x06
	mov	dpl,#0x04
	lcall	_Nixie
;	main.c:12: Nixie(4, Nixie_Null);
	mov	_Nixie_PARM_2,#0x10
	mov	dpl,#0x04
	lcall	_Nixie
;	main.c:13: Nixie(5, 1);
	mov	_Nixie_PARM_2,#0x01
	mov	dpl,#0x05
	lcall	_Nixie
;	main.c:14: Nixie(5, Nixie_Null);
	mov	_Nixie_PARM_2,#0x10
	mov	dpl,#0x05
	lcall	_Nixie
;	main.c:15: Nixie(6, 1);
	mov	_Nixie_PARM_2,#0x01
	mov	dpl,#0x06
	lcall	_Nixie
;	main.c:16: Nixie(6, Nixie_Null);
	mov	_Nixie_PARM_2,#0x10
	mov	dpl,#0x06
	lcall	_Nixie
;	main.c:17: Nixie(7, 1);
	mov	_Nixie_PARM_2,#0x01
	mov	dpl,#0x07
	lcall	_Nixie
;	main.c:18: Nixie(7, Nixie_Null);
	mov	_Nixie_PARM_2,#0x10
	mov	dpl,#0x07
	lcall	_Nixie
;	main.c:19: Nixie(8, 8);
	mov	_Nixie_PARM_2,#0x08
	mov	dpl,#0x08
	lcall	_Nixie
;	main.c:20: Nixie(8, Nixie_Null);
	mov	_Nixie_PARM_2,#0x10
	mov	dpl,#0x08
	lcall	_Nixie
;	main.c:22: }
	ljmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
