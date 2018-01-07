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
interrupttim1u	dc.l {$82000000+dumb}
interrupttim1c	dc.l {$82000000+dumb}
interrupttim2u	dc.l {$82000000+dumb}
interrupttim2c	dc.l {$82000000+dumb}
interrupttim3u	dc.l {$82000000+dumb}
interrupttim3c	dc.l {$82000000+dumb}
interruptuart1tx	dc.l {$82000000+dumb}
interruptuart1rx	dc.l {$82000000+uart1rx}
interrupti2c	dc.l {$82000000+dumb}
interruptuart3tx	dc.l {$82000000+dumb}
interruptuart3rx	dc.l {$82000000+dumb}
interruptadc1	dc.l {$82000000+dumb}
interrupttim4u	dc.l {$82000000+dumb}
interruptflash	dc.l {$82000000+dumb}
dumb
	iret		; iret in forth.stm8s._ : 35
regs	segment byte at 0-FF 'ram0'
rstart	ds.b
rend	ds.b
rsize	ds.b
rlen	ds.b
rbuf	ds.b 64
flash	segment byte 'rom'
atoringbuf
	pushw x		; pushx in ringbuf._ : 14
	push a		; pusha in ringbuf._ : 14
	clrw x		; x=#0 in ringbuf._ : 15
	ld a,rstart		; a=rstart in ringbuf._ : 15
	ld xl,a		; xl=a in ringbuf._ : 15
	inc a		; a++ in ringbuf._ : 15
	cp a,rsize		; a?rsize in ringbuf._ : 16
	jrne atoringbuf_notzero		; ifz==0atoringbuf_notzero in ringbuf._ : 17
	pop a		; popa in ringbuf._ : 18
	ld (rbuf,x),a		; rbuf[x]=a in ringbuf._ : 18
	clr rstart		; rstart=#0 in ringbuf._ : 18
	jra atoringbuf_end		; gonearatoringbuf_end in ringbuf._ : 18
atoringbuf_notzero
	pop a		; popa in ringbuf._ : 20
	ld (rbuf,x),a		; rbuf[x]=a in ringbuf._ : 20
	inc rstart		; rstart++ in ringbuf._ : 20
atoringbuf_end
	inc rlen		; rlen++ in ringbuf._ : 22
	popw x		; popx in ringbuf._ : 22
	ret		; ret in ringbuf._ : 23
ringbuftoa
	pushw x		; pushx in ringbuf._ : 26
	clrw x		; x=#0 in ringbuf._ : 27
	ld a,rend		; a=rend in ringbuf._ : 27
	ld xl,a		; xl=a in ringbuf._ : 27
	inc a		; a++ in ringbuf._ : 27
	cp a,rsize		; a?rsize in ringbuf._ : 28
	jrne ringbuftoa_notzero		; ifz==0ringbuftoa_notzero in ringbuf._ : 29
	ld a,(rbuf,x)		; a=rbuf[x] in ringbuf._ : 30
	clr rend		; rend=#0 in ringbuf._ : 30
	jra ringbuftoa_end		; gonearringbuftoa_end in ringbuf._ : 30
ringbuftoa_notzero
	ld a,(rbuf,x)		; a=rbuf[x] in ringbuf._ : 32
	inc rend		; rend++ in ringbuf._ : 32
ringbuftoa_end
	dec rlen		; rlen-- in ringbuf._ : 34
	popw x		; popx in ringbuf._ : 34
	ret		; ret in ringbuf._ : 35
ringbufready
	tnz rlen		; ?rlen in ringbuf._ : 38
	jrne ringbufready_ifzero		; ifz==0ringbufready_ifzero in ringbuf._ : 39
	ld a,#1		; a=#1 in ringbuf._ : 40
	ret		; ret in ringbuf._ : 41
ringbufready_ifzero
	clr a		; a=#0 in ringbuf._ : 43
uart1rx
	ld a,uart1dr		; a=uart1dr in forth.stm8s._ : 41
	callr atoringbuf		; callnearatoringbuf in forth.stm8s._ : 42
	iret		; iret in forth.stm8s._ : 43
init
	bset clkeckr,#0		; clkeckr#0=#1 in forth.stm8s._ : 46
	bset clkswcr,#1		; clkswcr#1=#1 in forth.stm8s._ : 46
wait1
	btjf clkeckr,#1,wait1		; ifclkeckr#1==0wait1 in forth.stm8s._ : 46
	clr clkckdivr		; clkckdivr=#0 in forth.stm8s._ : 46
	mov clkswr,#$b4		; clkswr=#0xb4 in forth.stm8s._ : 47
