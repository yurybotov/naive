stm8


ports	segment byte at 5000 'ports'
gpioaodr	ds.b
gpioaidr	ds.b
gpioaddr	ds.b
gpioacr1	ds.b
gpioacr2	ds.b
gpiobodr	ds.b
gpiobidr	ds.b
gpiobddr	ds.b
gpiobcr1	ds.b
gpiobcr2	ds.b
gpiocodr	ds.b
gpiocidr	ds.b
gpiocddr	ds.b
gpioccr1	ds.b
gpioccr2	ds.b
gpiododr	ds.b
gpiodidr	ds.b
gpiodddr	ds.b
gpiodcr1	ds.b
gpiodcr2	ds.b
gpioeodr	ds.b
gpioeidr	ds.b
gpioeddr	ds.b
gpioecr1	ds.b
gpioecr2	ds.b
gpiofodr	ds.b
gpiofidr	ds.b
gpiofddr	ds.b
gpiofcr1	ds.b
gpiofcr2	ds.b
gpiogodr	ds.b
gpiogidr	ds.b
gpiogddr	ds.b
gpiogcr1	ds.b
gpiogcr2	ds.b
gpiohodr	ds.b
gpiohidr	ds.b
gpiohddr	ds.b
gpiohcr1	ds.b
gpiohcr2	ds.b
gpioiodr	ds.b
gpioiidr	ds.b
gpioiddr	ds.b
gpioicr1	ds.b
gpioicr2	ds.b
ports	segment byte at 505A 'ports'
flashcr1	ds.b
flashcr2	ds.b
flashncr2	ds.b
flashfpr	ds.b
flashnfpr	ds.b
flashiapsr	ds.b
ports	segment byte at 5062 'ports'
flashpukr	ds.b
ports	segment byte at 5064 'ports'
flashdukr	ds.b
ports	segment byte at 50A0 'ports'
itcexticr1	ds.b
itcexticr2	ds.b
ports	segment byte at 50B3 'ports'
rstsr	ds.b
ports	segment byte at 50C0 'ports'
clkickr	ds.b
clkeckr	ds.b
ports	segment byte at 50C3 'ports'
clkcmsr	ds.b
clkswr	ds.b
clkswcr	ds.b
clkckdivr	ds.b
clkpckenr1	ds.b
clkcssr	ds.b
clkccor	ds.b
clkpckenr2	ds.b
clkcanccr	ds.b
clkhsitrimr	ds.b
clkswimccr	ds.b
ports	segment byte at 50D1 'ports'
wwdgcr	ds.b
wwdgwr	ds.b
ports	segment byte at 50E0 'ports'
iwdgkr	ds.b
iwdgpr	ds.b
iwdgrlr	ds.b
ports	segment byte at 50F0 'ports'
awucsr1	ds.b
awuapr	ds.b
awutbr	ds.b
beepcsr	ds.b
ports	segment byte at 5200 'ports'
spicr1	ds.b
spicr2	ds.b
spiicr	ds.b
spisr	ds.b
spidr	ds.b
spicrcpr	ds.b
spirxcrcr	ds.b
spitxcrcr	ds.b
ports	segment byte at 5210 'ports'
i2ccr1	ds.b
i2ccr2	ds.b
i2cfreqr	ds.b
i2coarl	ds.b
i2coarh	ds.b
ports	segment byte at 5216 'ports'
i2cdr	ds.b
i2csr1	ds.b
i2csr2	ds.b
i2csr3	ds.b
i2citr	ds.b
i2cccrl	ds.b
i2cccrh	ds.b
i2ctriser	ds.b
ports	segment byte at 5230 'ports'
uart1sr	ds.b
uart1dr	ds.b
uart1brr1	ds.b
uart1brr2	ds.b
uart1cr1	ds.b
uart1cr2	ds.b
uart1cr3	ds.b
uart1cr4	ds.b
uart1cr5	ds.b
uart1gtr	ds.b
uart1pstr	ds.b
ports	segment byte at 5240 'ports'
uart3sr	ds.b
uart3dr	ds.b
uart3brr1	ds.b
uart3brr2	ds.b
uart3cr1	ds.b
uart3cr2	ds.b
uart3cr3	ds.b
uart3cr4	ds.b
ports	segment byte at 5249 'ports'
uart3cr6	ds.b
ports	segment byte at 5250 'ports'
tim1cr1	ds.b
tim1cr2	ds.b
tim1smcr	ds.b
tim1etr	ds.b
tim1ier	ds.b
tim1sr1	ds.b
tim1sr2	ds.b
tim1egr	ds.b
tim1ccmr1	ds.b
tim1ccmr2	ds.b
tim1ccmr3	ds.b
tim1ccmr4	ds.b
tim1ccer1	ds.b
tim1ccer2	ds.b
tim1cntrh	ds.b
tim1cntrl	ds.b
tim1pscrh	ds.b
tim1pscrl	ds.b
tim1arrh	ds.b
tim1arrl	ds.b
tim1rcr	ds.b
tim1ccr1h	ds.b
tim1ccr1l	ds.b
tim1ccr2h	ds.b
tim1ccr2l	ds.b
tim1ccr3h	ds.b
tim1ccr3l	ds.b
tim1ccr4h	ds.b
tim1ccr4l	ds.b
tim1bkr	ds.b
tim1dtr	ds.b
tim1oisr	ds.b
ports	segment byte at 5300 'ports'
tim2cr1	ds.b
tim2ier	ds.b
tim2sr1	ds.b
tim2sr2	ds.b
tim2egr	ds.b
tim2ccmr1	ds.b
tim2ccmr2	ds.b
tim2ccmr3	ds.b
tim2ccer1	ds.b
tim2ccer2	ds.b
tim2cntrh	ds.b
tim2cntrl	ds.b
tim2pscr	ds.b
tim2arrh	ds.b
tim2arrl	ds.b
tim2ccr1h	ds.b
tim2ccr1l	ds.b
tim2ccr2h	ds.b
tim2ccr2l	ds.b
tim2ccr3h	ds.b
tim2ccr3l	ds.b
ports	segment byte at 5320 'ports'
tim3cr1	ds.b
tim3ier	ds.b
tim3sr1	ds.b
tim3sr2	ds.b
tim3egr	ds.b
tim3ccmr1	ds.b
tim3ccmr2	ds.b
tim3ccer1	ds.b
tim3cntrh	ds.b
tim3cntrl	ds.b
tim3pscr	ds.b
tim3arrh	ds.b
tim3arrl	ds.b
tim3ccr1h	ds.b
tim3ccr1l	ds.b
tim3ccr2h	ds.b
tim3ccr2l	ds.b
ports	segment byte at 5340 'ports'
tim4cr1	ds.b
tim4ier	ds.b
tim4sr	ds.b
tim4egr	ds.b
tim4cntr	ds.b
tim4pscr	ds.b
tim4arr	ds.b
ports	segment byte at 5400 'ports'
adc2csr	ds.b
adc2cr1	ds.b
adc2cr2	ds.b
adc2cr3	ds.b
adc2drh	ds.b
adc2drl	ds.b
adc2tdrh	ds.b
adc2tdrl	ds.b
ports	segment byte at 5420 'ports'
canmcr	ds.b
canmsr	ds.b
cantsr	ds.b
cantpr	ds.b
canrfr	ds.b
canier	ds.b
candgr	ds.b
canfpsr	ds.b
canp0	ds.b
canp1	ds.b
canp2	ds.b
canp3	ds.b
canp4	ds.b
canp5	ds.b
canp6	ds.b
canp7	ds.b
canp8	ds.b
canp9	ds.b
canpa	ds.b
canpb	ds.b
canpc	ds.b
canpd	ds.b
canpe	ds.b
canpf	ds.b
ports	segment byte at 48CD 'ports'
unicidx	ds.w
unicidy	ds.w
unicidwafer	ds.b
unicidlot0	ds.b
unicidlot1	ds.b
unicidlot2	ds.b
unicidlot3	ds.b
unicidlot4	ds.b
unicidlot5	ds.b
unicidlot6	ds.b
ports	segment byte at 4800 'ports'
optionopt0	ds.b
optionopt1	ds.b
optionnopt1	ds.b
optionopt2	ds.b
optionnopt2	ds.b
optionopt3	ds.b
optionnopt3	ds.b
optionopt4	ds.b
optionnopt4	ds.b
optionopt5	ds.b
optionnopt5	ds.b
optionopt6	ds.b
optionnopt6	ds.b
optionopt7	ds.b
optionnopt7	ds.b
ports	segment byte at 487E 'ports'
bootloaderoptbl	ds.b
bootloadernoptbl	ds.b
ports	segment byte at 7F00 'ports'
cpua	ds.b
cpupce	ds.b
cpupch	ds.b
cpupcl	ds.b
cpuxh	ds.b
cpuxl	ds.b
cpuyh	ds.b
cpuyl	ds.b
cpusph	ds.b
cpuspl	ds.b
cpuccr	ds.b
ports	segment byte at 7F60 'ports'
cpugcr	ds.b
ports	segment byte at 7F70 'ports'
itcspr1	ds.b
itcspr2	ds.b
itcspr3	ds.b
itcspr4	ds.b
itcspr5	ds.b
itcspr6	ds.b
itcspr7	ds.b
itcspr8	ds.b
ports	segment byte at 7F80 'ports'
swimcsr	ds.b
ports	segment byte at 7F90 'ports'
dmbk1re	ds.b
dmbk1rh	ds.b
dmbk1rl	ds.b
dmbk2re	ds.b
dmbk2rh	ds.b
dmbk2rl	ds.b
dmcr1	ds.b
dmcr2	ds.b
dmcsr1	ds.b
dmcsr2	ds.b
dmenfctr	ds.b
flash	segment byte at 8000-9FFF 'rom'
interruptreset	dc.l {$82000000+start}
interrupttrap	dc.l {$82000000+sweet16}
interrupttli	dc.l {$82000000+dumb}
interruptawu	dc.l {$82000000+dumb}
interruptclk	dc.l {$82000000+dumb}
interruptexti0	dc.l {$82000000+dumb}
interruptexti1	dc.l {$82000000+dumb}
interruptexti2	dc.l {$82000000+dumb}
interruptexti3	dc.l {$82000000+dumb}
interruptexti4	dc.l {$82000000+dumb}
interruptcanrx	dc.l {$82000000+dumb}
interruptcantx	dc.l {$82000000+dumb}
interruptspi	dc.l {$82000000+dumb}
interrupttim1u	dc.l {$82000000+dumb}
interrupttim1c	dc.l {$82000000+dumb}
interrupttim2u	dc.l {$82000000+dumb}
interrupttim2c	dc.l {$82000000+dumb}
interrupttim3u	dc.l {$82000000+dumb}
interrupttim3c	dc.l {$82000000+dumb}
interruptuart1tx	dc.l {$82000000+dumb}
interruptuart1rx	dc.l {$82000000+dumb}
interrupti2c	dc.l {$82000000+dumb}
interruptuart3tx	dc.l {$82000000+dumb}
interruptuart3rx	dc.l {$82000000+dumb}
interruptadc1	dc.l {$82000000+dumb}
interrupttim4u	dc.l {$82000000+dumb}
interruptflash	dc.l {$82000000+dumb}
dumb
	iret		; iret in sweet16.stm8s._ : 45
