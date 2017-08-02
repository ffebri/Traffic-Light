                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Jan 22 08:43:43 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module traffic_lights
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _green
                                     14 	.globl _display1
                                     15 	.globl _display
                                     16 	.globl _delay1
                                     17 	.globl _delay
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _FL
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _A
                                     95 	.globl _ACC
                                     96 	.globl _PSW
                                     97 	.globl _IP
                                     98 	.globl _P3
                                     99 	.globl _IE
                                    100 	.globl _P2
                                    101 	.globl _SBUF
                                    102 	.globl _SCON
                                    103 	.globl _P1
                                    104 	.globl _TH1
                                    105 	.globl _TH0
                                    106 	.globl _TL1
                                    107 	.globl _TL0
                                    108 	.globl _TMOD
                                    109 	.globl _TCON
                                    110 	.globl _PCON
                                    111 	.globl _DPH
                                    112 	.globl _DPL
                                    113 	.globl _SP
                                    114 	.globl _P0
                                    115 	.globl _c
                                    116 	.globl _b
                                    117 	.globl _l
                                    118 	.globl _k
                                    119 	.globl _j
                                    120 	.globl _i
                                    121 	.globl _a
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000E0   147 _A	=	0x00e0
                           0000F0   148 _B	=	0x00f0
                                    149 ;--------------------------------------------------------
                                    150 ; special function bits
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0_0	=	0x0080
                           000081   155 _P0_1	=	0x0081
                           000082   156 _P0_2	=	0x0082
                           000083   157 _P0_3	=	0x0083
                           000084   158 _P0_4	=	0x0084
                           000085   159 _P0_5	=	0x0085
                           000086   160 _P0_6	=	0x0086
                           000087   161 _P0_7	=	0x0087
                           000088   162 _IT0	=	0x0088
                           000089   163 _IE0	=	0x0089
                           00008A   164 _IT1	=	0x008a
                           00008B   165 _IE1	=	0x008b
                           00008C   166 _TR0	=	0x008c
                           00008D   167 _TF0	=	0x008d
                           00008E   168 _TR1	=	0x008e
                           00008F   169 _TF1	=	0x008f
                           000090   170 _P1_0	=	0x0090
                           000091   171 _P1_1	=	0x0091
                           000092   172 _P1_2	=	0x0092
                           000093   173 _P1_3	=	0x0093
                           000094   174 _P1_4	=	0x0094
                           000095   175 _P1_5	=	0x0095
                           000096   176 _P1_6	=	0x0096
                           000097   177 _P1_7	=	0x0097
                           000098   178 _RI	=	0x0098
                           000099   179 _TI	=	0x0099
                           00009A   180 _RB8	=	0x009a
                           00009B   181 _TB8	=	0x009b
                           00009C   182 _REN	=	0x009c
                           00009D   183 _SM2	=	0x009d
                           00009E   184 _SM1	=	0x009e
                           00009F   185 _SM0	=	0x009f
                           0000A0   186 _P2_0	=	0x00a0
                           0000A1   187 _P2_1	=	0x00a1
                           0000A2   188 _P2_2	=	0x00a2
                           0000A3   189 _P2_3	=	0x00a3
                           0000A4   190 _P2_4	=	0x00a4
                           0000A5   191 _P2_5	=	0x00a5
                           0000A6   192 _P2_6	=	0x00a6
                           0000A7   193 _P2_7	=	0x00a7
                           0000A8   194 _EX0	=	0x00a8
                           0000A9   195 _ET0	=	0x00a9
                           0000AA   196 _EX1	=	0x00aa
                           0000AB   197 _ET1	=	0x00ab
                           0000AC   198 _ES	=	0x00ac
                           0000AF   199 _EA	=	0x00af
                           0000B0   200 _P3_0	=	0x00b0
                           0000B1   201 _P3_1	=	0x00b1
                           0000B2   202 _P3_2	=	0x00b2
                           0000B3   203 _P3_3	=	0x00b3
                           0000B4   204 _P3_4	=	0x00b4
                           0000B5   205 _P3_5	=	0x00b5
                           0000B6   206 _P3_6	=	0x00b6
                           0000B7   207 _P3_7	=	0x00b7
                           0000B0   208 _RXD	=	0x00b0
                           0000B1   209 _TXD	=	0x00b1
                           0000B2   210 _INT0	=	0x00b2
                           0000B3   211 _INT1	=	0x00b3
                           0000B4   212 _T0	=	0x00b4
                           0000B5   213 _T1	=	0x00b5
                           0000B6   214 _WR	=	0x00b6
                           0000B7   215 _RD	=	0x00b7
                           0000B8   216 _PX0	=	0x00b8
                           0000B9   217 _PT0	=	0x00b9
                           0000BA   218 _PX1	=	0x00ba
                           0000BB   219 _PT1	=	0x00bb
                           0000BC   220 _PS	=	0x00bc
                           0000D0   221 _P	=	0x00d0
                           0000D1   222 _FL	=	0x00d1
                           0000D2   223 _OV	=	0x00d2
                           0000D3   224 _RS0	=	0x00d3
                           0000D4   225 _RS1	=	0x00d4
                           0000D5   226 _F0	=	0x00d5
                           0000D6   227 _AC	=	0x00d6
                           0000D7   228 _CY	=	0x00d7
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable register banks
                                    231 ;--------------------------------------------------------
                                    232 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        233 	.ds 8
                                    234 ;--------------------------------------------------------
                                    235 ; internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area DSEG    (DATA)
      000008                        238 _a::
      000008                        239 	.ds 10
      000012                        240 _i::
      000012                        241 	.ds 2
      000014                        242 _j::
      000014                        243 	.ds 2
      000016                        244 _k::
      000016                        245 	.ds 2
      000018                        246 _l::
      000018                        247 	.ds 2
      00001A                        248 _b::
      00001A                        249 	.ds 1
      00001B                        250 _c::
      00001B                        251 	.ds 1
      00001C                        252 _green_sloc0_1_0:
      00001C                        253 	.ds 1
                                    254 ;--------------------------------------------------------
                                    255 ; overlayable items in internal ram 
                                    256 ;--------------------------------------------------------
                                    257 ;--------------------------------------------------------
                                    258 ; Stack segment in internal ram 
                                    259 ;--------------------------------------------------------
                                    260 	.area	SSEG
      00001D                        261 __start__stack:
      00001D                        262 	.ds	1
                                    263 
                                    264 ;--------------------------------------------------------
                                    265 ; indirectly addressable internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area ISEG    (DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute internal ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area IABS    (ABS,DATA)
                                    272 	.area IABS    (ABS,DATA)
                                    273 ;--------------------------------------------------------
                                    274 ; bit data
                                    275 ;--------------------------------------------------------
                                    276 	.area BSEG    (BIT)
                                    277 ;--------------------------------------------------------
                                    278 ; paged external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area PSEG    (PAG,XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XSEG    (XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; absolute external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XABS    (ABS,XDATA)
                                    289 ;--------------------------------------------------------
                                    290 ; external initialized ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area XISEG   (XDATA)
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT0 (CODE)
                                    295 	.area GSINIT1 (CODE)
                                    296 	.area GSINIT2 (CODE)
                                    297 	.area GSINIT3 (CODE)
                                    298 	.area GSINIT4 (CODE)
                                    299 	.area GSINIT5 (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.area GSFINAL (CODE)
                                    302 	.area CSEG    (CODE)
                                    303 ;--------------------------------------------------------
                                    304 ; interrupt vector 
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
      000000                        307 __interrupt_vect:
      000000 02 00 06         [24]  308 	ljmp	__sdcc_gsinit_startup
                                    309 ;--------------------------------------------------------
                                    310 ; global & static initialisations
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
                                    313 	.area GSINIT  (CODE)
                                    314 	.area GSFINAL (CODE)
                                    315 	.area GSINIT  (CODE)
                                    316 	.globl __sdcc_gsinit_startup
                                    317 	.globl __sdcc_program_startup
                                    318 	.globl __start__stack
                                    319 	.globl __mcs51_genXINIT
                                    320 	.globl __mcs51_genXRAMCLEAR
                                    321 	.globl __mcs51_genRAMCLEAR
                                    322 ;	traffic_lights.c:2: char a[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
      00005F 75 08 3F         [24]  323 	mov	_a,#0x3F
      000062 75 09 06         [24]  324 	mov	(_a + 0x0001),#0x06
      000065 75 0A 5B         [24]  325 	mov	(_a + 0x0002),#0x5B
      000068 75 0B 4F         [24]  326 	mov	(_a + 0x0003),#0x4F
      00006B 75 0C 66         [24]  327 	mov	(_a + 0x0004),#0x66
      00006E 75 0D 6D         [24]  328 	mov	(_a + 0x0005),#0x6D
      000071 75 0E 7D         [24]  329 	mov	(_a + 0x0006),#0x7D
      000074 75 0F 07         [24]  330 	mov	(_a + 0x0007),#0x07
      000077 75 10 7F         [24]  331 	mov	(_a + 0x0008),#0x7F
      00007A 75 11 6F         [24]  332 	mov	(_a + 0x0009),#0x6F
                                    333 	.area GSFINAL (CODE)
      00007D 02 00 03         [24]  334 	ljmp	__sdcc_program_startup
                                    335 ;--------------------------------------------------------
                                    336 ; Home
                                    337 ;--------------------------------------------------------
                                    338 	.area HOME    (CODE)
                                    339 	.area HOME    (CODE)
      000003                        340 __sdcc_program_startup:
      000003 02 01 CB         [24]  341 	ljmp	_main
                                    342 ;	return from main will return to caller
                                    343 ;--------------------------------------------------------
                                    344 ; code
                                    345 ;--------------------------------------------------------
                                    346 	.area CSEG    (CODE)
                                    347 ;------------------------------------------------------------
                                    348 ;Allocation info for local variables in function 'delay'
                                    349 ;------------------------------------------------------------
                                    350 ;	traffic_lights.c:6: void delay()
                                    351 ;	-----------------------------------------
                                    352 ;	 function delay
                                    353 ;	-----------------------------------------
      000080                        354 _delay:
                           000007   355 	ar7 = 0x07
                           000006   356 	ar6 = 0x06
                           000005   357 	ar5 = 0x05
                           000004   358 	ar4 = 0x04
                           000003   359 	ar3 = 0x03
                           000002   360 	ar2 = 0x02
                           000001   361 	ar1 = 0x01
                           000000   362 	ar0 = 0x00
                                    363 ;	traffic_lights.c:8: TMOD=0X10;
      000080 75 89 10         [24]  364 	mov	_TMOD,#0x10
                                    365 ;	traffic_lights.c:9: TL1=0XFF;
      000083 75 8B FF         [24]  366 	mov	_TL1,#0xFF
                                    367 ;	traffic_lights.c:10: TH1=0XA5;
      000086 75 8D A5         [24]  368 	mov	_TH1,#0xA5
                                    369 ;	traffic_lights.c:11: TR1=1;
      000089 D2 8E            [12]  370 	setb	_TR1
                                    371 ;	traffic_lights.c:12: while(TF1==0);
      00008B                        372 00101$:
      00008B 30 8F FD         [24]  373 	jnb	_TF1,00101$
                                    374 ;	traffic_lights.c:13: TR1=0;
      00008E C2 8E            [12]  375 	clr	_TR1
                                    376 ;	traffic_lights.c:14: TF1=0;
      000090 C2 8F            [12]  377 	clr	_TF1
      000092 22               [24]  378 	ret
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'delay1'
                                    381 ;------------------------------------------------------------
                                    382 ;	traffic_lights.c:17: void delay1()
                                    383 ;	-----------------------------------------
                                    384 ;	 function delay1
                                    385 ;	-----------------------------------------
      000093                        386 _delay1:
                                    387 ;	traffic_lights.c:19: TMOD=0X01;
      000093 75 89 01         [24]  388 	mov	_TMOD,#0x01
                                    389 ;	traffic_lights.c:20: TL0=0XFF;
      000096 75 8A FF         [24]  390 	mov	_TL0,#0xFF
                                    391 ;	traffic_lights.c:21: TH0=0XA5;
      000099 75 8C A5         [24]  392 	mov	_TH0,#0xA5
                                    393 ;	traffic_lights.c:22: TR0=1;
      00009C D2 8C            [12]  394 	setb	_TR0
                                    395 ;	traffic_lights.c:23: while(TF0==0);
      00009E                        396 00101$:
      00009E 30 8D FD         [24]  397 	jnb	_TF0,00101$
                                    398 ;	traffic_lights.c:24: TR0=0;
      0000A1 C2 8C            [12]  399 	clr	_TR0
                                    400 ;	traffic_lights.c:25: TF0=0;
      0000A3 C2 8D            [12]  401 	clr	_TF0
      0000A5 22               [24]  402 	ret
                                    403 ;------------------------------------------------------------
                                    404 ;Allocation info for local variables in function 'display'
                                    405 ;------------------------------------------------------------
                                    406 ;x                         Allocated to registers r7 
                                    407 ;------------------------------------------------------------
                                    408 ;	traffic_lights.c:28: void display(char x)
                                    409 ;	-----------------------------------------
                                    410 ;	 function display
                                    411 ;	-----------------------------------------
      0000A6                        412 _display:
                                    413 ;	traffic_lights.c:30: for(j=x;j>=0;j--)
      0000A6 E5 82            [12]  414 	mov	a,dpl
      0000A8 FF               [12]  415 	mov	r7,a
      0000A9 F5 14            [12]  416 	mov	_j,a
      0000AB 33               [12]  417 	rlc	a
      0000AC 95 E0            [12]  418 	subb	a,acc
      0000AE F5 15            [12]  419 	mov	(_j + 1),a
      0000B0                        420 00106$:
      0000B0 E5 15            [12]  421 	mov	a,(_j + 1)
      0000B2 20 E7 3B         [24]  422 	jb	acc.7,00108$
                                    423 ;	traffic_lights.c:31: {P0_0=!P0_0;
      0000B5 B2 80            [12]  424 	cpl	_P0_0
                                    425 ;	traffic_lights.c:32: for(i=0;i<=42;i++)
      0000B7 E4               [12]  426 	clr	a
      0000B8 F5 12            [12]  427 	mov	_i,a
      0000BA F5 13            [12]  428 	mov	(_i + 1),a
      0000BC                        429 00103$:
                                    430 ;	traffic_lights.c:33: {    P2=b;
      0000BC 85 1A A0         [24]  431 	mov	_P2,_b
                                    432 ;	traffic_lights.c:34: P3=c;
      0000BF 85 1B B0         [24]  433 	mov	_P3,_c
                                    434 ;	traffic_lights.c:35: delay();
      0000C2 12 00 80         [24]  435 	lcall	_delay
                                    436 ;	traffic_lights.c:36: P1=a[j];    }
      0000C5 E5 14            [12]  437 	mov	a,_j
      0000C7 24 08            [12]  438 	add	a,#_a
      0000C9 F9               [12]  439 	mov	r1,a
      0000CA 87 90            [24]  440 	mov	_P1,@r1
                                    441 ;	traffic_lights.c:32: for(i=0;i<=42;i++)
      0000CC 05 12            [12]  442 	inc	_i
      0000CE E4               [12]  443 	clr	a
      0000CF B5 12 02         [24]  444 	cjne	a,_i,00123$
      0000D2 05 13            [12]  445 	inc	(_i + 1)
      0000D4                        446 00123$:
      0000D4 C3               [12]  447 	clr	c
      0000D5 74 2A            [12]  448 	mov	a,#0x2A
      0000D7 95 12            [12]  449 	subb	a,_i
      0000D9 74 80            [12]  450 	mov	a,#(0x00 ^ 0x80)
      0000DB 85 13 F0         [24]  451 	mov	b,(_i + 1)
      0000DE 63 F0 80         [24]  452 	xrl	b,#0x80
      0000E1 95 F0            [12]  453 	subb	a,b
      0000E3 50 D7            [24]  454 	jnc	00103$
                                    455 ;	traffic_lights.c:30: for(j=x;j>=0;j--)
      0000E5 15 14            [12]  456 	dec	_j
      0000E7 74 FF            [12]  457 	mov	a,#0xFF
      0000E9 B5 14 02         [24]  458 	cjne	a,_j,00125$
      0000EC 15 15            [12]  459 	dec	(_j + 1)
      0000EE                        460 00125$:
      0000EE 80 C0            [24]  461 	sjmp	00106$
      0000F0                        462 00108$:
      0000F0 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'display1'
                                    466 ;------------------------------------------------------------
                                    467 ;m                         Allocated to registers r7 
                                    468 ;------------------------------------------------------------
                                    469 ;	traffic_lights.c:40: void display1(char m)
                                    470 ;	-----------------------------------------
                                    471 ;	 function display1
                                    472 ;	-----------------------------------------
      0000F1                        473 _display1:
                                    474 ;	traffic_lights.c:42: for(k=m;k>=0;k--)
      0000F1 E5 82            [12]  475 	mov	a,dpl
      0000F3 FF               [12]  476 	mov	r7,a
      0000F4 F5 16            [12]  477 	mov	_k,a
      0000F6 33               [12]  478 	rlc	a
      0000F7 95 E0            [12]  479 	subb	a,acc
      0000F9 F5 17            [12]  480 	mov	(_k + 1),a
      0000FB                        481 00106$:
      0000FB E5 17            [12]  482 	mov	a,(_k + 1)
      0000FD 20 E7 35         [24]  483 	jb	acc.7,00108$
                                    484 ;	traffic_lights.c:43: {P0_0=!P0_0;
      000100 B2 80            [12]  485 	cpl	_P0_0
                                    486 ;	traffic_lights.c:44: for(l=0;l<=42;l++)
      000102 E4               [12]  487 	clr	a
      000103 F5 18            [12]  488 	mov	_l,a
      000105 F5 19            [12]  489 	mov	(_l + 1),a
      000107                        490 00103$:
                                    491 ;	traffic_lights.c:45: {    delay1();
      000107 12 00 93         [24]  492 	lcall	_delay1
                                    493 ;	traffic_lights.c:46: P1=a[k];    }
      00010A E5 16            [12]  494 	mov	a,_k
      00010C 24 08            [12]  495 	add	a,#_a
      00010E F9               [12]  496 	mov	r1,a
      00010F 87 90            [24]  497 	mov	_P1,@r1
                                    498 ;	traffic_lights.c:44: for(l=0;l<=42;l++)
      000111 05 18            [12]  499 	inc	_l
      000113 E4               [12]  500 	clr	a
      000114 B5 18 02         [24]  501 	cjne	a,_l,00123$
      000117 05 19            [12]  502 	inc	(_l + 1)
      000119                        503 00123$:
      000119 C3               [12]  504 	clr	c
      00011A 74 2A            [12]  505 	mov	a,#0x2A
      00011C 95 18            [12]  506 	subb	a,_l
      00011E 74 80            [12]  507 	mov	a,#(0x00 ^ 0x80)
      000120 85 19 F0         [24]  508 	mov	b,(_l + 1)
      000123 63 F0 80         [24]  509 	xrl	b,#0x80
      000126 95 F0            [12]  510 	subb	a,b
      000128 50 DD            [24]  511 	jnc	00103$
                                    512 ;	traffic_lights.c:42: for(k=m;k>=0;k--)
      00012A 15 16            [12]  513 	dec	_k
      00012C 74 FF            [12]  514 	mov	a,#0xFF
      00012E B5 16 02         [24]  515 	cjne	a,_k,00125$
      000131 15 17            [12]  516 	dec	(_k + 1)
      000133                        517 00125$:
      000133 80 C6            [24]  518 	sjmp	00106$
      000135                        519 00108$:
      000135 22               [24]  520 	ret
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'green'
                                    523 ;------------------------------------------------------------
                                    524 ;sloc0                     Allocated with name '_green_sloc0_1_0'
                                    525 ;------------------------------------------------------------
                                    526 ;	traffic_lights.c:50: void green()
                                    527 ;	-----------------------------------------
                                    528 ;	 function green
                                    529 ;	-----------------------------------------
      000136                        530 _green:
                                    531 ;	traffic_lights.c:53: if(P0_2==0 & P0_3==1 & P0_4==1 & P0_5==1)
      000136 A2 82            [12]  532 	mov	c,_P0_2
      000138 B3               [12]  533 	cpl	c
      000139 E4               [12]  534 	clr	a
      00013A 33               [12]  535 	rlc	a
      00013B FF               [12]  536 	mov	r7,a
      00013C A2 83            [12]  537 	mov	c,_P0_3
      00013E E4               [12]  538 	clr	a
      00013F 33               [12]  539 	rlc	a
      000140 52 07            [12]  540 	anl	ar7,a
      000142 A2 84            [12]  541 	mov	c,_P0_4
      000144 E4               [12]  542 	clr	a
      000145 33               [12]  543 	rlc	a
      000146 52 07            [12]  544 	anl	ar7,a
      000148 A2 85            [12]  545 	mov	c,_P0_5
      00014A E4               [12]  546 	clr	a
      00014B 33               [12]  547 	rlc	a
      00014C FE               [12]  548 	mov	r6,a
      00014D 5F               [12]  549 	anl	a,r7
      00014E 60 0C            [24]  550 	jz	00102$
                                    551 ;	traffic_lights.c:55: P2=0x0E;
      000150 75 A0 0E         [24]  552 	mov	_P2,#0x0E
                                    553 ;	traffic_lights.c:56: P3=0x1F;
      000153 75 B0 1F         [24]  554 	mov	_P3,#0x1F
                                    555 ;	traffic_lights.c:57: display1(9);
      000156 75 82 09         [24]  556 	mov	dpl,#0x09
      000159 12 00 F1         [24]  557 	lcall	_display1
      00015C                        558 00102$:
                                    559 ;	traffic_lights.c:61: if(P0_2==1 & P0_3==0 & P0_4==1 & P0_5==1)
      00015C A2 83            [12]  560 	mov	c,_P0_3
      00015E B3               [12]  561 	cpl	c
      00015F E4               [12]  562 	clr	a
      000160 33               [12]  563 	rlc	a
      000161 FF               [12]  564 	mov	r7,a
      000162 A2 82            [12]  565 	mov	c,_P0_2
      000164 E4               [12]  566 	clr	a
      000165 33               [12]  567 	rlc	a
      000166 FE               [12]  568 	mov	r6,a
      000167 EF               [12]  569 	mov	a,r7
      000168 52 06            [12]  570 	anl	ar6,a
      00016A A2 84            [12]  571 	mov	c,_P0_4
      00016C E4               [12]  572 	clr	a
      00016D 33               [12]  573 	rlc	a
      00016E 52 06            [12]  574 	anl	ar6,a
      000170 A2 85            [12]  575 	mov	c,_P0_5
      000172 E4               [12]  576 	clr	a
      000173 33               [12]  577 	rlc	a
      000174 FF               [12]  578 	mov	r7,a
      000175 5E               [12]  579 	anl	a,r6
      000176 60 0C            [24]  580 	jz	00104$
                                    581 ;	traffic_lights.c:63: P2=0x0D;
      000178 75 A0 0D         [24]  582 	mov	_P2,#0x0D
                                    583 ;	traffic_lights.c:64: P3=0x2F;
      00017B 75 B0 2F         [24]  584 	mov	_P3,#0x2F
                                    585 ;	traffic_lights.c:65: display1(9);
      00017E 75 82 09         [24]  586 	mov	dpl,#0x09
      000181 12 00 F1         [24]  587 	lcall	_display1
      000184                        588 00104$:
                                    589 ;	traffic_lights.c:69: if(P0_2==1 & P0_3==1 & P0_4==0 & P0_5==1)
      000184 A2 82            [12]  590 	mov	c,_P0_2
      000186 82 83            [24]  591 	anl	c,_P0_3
      000188 E4               [12]  592 	clr	a
      000189 33               [12]  593 	rlc	a
      00018A F5 1C            [12]  594 	mov	_green_sloc0_1_0,a
      00018C A2 84            [12]  595 	mov	c,_P0_4
      00018E B3               [12]  596 	cpl	c
      00018F E4               [12]  597 	clr	a
      000190 33               [12]  598 	rlc	a
      000191 AE 1C            [24]  599 	mov	r6,_green_sloc0_1_0
      000193 52 06            [12]  600 	anl	ar6,a
      000195 A2 85            [12]  601 	mov	c,_P0_5
      000197 E4               [12]  602 	clr	a
      000198 33               [12]  603 	rlc	a
      000199 FF               [12]  604 	mov	r7,a
      00019A 5E               [12]  605 	anl	a,r6
      00019B 60 0C            [24]  606 	jz	00106$
                                    607 ;	traffic_lights.c:71: P2=0x0B;
      00019D 75 A0 0B         [24]  608 	mov	_P2,#0x0B
                                    609 ;	traffic_lights.c:72: P3=0x4F;
      0001A0 75 B0 4F         [24]  610 	mov	_P3,#0x4F
                                    611 ;	traffic_lights.c:73: display1(9);
      0001A3 75 82 09         [24]  612 	mov	dpl,#0x09
      0001A6 12 00 F1         [24]  613 	lcall	_display1
      0001A9                        614 00106$:
                                    615 ;	traffic_lights.c:77: if(P0_2==1 & P0_3==1 & P0_4==1 & P0_5==0)
      0001A9 A2 82            [12]  616 	mov	c,_P0_2
      0001AB 82 83            [24]  617 	anl	c,_P0_3
      0001AD 82 84            [24]  618 	anl	c,_P0_4
      0001AF E4               [12]  619 	clr	a
      0001B0 33               [12]  620 	rlc	a
      0001B1 F5 1C            [12]  621 	mov	_green_sloc0_1_0,a
      0001B3 A2 85            [12]  622 	mov	c,_P0_5
      0001B5 B3               [12]  623 	cpl	c
      0001B6 E4               [12]  624 	clr	a
      0001B7 33               [12]  625 	rlc	a
      0001B8 FF               [12]  626 	mov	r7,a
      0001B9 AE 1C            [24]  627 	mov	r6,_green_sloc0_1_0
      0001BB 5E               [12]  628 	anl	a,r6
      0001BC 60 0C            [24]  629 	jz	00109$
                                    630 ;	traffic_lights.c:79: P2=0x07;
      0001BE 75 A0 07         [24]  631 	mov	_P2,#0x07
                                    632 ;	traffic_lights.c:80: P3=0x8F;
      0001C1 75 B0 8F         [24]  633 	mov	_P3,#0x8F
                                    634 ;	traffic_lights.c:81: display1(9);
      0001C4 75 82 09         [24]  635 	mov	dpl,#0x09
      0001C7 02 00 F1         [24]  636 	ljmp	_display1
      0001CA                        637 00109$:
      0001CA 22               [24]  638 	ret
                                    639 ;------------------------------------------------------------
                                    640 ;Allocation info for local variables in function 'main'
                                    641 ;------------------------------------------------------------
                                    642 ;	traffic_lights.c:86: void main()
                                    643 ;	-----------------------------------------
                                    644 ;	 function main
                                    645 ;	-----------------------------------------
      0001CB                        646 _main:
                                    647 ;	traffic_lights.c:89: EX0=1;
      0001CB D2 A8            [12]  648 	setb	_EX0
                                    649 ;	traffic_lights.c:90: EA=1;
      0001CD D2 AF            [12]  650 	setb	_EA
                                    651 ;	traffic_lights.c:91: IT0=1;
      0001CF D2 88            [12]  652 	setb	_IT0
                                    653 ;	traffic_lights.c:93: while(1)
      0001D1                        654 00102$:
                                    655 ;	traffic_lights.c:95: b=P2=0x0E;
      0001D1 75 A0 0E         [24]  656 	mov	_P2,#0x0E
      0001D4 75 1A 0E         [24]  657 	mov	_b,#0x0E
                                    658 ;	traffic_lights.c:96: c=P3=0x1F;
      0001D7 75 B0 1F         [24]  659 	mov	_P3,#0x1F
      0001DA 75 1B 1F         [24]  660 	mov	_c,#0x1F
                                    661 ;	traffic_lights.c:97: display(0-7);
      0001DD 75 82 F9         [24]  662 	mov	dpl,#0xF9
      0001E0 12 00 A6         [24]  663 	lcall	_display
                                    664 ;	traffic_lights.c:100: b=P2=0x2D;
      0001E3 75 A0 2D         [24]  665 	mov	_P2,#0x2D
      0001E6 75 1A 2D         [24]  666 	mov	_b,#0x2D
                                    667 ;	traffic_lights.c:101: c=P3=0x0F;
      0001E9 75 B0 0F         [24]  668 	mov	_P3,#0x0F
      0001EC 75 1B 0F         [24]  669 	mov	_c,#0x0F
                                    670 ;	traffic_lights.c:102: display(2);
      0001EF 75 82 02         [24]  671 	mov	dpl,#0x02
      0001F2 12 00 A6         [24]  672 	lcall	_display
                                    673 ;	traffic_lights.c:105: b=P2=0x0D;
      0001F5 75 A0 0D         [24]  674 	mov	_P2,#0x0D
      0001F8 75 1A 0D         [24]  675 	mov	_b,#0x0D
                                    676 ;	traffic_lights.c:106: c=P3=0x2F;
      0001FB 75 B0 2F         [24]  677 	mov	_P3,#0x2F
      0001FE 75 1B 2F         [24]  678 	mov	_c,#0x2F
                                    679 ;	traffic_lights.c:107: display(9);
      000201 75 82 09         [24]  680 	mov	dpl,#0x09
      000204 12 00 A6         [24]  681 	lcall	_display
                                    682 ;	traffic_lights.c:110: b=P2=0x4B;
      000207 75 A0 4B         [24]  683 	mov	_P2,#0x4B
      00020A 75 1A 4B         [24]  684 	mov	_b,#0x4B
                                    685 ;	traffic_lights.c:111: c=P3=0x0F;
      00020D 75 B0 0F         [24]  686 	mov	_P3,#0x0F
      000210 75 1B 0F         [24]  687 	mov	_c,#0x0F
                                    688 ;	traffic_lights.c:112: display(2);
      000213 75 82 02         [24]  689 	mov	dpl,#0x02
      000216 12 00 A6         [24]  690 	lcall	_display
                                    691 ;	traffic_lights.c:115: b=P2=0x0B;
      000219 75 A0 0B         [24]  692 	mov	_P2,#0x0B
      00021C 75 1A 0B         [24]  693 	mov	_b,#0x0B
                                    694 ;	traffic_lights.c:116: c=P3=0x4F;
      00021F 75 B0 4F         [24]  695 	mov	_P3,#0x4F
      000222 75 1B 4F         [24]  696 	mov	_c,#0x4F
                                    697 ;	traffic_lights.c:117: display(9);
      000225 75 82 09         [24]  698 	mov	dpl,#0x09
      000228 12 00 A6         [24]  699 	lcall	_display
                                    700 ;	traffic_lights.c:120: b=P2=0x87;
      00022B 75 A0 87         [24]  701 	mov	_P2,#0x87
      00022E 75 1A 87         [24]  702 	mov	_b,#0x87
                                    703 ;	traffic_lights.c:121: c=P3=0x0F;
      000231 75 B0 0F         [24]  704 	mov	_P3,#0x0F
      000234 75 1B 0F         [24]  705 	mov	_c,#0x0F
                                    706 ;	traffic_lights.c:122: display(2);
      000237 75 82 02         [24]  707 	mov	dpl,#0x02
      00023A 12 00 A6         [24]  708 	lcall	_display
                                    709 ;	traffic_lights.c:125: b=P2=0x07;
      00023D 75 A0 07         [24]  710 	mov	_P2,#0x07
      000240 75 1A 07         [24]  711 	mov	_b,#0x07
                                    712 ;	traffic_lights.c:126: c=P3=0x8F;
      000243 75 B0 8F         [24]  713 	mov	_P3,#0x8F
      000246 75 1B 8F         [24]  714 	mov	_c,#0x8F
                                    715 ;	traffic_lights.c:127: display(9);
      000249 75 82 09         [24]  716 	mov	dpl,#0x09
      00024C 12 00 A6         [24]  717 	lcall	_display
                                    718 ;	traffic_lights.c:130: b=P2=0x1E;
      00024F 75 A0 1E         [24]  719 	mov	_P2,#0x1E
      000252 75 1A 1E         [24]  720 	mov	_b,#0x1E
                                    721 ;	traffic_lights.c:131: c=P3=0x0F;
      000255 75 B0 0F         [24]  722 	mov	_P3,#0x0F
      000258 75 1B 0F         [24]  723 	mov	_c,#0x0F
                                    724 ;	traffic_lights.c:132: display(2);
      00025B 75 82 02         [24]  725 	mov	dpl,#0x02
      00025E 12 00 A6         [24]  726 	lcall	_display
      000261 02 01 D1         [24]  727 	ljmp	00102$
                                    728 	.area CSEG    (CODE)
                                    729 	.area CONST   (CODE)
                                    730 	.area XINIT   (CODE)
                                    731 	.area CABS    (ABS,CODE)