wait2
	btjf clkswcr,#3,wait2		; ifclkswcr#3==0wait2 in forth.stm8s._ : 47
	bset clkpckenr1,#5		; clkpckenr1#5=#1 in forth.stm8s._ : 47
	bres gpiocddr,#2		; gpiocddr#2=#0 in forth.stm8s._ : 49
	bset gpiocddr,#3		; gpiocddr#3=#1 in forth.stm8s._ : 49
	mov uart1brr2,$03		; uart1brr2=0x03 in forth.stm8s._ : 51
	mov uart1brr1,$68		; uart1brr1=0x68 in forth.stm8s._ : 51
	bset uart1cr2,#2		; uart1cr2#2=#1 in forth.stm8s._ : 51
	bset uart1cr2,#3		; uart1cr2#3=#1 in forth.stm8s._ : 51
	bset uart1cr2,#5		; uart1cr2#5=#1 in forth.stm8s._ : 51
	clr rstart		; rstart=#0 in forth.stm8s._ : 53
	clr rend		; rend=#0 in forth.stm8s._ : 53
	clr rlen		; rlen=#0 in forth.stm8s._ : 53
	mov rsize,#64		; rsize=#64 in forth.stm8s._ : 53
	ret		; ret in forth.stm8s._ : 54
start
	ldw x,#$03ff		; x=#0x03ff in forth.stm8s._ : 61
	ldw sp,x		; sp=x in forth.stm8s._ : 61
	callr init		; callnearinit in forth.stm8s._ : 62
	callr svminit		; callnearsvminit in forth.stm8s._ : 63
	clr state		; state=#0 in forth.stm8s._ : 64
	mov base,#10		; base=#10 in forth.stm8s._ : 64
	ldw x,#herelabel		; x=#herelabel in forth.stm8s._ : 65
	ldw here,x		; here=x in forth.stm8s._ : 65
	ldw x,#linknop		; x=#linknop in forth.stm8s._ : 65
	ldw latest,x		; latest=x in forth.stm8s._ : 65
	sim		; i=#1 in forth.stm8s._ : 66
loop
	call ringbufready		; callringbufready in forth.stm8s._ : 67
	jreq loop		; ifz==1loop in forth.stm8s._ : 68
	jra loop		; gonearloop in forth.stm8s._ : 71
regs	segment byte 'ram0'
dsp	ds.w
rsp	ds.w
nxt	ds.w
tmp	ds.w
flash	segment byte 'rom'
dss	dc.w $100
dsm	dc.w $1ff
rss	dc.w $200
rsm	dc.w $2ff
svminit
	ldw x,dsm		; x=dsm in svm._ : 17
	ldw dsp,x		; dsp=x in svm._ : 17
	ldw x,rsm		; x=rsm in svm._ : 17
	ldw rsp,x		; rsp=x in svm._ : 17
	clr nxt		; nxt=#0 in svm._ : 17
	ret		; ret in svm._ : 17
incdsp
	inc dsp		; dsp++ in svm._ : 19
	inc dsp		; dsp++ in svm._ : 19
	ldw x,dsp		; x=dsp in svm._ : 19
	cpw x,dsm		; x?dsm in svm._ : 19
	jrult tl0		; if<utl0 in svm._ : 19
	jp error		; goerror in svm._ : 19
tl0
	ret		; ret in svm._ : 19
decdsp
	dec dsp		; dsp-- in svm._ : 20
	dec dsp		; dsp-- in svm._ : 20
	ldw x,dsp		; x=dsp in svm._ : 20
	cpw x,dss		; x?dss in svm._ : 20
	jrugt tl0		; if>utl0 in svm._ : 20
	jp error		; goerror in svm._ : 20
incrsp
	inc rsp		; rsp++ in svm._ : 21
	inc rsp		; rsp++ in svm._ : 21
	ldw x,rsp		; x=rsp in svm._ : 21
	cpw x,rsm		; x?rsm in svm._ : 21
	jrult tl0		; if<utl0 in svm._ : 21
	jp error		; goerror in svm._ : 21
decrsp
	dec rsp		; rsp-- in svm._ : 22
	dec rsp		; rsp-- in svm._ : 22
	ldw x,rsp		; x=rsp in svm._ : 22
	cpw x,rss		; x?rss in svm._ : 22
	jrugt tl0		; if>utl0 in svm._ : 22
	jp error		; goerror in svm._ : 22
peekdsp0
	ldw x,#2		; x=#2 in svm._ : 25
	jra tl1		; goneartl1 in svm._ : 25
peekdsp1
	ldw x,#4		; x=#4 in svm._ : 26
tl1
	ldw x,(dsp,x)		; x=dsp[x] in svm._ : 26
	ret		; ret in svm._ : 26
peekdsp2
	ldw x,#6		; x=#6 in svm._ : 27
	jra tl1		; goneartl1 in svm._ : 27
peekdsp3
	ldw x,#8		; x=#8 in svm._ : 28
	jra tl1		; goneartl1 in svm._ : 28