regs	segment byte at 0-FF 'ram0'
r0	ds.w
r1	ds.w
r2	ds.w
r3	ds.w
r4	ds.w
r5	ds.w
r6	ds.w
r7	ds.w
r8	ds.w
r9	ds.w
ra	ds.w
rb	ds.w
rc	ds.w
rd	ds.w
re	ds.w
rf	ds.w
sw_stack	ds.b 15
sw_tos	ds.b
flash	segment byte 'rom'
lcmds	dc.w sw_rtn
	dc.w sw_br
	dc.w sw_bnc
	dc.w sw_bc
	dc.w sw_bp
	dc.w sw_bm
	dc.w sw_bz
	dc.w sw_bnz
	dc.w sw_bm1
	dc.w sw_bnm1
	dc.w sw_bk
	dc.w sw_rs
	dc.w sw_bs
	dc.w sw_err
	dc.w sw_err
	dc.w sw_err
scmds	dc.w sw_set
	dc.w sw_ldr
	dc.w sw_str
	dc.w sw_ldi
	dc.w sw_sti
	dc.w sw_ldd
	dc.w sw_std
	dc.w sw_pop
	dc.w sw_stp
	dc.w sw_add
	dc.w sw_sub
	dc.w sw_popd
	dc.w sw_cpr
	dc.w sw_inr
	dc.w sw_dcr
	dc.w sw_err
