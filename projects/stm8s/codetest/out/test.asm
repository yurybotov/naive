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
interrupttrap	dc.l {$82000000+dumb}
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
interrupttim1u	dc.l {$82000000+tmr1handler}
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
	iret		; iret in test.stm8s._ : 37
start
	ldw x,#$03ff		; x=#0x03ff in test.stm8s._ : 40
	ldw sp,x		; sp=x in test.stm8s._ : 40
	clr counter		; counter=#0 in test.stm8s._ : 42
	rim		; i=#0 in test.stm8s._ : 44
	sim		; i=#1 in test.stm8s._ : 44
	rcf		; c=#0 in test.stm8s._ : 44
	scf		; c=#1 in test.stm8s._ : 44
	rvf		; v=#0 in test.stm8s._ : 44
	clr a		; a=#0 in test.stm8s._ : 45
	ld a,#1		; a=#1 in test.stm8s._ : 45
	ld a,data8near		; a=data8near in test.stm8s._ : 46
	ld a,(x)		; a=[x] in test.stm8s._ : 46
	ld a,(y)		; a=[y] in test.stm8s._ : 46
	ld a,(ptr16,x)		; a=ptr16[x] in test.stm8s._ : 46
	ld a,(ptr16,y)		; a=ptr16[y] in test.stm8s._ : 46
	ld a,[ptr16.w]		; a=[ptr16] in test.stm8s._ : 47
	ldf a,[ptr32.e]		; a={ptr32} in test.stm8s._ : 47
	ld a,([ptr16.w],x)		; a=[ptr16[x]] in test.stm8s._ : 47
	ldf a,([ptr32.e],x)		; a={ptr32[x]} in test.stm8s._ : 47
	ldf a,([ptr32.e],y)		; a={ptr32[y]} in test.stm8s._ : 47
	ld data8near,a		; data8near=a in test.stm8s._ : 48
	ld (x),a		; [x]=a in test.stm8s._ : 48
	ld (y),a		; [y]=a in test.stm8s._ : 48
	ld (ptr16,x),a		; ptr16[x]=a in test.stm8s._ : 48
	ld (ptr16,y),a		; ptr16[y]=a in test.stm8s._ : 48
	ld [ptr16.w],a		; [ptr16]=a in test.stm8s._ : 49
	ldf [ptr32.e],a		; {ptr32}=a in test.stm8s._ : 49
	ld ([ptr16.w],x),a		; [ptr16[x]]=a in test.stm8s._ : 49
	ldf ([ptr32.e],x),a		; {ptr32[x]}=a in test.stm8s._ : 49
	mov data8near,#99		; data8near=#99 in test.stm8s._ : 50
	mov data8,data8flash		; data8=data8flash in test.stm8s._ : 50
	clrw x		; x=#0 in test.stm8s._ : 51
	ld x,#1		; x=#1 in test.stm8s._ : 51
	clrw y		; y=#0 in test.stm8s._ : 51
	ld y,#1		; y=#1 in test.stm8s._ : 51
	ldw x,y		; x=y in test.stm8s._ : 52
	ldw y,x		; y=x in test.stm8s._ : 52
	ldw x,sp		; x=sp in test.stm8s._ : 52
	ldw y,sp		; y=sp in test.stm8s._ : 52
	ldw sp,x		; sp=x in test.stm8s._ : 52
	ldw sp,y		; sp=y in test.stm8s._ : 52
	ldw x,data16near		; x=data16near in test.stm8s._ : 53
	ldw x,(x)		; x=[x] in test.stm8s._ : 53
	ldw x,(ptr16,x)		; x=ptr16[x] in test.stm8s._ : 53
	ldw x,[ptr16.w]		; x=[ptr16.w] in test.stm8s._ : 53
	ldw x,([ptr16.w],x)		; x=[ptr16[x]] in test.stm8s._ : 53
	ldw y,data16near		; y=data16near in test.stm8s._ : 54
	ldw y,(y)		; y=[y] in test.stm8s._ : 54
	ldw y,(ptr16,y)		; y=ptr16[y] in test.stm8s._ : 54
	ldw data16near,x		; data16near=x in test.stm8s._ : 55
	ldw data16near,x		; data16near=x in test.stm8s._ : 55
	ldw (y),x		; [y]=x in test.stm8s._ : 55
	ldw (y),x		; [y]=x in test.stm8s._ : 55
	ldw (ptr16,y),x		; ptr16[y]=x in test.stm8s._ : 55
	ldw (ptr16,y),x		; ptr16[y]=x in test.stm8s._ : 55
	ldw [ptr16.w],x		; [ptr16.w]=x in test.stm8s._ : 55
	ldw [ptr16.w],x		; [ptr16.w]=x in test.stm8s._ : 55
	ldw data16near,y		; data16near=y in test.stm8s._ : 56
	ldw data16near,y		; data16near=y in test.stm8s._ : 56
	ldw (x),y		; [x]=y in test.stm8s._ : 56
	ldw (x),y		; [x]=y in test.stm8s._ : 56
	ldw (ptr16,x),y		; ptr16[x]=y in test.stm8s._ : 56
	ldw (ptr16,x),y		; ptr16[x]=y in test.stm8s._ : 56
	ldw ([ptr16.w],x),y		; [ptr16[x]]=y in test.stm8s._ : 56
	ldw ([ptr16.w],x),y		; [ptr16[x]]=y in test.stm8s._ : 56
	ld a,xl		; a=xl in test.stm8s._ : 57
	ld a,xh		; a=xh in test.stm8s._ : 57
	ld a,yl		; a=yl in test.stm8s._ : 57
	ld a,yh		; a=yh in test.stm8s._ : 57
	ld xl,a		; xl=a in test.stm8s._ : 57
	ld yl,a		; yl=a in test.stm8s._ : 57
	ld yh,a		; yh=a in test.stm8s._ : 57
	ld xh,a		; xh=a in test.stm8s._ : 57
	clr data8near		; data8near=#0 in test.stm8s._ : 58
	mov data8,#1		; data8=#1 in test.stm8s._ : 58
	bres data8near,#5		; data8near#5=#0 in test.stm8s._ : 58
	bset data8near,#6		; data8near#6=#1 in test.stm8s._ : 58
	add a,#1		; a+=#1 in test.stm8s._ : 60
	add a,data8near		; a+=data8near in test.stm8s._ : 60
	add a,(x)		; a+=[x] in test.stm8s._ : 60
	add a,(y)		; a+=[y] in test.stm8s._ : 60
	add a,(ptr16,x)		; a+=ptr16[x] in test.stm8s._ : 60
	add a,(ptr16,y)		; a+=ptr16[y] in test.stm8s._ : 60
	add a,[ptr16.w]		; a+=[ptr16] in test.stm8s._ : 60
	add a,([ptr16.w],x)		; a+=[ptr16[x]] in test.stm8s._ : 60
	sub a,#1		; a-=#1 in test.stm8s._ : 61
	sub a,data8near		; a-=data8near in test.stm8s._ : 61
	sub a,(x)		; a-=[x] in test.stm8s._ : 61
	sub a,(y)		; a-=[y] in test.stm8s._ : 61
	sub a,(ptr16,x)		; a-=ptr16[x] in test.stm8s._ : 61
	sub a,(ptr16,y)		; a-=ptr16[y] in test.stm8s._ : 61
	sub a,[ptr16.w]		; a-=[ptr16] in test.stm8s._ : 61
	sub a,([ptr16.w],x)		; a-=[ptr16[x]] in test.stm8s._ : 61
	adc a,#1		; a+=c+#1 in test.stm8s._ : 62
	adc a,data8near		; a+=c+data8near in test.stm8s._ : 62
	adc a,(x)		; a+=c+[x] in test.stm8s._ : 62
	adc a,(y)		; a+=c+[y] in test.stm8s._ : 62
	adc a,(ptr16,x)		; a+=c+ptr16[x] in test.stm8s._ : 62
	adc a,(ptr16,y)		; a+=c+ptr16[y] in test.stm8s._ : 62
	adc a,[ptr16.w]		; a+=c+[ptr16] in test.stm8s._ : 62
	adc a,([ptr16.w],x)		; a+=c+[ptr16[x]] in test.stm8s._ : 62
	adc a,#1		; a-=c+#1 in test.stm8s._ : 63
	adc a,data8near		; a-=c+data8near in test.stm8s._ : 63
	adc a,(x)		; a-=c+[x] in test.stm8s._ : 63
	adc a,(y)		; a-=c+[y] in test.stm8s._ : 63
	adc a,(ptr16,x)		; a-=c+ptr16[x] in test.stm8s._ : 63
	adc a,(ptr16,y)		; a-=c+ptr16[y] in test.stm8s._ : 63
	adc a,[ptr16.w]		; a-=c+[ptr16] in test.stm8s._ : 63
	adc a,([ptr16.w],x)		; a-=c+[ptr16[x]] in test.stm8s._ : 63
	divw x,y		; x/%y in test.stm8s._ : 64
	div x,a 		; x/=a in test.stm8s._ : 64
	div y,a 		; y/=a in test.stm8s._ : 64
	mul x,a 		; x*=a in test.stm8s._ : 64
	mul y,a 		; y*=a in test.stm8s._ : 64
	and a,#1		; a&=#1 in test.stm8s._ : 65
	and a,data8near		; a&=data8near in test.stm8s._ : 65
	and a,(x)		; a&=[x] in test.stm8s._ : 65
	and a,(y)		; a&=[y] in test.stm8s._ : 65
	and a,(ptr16,x)		; a&=ptr16[x] in test.stm8s._ : 65
	and a,(ptr16,y)		; a&=ptr16[y] in test.stm8s._ : 65
	and a,[ptr16.w]		; a&=[ptr16] in test.stm8s._ : 65
	and a,([ptr16.w],x)		; a&=[ptr16[x]] in test.stm8s._ : 65
	or a,#1		; a|=#1 in test.stm8s._ : 66
	or a,data8near		; a|=data8near in test.stm8s._ : 66
	or a,(x)		; a|=[x] in test.stm8s._ : 66
	or a,(y)		; a|=[y] in test.stm8s._ : 66
	or a,(ptr16,x)		; a|=ptr16[x] in test.stm8s._ : 66
	or a,(ptr16,y)		; a|=ptr16[y] in test.stm8s._ : 66
	or a,[ptr16.w]		; a|=[ptr16] in test.stm8s._ : 66
	or a,([ptr16.w],x)		; a|=[ptr16[x]] in test.stm8s._ : 66
	bcp a,#1		; a&?#1 in test.stm8s._ : 67
	bcp a,data8near		; a&?data8near in test.stm8s._ : 67
	bcp a,(x)		; a&?[x] in test.stm8s._ : 67
	bcp a,(y)		; a&?[y] in test.stm8s._ : 67
	bcp a,(ptr16,x)		; a&?ptr16[x] in test.stm8s._ : 67
	bcp a,(ptr16,y)		; a&?ptr16[y] in test.stm8s._ : 67
	bcp a,[ptr16.w]		; a&?[ptr16] in test.stm8s._ : 67
	bcp a,([ptr16.w],x)		; a&?[ptr16[x]] in test.stm8s._ : 67
	cp a,#1		; a?#1 in test.stm8s._ : 68
	cp a,data8near		; a?data8near in test.stm8s._ : 68
	cp a,(x)		; a?[x] in test.stm8s._ : 68
	cp a,(y)		; a?[y] in test.stm8s._ : 68
	cp a,(ptr16,x)		; a?ptr16[x] in test.stm8s._ : 68
	cp a,(ptr16,y)		; a?ptr16[y] in test.stm8s._ : 68
	cp a,[ptr16.w]		; a?[ptr16] in test.stm8s._ : 68
	cp a,([ptr16.w],x)		; a?[ptr16[x]] in test.stm8s._ : 68
	tnz a		; ?a in test.stm8s._ : 69
	tnz data8near		; ?data8near in test.stm8s._ : 69
	tnz (x)		; ?[x] in test.stm8s._ : 69
	tnz (y)		; ?[y] in test.stm8s._ : 69
	tnz (ptr16,x)		; ?ptr16[x] in test.stm8s._ : 69
	tnz (ptr16,y)		; ?ptr16[y] in test.stm8s._ : 69
	tnz [ptr16.w]		; ?[ptr16] in test.stm8s._ : 69
	tnz ([ptr16.w],x)		; ?[ptr16[x]] in test.stm8s._ : 69
	ccf		; !c in test.stm8s._ : 71
	bcpl data8near,#5		; !data8near#5 in test.stm8s._ : 71
	cpl a		; !a in test.stm8s._ : 71
	cplw x		; !x in test.stm8s._ : 71
	cplw y		; !y in test.stm8s._ : 71
	cpl data8near		; !data8near in test.stm8s._ : 71
	cpl (x)		; ![x] in test.stm8s._ : 71
	cpl (y)		; ![y] in test.stm8s._ : 71
	cpl (ptr16,x)		; !ptr16[x] in test.stm8s._ : 71
	cpl (ptr16,y)		; !ptr16[y] in test.stm8s._ : 71
	cpl [ptr16.w]		; ![ptr16] in test.stm8s._ : 71
	cpl ([ptr16.w],x)		; ![ptr16[x]] in test.stm8s._ : 71
	swap a		; swapa in test.stm8s._ : 73
	swapw x		; swapx in test.stm8s._ : 73
	swapw y		; swapy in test.stm8s._ : 73
	swap data8near		; swapdata8near in test.stm8s._ : 73
	swap (x)		; swap[x] in test.stm8s._ : 73
	swap (y)		; swap[y] in test.stm8s._ : 73
	swap (ptr16,x)		; swapptr16[x] in test.stm8s._ : 73
	swap (ptr16,y)		; swapptr16[y] in test.stm8s._ : 73
	swap [ptr16.w]		; swap[ptr16] in test.stm8s._ : 73
	swap ([ptr16.w],x)		; swap[ptr16[x]] in test.stm8s._ : 73
	push a		; pusha in test.stm8s._ : 75
	push #1		; push#1 in test.stm8s._ : 75
	push cc		; pushcc in test.stm8s._ : 75
	push data8		; pushdata8 in test.stm8s._ : 75
	pop a		; popa in test.stm8s._ : 75
	pop cc		; popcc in test.stm8s._ : 75
	pop data8near		; popdata8near in test.stm8s._ : 75
	inc a		; ++a in test.stm8s._ : 77
	incw x		; ++x in test.stm8s._ : 77
	incw y		; y++ in test.stm8s._ : 77
	inc data8		; ++data8 in test.stm8s._ : 77
	inc (x)		; [x]++ in test.stm8s._ : 77
	inc (y)		; ++[y] in test.stm8s._ : 77
	inc (ptr16,x)		; ptr16[x]++ in test.stm8s._ : 77
	inc (ptr16,y)		; ptr16[y]++ in test.stm8s._ : 77
	inc [ptr16.w]		; [ptr16]++ in test.stm8s._ : 77
	inc ([ptr16.w],x)		; ++[ptr16[x]] in test.stm8s._ : 77
	dec a		; --a in test.stm8s._ : 78
	decw x		; --x in test.stm8s._ : 78
	decw y		; y-- in test.stm8s._ : 78
	dec data8near		; --data8near in test.stm8s._ : 78
	dec (x)		; [x]-- in test.stm8s._ : 78
	dec (y)		; --[y] in test.stm8s._ : 78
	dec (ptr16,x)		; ptr16[x]-- in test.stm8s._ : 78
	dec (ptr16,y)		; ptr16[y]-- in test.stm8s._ : 78
	dec [ptr16.w]		; [ptr16]-- in test.stm8s._ : 78
	dec ([ptr16.w],x)		; --[ptr16[x]] in test.stm8s._ : 78
	neg a		; -a in test.stm8s._ : 79
	negw x		; -x in test.stm8s._ : 79
	negw y		; -y in test.stm8s._ : 79
	neg data8near		; -data8near in test.stm8s._ : 79
	neg (x)		; -[x] in test.stm8s._ : 79
	neg (y)		; -[y] in test.stm8s._ : 79
	neg (ptr16,x)		; -ptr16[x] in test.stm8s._ : 79
	neg (ptr16,y)		; -ptr16[y] in test.stm8s._ : 79
	neg [ptr16.w]		; -[ptr16] in test.stm8s._ : 79
	neg ([ptr16.w],x)		; -[ptr16[x]] in test.stm8s._ : 79
	rlc a		; c<<ca in test.stm8s._ : 81
	rlcw x		; c<<cx in test.stm8s._ : 81
	rlcw y		; c<<cy in test.stm8s._ : 81
	rlc data8near		; c<<cdata8near in test.stm8s._ : 81
	rlc (x)		; c<<c[x] in test.stm8s._ : 81
	rlc (y)		; c<<c[y] in test.stm8s._ : 81
	rlc (ptr16,x)		; c<<cptr16[x] in test.stm8s._ : 81
	rlc (ptr16,y)		; c<<cptr16[y] in test.stm8s._ : 81
	rlc [ptr16.w]		; c<<c[ptr16] in test.stm8s._ : 81
	rlc ([ptr16.w],x)		; c<<c[ptr16[x]] in test.stm8s._ : 81
	rrc a		; c>>ca in test.stm8s._ : 82
	rrcw x		; c>>cx in test.stm8s._ : 82
	rrcw y		; c>>cy in test.stm8s._ : 82
	rrc data8near		; c>>cdata8near in test.stm8s._ : 82
	rrc (x)		; c>>c[x] in test.stm8s._ : 82
	rrc (y)		; c>>c[y] in test.stm8s._ : 82
	rrc (ptr16,x)		; c>>cptr16[x] in test.stm8s._ : 82
	rrc (ptr16,y)		; c>>cptr16[y] in test.stm8s._ : 82
	rrc [ptr16.w]		; c>>c[ptr16] in test.stm8s._ : 82
	rrc ([ptr16.w],x)		; c>>c[ptr16[x]] in test.stm8s._ : 82
	sll a		; c<<0a in test.stm8s._ : 83
	sllw x		; c<<0x in test.stm8s._ : 83
	sllw y		; c<<0y in test.stm8s._ : 83
	sll data8near		; c<<0data8near in test.stm8s._ : 83
	sll (x)		; c<<0[x] in test.stm8s._ : 83
	sll (y)		; c<<0[y] in test.stm8s._ : 83
	sll (ptr16,x)		; c<<0ptr16[x] in test.stm8s._ : 83
	sll (ptr16,y)		; c<<0ptr16[y] in test.stm8s._ : 83
	sll [ptr16.w]		; c<<0[ptr16] in test.stm8s._ : 83
	sll ([ptr16.w],x)		; c<<0[ptr16[x]] in test.stm8s._ : 83
	srl a		; 0>>ca in test.stm8s._ : 84
	srlw x		; 0>>cx in test.stm8s._ : 84
	srlw y		; 0>>cy in test.stm8s._ : 84
	srl data8near		; 0>>cdata8near in test.stm8s._ : 84
	srl (x)		; 0>>c[x] in test.stm8s._ : 84
	srl (y)		; 0>>c[y] in test.stm8s._ : 84
	srl (ptr16,x)		; 0>>cptr16[x] in test.stm8s._ : 84
	srl (ptr16,y)		; 0>>cptr16[y] in test.stm8s._ : 84
	srl [ptr16.w]		; 0>>c[ptr16] in test.stm8s._ : 84
	srl ([ptr16.w],x)		; 0>>c[ptr16[x]] in test.stm8s._ : 84
	sra a		; s>>ca in test.stm8s._ : 85
	sraw x		; s>>cx in test.stm8s._ : 85
	sraw y		; s>>cy in test.stm8s._ : 85
	sra data8near		; s>>cdata8near in test.stm8s._ : 85
	sra (x)		; s>>c[x] in test.stm8s._ : 85
	sra (y)		; s>>c[y] in test.stm8s._ : 85
	sra (ptr16,x)		; s>>cptr16[x] in test.stm8s._ : 85
	sra (ptr16,y)		; s>>cptr16[y] in test.stm8s._ : 85
	sra [ptr16.w]		; s>>c[ptr16] in test.stm8s._ : 85
	sra ([ptr16.w],x)		; s>>c[ptr16[x]] in test.stm8s._ : 85
	rrwa x,a		; a>>ax in test.stm8s._ : 86
	rrwa y,a		; a>>ay in test.stm8s._ : 86
	rlwa x,a		; a<<ax in test.stm8s._ : 86
	rlwa y,a		; a<<ay in test.stm8s._ : 86
	jrne label		; ifz==0label in test.stm8s._ : 87
	jreq label		; ifz==1label in test.stm8s._ : 88
	jrnc label		; ifc==0label in test.stm8s._ : 89
	jrc label		; ifc==1label in test.stm8s._ : 90
	jrnh label		; ifh==0label in test.stm8s._ : 91
	jrh label		; ifh==1label in test.stm8s._ : 92
	jrnm label		; ifi==0label in test.stm8s._ : 93
	jrm label		; ifi==1label in test.stm8s._ : 94
	jrnv label		; ifv==0label in test.stm8s._ : 95
	jrv label		; ifv==1label in test.stm8s._ : 96
	jril label		; ifint==0label in test.stm8s._ : 97
	jrih label		; ifint==1label in test.stm8s._ : 98
	jrf label		; iffalselabel in test.stm8s._ : 99
	jrt label		; iftruelabel in test.stm8s._ : 100
	jrmi label		; if<0label in test.stm8s._ : 101
	jrpl label		; if>=0label in test.stm8s._ : 102
	jrne label		; if<>0label in test.stm8s._ : 103
	jrne label		; if!=0label in test.stm8s._ : 104
	jrsge label		; if>=slabel in test.stm8s._ : 105
	jrsgt label		; if>slabel in test.stm8s._ : 106
	jrsle label		; if<=slabel in test.stm8s._ : 107
	jrslt label		; if<slabel in test.stm8s._ : 108
	jruge label		; if>=ulabel in test.stm8s._ : 109
	jrugt label		; if>ulabel in test.stm8s._ : 110
	jrule label		; if<=ulabel in test.stm8s._ : 111
	jrult label		; if<ulabel in test.stm8s._ : 112
	btjf data8,#3,label		; ifdata8#3==0label in test.stm8s._ : 113
	btjt data8,#4,label		; ifdata8#4==1label in test.stm8s._ : 114
	jra label		; gonearlabel in test.stm8s._ : 115
	jpf label2		; gofarlabel2 in test.stm8s._ : 116
	jp label		; golabel in test.stm8s._ : 117
	callr label		; callnearlabel in test.stm8s._ : 118
	callf label2		; callfarlabel2 in test.stm8s._ : 119
	call label		; calllabel in test.stm8s._ : 120