pokedsp0
	ldw y,#2		; y=#2 in svm._ : 29
	jra tl2		; goneartl2 in svm._ : 29
pokedsp1
	ldw y,#4		; y=#4 in svm._ : 30
tl2
	ldw (dsp,y),x		; dsp[y]=x in svm._ : 30
	ret		; ret in svm._ : 30
pokedsp2
	ldw y,#6		; y=#6 in svm._ : 31
	jra tl2		; goneartl2 in svm._ : 31
pokedsp3
	ldw y,#8		; y=#8 in svm._ : 32
	jra tl2		; goneartl2 in svm._ : 32
peekrsp0
	ldw x,[rsp.w]		; x=[rsp] in svm._ : 33
	ret		; ret in svm._ : 33
pokersp0
	ldw [rsp.w],x		; [rsp]=x in svm._ : 34
	ret		; ret in svm._ : 34
pushdsp
	ldw [dsp.w],x		; [dsp]=x in svm._ : 35
	call decdsp		; calldecdsp in svm._ : 35
	ret		; ret in svm._ : 35
popdsp
	call incdsp		; callincdsp in svm._ : 36
	ldw x,[dsp.w]		; x=[dsp] in svm._ : 36
	ret		; ret in svm._ : 36
pushrsp
	ldw [rsp.w],x		; [rsp]=x in svm._ : 37
	call decrsp		; calldecrsp in svm._ : 37
	ret		; ret in svm._ : 37
poprsp
	call incrsp		; callincrsp in svm._ : 38
	ldw x,[rsp.w]		; x=[rsp] in svm._ : 38
	ret		; ret in svm._ : 38
error
	ret		; ret in svm._ : 42
regs	segment byte 'ram0'
state	ds.b
base	ds.b
here	ds.w
latest	ds.w
tib	ds.b 81
temp	ds.w
flash	segment byte 'rom'
dictionarystart
linkbl	dc.w 0
	dc.b 4
	dc.b "bl"
codebl
	ldw x,#32		; x=#32 in forth.stm8s._ : 91
	call pushdsp		; callpushdsp in forth.stm8s._ : 91
	ret		; ret in forth.stm8s._ : 91
linkconstant	dc.w linkbl
	dc.b 8
	dc.b "constant"
codeconstant
	ret		; ret in forth.stm8s._ : 93
linkrtib	dc.w linkconstant
	dc.b 4
	dc.b "#tib"
codertib
	ldw x,#80		; x=#80 in forth.stm8s._ : 95
	call pushdsp		; callpushdsp in forth.stm8s._ : 95
	ret		; ret in forth.stm8s._ : 95
linktib	dc.w linkrtib
	dc.b 3
	dc.b "tib"
codetib
	ldw x,#tib		; x=#tib in forth.stm8s._ : 97
	call pushdsp		; callpushdsp in forth.stm8s._ : 97
	ret		; ret in forth.stm8s._ : 97
links0	dc.w linktib
	dc.b 2
	dc.b "s0"
codes0
	ldw x,dsp		; x=dsp in forth.stm8s._ : 99
	call pushdsp		; callpushdsp in forth.stm8s._ : 99
	ret		; ret in forth.stm8s._ : 99
linkbase	dc.w links0
	dc.b 4
	dc.b "base"
codebase
	ldw x,#base		; x=#base in forth.stm8s._ : 101
	call pushdsp		; callpushdsp in forth.stm8s._ : 101
	ret		; ret in forth.stm8s._ : 101
linklatest	dc.w linkbase
	dc.b 6
	dc.b "latest"
codelatest
	ldw x,#latest		; x=#latest in forth.stm8s._ : 103
	call pushdsp		; callpushdsp in forth.stm8s._ : 103
	ret		; ret in forth.stm8s._ : 103
linkhere	dc.w linklatest
	dc.b 4
	dc.b "here"
codehere
	ldw x,#here		; x=#here in forth.stm8s._ : 105
	call pushdsp		; callpushdsp in forth.stm8s._ : 105
	ret		; ret in forth.stm8s._ : 105
linkstate	dc.w linkhere
	dc.b 5
	dc.b "state"
codestate
	ldw x,#state		; x=#state in forth.stm8s._ : 107
	call pushdsp		; callpushdsp in forth.stm8s._ : 107
	ret		; ret in forth.stm8s._ : 107
linkvariable	dc.w linkstate
	dc.b 8
	dc.b "variable"
codevariable
	call codecreate		; callcodecreate in forth.stm8s._ : 109
	clrw x		; x=#0 in forth.stm8s._ : 109
	call pushdsp		; callpushdsp in forth.stm8s._ : 109
	call codecomma		; callcodecomma in forth.stm8s._ : 109
	ret		; ret in forth.stm8s._ : 109