sw_rtn
	ldw x,rf		; x=rf in sweet16.stm8s._ : 64
	incw x		; x++ in sweet16.stm8s._ : 64
	ldw (8,sp),x		; sp[8]=x in sweet16.stm8s._ : 64
	iret		; iret in sweet16.stm8s._ : 64
sw_br
	callr next1x		; callnearnext1x in sweet16.stm8s._ : 65
	addw y,rf		; y+=rf in sweet16.stm8s._ : 65
	ldw rf,y		; rf=y in sweet16.stm8s._ : 65
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 65
sw_bnc
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 66
sw_bc
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 67
sw_bp
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 68
sw_bm
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 69
sw_bz
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 70
sw_bnz
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 71
sw_bm1
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 72
sw_bnm1
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 73
sw_bk
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 74
sw_rs
	inc rc		; rc++ in sweet16.stm8s._ : 75
	inc rc		; rc++ in sweet16.stm8s._ : 75
	ldw x,[rc.w]		; x=[rc] in sweet16.stm8s._ : 75
	ldw rf,x		; rf=x in sweet16.stm8s._ : 75
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 75
sw_bs
	callr next1x		; callnearnext1x in sweet16.stm8s._ : 76
	ldw x,rf		; x=rf in sweet16.stm8s._ : 76
	ldw [rc.w],x		; [rc]=x in sweet16.stm8s._ : 76
	dec rc		; rc-- in sweet16.stm8s._ : 76
	dec rc		; rc-- in sweet16.stm8s._ : 76
	addw y,rf		; y+=rf in sweet16.stm8s._ : 76
	ldw rf,y		; rf=y in sweet16.stm8s._ : 76
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 76
sw_err
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 77
sweetnext
	ldw x,rf		; x=rf in sweet16.stm8s._ : 79
	incw x		; x++ in sweet16.stm8s._ : 79
	ld a,(x)		; a=[x] in sweet16.stm8s._ : 79
	bcp a,#$f0		; a&?#0xf0 in sweet16.stm8s._ : 79
	jrne shortcmd		; ifz==0shortcmd in sweet16.stm8s._ : 80
	push a		; pusha in sweet16.stm8s._ : 81
	swap a		; swapa in sweet16.stm8s._ : 81
	clrw x		; x=#0 in sweet16.stm8s._ : 81
	and a,#$0f		; a&=#0x0f in sweet16.stm8s._ : 81
	ld xl,a		; xl=a in sweet16.stm8s._ : 81
	pop a		; popa in sweet16.stm8s._ : 81
	jp (lcmds,x)		; golcmds[x] in sweet16.stm8s._ : 81
