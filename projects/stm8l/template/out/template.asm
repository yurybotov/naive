stm8


ports	segment byte at 4910 'ports'
vrefintconv	ds.b
tsconv	ds.b
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
ports	segment byte at 5050 'ports'
flashcr1	ds.b
flashcr2	ds.b
ports	segment byte at 5062 'ports'
flashpukr	ds.b
ports	segment byte at 5064 'ports'
flashdukr	ds.b
flashiapsr	ds.b
ports	segment byte at 5070 'ports'
dma1gcsr	ds.b
dma1gir1	ds.b
ports	segment byte at 5075 'ports'
dma1c0cr	ds.b
dma1c0spr	ds.b
dma1c0ndtr	ds.b
dma1c0parh	ds.b
dma1c0parl	ds.b
ports	segment byte at 507B 'ports'
dma1c0m0arh	ds.b
dma1c0m0arl	ds.b
ports	segment byte at 507F 'ports'
dma1c1cr	ds.b
dma1c1spr	ds.b
dma1c1ndtr	ds.b
dma1c1parh	ds.b
dma1c1parl	ds.b
ports	segment byte at 5085 'ports'
dma1c1m0arh	ds.b
dma1c1m0arl	ds.b
ports	segment byte at 5089 'ports'
dma1c2cr	ds.b
dma1c2spr	ds.b
dma1c2ndtr	ds.b
dma1c2parh	ds.b
dma1c2parl	ds.b
ports	segment byte at 508F 'ports'
dma1c2m0arh	ds.b
dma1c2m0arl	ds.b
ports	segment byte at 5093 'ports'
dma1c3cr	ds.b
dma1c3spr	ds.b
dma1c3ndtr	ds.b
dma1c3parh	ds.b
dma1c3parl	ds.b
dma1c3m0ear	ds.b
dma1c3m0arh	ds.b
dma1c3m0arl	ds.b
ports	segment byte at 509D 'ports'
syscfgrmpcr3	ds.b
syscfgrmpcr1	ds.b
syscfgrmpcr2	ds.b
ports	segment byte at 50A0 'ports'
itcexticr1	ds.b
itcexticr2	ds.b
itcexticr3	ds.b
itcextisr1	ds.b
itcextisr2	ds.b
itcexticonf1	ds.b
ports	segment byte at 50AA 'ports'
itcexticr4	ds.b
itcexticonf2	ds.b
ports	segment byte at 50A6 'ports'
wfecr1	ds.b
wfecr2	ds.b
wfecr3	ds.b
wfecr4	ds.b
ports	segment byte at 50B0 'ports'
rstcr	ds.b
rstsr	ds.b
ports	segment byte at 50B2 'ports'
pwrcsr1	ds.b
pwrcsr2	ds.b
ports	segment byte at 50C0 'ports'
clkckdivr	ds.b
clkcrtcr	ds.b
clkickcr	ds.b
clkpckenr1	ds.b
clkpckenr2	ds.b
clkccor	ds.b
clkeckcr	ds.b
clkscsr	ds.b
clkswr	ds.b
clkswcr	ds.b
clkcssr	ds.b
clkcbeepr	ds.b
clkhsicalr	ds.b
clkhsitrimr	ds.b
clkhsiunlckr	ds.b
clkregcsr	ds.b
clkpckenr3	ds.b
ports	segment byte at 50D3 'ports'
wwdgcr	ds.b
wwdgwr	ds.b
ports	segment byte at 50E0 'ports'
iwdgkr	ds.b
iwdgpr	ds.b
iwdgrlr	ds.b
ports	segment byte at 50F0 'ports'
beepcsr1	ds.b
ports	segment byte at 50F3 'ports'
beepcsr2	ds.b
ports	segment byte at 5140 'ports'
rtctr1	ds.b
rtctr2	ds.b
rtctr3	ds.b
ports	segment byte at 5144 'ports'
rtcdr1	ds.b
rtcdr2	ds.b
rtcdr3	ds.b
ports	segment byte at 5148 'ports'
rtccr1	ds.b
rtccr2	ds.b
rtccr3	ds.b
ports	segment byte at 514C 'ports'
rtcisr1	ds.b
rtcisr2	ds.b
ports	segment byte at 5150 'ports'
rtcsprerh	ds.b
rtcsprerl	ds.b
rtcaprer	ds.b
ports	segment byte at 5154 'ports'
rtcwutrh	ds.b
rtcwutrl	ds.b
ports	segment byte at 5157 'ports'
rtcssrl	ds.b
rtcssrh	ds.b
rtcwpr	ds.b
rtcshiftrh	ds.b
rtcshiftrl	ds.b
rtcalrmar1	ds.b
rtcalrmar2	ds.b
rtcalrmar3	ds.b
rtcalrmar4	ds.b
ports	segment byte at 5164 'ports'
rtcalrmassrh	ds.b
rtcalrmassrl	ds.b
rtcalrmassmskr	ds.b
ports	segment byte at 516A 'ports'
rtccalrh	ds.b
rtccalrl	ds.b
rtctcr1	ds.b
rtctcr2	ds.b
ports	segment byte at 5190 'ports'
csslsecsr	ds.b
ports	segment byte at 5200 'ports'
spi1cr1	ds.b
spi1cr2	ds.b
spi1icr	ds.b
spi1sr	ds.b
spi1dr	ds.b
spi1crcpr	ds.b
spi1rxcrcr	ds.b
spi1txcrcr	ds.b
ports	segment byte at 5210 'ports'
i2c1cr1	ds.b
i2c1cr2	ds.b
i2c1freqr	ds.b
i2c1oarl	ds.b
i2c1oarh	ds.b
i2c1oarhdual	ds.b
i2c1dr	ds.b
i2c1sr1	ds.b
i2c1sr2	ds.b
i2c1sr3	ds.b
i2c1itr	ds.b
i2c1ccrl	ds.b
i2c1ccrh	ds.b
i2c1triser	ds.b
i2c1pecr	ds.b
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
uart1pscr	ds.b
ports	segment byte at 5250 'ports'
tim2cr1	ds.b
tim2cr2	ds.b
tim2smcr	ds.b
tim2etr	ds.b
tim2der	ds.b
tim2ier	ds.b
tim2sr1	ds.b
tim2sr2	ds.b
tim2egr	ds.b
tim2ccmr1	ds.b
tim2ccmr2	ds.b
tim2ccer1	ds.b
tim2cntrh	ds.b
tim2cntrl	ds.b
tim2pscr	ds.b
tim2arrh	ds.b
tim2arrl	ds.b
tim2ccr1h	ds.b
tim2ccr1l	ds.b
tim2ccr2h	ds.b
tim2ccr2l	ds.b
tim2bkr	ds.b
tim2oisr	ds.b
ports	segment byte at 5280 'ports'
tim3cr1	ds.b
tim3cr2	ds.b
tim3smcr	ds.b
tim3etr	ds.b
tim3der	ds.b
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
tim3bkr	ds.b
tim3oisr	ds.b
ports	segment byte at 52B0 'ports'
tim1cr1	ds.b
tim1cr2	ds.b
tim1smcr	ds.b
tim1etr	ds.b
tim1der	ds.b
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
tim1dcr1	ds.b
tim1dcr2	ds.b
tim1dma1r	ds.b
ports	segment byte at 52E0 'ports'
tim4cr1	ds.b
tim4cr2	ds.b
tim4smcr	ds.b
tim4der	ds.b
tim4ier	ds.b
tim4sr1	ds.b
tim4egr	ds.b
tim4cntr	ds.b
tim4pscr	ds.b
tim4arr	ds.b
ports	segment byte at 52FF 'ports'
irtimcr	ds.b
ports	segment byte at 5300 'ports'
tim5cr1	ds.b
tim5cr2	ds.b
tim5smcr	ds.b
tim5etr	ds.b
tim5der	ds.b
tim5ier	ds.b
tim5sr1	ds.b
tim5sr2	ds.b
tim5egr	ds.b
tim5ccmr1	ds.b
tim5ccmr2	ds.b
tim5ccer1	ds.b
tim5cntrh	ds.b
tim5cntrl	ds.b
tim5pscr	ds.b
tim5arrh	ds.b
tim5arrl	ds.b
tim5ccr1h	ds.b
tim5ccr1l	ds.b
tim5ccr2h	ds.b
tim5ccr2l	ds.b
tim5bkr	ds.b
tim5oisr	ds.b
ports	segment byte at 5340 'ports'
adc1cr1	ds.b
adc1cr2	ds.b
adc1cr3	ds.b
adc1sr	ds.b
adc1drh	ds.b
adc1drl	ds.b
adc1htrh	ds.b
adc1htrl	ds.b
adc1sqr1	ds.b
adc1sqr2	ds.b
adc1sqr3	ds.b
adc1sqr4	ds.b
adc1trigr1	ds.b
adc1trigr2	ds.b
adc1trigr3	ds.b
adc1trigr4	ds.b
ports	segment byte at 5380 'ports'
dacch1cr1	ds.b
dacch1cr2	ds.b
dacch2cr1	ds.b
dacch2cr2	ds.b
dacswtrig	ds.b
dacsr	ds.b
ports	segment byte at 5388 'ports'
dacch1rdhrh	ds.b
dacch1rdhrl	ds.b
ports	segment byte at 5390 'ports'
dacch1dhr8	ds.b
ports	segment byte at 5394 'ports'
dacch2rdhrh	ds.b
dacch2rdhrl	ds.b
ports	segment byte at 5398 'ports'
dacch2ldhrh	ds.b
dacch2ldhrl	ds.b
ports	segment byte at 539C 'ports'
dacch2dhr8	ds.b
ports	segment byte at 53A0 'ports'
dacdch1rdhrh	ds.b
dacdch1rdhrl	ds.b
dacdch2rdhrh	ds.b
dacdch2rdhrl	ds.b
dacdch1ldhrh	ds.b
dacdch1ldhrl	ds.b
dacdch2ldhrh	ds.b
dacdch2ldhrl	ds.b
ports	segment byte at 53AC 'ports'
dacch1dorh	ds.b
dacch1dorl	ds.b
ports	segment byte at 53B0 'ports'
dacch2dorh	ds.b
dacch2dorl	ds.b
ports	segment byte at 53C0 'ports'
spi2cr1	ds.b
spi2cr2	ds.b
spi2icr	ds.b
spi2sr	ds.b
spi2dr	ds.b
spi2crcpr	ds.b
spi2rxcrcr	ds.b
spi2txcrcr	ds.b
ports	segment byte at 53E0 'ports'
uart2sr	ds.b
uart2dr	ds.b
uart2brr1	ds.b
uart2brr2	ds.b
uart2cr1	ds.b
uart2cr2	ds.b
uart2cr3	ds.b
uart2cr4	ds.b
uart2cr5	ds.b
uart2gtr	ds.b
uart2pscr	ds.b
ports	segment byte at 53F0 'ports'
uart3sr	ds.b
uart3dr	ds.b
uart3brr1	ds.b
uart3brr2	ds.b
uart3cr1	ds.b
uart3cr2	ds.b
uart3cr3	ds.b
uart3cr4	ds.b
uart3cr5	ds.b
uart3gtr	ds.b
uart3pscr	ds.b
ports	segment byte at 5400 'ports'
lcdcr1	ds.b
lcdcr2	ds.b
lcdcr3	ds.b
lcdfrq	ds.b
lcdpm0	ds.b
lcdpm1	ds.b
lcdpm2	ds.b
lcdpm3	ds.b
lcdpm4	ds.b
lcdpm5	ds.b
ports	segment byte at 540C 'ports'
lcdram0	ds.b
lcdram1	ds.b
lcdram2	ds.b
lcdram3	ds.b
lcdram4	ds.b
lcdram5	ds.b
lcdram6	ds.b
lcdram7	ds.b
lcdram8	ds.b
lcdram9	ds.b
lcdram10	ds.b
lcdram11	ds.b
lcdram12	ds.b
lcdram13	ds.b
lcdram14	ds.b
lcdram15	ds.b
lcdram16	ds.b
lcdram17	ds.b
lcdram18	ds.b
lcdram19	ds.b
lcdram20	ds.b
lcdram21	ds.b
ports	segment byte at 542F 'ports'
lcdcr4	ds.b
ports	segment byte at 5430 'ports'
riicr1	ds.b
riicr2	ds.b
riioir1	ds.b
riioir2	ds.b
riioir3	ds.b
riiocmr1	ds.b
riiocmr2	ds.b
riiocmr3	ds.b
riiosr1	ds.b
riiosr2	ds.b
riiosr3	ds.b
riiogcr	ds.b
riascr1	ds.b
riascr2	ds.b
rircr	ds.b
ports	segment byte at 1540 'ports'
compcsr1	ds.b
compcsr2	ds.b
compcsr3	ds.b
compcsr4	ds.b
compcsr5	ds.b
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
ports	segment byte at 4926 'ports'
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
optionopt2	ds.b
optionopt3	ds.b
optionopt4	ds.b
optionopt5	ds.b
optionoptbl	ds.w
flash	segment byte at 8000-9FFF 'rom'
interruptreset	dc.l {$82000000+start}
interrupttrap	dc.l {$82000000+dumb}
interruptflash	dc.l {$82000000+dumb}
interruptdma101	dc.l {$82000000+dumb}
interruptdma123	dc.l {$82000000+dumb}
interruptrtc	dc.l {$82000000+dumb}
interruptextief	dc.l {$82000000+dumb}
interruptextibg	dc.l {$82000000+dumb}
interruptextidh	dc.l {$82000000+dumb}
interruptexti0	dc.l {$82000000+dumb}
interruptexti1	dc.l {$82000000+dumb}
interruptexti2	dc.l {$82000000+dumb}
interruptexti3	dc.l {$82000000+dumb}
interruptexti4	dc.l {$82000000+dumb}
interruptexti5	dc.l {$82000000+dumb}
interruptexti6	dc.l {$82000000+dumb}
interruptexti7	dc.l {$82000000+dumb}
interruptlcd	dc.l {$82000000+dumb}
interruptclktim1dac	dc.l {$82000000+dumb}
interruptcomp1comp2adc1	dc.l {$82000000+dumb}
interrupttimusart2t	dc.l {$82000000+dumb}
interrupttimusart2r	dc.l {$82000000+dumb}
interrupttimusart3t	dc.l {$82000000+dumb}
interrupttimusart3r	dc.l {$82000000+dumb}
interrupttim1u	dc.l {$82000000+dumb}
interrupttim1c	dc.l {$82000000+dumb}
interrupttim4u	dc.l {$82000000+dumb}
interruptspi1	dc.l {$82000000+dumb}
interrupttim5usart1t	dc.l {$82000000+dumb}
interrupttim5usart1r	dc.l {$82000000+dumb}
interrupti2cspi2	dc.l {$82000000+dumb}
dumb
	iret		; iret in template.stm8l._ : 50
start
	ldw x,#$03ff		; x=#0x03ff in template.stm8l._ : 53
	ldw sp,x		; sp=x in template.stm8l._ : 53
loop
	nop		; nop in template.stm8l._ : 56
	jra loop		; gonearloop in template.stm8l._ : 57

	end