linkallot	dc.w linkvariable
	dc.b 5
	dc.b "allot"
codeallot
	call popdsp		; callpopdsp in forth.stm8s._ : 111
	addw x,here		; x+=here in forth.stm8s._ : 111
	ldw here,x		; here=x in forth.stm8s._ : 111
	ret		; ret in forth.stm8s._ : 111
linklit	dc.w linkallot
	dc.b 3
	dc.b "lit"
codelit
	call coderget		; callcoderget in forth.stm8s._ : 113
	call codeget		; callcodeget in forth.stm8s._ : 113
	call codefromr		; callcodefromr in forth.stm8s._ : 113
	call code2incr		; callcode2incr in forth.stm8s._ : 113
	call codetor		; callcodetor in forth.stm8s._ : 113
	ret		; ret in forth.stm8s._ : 113
linkcfa	dc.w linklit
	dc.b 4
	dc.b ">cfa"
codecfa
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 115
	incw x		; x++ in forth.stm8s._ : 115
	incw x		; x++ in forth.stm8s._ : 115
	ld a,(x)		; a=[x] in forth.stm8s._ : 115
	ldw temp,x		; temp=x in forth.stm8s._ : 115
	and a,#$0f		; a&=#0x0f in forth.stm8s._ : 115
	clrw x		; x=#0 in forth.stm8s._ : 115
	ld xl,a		; xl=a in forth.stm8s._ : 115
	addw x,temp		; x+=temp in forth.stm8s._ : 115
	call pokedsp0		; callpokedsp0 in forth.stm8s._ : 115
	ret		; ret in forth.stm8s._ : 115
linkfind	dc.w linkcfa
	dc.b 4
	dc.b "find"
codefind
	ret		; ret in forth.stm8s._ : 117
linkkey	dc.w linkfind
	dc.b 3
	dc.b "key"
codekey
	call ringbuftoa		; callringbuftoa in forth.stm8s._ : 119
	clrw x		; x=#0 in forth.stm8s._ : 119
	ld xl,a		; xl=a in forth.stm8s._ : 119
	call pushdsp		; callpushdsp in forth.stm8s._ : 119
	ret		; ret in forth.stm8s._ : 119
linkemit	dc.w linkkey
	dc.b 4
	dc.b "emit"
codeemit
	call popdsp		; callpopdsp in forth.stm8s._ : 121
	ld a,xl		; a=xl in forth.stm8s._ : 121
	ld uart1dr,a		; uart1dr=a in forth.stm8s._ : 121
	ret		; ret in forth.stm8s._ : 121
linkcr	dc.w linkemit
	dc.b 2
	dc.b "cr"
codecr
	ld a,'\n'		; a='\n' in forth.stm8s._ : 123
	ld uart1dr,a		; uart1dr=a in forth.stm8s._ : 123
	ret		; ret in forth.stm8s._ : 123
linktype	dc.w linkcr
	dc.b 4
	dc.b "type"
codetype
	call popdsp		; callpopdsp in forth.stm8s._ : 125
	jreq tl3		; ifz==1tl3 in forth.stm8s._ : 125
	ldw y,x		; y=x in forth.stm8s._ : 125
	call popdsp		; callpopdsp in forth.stm8s._ : 125
tl4
	ld a,(x)		; a=[x] in forth.stm8s._ : 126
	ld uart1dr,a		; uart1dr=a in forth.stm8s._ : 126
	incw x		; x++ in forth.stm8s._ : 126
	decw y		; y-- in forth.stm8s._ : 126
	jrne tl4		; ifz==0tl4 in forth.stm8s._ : 126
	ret		; ret in forth.stm8s._ : 126
tl3
	call popdsp		; callpopdsp in forth.stm8s._ : 127
	ret		; ret in forth.stm8s._ : 127
linkword	dc.w linkcr
	dc.b 4
	dc.b "word"
codeword
	ret		; ret in forth.stm8s._ : 130
linknumber	dc.w linkword
	dc.b 6
	dc.b "number"
codenumber
	ret		; ret in forth.stm8s._ : 132
linkbranch	dc.w linknumber
	dc.b 6
	dc.b "branch"
codebranch
	call codefromr		; callcodefromr in forth.stm8s._ : 134
	call codeget		; callcodeget in forth.stm8s._ : 134
	call codetor		; callcodetor in forth.stm8s._ : 134
	ret		; ret in forth.stm8s._ : 134
link0branch	dc.w linkbranch
	dc.b 7
	dc.b "0branch"
code0branch
	ret		; ret in forth.stm8s._ : 136
linkqbranch	dc.w link0branch
	dc.b 7
	dc.b "?branch"