shortcmd
	clrw x		; x=#0 in sweet16.stm8s._ : 82
	and a,$0f		; a&=0x0f in sweet16.stm8s._ : 82
	ld xl,a		; xl=a in sweet16.stm8s._ : 82
	jp (scmds,x)		; goscmds[x] in sweet16.stm8s._ : 82
next2x
	ldw x,rf		; x=rf in sweet16.stm8s._ : 83
	incw x		; x++ in sweet16.stm8s._ : 83
	incw x		; x++ in sweet16.stm8s._ : 83
	incw x		; x++ in sweet16.stm8s._ : 83
	ldw rf,x		; rf=x in sweet16.stm8s._ : 83
	decw x		; x-- in sweet16.stm8s._ : 83
	decw x		; x-- in sweet16.stm8s._ : 83
	ldw x,(x)		; x=[x] in sweet16.stm8s._ : 83
	and a,#$0f		; a&=#0x0f in sweet16.stm8s._ : 83
	clrw y		; y=#0 in sweet16.stm8s._ : 83
	ld yl,a		; yl=a in sweet16.stm8s._ : 83
	sllw y		; c<<0y in sweet16.stm8s._ : 83
	ret		; ret in sweet16.stm8s._ : 83
next1x
	ldw x,rf		; x=rf in sweet16.stm8s._ : 84
	incw x		; x++ in sweet16.stm8s._ : 84
	incw x		; x++ in sweet16.stm8s._ : 84
	ldw rf,x		; rf=x in sweet16.stm8s._ : 84
	decw x		; x-- in sweet16.stm8s._ : 84
	ld a,(x)		; a=[x] in sweet16.stm8s._ : 84
	clrw y		; y=#0 in sweet16.stm8s._ : 84
	ld yl,a		; yl=a in sweet16.stm8s._ : 84
	ret		; ret in sweet16.stm8s._ : 84