label
	ret		; ret in test.stm8s._ : 121
label2
	retf		; retf in test.stm8s._ : 122
	nop		; nop in test.stm8s._ : 123
	trap		; trap in test.stm8s._ : 125
	wfe		; wait in test.stm8s._ : 126
	wfi		; waiti in test.stm8s._ : 127
	halt		; halt in test.stm8s._ : 128
regs	segment byte at 0-FF 'ram0'
counter	ds.w
mem	segment byte at 100-3FF 'ram1'
ptr16	ds.w
ptr32	ds.l
regs	segment byte 'ram0'
ptr8	ds.b
data8near	ds.b
data16near	ds.w
data32near	ds.l
array8near	ds.b 5
mem	segment byte 'ram1'
data8	ds.b
data16	ds.w
data32	ds.l
array8	ds.b 10
eeprom	segment byte at 4000-407F 'eeprom'
data8eeprom	dc.b '8'
data16eeprom	dc.w 16
data32eeprom	dc.l $3232
array8eeprom	dc.b 'e','e','p','r','o','m',0
flash	segment byte 'rom'
data8flash	dc.b '8'
data16flash	dc.w 16
data32flash	dc.l $3232
array8flash	dc.b "flash",0
tmr1handler
	ldw x,counter		; x=counter in test.stm8s._ : 156
	incw x		; x++ in test.stm8s._ : 157
	ldw counter,x		; counter=x in test.stm8s._ : 158
	ldw counter,x		; counter=x in test.stm8s._ : 158
	iret		; iret in test.stm8s._ : 159

	end