codeqbranch
	call codefromr		; callcodefromr in forth.stm8s._ : 138
	call codeswap		; callcodeswap in forth.stm8s._ : 138
	call codeif		; callcodeif in forth.stm8s._ : 138
	call code2incr		; callcode2incr in forth.stm8s._ : 138
	call codeelse		; callcodeelse in forth.stm8s._ : 138
	call codeget		; callcodeget in forth.stm8s._ : 139
	call codethen		; callcodethen in forth.stm8s._ : 139
	call codetor		; callcodetor in forth.stm8s._ : 139
	ret		; ret in forth.stm8s._ : 139
linksemicolon	dc.w linkqbranch
	dc.b {1+$80}
	dc.b $3b
codesemicolon
linkcolon	dc.w linksemicolon
	dc.b 1
	dc.b ":"
codecolon
	ret		; ret in forth.stm8s._ : 143
linkcomma	dc.w linkcolon
	dc.b 1
	dc.b ","
codecomma
	call popdsp		; callpopdsp in forth.stm8s._ : 145
	ldw [here.w],x		; [here]=x in forth.stm8s._ : 145
	inc here		; here++ in forth.stm8s._ : 145
	inc here		; here++ in forth.stm8s._ : 145
	ret		; ret in forth.stm8s._ : 145
linkshtrih	dc.w linkcomma
	dc.b 1
	dc.b "`"
codeshtrih
linkbshtrih	dc.w linkshtrih
	dc.b 1
	dc.b "[`]"
codebshtrih
	call codeshtrih		; callcodeshtrih in forth.stm8s._ : 150
	call codecompile		; callcodecompile in forth.stm8s._ : 150
	call codelit		; callcodelit in forth.stm8s._ : 150
	call codecomma		; callcodecomma in forth.stm8s._ : 150
	ret		; ret in forth.stm8s._ : 150
linkimmediate	dc.w linkbshtrih
	dc.b 1
	dc.b "immediate"
codeimmediate
	ldw x,latest		; x=latest in forth.stm8s._ : 152
	ld a,(2,x)		; a=x[2] in forth.stm8s._ : 152
	add a,#$80		; a+=#0x80 in forth.stm8s._ : 152
	ld (2,x),a		; x[2]=a in forth.stm8s._ : 152
	ret		; ret in forth.stm8s._ : 152
linkcreate	dc.w linkimmediate
	dc.b 6
	dc.b "create"
codecreate
	ret		; ret in forth.stm8s._ : 154
linkbegin	dc.w linkcreate
	dc.b 5
	dc.b "begin"
codebegin
	ret		; ret in forth.stm8s._ : 156
linkagain	dc.w linkbegin
	dc.b 5
	dc.b "again"
codeagain
	ret		; ret in forth.stm8s._ : 158
linkif	dc.w linkagain
	dc.b {2+$80}
	dc.b "if"
codeif
	call codecompile		; callcodecompile in forth.stm8s._ : 160
	call codeqbranch		; callcodeqbranch in forth.stm8s._ : 160
	call codehere		; callcodehere in forth.stm8s._ : 160
	ldw x,#2		; x=#2 in forth.stm8s._ : 160
	call pushdsp		; callpushdsp in forth.stm8s._ : 160
	call codeallot		; callcodeallot in forth.stm8s._ : 160
	ret		; ret in forth.stm8s._ : 160
linkthen	dc.w linkif
	dc.b {4+$80}
	dc.b "then"
codethen
	call codehere		; callcodehere in forth.stm8s._ : 162
	call codeswap		; callcodeswap in forth.stm8s._ : 162
	call codeput		; callcodeput in forth.stm8s._ : 162
	ret		; ret in forth.stm8s._ : 162
linkelse	dc.w linkthen
	dc.b {4+$80}
	dc.b "else"
codeelse
	call codecompile		; callcodecompile in forth.stm8s._ : 164
	call codebranch		; callcodebranch in forth.stm8s._ : 164
	call codehere		; callcodehere in forth.stm8s._ : 164
	ldw x,#2		; x=#2 in forth.stm8s._ : 164
	call pushdsp		; callpushdsp in forth.stm8s._ : 164
	call codeallot		; callcodeallot in forth.stm8s._ : 165
	call codehere		; callcodehere in forth.stm8s._ : 165
	call coderot		; callcoderot in forth.stm8s._ : 165
	call codeput		; callcodeput in forth.stm8s._ : 165
	ret		; ret in forth.stm8s._ : 165
linkexecute	dc.w linkelse
	dc.b 7
	dc.b "execute"
codeexecute
	call popdsp		; callpopdsp in forth.stm8s._ : 167
	call (x)		; call[x] in forth.stm8s._ : 167
	ret		; ret in forth.stm8s._ : 167
linkbcompile	dc.w linkexecute
	dc.b {9+$80}
	dc.b "[compile]"