cur1x
	and a,#$0f		; a&=#0x0f in sweet16.stm8s._ : 85
	clrw y		; y=#0 in sweet16.stm8s._ : 85
	ld yl,a		; yl=a in sweet16.stm8s._ : 85
	sllw y		; c<<0y in sweet16.stm8s._ : 85
	ret		; ret in sweet16.stm8s._ : 85
sw_set
	callr next2x		; callnearnext2x in sweet16.stm8s._ : 87
	ldw (r0,y),x		; r0[y]=x in sweet16.stm8s._ : 87
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 87
sw_ldr
	callr cur1x		; callnearcur1x in sweet16.stm8s._ : 88
	ldw y,(r0,y)		; y=r0[y] in sweet16.stm8s._ : 88
	ldw r0,y		; r0=y in sweet16.stm8s._ : 88
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 88
sw_str
	callr cur1x		; callnearcur1x in sweet16.stm8s._ : 89
	ldw x,r0		; x=r0 in sweet16.stm8s._ : 89
	ldw (r0,y),x		; r0[y]=x in sweet16.stm8s._ : 89
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 89
sw_ldi
	callr cur1x		; callnearcur1x in sweet16.stm8s._ : 90
	ld a,([r0.w],y)		; a=[r0[y]] in sweet16.stm8s._ : 90
	clrw x		; x=#0 in sweet16.stm8s._ : 90
	ld xl,a		; xl=a in sweet16.stm8s._ : 90
	ldw r0,x		; r0=x in sweet16.stm8s._ : 90
	inc (r0,y)		; r0[y]++ in sweet16.stm8s._ : 90
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 90
sw_sti
	callr cur1x		; callnearcur1x in sweet16.stm8s._ : 91
	ldw x,r0		; x=r0 in sweet16.stm8s._ : 91
	ld a,xl		; a=xl in sweet16.stm8s._ : 91
	ld ([r0.w],y),a		; [r0[y]]=a in sweet16.stm8s._ : 91
	inc (r0,y)		; r0[y]++ in sweet16.stm8s._ : 91
	jra sweetnext		; gonearsweetnext in sweet16.stm8s._ : 91
