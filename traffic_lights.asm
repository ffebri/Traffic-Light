;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Thu Jan 22 08:43:43 2015
;--------------------------------------------------------
	.module traffic_lights
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _green
	.globl _display1
	.globl _display
	.globl _delay1
	.globl _delay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
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
	.globl _B
	.globl _A
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
	.globl _c
	.globl _b
	.globl _l
	.globl _k
	.globl _j
	.globl _i
	.globl _a
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
_A	=	0x00e0
_B	=	0x00f0
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
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_a::
	.ds 10
_i::
	.ds 2
_j::
	.ds 2
_k::
	.ds 2
_l::
	.ds 2
_b::
	.ds 1
_c::
	.ds 1
_green_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;	traffic_lights.c:2: char a[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
	mov	_a,#0x3F
	mov	(_a + 0x0001),#0x06
	mov	(_a + 0x0002),#0x5B
	mov	(_a + 0x0003),#0x4F
	mov	(_a + 0x0004),#0x66
	mov	(_a + 0x0005),#0x6D
	mov	(_a + 0x0006),#0x7D
	mov	(_a + 0x0007),#0x07
	mov	(_a + 0x0008),#0x7F
	mov	(_a + 0x0009),#0x6F
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
;	traffic_lights.c:6: void delay()
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
;	traffic_lights.c:8: TMOD=0X10;
	mov	_TMOD,#0x10
;	traffic_lights.c:9: TL1=0XFF;
	mov	_TL1,#0xFF
;	traffic_lights.c:10: TH1=0XA5;
	mov	_TH1,#0xA5
;	traffic_lights.c:11: TR1=1;
	setb	_TR1
;	traffic_lights.c:12: while(TF1==0);
00101$:
	jnb	_TF1,00101$
;	traffic_lights.c:13: TR1=0;
	clr	_TR1
;	traffic_lights.c:14: TF1=0;
	clr	_TF1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay1'
;------------------------------------------------------------
;	traffic_lights.c:17: void delay1()
;	-----------------------------------------
;	 function delay1
;	-----------------------------------------
_delay1:
;	traffic_lights.c:19: TMOD=0X01;
	mov	_TMOD,#0x01
;	traffic_lights.c:20: TL0=0XFF;
	mov	_TL0,#0xFF
;	traffic_lights.c:21: TH0=0XA5;
	mov	_TH0,#0xA5
;	traffic_lights.c:22: TR0=1;
	setb	_TR0
;	traffic_lights.c:23: while(TF0==0);
00101$:
	jnb	_TF0,00101$
;	traffic_lights.c:24: TR0=0;
	clr	_TR0
;	traffic_lights.c:25: TF0=0;
	clr	_TF0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;x                         Allocated to registers r7 
;------------------------------------------------------------
;	traffic_lights.c:28: void display(char x)
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
;	traffic_lights.c:30: for(j=x;j>=0;j--)
	mov	a,dpl
	mov	r7,a
	mov	_j,a
	rlc	a
	subb	a,acc
	mov	(_j + 1),a
00106$:
	mov	a,(_j + 1)
	jb	acc.7,00108$
;	traffic_lights.c:31: {P0_0=!P0_0;
	cpl	_P0_0
;	traffic_lights.c:32: for(i=0;i<=42;i++)
	clr	a
	mov	_i,a
	mov	(_i + 1),a
00103$:
;	traffic_lights.c:33: {    P2=b;
	mov	_P2,_b
;	traffic_lights.c:34: P3=c;
	mov	_P3,_c
;	traffic_lights.c:35: delay();
	lcall	_delay
;	traffic_lights.c:36: P1=a[j];    }
	mov	a,_j
	add	a,#_a
	mov	r1,a
	mov	_P1,@r1
;	traffic_lights.c:32: for(i=0;i<=42;i++)
	inc	_i
	clr	a
	cjne	a,_i,00123$
	inc	(_i + 1)
00123$:
	clr	c
	mov	a,#0x2A
	subb	a,_i
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_i + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	traffic_lights.c:30: for(j=x;j>=0;j--)
	dec	_j
	mov	a,#0xFF
	cjne	a,_j,00125$
	dec	(_j + 1)
00125$:
	sjmp	00106$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display1'
;------------------------------------------------------------
;m                         Allocated to registers r7 
;------------------------------------------------------------
;	traffic_lights.c:40: void display1(char m)
;	-----------------------------------------
;	 function display1
;	-----------------------------------------
_display1:
;	traffic_lights.c:42: for(k=m;k>=0;k--)
	mov	a,dpl
	mov	r7,a
	mov	_k,a
	rlc	a
	subb	a,acc
	mov	(_k + 1),a
00106$:
	mov	a,(_k + 1)
	jb	acc.7,00108$
;	traffic_lights.c:43: {P0_0=!P0_0;
	cpl	_P0_0
;	traffic_lights.c:44: for(l=0;l<=42;l++)
	clr	a
	mov	_l,a
	mov	(_l + 1),a
00103$:
;	traffic_lights.c:45: {    delay1();
	lcall	_delay1
;	traffic_lights.c:46: P1=a[k];    }
	mov	a,_k
	add	a,#_a
	mov	r1,a
	mov	_P1,@r1
;	traffic_lights.c:44: for(l=0;l<=42;l++)
	inc	_l
	clr	a
	cjne	a,_l,00123$
	inc	(_l + 1)
00123$:
	clr	c
	mov	a,#0x2A
	subb	a,_l
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_l + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	traffic_lights.c:42: for(k=m;k>=0;k--)
	dec	_k
	mov	a,#0xFF
	cjne	a,_k,00125$
	dec	(_k + 1)
00125$:
	sjmp	00106$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'green'
;------------------------------------------------------------
;sloc0                     Allocated with name '_green_sloc0_1_0'
;------------------------------------------------------------
;	traffic_lights.c:50: void green()
;	-----------------------------------------
;	 function green
;	-----------------------------------------
_green:
;	traffic_lights.c:53: if(P0_2==0 & P0_3==1 & P0_4==1 & P0_5==1)
	mov	c,_P0_2
	cpl	c
	clr	a
	rlc	a
	mov	r7,a
	mov	c,_P0_3
	clr	a
	rlc	a
	anl	ar7,a
	mov	c,_P0_4
	clr	a
	rlc	a
	anl	ar7,a
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	r6,a
	anl	a,r7
	jz	00102$
;	traffic_lights.c:55: P2=0x0E;
	mov	_P2,#0x0E
;	traffic_lights.c:56: P3=0x1F;
	mov	_P3,#0x1F
;	traffic_lights.c:57: display1(9);
	mov	dpl,#0x09
	lcall	_display1
00102$:
;	traffic_lights.c:61: if(P0_2==1 & P0_3==0 & P0_4==1 & P0_5==1)
	mov	c,_P0_3
	cpl	c
	clr	a
	rlc	a
	mov	r7,a
	mov	c,_P0_2
	clr	a
	rlc	a
	mov	r6,a
	mov	a,r7
	anl	ar6,a
	mov	c,_P0_4
	clr	a
	rlc	a
	anl	ar6,a
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	r7,a
	anl	a,r6
	jz	00104$
;	traffic_lights.c:63: P2=0x0D;
	mov	_P2,#0x0D
;	traffic_lights.c:64: P3=0x2F;
	mov	_P3,#0x2F
;	traffic_lights.c:65: display1(9);
	mov	dpl,#0x09
	lcall	_display1
00104$:
;	traffic_lights.c:69: if(P0_2==1 & P0_3==1 & P0_4==0 & P0_5==1)
	mov	c,_P0_2
	anl	c,_P0_3
	clr	a
	rlc	a
	mov	_green_sloc0_1_0,a
	mov	c,_P0_4
	cpl	c
	clr	a
	rlc	a
	mov	r6,_green_sloc0_1_0
	anl	ar6,a
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	r7,a
	anl	a,r6
	jz	00106$
;	traffic_lights.c:71: P2=0x0B;
	mov	_P2,#0x0B
;	traffic_lights.c:72: P3=0x4F;
	mov	_P3,#0x4F
;	traffic_lights.c:73: display1(9);
	mov	dpl,#0x09
	lcall	_display1
00106$:
;	traffic_lights.c:77: if(P0_2==1 & P0_3==1 & P0_4==1 & P0_5==0)
	mov	c,_P0_2
	anl	c,_P0_3
	anl	c,_P0_4
	clr	a
	rlc	a
	mov	_green_sloc0_1_0,a
	mov	c,_P0_5
	cpl	c
	clr	a
	rlc	a
	mov	r7,a
	mov	r6,_green_sloc0_1_0
	anl	a,r6
	jz	00109$
;	traffic_lights.c:79: P2=0x07;
	mov	_P2,#0x07
;	traffic_lights.c:80: P3=0x8F;
	mov	_P3,#0x8F
;	traffic_lights.c:81: display1(9);
	mov	dpl,#0x09
	ljmp	_display1
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	traffic_lights.c:86: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	traffic_lights.c:89: EX0=1;
	setb	_EX0
;	traffic_lights.c:90: EA=1;
	setb	_EA
;	traffic_lights.c:91: IT0=1;
	setb	_IT0
;	traffic_lights.c:93: while(1)
00102$:
;	traffic_lights.c:95: b=P2=0x0E;
	mov	_P2,#0x0E
	mov	_b,#0x0E
;	traffic_lights.c:96: c=P3=0x1F;
	mov	_P3,#0x1F
	mov	_c,#0x1F
;	traffic_lights.c:97: display(0-7);
	mov	dpl,#0xF9
	lcall	_display
;	traffic_lights.c:100: b=P2=0x2D;
	mov	_P2,#0x2D
	mov	_b,#0x2D
;	traffic_lights.c:101: c=P3=0x0F;
	mov	_P3,#0x0F
	mov	_c,#0x0F
;	traffic_lights.c:102: display(2);
	mov	dpl,#0x02
	lcall	_display
;	traffic_lights.c:105: b=P2=0x0D;
	mov	_P2,#0x0D
	mov	_b,#0x0D
;	traffic_lights.c:106: c=P3=0x2F;
	mov	_P3,#0x2F
	mov	_c,#0x2F
;	traffic_lights.c:107: display(9);
	mov	dpl,#0x09
	lcall	_display
;	traffic_lights.c:110: b=P2=0x4B;
	mov	_P2,#0x4B
	mov	_b,#0x4B
;	traffic_lights.c:111: c=P3=0x0F;
	mov	_P3,#0x0F
	mov	_c,#0x0F
;	traffic_lights.c:112: display(2);
	mov	dpl,#0x02
	lcall	_display
;	traffic_lights.c:115: b=P2=0x0B;
	mov	_P2,#0x0B
	mov	_b,#0x0B
;	traffic_lights.c:116: c=P3=0x4F;
	mov	_P3,#0x4F
	mov	_c,#0x4F
;	traffic_lights.c:117: display(9);
	mov	dpl,#0x09
	lcall	_display
;	traffic_lights.c:120: b=P2=0x87;
	mov	_P2,#0x87
	mov	_b,#0x87
;	traffic_lights.c:121: c=P3=0x0F;
	mov	_P3,#0x0F
	mov	_c,#0x0F
;	traffic_lights.c:122: display(2);
	mov	dpl,#0x02
	lcall	_display
;	traffic_lights.c:125: b=P2=0x07;
	mov	_P2,#0x07
	mov	_b,#0x07
;	traffic_lights.c:126: c=P3=0x8F;
	mov	_P3,#0x8F
	mov	_c,#0x8F
;	traffic_lights.c:127: display(9);
	mov	dpl,#0x09
	lcall	_display
;	traffic_lights.c:130: b=P2=0x1E;
	mov	_P2,#0x1E
	mov	_b,#0x1E
;	traffic_lights.c:131: c=P3=0x0F;
	mov	_P3,#0x0F
	mov	_c,#0x0F
;	traffic_lights.c:132: display(2);
	mov	dpl,#0x02
	lcall	_display
	ljmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