codebcompile
	call codeshtrih		; callcodeshtrih in forth.stm8s._ : 169
	call codecomma		; callcodecomma in forth.stm8s._ : 169
	ret		; ret in forth.stm8s._ : 169
linkcompile	dc.w linkbcompile
	dc.b 7
	dc.b "compile"
codecompile
	call coderget		; callcoderget in forth.stm8s._ : 171
	call codeget		; callcodeget in forth.stm8s._ : 171
	call codecomma		; callcodecomma in forth.stm8s._ : 171
	call codefromr		; callcodefromr in forth.stm8s._ : 171
	call code2incr		; callcode2incr in forth.stm8s._ : 171
	call codetor		; callcodetor in forth.stm8s._ : 171
	ret		; ret in forth.stm8s._ : 171
linkget	dc.w linkcompile
	dc.b 1
	dc.b "@"
codeget
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 173
	ldw x,(x)		; x=[x] in forth.stm8s._ : 173
	call pokedsp0		; callpokedsp0 in forth.stm8s._ : 173
	ret		; ret in forth.stm8s._ : 173
linkput	dc.w linkget
	dc.b 1
	dc.b "!"
codeput
	call popdsp		; callpopdsp in forth.stm8s._ : 175
	ldw y,x		; y=x in forth.stm8s._ : 175
	call popdsp		; callpopdsp in forth.stm8s._ : 175
	ldw (y),x		; [y]=x in forth.stm8s._ : 175
	ret		; ret in forth.stm8s._ : 175
linkincput	dc.w linkput
	dc.b 2
	dc.b "+!"
codeincput
	call popdsp		; callpopdsp in forth.stm8s._ : 177
	ldw y,x		; y=x in forth.stm8s._ : 177
	call popdsp		; callpopdsp in forth.stm8s._ : 177
	ldw temp,x		; temp=x in forth.stm8s._ : 177
	ldw x,y		; x=y in forth.stm8s._ : 177
	ldw x,(x)		; x=[x] in forth.stm8s._ : 177
	addw x,temp		; x+=temp in forth.stm8s._ : 177
	ldw (y),x		; [y]=x in forth.stm8s._ : 177
	ret		; ret in forth.stm8s._ : 177
linkdpl	dc.w linkincput
	dc.b 3
	dc.b "dpl"
codedpl
	ret		; ret in forth.stm8s._ : 179
linkliteral	dc.w linkdpl
	dc.b {7+$80}
	dc.b "literal"
codeliteral
	call codestate		; callcodestate in forth.stm8s._ : 181
	call codeget		; callcodeget in forth.stm8s._ : 181
	call codeif		; callcodeif in forth.stm8s._ : 181
	call codecompile		; callcodecompile in forth.stm8s._ : 181
	call codelit		; callcodelit in forth.stm8s._ : 181
	call codecomma		; callcodecomma in forth.stm8s._ : 182
	call codethen		; callcodethen in forth.stm8s._ : 182
	ret		; ret in forth.stm8s._ : 182
linktwoliteral	dc.w linkliteral
	dc.b 8
	dc.b "2literal"
codetwoliteral
	ret		; ret in forth.stm8s._ : 184
linklbrac	dc.w linktwoliteral
	dc.b {1+$80}
	dc.b '['
codelbrac
	clr state		; state=#0 in forth.stm8s._ : 186
	ret		; ret in forth.stm8s._ : 186
linkrbrac	dc.w linklbrac
	dc.b 1
	dc.b ']'
coderbrac
	mov state,#$ff		; state=#0xff in forth.stm8s._ : 188
	ret		; ret in forth.stm8s._ : 188
linkdecimal	dc.w linklbrac
	dc.b 7
	dc.b "decimal"
codedecimal
	mov base,#10		; base=#10 in forth.stm8s._ : 190
	ret		; ret in forth.stm8s._ : 190
linkhex	dc.w linkdecimal
	dc.b 3
	dc.b "hex"
codehex
	mov base,#16		; base=#16 in forth.stm8s._ : 192
	ret		; ret in forth.stm8s._ : 192
linktick	dc.w linkhex
	dc.b 1
	dc.b '\''
codetick
	ret		; ret in forth.stm8s._ : 194
linkinterpret	dc.w linktick
	dc.b 9
	dc.b "interpret"