sw_ldd
	call cur1x		; callcur1x in sweet16.stm8s._ : 92
	ldw y,([r0.w],y)		; y=[r0[y]] in sweet16.stm8s._ : 92
	ldw r0,y		; r0=y in sweet16.stm8s._ : 92
	inc (r0,y)		; r0[y]++ in sweet16.stm8s._ : 92
	inc (r0,y)		; r0[y]++ in sweet16.stm8s._ : 92
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 92
sw_std
	call cur1x		; callcur1x in sweet16.stm8s._ : 93
	ldw x,r0		; x=r0 in sweet16.stm8s._ : 93
	ldw ([r0.w],y),x		; [r0[y]]=x in sweet16.stm8s._ : 93
	inc (Or0,y)		; Or0[y]++ in sweet16.stm8s._ : 93
	inc (r0,y)		; r0[y]++ in sweet16.stm8s._ : 93
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 93
sw_pop
	call cur1x		; callcur1x in sweet16.stm8s._ : 94
	ld a,([r0.w],y)		; a=[r0[y]] in sweet16.stm8s._ : 94
	clrw x		; x=#0 in sweet16.stm8s._ : 94
	ld xl,a		; xl=a in sweet16.stm8s._ : 94
	ldw r0,x		; r0=x in sweet16.stm8s._ : 94
	dec (r0,y)		; r0[y]-- in sweet16.stm8s._ : 94
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 94
sw_stp
	call cur1x		; callcur1x in sweet16.stm8s._ : 95
	ldw x,r0		; x=r0 in sweet16.stm8s._ : 95
	ld a,xl		; a=xl in sweet16.stm8s._ : 95
	ld ([r0.w],y),a		; [r0[y]]=a in sweet16.stm8s._ : 95
	dec (r0,y)		; r0[y]-- in sweet16.stm8s._ : 95
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 95
sw_add
	call cur1x		; callcur1x in sweet16.stm8s._ : 96
	ldw y,(r0,y)		; y=r0[y] in sweet16.stm8s._ : 96
	addw y,r0		; y+=r0 in sweet16.stm8s._ : 96
	ldw r0,y		; r0=y in sweet16.stm8s._ : 96
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 96
sw_sub
	call cur1x		; callcur1x in sweet16.stm8s._ : 97
	ldw y,(r0,y)		; y=r0[y] in sweet16.stm8s._ : 97
	subw y,r0		; y-=r0 in sweet16.stm8s._ : 97
	negw y		; -y in sweet16.stm8s._ : 97
	ldw r0,y		; r0=y in sweet16.stm8s._ : 97
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 97
sw_popd
	call cur1x		; callcur1x in sweet16.stm8s._ : 98
	dec (r0,y)		; r0[y]-- in sweet16.stm8s._ : 98
	dec (r0,y)		; r0[y]-- in sweet16.stm8s._ : 98
	ldw x,r0		; x=r0 in sweet16.stm8s._ : 98
	ldw ([r0.w],y),x		; [r0[y]]=x in sweet16.stm8s._ : 98
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 98
sw_cpr
	call cur1x		; callcur1x in sweet16.stm8s._ : 99
	ldw y,(r0,y)		; y=r0[y] in sweet16.stm8s._ : 99
	cpw y,r0		; y?r0 in sweet16.stm8s._ : 99
	push cc		; pushcc in sweet16.stm8s._ : 99
	pop a		; popa in sweet16.stm8s._ : 99
	clrw x		; x=#0 in sweet16.stm8s._ : 99
	ld xl,a		; xl=a in sweet16.stm8s._ : 99
	ldw re,x		; re=x in sweet16.stm8s._ : 99
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 99
sw_inr
	call cur1x		; callcur1x in sweet16.stm8s._ : 100
	inc (r0,y)		; r0[y]++ in sweet16.stm8s._ : 100
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 100
sw_dcr
	call cur1x		; callcur1x in sweet16.stm8s._ : 101
	dec (r0,y)		; r0[y]-- in sweet16.stm8s._ : 101
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 101
sweet16
	ldw x,(8,sp)		; x=sp[8] in sweet16.stm8s._ : 104
	ldw rf,x		; rf=x in sweet16.stm8s._ : 104
	ldw x,#sw_stack		; x=#sw_stack in sweet16.stm8s._ : 105
	ldw rc,x		; rc=x in sweet16.stm8s._ : 105
	jp sweetnext		; gosweetnext in sweet16.stm8s._ : 106
start
	ldw x,#$03ff		; x=#0x03ff in sweet16.stm8s._ : 109
	ldw sp,x		; sp=x in sweet16.stm8s._ : 109
	trap		; trap in sweet16.stm8s._ : 111
	dc.b $10,$55,$aa
	dc.b $00
loop
	nop		; nop in sweet16.stm8s._ : 115
	jp loop		; goloop in sweet16.stm8s._ : 119

	end