codeinterpret
	call codebegin		; callcodebegin in forth.stm8s._ : 196
	call codebl		; callcodebl in forth.stm8s._ : 196
	call codeword		; callcodeword in forth.stm8s._ : 196
	call codefind		; callcodefind in forth.stm8s._ : 196
	call codeincr		; callcodeincr in forth.stm8s._ : 196
	call codeif		; callcodeif in forth.stm8s._ : 197
	call codeexecute		; callcodeexecute in forth.stm8s._ : 197
	call codeelse		; callcodeelse in forth.stm8s._ : 197
	call codestate		; callcodestate in forth.stm8s._ : 197
	call codeget		; callcodeget in forth.stm8s._ : 197
	call codeif		; callcodeif in forth.stm8s._ : 197
	call codecomma		; callcodecomma in forth.stm8s._ : 198
	call codeelse		; callcodeelse in forth.stm8s._ : 198
	call codeexecute		; callcodeexecute in forth.stm8s._ : 198
	call codethen		; callcodethen in forth.stm8s._ : 198
	call codethen		; callcodethen in forth.stm8s._ : 198
	call codeelse		; callcodeelse in forth.stm8s._ : 198
	call codenumber		; callcodenumber in forth.stm8s._ : 199
	call codedpl		; callcodedpl in forth.stm8s._ : 199
	call codeget		; callcodeget in forth.stm8s._ : 199
	call codeincr		; callcodeincr in forth.stm8s._ : 199
	call codeif		; callcodeif in forth.stm8s._ : 199
	call codebcompile		; callcodebcompile in forth.stm8s._ : 199
	call codetwoliteral		; callcodetwoliteral in forth.stm8s._ : 200
	call codeelse		; callcodeelse in forth.stm8s._ : 200
	call codedrop		; callcodedrop in forth.stm8s._ : 200
	call codebcompile		; callcodebcompile in forth.stm8s._ : 200
	call codeliteral		; callcodeliteral in forth.stm8s._ : 200
	call codethen		; callcodethen in forth.stm8s._ : 201
	call codethen		; callcodethen in forth.stm8s._ : 201
	call codeagain		; callcodeagain in forth.stm8s._ : 201
	ret		; ret in forth.stm8s._ : 201
linktor	dc.w linkinterpret
	dc.b 2
	dc.b ">R"
codetor
	call popdsp		; callpopdsp in forth.stm8s._ : 203
	call pushrsp		; callpushrsp in forth.stm8s._ : 203
	ret		; ret in forth.stm8s._ : 203
linkfromr	dc.w linktor
	dc.b 2
	dc.b "R>"
codefromr
	call poprsp		; callpoprsp in forth.stm8s._ : 205
	call pushdsp		; callpushdsp in forth.stm8s._ : 205
	ret		; ret in forth.stm8s._ : 205
linkrget	dc.w linkfromr
	dc.b 2
	dc.b "R@"
coderget
	call peekrsp0		; callpeekrsp0 in forth.stm8s._ : 207
	call pushdsp		; callpushdsp in forth.stm8s._ : 207
	ret		; ret in forth.stm8s._ : 207
linkdrop	dc.w linkrget
	dc.b 4
	dc.b "drop"
codedrop
	call incdsp		; callincdsp in forth.stm8s._ : 209
	ret		; ret in forth.stm8s._ : 209
linkswap	dc.w linkdrop
	dc.b 4
	dc.b "swap"
codeswap
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 211
	ldw tmp,x		; tmp=x in forth.stm8s._ : 211
	call peekdsp1		; callpeekdsp1 in forth.stm8s._ : 211
	call pokedsp0		; callpokedsp0 in forth.stm8s._ : 211
	ldw x,tmp		; x=tmp in forth.stm8s._ : 211
	call pokedsp1		; callpokedsp1 in forth.stm8s._ : 211
	ret		; ret in forth.stm8s._ : 211
linkdup	dc.w linkswap
	dc.b 3
	dc.b "dup"
codedup
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 213
	call pushdsp		; callpushdsp in forth.stm8s._ : 213
	ret		; ret in forth.stm8s._ : 213
linkover	dc.w linkswap
	dc.b 4
	dc.b "drop"
codeover
	call peekdsp1		; callpeekdsp1 in forth.stm8s._ : 215
	call pushdsp		; callpushdsp in forth.stm8s._ : 215
	ret		; ret in forth.stm8s._ : 215
linkrot	dc.w linkover
	dc.b 3
	dc.b "rot"
coderot
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 217
	ldw tmp,x		; tmp=x in forth.stm8s._ : 217
	call peekdsp1		; callpeekdsp1 in forth.stm8s._ : 217
	call pokedsp0		; callpokedsp0 in forth.stm8s._ : 217
	call peekdsp2		; callpeekdsp2 in forth.stm8s._ : 217
	call pokedsp1		; callpokedsp1 in forth.stm8s._ : 217
	ldw x,tmp		; x=tmp in forth.stm8s._ : 217
	call pokedsp2		; callpokedsp2 in forth.stm8s._ : 217
	ret		; ret in forth.stm8s._ : 217
linknrot	dc.w linkrot
	dc.b 4
	dc.b "-rot"
codenrot
	call peekdsp2		; callpeekdsp2 in forth.stm8s._ : 219
	ldw tmp,x		; tmp=x in forth.stm8s._ : 219
	call peekdsp1		; callpeekdsp1 in forth.stm8s._ : 219
	call pokedsp2		; callpokedsp2 in forth.stm8s._ : 219
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 219
	call pokedsp1		; callpokedsp1 in forth.stm8s._ : 219
	ldw x,tmp		; x=tmp in forth.stm8s._ : 219
	call pokedsp0		; callpokedsp0 in forth.stm8s._ : 219
	ret		; ret in forth.stm8s._ : 219
link2drop	dc.w linknrot
	dc.b 5
	dc.b "2drop"
code2drop
	call incdsp		; callincdsp in forth.stm8s._ : 221
	call incdsp		; callincdsp in forth.stm8s._ : 221
	ret		; ret in forth.stm8s._ : 221
link2swap	dc.w link2drop
	dc.b 5
	dc.b "2swap"
code2swap
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 223
	ldw tmp,x		; tmp=x in forth.stm8s._ : 223
	call peekdsp2		; callpeekdsp2 in forth.stm8s._ : 223
	call pokedsp0		; callpokedsp0 in forth.stm8s._ : 223
	ldw x,tmp		; x=tmp in forth.stm8s._ : 223
	call pokedsp2		; callpokedsp2 in forth.stm8s._ : 223
	call peekdsp1		; callpeekdsp1 in forth.stm8s._ : 224
	ldw tmp,x		; tmp=x in forth.stm8s._ : 224
	call peekdsp3		; callpeekdsp3 in forth.stm8s._ : 224
	call pokedsp1		; callpokedsp1 in forth.stm8s._ : 224
	ldw x,tmp		; x=tmp in forth.stm8s._ : 224
	call pokedsp3		; callpokedsp3 in forth.stm8s._ : 224
	ret		; ret in forth.stm8s._ : 224
linkqdup	dc.w link2swap
	dc.b 4
	dc.b "?dup"
codeqdup
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 226
	jrne ftl0		; ifz==0ftl0 in forth.stm8s._ : 226
	call pushdsp		; callpushdsp in forth.stm8s._ : 226
ftl0
	ret		; ret in forth.stm8s._ : 226
linkincr	dc.w linkqdup
	dc.b 2
	dc.b "1+"
codeincr
	ldw x,#2		; x=#2 in forth.stm8s._ : 228
	inc (dsp,x)		; dsp[x]++ in forth.stm8s._ : 228
	ret		; ret in forth.stm8s._ : 228
linkdecr	dc.w linkincr
	dc.b 2
	dc.b "1-"
codedecr
	ldw x,#2		; x=#2 in forth.stm8s._ : 230
	inc (dsp,x)		; dsp[x]++ in forth.stm8s._ : 230
	ret		; ret in forth.stm8s._ : 230
link2incr	dc.w linkdecr
	dc.b 2
	dc.b "2+"
code2incr
	ldw x,#2		; x=#2 in forth.stm8s._ : 232
	inc (dsp,x)		; dsp[x]++ in forth.stm8s._ : 232
	inc (dsp,x)		; dsp[x]++ in forth.stm8s._ : 232
	ret		; ret in forth.stm8s._ : 232
link2decr	dc.w link2incr
	dc.b 2
	dc.b "2-"
code2decr
	ldw x,#2		; x=#2 in forth.stm8s._ : 234
	dec (dsp,x)		; dsp[x]-- in forth.stm8s._ : 234
	dec (dsp,x)		; dsp[x]-- in forth.stm8s._ : 234
	ret		; ret in forth.stm8s._ : 234
linkadd	dc.w link2decr
	dc.b 1
	dc.b "+"
codeadd
	call peekdsp1		; callpeekdsp1 in forth.stm8s._ : 236
	ldw temp,x		; temp=x in forth.stm8s._ : 236
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 236
	addw x,temp		; x+=temp in forth.stm8s._ : 236
	call pokedsp1		; callpokedsp1 in forth.stm8s._ : 236
	call incdsp		; callincdsp in forth.stm8s._ : 236
	ret		; ret in forth.stm8s._ : 236
linksub	dc.w linkadd
	dc.b 1
	dc.b "-"
codesub
	call peekdsp1		; callpeekdsp1 in forth.stm8s._ : 238
	ldw temp,x		; temp=x in forth.stm8s._ : 238
	call peekdsp0		; callpeekdsp0 in forth.stm8s._ : 238
	subw x,temp		; x-=temp in forth.stm8s._ : 238
	call pokedsp1		; callpokedsp1 in forth.stm8s._ : 238
	call incdsp		; callincdsp in forth.stm8s._ : 238
	ret		; ret in forth.stm8s._ : 238
linknop	dc.w linksub
	dc.b 3
	dc.b "nop"
codenop
	ret		; ret in forth.stm8s._ : 242
herelabel

	end

