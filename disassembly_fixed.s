start:
	ila	$2,253856	# 3dfa0
	hbrr	label_434,label_43c	# 43c
	ori	$83,$3,0
	shlqbyi	$81,$4,0
	ori	$1,$2,0
	shlqbyi	$82,$5,0
	ori	$84,$6,0
	shlqbyi	$85,$7,0
	ori	$86,$8,0
	shlqbyi	$87,$9,0
	ori	$88,$10,0
	shlqbyi	$89,$11,0
	ila	$80,194964	# 2f994
label_434:
	br	label_43c	# 43c
label_438:
	bisl	$0,$3
label_43c:
	lqd	$5,0($80)
	rotqby	$3,$5,$80
	ai	$80,$80,-4
	ceqi	$4,$3,-1
	brz	$4,label_438	# 438
	hbrr	label_478,func_488	# 488
	ori	$6,$84,0
	shlqbyi	$7,$85,0
	ori	$8,$86,0
	shlqbyi	$9,$87,0
	ori	$10,$88,0
	shlqbyi	$11,$89,0
	ori	$4,$81,0
	ori	$5,$82,0
	shlqbyi	$3,$83,0
label_478:
	brsl	$0,func_488	# 488
	brsl	$0,func_1e0f8	# 1e0f8
	stop
	lnop
.global func_488
func_488:
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ai	$3,$1,32	# 20
	brsl	$0,func_4f8	# 4f8
	ai	$3,$1,32	# 20
	brsl	$0,func_e40	# e40
	il	$4,0
	cgti	$2,$3,-1
	shlqbyi	$6,$3,0
	il	$5,0
	ai	$3,$1,32	# 20
	brz	$2,label_4cc	# 4cc
	brsl	$0,func_e38	# e38
	ai	$3,$1,32	# 20
	brsl	$0,func_1120	# 1120
	br	label_4e4	# 4e4
label_4cc:
	ai	$3,$1,32	# 20
	ori	$5,$6,0
	il	$4,1
	brsl	$0,func_e38	# e38
	ai	$3,$1,32	# 20
	brsl	$0,func_1028	# 1028
label_4e4:
	lqd	$0,64($1)	# 40
	il	$3,0
	ai	$1,$1,48	# 30
	bi	$0
	lnop
.global func_4f8
func_4f8:
	ila	$4,141384	# 22848
	lqd	$6,0($3)
	cwd	$5,0($3)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
	bi	$0
.global func_510
func_510:
	ila	$4,152320	# 25300
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_d938	# d938
	ori	$3,$80,0
	ila	$4,141008	# 226d0
	brsl	$0,func_d938	# d938
	ori	$3,$80,0
	ila	$4,141040	# 226f0
	brsl	$0,func_d938	# d938
	ori	$3,$80,0
	ila	$4,141072	# 22710
	brsl	$0,func_d938	# d938
	ori	$3,$80,0
	ila	$4,152320	# 25300
	brsl	$0,func_d938	# d938
	ori	$3,$80,0
	ila	$4,141120	# 22740
	brsl	$0,func_d938	# d938
	ori	$3,$80,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	ila	$4,152320	# 25300
	lqd	$80,-16($1)
	br	func_d938	# d938
.global func_580
func_580:
	ai	$9,$5,13
	hbrr	label_5d4,label_654	# 654
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$5,0
	stqd	$82,-48($1)
	ori	$82,$6,0
	stqd	$83,-64($1)
	ori	$81,$4,0
	stqd	$0,16($1)
	ori	$83,$7,0
	stqd	$84,-80($1)
	ori	$3,$81,0
	stqd	$1,-176($1)
	ai	$1,$1,-176
	lqd	$8,0($5)
	il	$7,-3
	ai	$4,$1,32	# 20
	rotqby	$6,$8,$9
	ceqbi	$5,$6,0
	xsbh	$2,$5
label_5d4:
	brhnz	$2,label_654	# 654
	lqr	$84,data_22810
	brsl	$0,func_1ab0	# 1ab0
	ori	$5,$80,0
	fsmbi	$2,257	# 101
	ai	$6,$1,48	# 30
	brnz	$3,label_650	# 650
	andbi	$7,$2,16
	lqd	$4,32($1)	# 20
	cg	$3,$81,$7
	shufb	$3,$3,$3,$84
	rotqbyi	$4,$4,4
	addx	$3,$81,$7
	brsl	$0,func_18e0	# 18e0
	hbrr	label_64c,label_654	# 654
	il	$7,0
	cdd	$6,0($82)
	cdd	$8,0($83)
	brnz	$3,label_650	# 650
	lqd	$18,48($1)	# 30
	lqd	$14,0($82)
	cg	$17,$81,$18
	rotqbyi	$12,$18,8
	shufb	$15,$17,$17,$84
	addx	$15,$81,$18
	shufb	$13,$15,$14,$6
	stqd	$13,0($82)
	lqd	$11,0($83)
	shufb	$10,$12,$11,$8
	stqd	$10,0($83)
label_64c:
	br	label_654	# 654
label_650:
	il	$7,-1
label_654:
	lqd	$0,192($1)	# c0
	ai	$1,$1,176	# b0
	shlqbyi	$3,$7,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
.global func_678
func_678:
	hbrr	label_6a4,func_f3e0	# f3e0
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$81,-32($1)
	il	$5,1024	# 400
	stqd	$82,-48($1)
	ori	$81,$3,0
	stqd	$0,16($1)
	il	$82,-1
	stqd	$1,-112($1)
	ai	$1,$1,-112
label_6a4:
	brsl	$0,func_f3e0	# f3e0
	ai	$6,$1,32	# 20
	ceq	$5,$3,$82
	ori	$4,$3,0
	gb	$2,$5
	ila	$5,141200	# 22790
	cgti	$3,$2,11
	brnz	$3,label_710	# 710
	ai	$7,$1,48	# 30
	ori	$3,$81,0
	brsl	$0,func_580	# 580
	brnz	$3,label_710	# 710
	lqd	$6,48($1)	# 30
	ori	$3,$81,0
	lqd	$4,32($1)	# 20
	rotqbyi	$5,$6,4
	brsl	$0,func_f3e0	# f3e0
	hbrr	label_70c,label_714	# 714
	lqd	$9,0($80)
	ceq	$11,$3,$82
	cdd	$4,0($80)
	il	$6,0
	gb	$10,$11
	shufb	$8,$3,$9,$4
	cgti	$7,$10,11
	stqd	$8,0($80)
label_70c:
	brz	$7,label_714	# 714
label_710:
	il	$6,-1
label_714:
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	shlqbyi	$3,$6,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_730
func_730:
	hbrr	label_758,label_750	# 750
	lqr	$5,data_27a00
	rotqbyi	$4,$5,13
	ceqbi	$3,$4,0
	xsbh	$2,$3
	brhnz	$2,label_768	# 768
	il	$6,0
	wrch	$ch23,$6
label_750:
	rchcnt	$8,$ch23
	ceqi	$7,$8,1
label_758:
	brz	$7,label_750	# 750
	rdch	$2,$ch24
	il	$9,0
	stqr	$9,data_27a00
label_768:
	il	$11,4
	il	$10,2
	wrch	$ch22,$11
	wrch	$ch23,$10
	rdch	$2,$ch24
	bi	$0
.global func_780
func_780:
	ori	$8,$3,0
	fsmbi	$15,257	# 101
	il	$5,8
	lqr	$11,data_22820
	il	$4,2
	lqr	$13,data_22810
	il	$2,64	# 40
	hbrr	label_7e8,func_730	# 730
	andbi	$14,$15,15
	stqd	$80,-16($1)
	shlqbyi	$7,$3,4
	and	$10,$3,$14
	stqd	$0,16($1)
	cg	$12,$10,$11
	stqd	$1,-48($1)
	shufb	$9,$12,$12,$13
	ai	$1,$1,-48
	addx	$9,$10,$11
	shlqbyi	$80,$9,4
	ori	$6,$80,0
	wrch	$ch16,$6
	wrch	$ch17,$8
	wrch	$ch18,$7
	wrch	$ch19,$5
	wrch	$ch20,$4
	wrch	$ch21,$2
label_7e8:
	brsl	$0,func_730	# 730
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$3,0($80)
	rotqby	$3,$3,$80
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_808
func_808:
	hbrr	label_838,func_f3e0	# f3e0
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	ori	$81,$3,0
	stqd	$83,-64($1)
	ori	$82,$5,0
	stqd	$0,16($1)
	il	$5,1024	# 400
	stqd	$1,-192($1)
	ai	$1,$1,-192
	fsmbi	$83,65535	# ffff
label_838:
	brsl	$0,func_f3e0	# f3e0
	ai	$6,$1,32	# 20
	ori	$80,$3,0
	ai	$7,$1,96	# 60
	ceq	$4,$80,$83
	gb	$3,$4
	ori	$4,$80,0
	cgti	$2,$3,11
	brnz	$2,label_94c	# 94c
	ila	$5,141216	# 227a0
	ori	$3,$81,0
	brsl	$0,func_580	# 580
	brnz	$3,label_94c	# 94c
	lqd	$8,96($1)	# 60
	ori	$3,$81,0
	lqd	$4,32($1)	# 20
	rotqbyi	$5,$8,4
	brsl	$0,func_f3e0	# f3e0
	ceq	$7,$3,$83
	gb	$6,$7
	cgti	$5,$6,11
	brnz	$5,label_94c	# 94c
	brsl	$0,func_780	# 780
	hbrr	label_8cc,func_580	# 580
	il	$16,0
	shlqbyi	$4,$80,0
	ila	$11,141248	# 227c0
	clgt	$15,$16,$3
	ceq	$12,$16,$3
	cgt	$14,$16,$3
	xswd	$13,$15
	shlqbyi	$3,$81,0
	ila	$10,141232	# 227b0
	selb	$9,$14,$13,$12
	ai	$6,$1,80	# 50
	selb	$5,$11,$10,$9
	ai	$7,$1,64	# 40
label_8cc:
	brsl	$0,func_580	# 580
	il	$5,1024	# 400
	brnz	$3,label_94c	# 94c
	ori	$3,$81,0
	lqd	$4,80($1)	# 50
	brsl	$0,func_f3e0	# f3e0
	ila	$5,141264	# 227d0
	ceq	$19,$3,$83
	shlqbyi	$4,$3,0
	ai	$6,$1,48	# 30
	gb	$18,$19
	ai	$7,$1,112	# 70
	cgti	$17,$18,11
	brnz	$17,label_94c	# 94c
	ori	$3,$81,0
	brsl	$0,func_580	# 580
	brnz	$3,label_94c	# 94c
	ori	$3,$81,0
	lqd	$26,112($1)	# 70
	lqd	$4,48($1)	# 30
	rotqbyi	$5,$26,4
	brsl	$0,func_f3e0	# f3e0
	hbrr	label_948,label_950	# 950
	ceq	$25,$3,$83
	lqd	$22,0($82)
	il	$6,0
	cdd	$23,0($82)
	gb	$24,$25
	shufb	$21,$3,$22,$23
	cgti	$20,$24,11
	stqd	$21,0($82)
label_948:
	brz	$20,label_950	# 950
label_94c:
	il	$6,-1
label_950:
	ori	$3,$6,0
	lqd	$0,208($1)	# d0
	ai	$1,$1,192	# c0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
.global func_970
func_970:
	ila	$8,253952	# 3e000
	hbrr	label_9c0,func_730	# 730
	il	$2,64	# 40
	shlqbyi	$7,$3,4
	stqd	$81,-32($1)
	ori	$81,$5,0
	ori	$5,$3,0
	wrch	$ch16,$8
	ori	$6,$81,0
	stqd	$80,-16($1)
	il	$3,2
	wrch	$ch17,$5
	ori	$80,$4,0
	wrch	$ch18,$7
	wrch	$ch19,$6
	stqd	$0,16($1)
	stqd	$1,-64($1)
	wrch	$ch20,$3
	ai	$1,$1,-64
	wrch	$ch21,$2
label_9c0:
	brsl	$0,func_730	# 730
	il	$4,0
	ila	$7,253952	# 3e000
	br	label_9ec	# 9ec
label_9d0:
	hbrr	label_9f8,0
	lqx	$12,$4,$7
	lqx	$10,$4,$80
	rotqby	$11,$12,$5
	shufb	$9,$11,$10,$6
	stqx	$9,$4,$80
	ai	$4,$4,4
label_9ec:
	clgt	$13,$81,$4
	a	$5,$4,$7
	cwx	$6,$4,$80
label_9f8:
	brnz	$13,label_9d0	# 9d0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$3,$81,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_a18
func_a18:
	hbrr	label_a5c,func_f3e0	# f3e0
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	ori	$82,$4,0
	stqd	$84,-80($1)
	ori	$83,$3,0
	stqd	$86,-112($1)
	ori	$86,$5,0
	stqd	$0,16($1)
	il	$5,992	# 3e0
	stqd	$80,-16($1)
	il	$84,-1
	stqd	$85,-96($1)
	stqd	$87,-128($1)
	stqd	$1,-256($1)
	ai	$1,$1,-256
label_a5c:
	brsl	$0,func_f3e0	# f3e0
	ori	$81,$3,0
	ceq	$4,$81,$84
	gb	$3,$4
	cgti	$2,$3,11
	brnz	$2,label_c2c	# c2c
	ori	$3,$83,0
	brsl	$0,func_f2a8	# f2a8
	ceqi	$5,$3,3
	brz	$5,label_ac4	# ac4
	ori	$3,$83,0
	brsl	$0,func_dc80	# dc80
	hbrr	label_ab0,func_580	# 580
	ila	$8,141296	# 227f0
	shlqbyi	$4,$81,0
	ceqi	$7,$3,0
	shlqbyi	$3,$83,0
	ila	$6,141280	# 227e0
	selb	$5,$8,$6,$7
	ai	$6,$1,64	# 40
	ai	$7,$1,48	# 30
label_ab0:
	brsl	$0,func_580	# 580
	ori	$80,$3,0
	brnz	$3,label_c30	# c30
	lqd	$82,64($1)	# 40
	br	label_b58	# b58
label_ac4:
	ori	$3,$83,0
	ori	$4,$81,0
	ila	$5,141312	# 22800
	ai	$6,$1,48	# 30
	ai	$7,$1,64	# 40
	brsl	$0,func_580	# 580
	ori	$80,$3,0
	brnz	$3,label_c30	# c30
	lqd	$14,48($1)	# 30
	ori	$3,$83,0
	lqr	$20,data_22830
	il	$5,32	# 20
	hbrr	label_b24,func_f3e0	# f3e0
	lqr	$80,data_22810
	cdd	$15,0($1)
	bg	$19,$81,$14
	shufb	$16,$19,$19,$20
	sfx	$16,$81,$14
	cg	$17,$16,$82
	shufb	$13,$17,$17,$80
	addx	$13,$16,$82
	ori	$4,$13,0
	shufb	$12,$13,$14,$15
	stqd	$12,48($1)	# 30
label_b24:
	brsl	$0,func_f3e0	# f3e0
	ceq	$11,$3,$84
	gb	$10,$11
	cgti	$9,$10,11
	brnz	$9,label_c2c	# c2c
	ai	$4,$1,96	# 60
	il	$5,32	# 20
	brsl	$0,func_970	# 970
	lqd	$21,48($1)	# 30
	lqd	$22,96($1)	# 60
	cg	$23,$21,$22
	shufb	$82,$23,$23,$80
	addx	$82,$21,$22
label_b58:
	ori	$4,$82,0
	shlqbyi	$3,$83,0
	il	$5,992	# 3e0
	fsmbi	$87,65535	# ffff
	brsl	$0,func_f3e0	# f3e0
	hbrr	label_bb0,func_580	# 580
	ori	$4,$3,0
	ceq	$26,$4,$87
	gb	$25,$26
	cgti	$24,$25,11
	brnz	$24,label_c2c	# c2c
	fsmbi	$84,257	# 101
	ori	$3,$83,0
	lqr	$85,data_22810
	ila	$5,141264	# 227d0
	ai	$6,$1,32	# 20
	andbi	$84,$84,16
	ai	$7,$1,80	# 50
	cg	$27,$4,$84
	shufb	$81,$27,$27,$85
	addx	$81,$4,$84
	ori	$4,$81,0
label_bb0:
	brsl	$0,func_580	# 580
	ori	$80,$3,0
	brnz	$3,label_c30	# c30
	lqd	$36,32($1)	# 20
	cg	$45,$82,$84
	lqr	$44,data_22830
	ori	$3,$83,0
	hbrr	label_c08,func_f3e0	# f3e0
	shufb	$39,$45,$45,$85
	lqd	$42,80($1)	# 50
	cdd	$37,0($1)
	bg	$43,$81,$36
	addx	$39,$82,$84
	shufb	$38,$43,$43,$44
	rotqbyi	$5,$42,4
	sfx	$38,$81,$36
	cg	$40,$38,$39
	shufb	$35,$40,$40,$85
	addx	$35,$38,$39
	shufb	$34,$35,$36,$37
	ori	$4,$35,0
	stqd	$34,32($1)	# 20
label_c08:
	brsl	$0,func_f3e0	# f3e0
	lqd	$30,0($86)
	ceq	$33,$3,$87
	cdd	$31,0($86)
	gb	$32,$33
	shufb	$29,$3,$30,$31
	cgti	$28,$32,11
	stqd	$29,0($86)
	brz	$28,label_c30	# c30
label_c2c:
	il	$80,-1
label_c30:
	ori	$3,$80,0
	lqd	$0,272($1)	# 110
	ai	$1,$1,256	# 100
	hbr	label_c60,$0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
label_c60:
	bi	$0
	lnop
.global func_c68
func_c68:
	hbrr	label_c90,func_f2a8	# f2a8
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$82,-48($1)
	ori	$82,$5,0
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
label_c90:
	brsl	$0,func_f2a8	# f2a8
	hbrr	label_cc0,func_a18	# a18
	cgti	$2,$3,0
	shlqbyi	$4,$81,0
	ori	$3,$80,0
	shlqbyi	$5,$82,0
	brz	$2,label_cc4	# cc4
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
label_cc0:
	br	func_a18	# a18
label_cc4:
	hbrr	label_ce8,func_808	# 808
	ori	$3,$80,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	shlqbyi	$4,$81,0
	ori	$5,$82,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
label_ce8:
	br	func_808	# 808
	lnop
.global func_cf0
func_cf0:
	hbrr	label_d1c,func_f348	# f348
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	ori	$82,$4,0
	stqd	$84,-80($1)
	ori	$83,$3,0
	stqd	$1,-112($1)
	ai	$1,$1,-112
label_d1c:
	brsl	$0,func_f348	# f348
	ori	$81,$3,0
	shlqbyi	$3,$83,0
	brsl	$0,func_e008	# e008
	hbrr	label_d5c,func_d548	# d548
	ceqbi	$29,$3,0
	shlqbyi	$3,$83,0
	ila	$26,3176	# c68
	xsbh	$28,$29
	ila	$24,3880	# f28
	ceqhi	$27,$28,0
	ila	$23,3880	# f28
	fsm	$25,$27
	ila	$22,3176	# c68
	selb	$80,$26,$24,$25
	selb	$84,$23,$22,$25
label_d5c:
	brsl	$0,func_d548	# d548
	ila	$19,3880	# f28
	lqd	$4,0($83)
	ceqbi	$20,$3,0
	ila	$17,3176	# c68
	xsbh	$3,$20
	ceqhi	$5,$3,0
	ori	$3,$83,0
	rotqby	$15,$4,$83
	ori	$4,$81,0
	fsm	$18,$5
	ori	$5,$82,0
	selb	$9,$80,$19,$18
	selb	$84,$84,$17,$18
	a	$13,$15,$9
	andi	$14,$9,1
	ai	$6,$13,-1
	ceqbi	$12,$14,0
	lqd	$8,0($6)
	xsbh	$11,$12
	ceqhi	$10,$11,0
	fsm	$7,$10
	rotqby	$2,$8,$6
	selb	$80,$9,$2,$7
	bisl	$0,$80
	ori	$4,$81,0
	shlqbyi	$5,$82,0
	brz	$3,label_e0c	# e0c
	lqd	$39,0($83)
	andi	$41,$84,1
	shlqbyi	$3,$83,0
	ceqbi	$40,$41,0
	xsbh	$37,$40
	rotqby	$38,$39,$83
	ceqhi	$35,$37,0
	fsm	$31,$35
	a	$36,$38,$84
	ai	$34,$36,-1
	lqd	$33,0($34)
	rotqby	$32,$33,$34
	selb	$30,$84,$32,$31
	bisl	$0,$30
	il	$2,-1
	brnz	$3,label_e10	# e10
label_e0c:
	il	$2,0
label_e10:
	ori	$3,$2,0
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
	lnop
.global func_e38
func_e38:
	br	func_f590	# f590
	lnop
.global func_e40
func_e40:
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
	brsl	$0,func_10050	# 10050
	ori	$3,$81,0
	brsl	$0,func_ff8	# ff8
	ori	$80,$3,0
	brnz	$3,label_f0c	# f0c
	brsl	$0,func_d7d8	# d7d8
	ori	$3,$81,0
	lqd	$7,0($81)
	rotqby	$6,$7,$81
	ai	$2,$6,24	# 18
	lqd	$5,0($2)
	rotqby	$4,$5,$2
	bisl	$0,$4
	ori	$3,$81,0
	brsl	$0,func_fc60	# fc60
	ai	$4,$1,32	# 20
	ori	$80,$3,0
	shlqbyi	$3,$81,0
	brnz	$80,label_f0c	# f0c
	il	$80,-1
	brsl	$0,func_cf0	# cf0
	brz	$3,label_eb8	# eb8
	brsl	$0,func_d808	# d808
	br	label_f0c	# f0c
label_eb8:
	brsl	$0,func_d5d8	# d5d8
	lqd	$11,0($81)
	ori	$3,$81,0
	lqd	$4,32($1)	# 20
	rotqby	$10,$11,$81
	lqd	$9,16($10)
	rotqby	$8,$9,$10
	bisl	$0,$8
	ori	$80,$3,0
	brz	$3,label_eec	# eec
	il	$80,-1
	brsl	$0,func_d8a0	# d8a0
	br	label_f0c	# f0c
label_eec:
	brsl	$0,func_d550	# d550
	ori	$3,$81,0
	lqd	$16,0($81)
	rotqby	$15,$16,$81
	ai	$14,$15,20	# 14
	lqd	$13,0($14)
	rotqby	$12,$13,$14
	bisl	$0,$12
label_f0c:
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	shlqbyi	$3,$80,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_f28
func_f28:
	hbrr	label_f50,func_f2a8	# f2a8
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	ori	$81,$5,0
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
label_f50:
	brsl	$0,func_f2a8	# f2a8
	ori	$4,$80,0
	cgti	$2,$3,0
	shlqbyi	$5,$81,0
	ori	$3,$82,0
	brnz	$2,label_f80	# f80
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	br	func_678	# 678
label_f80:
	il	$3,-1
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_fa0
func_fa0:
	ceqi	$2,$3,1
	brz	$2,label_fbc	# fbc
	ila	$6,65535	# ffff
	ila	$3,194992	# 2f9b0
	ceq	$5,$4,$6
	biz	$5,$0
	br	func_26b8	# 26b8
label_fbc:
	binz	$3,$0
	ila	$8,65535	# ffff
	ila	$3,194992	# 2f9b0
	ceq	$7,$4,$8
	biz	$7,$0
	br	func_2818	# 2818
	lnop
.global func_fd8
func_fd8:
	il	$3,0
	ila	$4,65535	# ffff
	br	func_fa0	# fa0
	lnop
.global func_fe8
func_fe8:
	il	$3,1
	ila	$4,65535	# ffff
	br	func_fa0	# fa0
	lnop
.global func_ff8
func_ff8:
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ai	$3,$1,32	# 20
	brsl	$0,func_1740	# 1740
	lqd	$0,64($1)	# 40
	ceqi	$4,$3,0
	fsmbi	$3,0
	il	$2,-5
	ai	$1,$1,48	# 30
	selb	$3,$2,$3,$4
	bi	$0
.global func_1028
func_1028:
	il	$3,0
	il	$2,2
	wrch	$ch64,$3
	wrch	$ch64,$2
	bi	$0
	lnop
.global func_1040
func_1040:
	ori	$6,$3,0
	fsmbi	$18,257	# 101
	il	$2,32	# 20
	lqr	$14,data_22820
	lqr	$16,data_22810
	hbrr	label_10a8,func_730	# 730
	andbi	$17,$18,15
	shlqbyi	$7,$3,4
	and	$13,$3,$17
	il	$3,2
	cg	$15,$13,$14
	shufb	$12,$15,$15,$16
	addx	$12,$13,$14
	shlqbyi	$9,$12,4
	ori	$11,$9,0
	lqd	$10,0($9)
	cwd	$8,0($9)
	wrch	$ch16,$11
	wrch	$ch17,$6
	wrch	$ch18,$7
	shufb	$5,$4,$10,$8
	il	$4,4
	wrch	$ch19,$4
	wrch	$ch20,$3
	stqd	$5,0($9)
	wrch	$ch21,$2
label_10a8:
	br	func_730	# 730
	lnop
.global func_10b0
func_10b0:
	il	$4,1280	# 500
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$1,-64($1)
	ori	$80,$3,0
	fsmbi	$3,0
	ai	$1,$1,-64
	brsl	$0,func_1040	# 1040
	ori	$3,$80,0
	brsl	$0,func_f3b8	# f3b8
	il	$10,0
	lqd	$9,32($1)	# 20
	il	$5,1
	cwd	$11,0($1)
	hbrr	label_111c,func_1040	# 1040
	cbd	$6,0($1)
	cbd	$7,1($1)
	lqd	$0,80($1)	# 50
	shufb	$8,$10,$9,$11
	shufb	$4,$3,$8,$6
	fsmbi	$3,257	# 101
	shufb	$2,$5,$4,$7
	andbi	$3,$3,4
	stqd	$2,32($1)	# 20
	ai	$1,$1,64	# 40
	shlqbyi	$4,$2,0
	lqd	$80,-16($1)
label_111c:
	br	func_1040	# 1040
.global func_1120
func_1120:
	ila	$8,131072	# 20000
	hbrr	label_1154,func_1040	# 1040
	il	$4,-2
	lqr	$6,data_260a0
	lqr	$5,data_22870
	lqr	$7,data_22810
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	wrch	$ch64,$8
	cg	$3,$6,$5
	shufb	$3,$3,$3,$7
	addx	$3,$6,$5
label_1154:
	brsl	$0,func_1040	# 1040
	il	$2,2
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	wrch	$ch64,$2
	bi	$0
	lnop
.global func_1170
func_1170:
	ila	$4,142072	# 22af8
	lqd	$7,0($3)
	cwd	$6,0($3)
	shufb	$2,$4,$7,$6
	stqd	$2,0($3)
	br	func_46a0	# 46a0
.global func_1188
func_1188:
	ila	$3,194992	# 2f9b0
	hbrr	label_11b8,func_1e00	# 1e00
	stqd	$0,16($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$1,-496($1)
	ai	$1,$1,-496
	ai	$83,$1,240	# f0
	cwd	$84,0($1)
label_11b8:
	brsl	$0,func_1e00	# 1e00
	ori	$3,$83,0
	il	$4,0
	brsl	$0,func_4a58	# 4a58
	ori	$3,$83,0
	lqd	$6,32($1)	# 20
	ila	$4,253952	# 3e000
	il	$5,8192	# 2000
	shufb	$2,$83,$6,$84
	stqd	$2,32($1)	# 20
	brsl	$0,func_4618	# 4618
	hbrr	label_1208,func_2210	# 2210
	ila	$3,194992	# 2f9b0
	il	$4,1
	ila	$5,141472	# 228a0
	ila	$6,141504	# 228c0
	ila	$7,162320	# 27a10
	ila	$8,141456	# 22890
	ai	$9,$1,32	# 20
	il	$10,1
label_1208:
	brsl	$0,func_2210	# 2210
	ori	$82,$3,0
	brz	$3,label_1424	# 1424
	ori	$3,$83,0
	br	label_1458	# 1458
label_121c:
	ila	$3,194992	# 2f9b0
	ai	$4,$1,64	# 40
	brsl	$0,func_1b48	# 1b48
	hbrr	label_125c,func_4a58	# 4a58
	brnz	$3,label_141c	# 141c
	lqd	$9,80($1)	# 50
	lqr	$8,data_22880
	clgt	$4,$9,$8
	ceq	$5,$9,$8
	xswd	$7,$4
	selb	$3,$4,$7,$5
	brz	$3,label_141c	# 141c
	ai	$82,$1,192	# c0
	ori	$3,$83,0
	fsmbi	$4,0
	ai	$81,$1,144	# 90
label_125c:
	brsl	$0,func_4a58	# 4a58
	ai	$80,$1,96	# 60
	shlqbyi	$3,$82,0
	il	$4,1
	brsl	$0,func_4a58	# 4a58
	ori	$3,$81,0
	il	$4,2
	brsl	$0,func_4a58	# 4a58
	ori	$3,$80,0
	il	$4,3
	brsl	$0,func_4a58	# 4a58
	il	$15,0
	lqd	$17,48($1)	# 30
	ila	$3,194992	# 2f9b0
	lqd	$14,32($1)	# 20
	ai	$4,$1,352	# 160
	hbrr	label_12c8,func_2870	# 2870
	cdd	$16,0($1)
	cwd	$10,4($1)
	shufb	$13,$15,$17,$16
	shufb	$12,$15,$14,$16
	shufb	$11,$83,$13,$84
	shufb	$81,$81,$12,$84
	shufb	$82,$82,$11,$10
	shufb	$80,$80,$81,$10
	stqd	$82,48($1)	# 30
	stqd	$80,32($1)	# 20
label_12c8:
	brsl	$0,func_2870	# 2870
	ori	$82,$3,0
	brnz	$3,label_143c	# 143c
	lqd	$20,368($1)	# 170
	il	$83,0
	rotqbyi	$19,$20,14
	ceqhi	$18,$19,2
	brhnz	$18,label_13e4	# 13e4
	br	label_1414	# 1414
label_12ec:
	brsl	$0,func_2848	# 2848
	hbrr	label_1324,label_13dc	# 13dc
	fsmbi	$6,257	# 101
	brnz	$3,label_140c	# 140c
	lqd	$28,320($1)	# 140
	il	$29,0
	lqd	$5,288($1)	# 120
	andhi	$6,$6,257	# 101
	ceq	$27,$28,$29
	ceqi	$24,$5,1
	gb	$26,$27
	nor	$22,$24,$24
	cgti	$23,$26,11
	or	$21,$23,$22
label_1324:
	brnz	$21,label_13dc	# 13dc
	hbrr	label_134c,func_21c00
	lqd	$81,336($1)	# 150
	rotqbyi	$3,$5,8
	clgt	$33,$81,$6
	ceq	$31,$81,$6
	shlqbyi	$4,$81,0
	xswd	$32,$33
	selb	$30,$33,$32,$31
	brz	$30,label_1370	# 1370
label_134c:
	brsl	$0,func_21c00
	ori	$4,$81,0
	ori	$84,$3,0
	lqd	$3,304($1)	# 130
	brsl	$0,func_21c00
	ceq	$36,$84,$3
	gb	$35,$36
	cgti	$34,$35,11
	brz	$34,label_1414	# 1414
label_1370:
	ai	$3,$1,240	# f0
	ila	$4,253952	# 3e000
	il	$5,2048	# 800
	brsl	$0,func_4618	# 4618
	ai	$3,$1,192	# c0
	ila	$4,256000	# 3e800
	il	$5,2048	# 800
	brsl	$0,func_4618	# 4618
	ai	$3,$1,144	# 90
	ila	$4,258048	# 3f000
	il	$5,2048	# 800
	brsl	$0,func_4618	# 4618
	ai	$3,$1,96	# 60
	ila	$4,260096	# 3f800
	il	$5,2048	# 800
	brsl	$0,func_4618	# 4618
	hbrr	label_13d4,func_2ab8	# 2ab8
	lqd	$6,304($1)	# 130
	ori	$5,$83,0
	ila	$3,194992	# 2f9b0
	il	$4,2
	ai	$7,$1,48	# 30
	il	$8,2
	ai	$9,$1,32	# 20
	il	$10,2
label_13d4:
	brsl	$0,func_2ab8	# 2ab8
	brnz	$3,label_140c	# 140c
label_13dc:
	hbrr	label_1404,label_12ec	# 12ec
	ai	$83,$83,1
label_13e4:
	lqd	$41,400($1)	# 190
	ila	$40,65535	# ffff
	shlqbyi	$4,$83,0
	ai	$5,$1,288	# 120
	ila	$3,194992	# 2f9b0
	rotqbyi	$39,$41,6
	and	$38,$39,$40
	clgt	$37,$38,$83
label_1404:
	brnz	$37,label_12ec	# 12ec
	br	label_143c	# 143c
label_140c:
	ori	$82,$3,0
	br	label_143c	# 143c
label_1414:
	il	$82,29	# 1d
	br	label_143c	# 143c
label_141c:
	il	$82,19	# 13
	br	label_145c	# 145c
label_1424:
	ori	$3,$83,0
	brsl	$0,func_1170	# 1170
	lqr	$43,data_2fb60
	rotqbyi	$42,$43,8
	brhz	$42,label_121c	# 121c
	br	label_141c	# 141c
label_143c:
	ai	$3,$1,96	# 60
	brsl	$0,func_1170	# 1170
	ai	$3,$1,144	# 90
	brsl	$0,func_1170	# 1170
	ai	$3,$1,192	# c0
	brsl	$0,func_1170	# 1170
	ai	$3,$1,240	# f0
label_1458:
	brsl	$0,func_1170	# 1170
label_145c:
	lqd	$0,512($1)	# 200
	ai	$1,$1,496	# 1f0
	shlqbyi	$3,$82,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
.global func_1480
func_1480:
	rothmi	$3,$6,-3
	hbrr	label_14ac,label_154c	# 154c
	il	$2,8191	# 1fff
	stqd	$0,16($1)
	ori	$18,$4,0
	stqd	$1,-32($1)
	ori	$17,$5,0
	and	$9,$3,$2
	ai	$1,$1,-32
	shli	$13,$9,3
	andi	$6,$6,7
label_14ac:
	br	label_154c	# 154c
label_14b0:
	ila	$16,65535	# ffff
	hbrr	label_1514,label_1534	# 1534
	a	$27,$18,$9
	lqx	$22,$18,$9
	a	$26,$17,$9
	lqx	$20,$17,$9
	and	$16,$6,$16
	ai	$23,$27,13
	ai	$21,$26,13
	sfi	$25,$16,7
	il	$24,1
	rotqby	$5,$22,$23
	ahi	$6,$6,1
	rotqby	$14,$20,$21
	shl	$15,$24,$25
	clgthi	$4,$6,7
	andi	$5,$5,255	# ff
	andi	$14,$14,255	# ff
	and	$11,$5,$15
	and	$12,$14,$15
	ceqhi	$10,$4,0
	ceq	$19,$11,$12
	ai	$12,$9,1
	fsm	$15,$10
	ai	$11,$13,8
label_1514:
	brnz	$19,label_1534	# 1534
	a	$6,$13,$16
	ila	$3,141520	# 228d0
	sf	$4,$8,$6
	shlqbyi	$6,$14,0
	brsl	$0,func_1df60	# 1df60
	il	$3,0
	br	label_1554	# 1554
label_1534:
	ceqhi	$28,$4,0
	il	$29,0
	selb	$9,$12,$9,$15
	selb	$6,$29,$6,$28
	selb	$13,$11,$13,$15
	ahi	$7,$7,-1
label_154c:
	brhnz	$7,label_14b0	# 14b0
	il	$3,1
label_1554:
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_1560
func_1560:
	rotqbyi	$7,$3,8
	hbrr	label_1590,func_780	# 780
	lqr	$4,data_22920
	lqr	$2,data_22810
	shlqbyi	$6,$7,9
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	shlqbii	$5,$6,5
	cg	$3,$5,$4
	shufb	$3,$3,$3,$2
	addx	$3,$5,$4
label_1590:
	brsl	$0,func_780	# 780
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	shlqbyi	$3,$3,4
	bi	$0
	lnop
.global func_15a8
func_15a8:
	ori	$8,$3,0
	fsmbi	$15,257	# 101
	il	$5,4
	lqr	$11,data_22820
	il	$4,2
	lqr	$13,data_22810
	il	$2,64	# 40
	hbrr	label_1610,func_730	# 730
	andbi	$14,$15,15
	stqd	$80,-16($1)
	shlqbyi	$7,$3,4
	and	$10,$3,$14
	stqd	$0,16($1)
	cg	$12,$10,$11
	stqd	$1,-48($1)
	shufb	$9,$12,$12,$13
	ai	$1,$1,-48
	addx	$9,$10,$11
	shlqbyi	$80,$9,4
	ori	$6,$80,0
	wrch	$ch16,$6
	wrch	$ch17,$8
	wrch	$ch18,$7
	wrch	$ch19,$5
	wrch	$ch20,$4
	wrch	$ch21,$2
label_1610:
	brsl	$0,func_730	# 730
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$3,0($80)
	rotqby	$3,$3,$80
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_1630
func_1630:
	il	$4,0
	hbrr	label_166c,func_15a8	# 15a8
	fsmbi	$9,257	# 101
	stqd	$80,-16($1)
	ori	$80,$3,0
	lqr	$3,data_22930
	stqd	$0,16($1)
	andbi	$8,$9,7
	stqd	$1,-48($1)
	clgt	$5,$80,$8
	ceq	$6,$80,$8
	xswd	$7,$5
	ai	$1,$1,-48
	selb	$2,$5,$7,$6
	brnz	$2,label_1694	# 1694
label_166c:
	brsl	$0,func_15a8	# 15a8
	il	$13,128	# 80
	shlqbyi	$15,$80,4
	andi	$12,$3,255	# ff
	sfi	$14,$15,0
	rotma	$11,$13,$14
	and	$10,$11,$12
	ceqi	$3,$10,0
	nor	$4,$3,$3
	sfi	$4,$4,0
label_1694:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	shlqbyi	$3,$4,0
	lqd	$80,-16($1)
	bi	$0
.global func_16a8
func_16a8:
	stqd	$80,-16($1)
	stqd	$0,16($1)
	il	$80,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
label_16bc:
	ori	$3,$80,0
	brsl	$0,func_1630	# 1630
	hbrr	label_1704,label_16bc	# 16bc
	ceqbi	$2,$3,0
	fsmbi	$4,257	# 101
	fsmbi	$5,257	# 101
	xsbh	$3,$2
	andhi	$4,$4,257	# 101
	andbi	$5,$5,8
	brhz	$3,label_1708	# 1708
	lqr	$11,data_22810
	cg	$10,$80,$4
	shufb	$9,$10,$10,$11
	addx	$9,$80,$4
	ori	$80,$9,0
	ceq	$8,$80,$5
	gb	$7,$8
	cgti	$6,$7,11
label_1704:
	brz	$6,label_16bc	# 16bc
label_1708:
	ori	$3,$80,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_1720
func_1720:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_16a8	# 16a8
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	br	func_1560	# 1560
	lnop
.global func_1740
func_1740:
	hbrr	label_177c,func_1720	# 1720
	stqd	$82,-48($1)
	il	$82,0
	stqd	$83,-64($1)
	ori	$83,$3,0
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$127,-112($1)
	ila	$85,162720	# 27ba0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$1,-144($1)
	ai	$1,$1,-144
	ai	$127,$1,32	# 20
label_177c:
	brsl	$0,func_1720	# 1720
	hbrr	label_17a4,label_17b0	# 17b0
	il	$2,-513
	ori	$84,$1,0
	a	$4,$3,$2
	il	$7,342	# 156
	clgti	$3,$4,1
	il	$2,166	# a6
	ila	$6,141744	# 229b0
	brnz	$3,label_17c4	# 17c4
label_17a4:
	br	label_17b0	# 17b0
label_17a8:
	il	$3,0
	br	label_18a0	# 18a0
label_17b0:
	il	$7,338	# 152
	il	$82,3
	il	$2,187	# bb
	ila	$85,162368	# 27a40
	ila	$6,141632	# 22940
label_17c4:
	rotmi	$4,$2,-3
	il	$3,0
	br	label_17d4	# 17d4
label_17d0:
	rdch	$2,$ch67
label_17d4:
	ceq	$5,$3,$4
	ai	$3,$3,1
	brz	$5,label_17d0	# 17d0
	ai	$14,$7,30	# 1e
	hbrr	label_180c,label_1820	# 1820
	ila	$13,66051	# 10203
	shlqbyi	$10,$1,0
	andi	$12,$14,-16
	lqd	$8,0($1)
	shufb	$11,$12,$12,$13
	sf	$9,$11,$10
	ori	$1,$9,0
	ai	$80,$1,32	# 20
	stqd	$8,0($1)
label_180c:
	br	label_1820	# 1820
label_1810:
	lqx	$16,$80,$7
	rdch	$17,$ch67
	shufb	$15,$17,$16,$4
	stqx	$15,$80,$7
label_1820:
	ai	$7,$7,-1
	ceqi	$18,$7,-1
	cbx	$4,$80,$7
	brz	$18,label_1810	# 1810
	ori	$7,$6,0
label_1834:
	hbrr	label_1888,func_1480	# 1480
	ai	$21,$7,2
	shlqbyi	$3,$83,0
	ai	$20,$7,16
	shlqbyi	$4,$80,0
	ai	$81,$7,4
	lqd	$19,0($21)
	ai	$10,$7,14
	shlqbyi	$5,$85,0
	ai	$11,$7,18	# 12
	shlqbyi	$8,$82,0
	rotqby	$9,$19,$20
	ceqhi	$6,$9,-1
	brhnz	$6,label_17a8	# 17a8
	lqd	$27,0($7)
	lqd	$25,0($81)
	rotqby	$26,$27,$10
	rotqby	$7,$25,$11
	ah	$24,$9,$26
	sfh	$7,$24,$7
	ah	$6,$24,$82
label_1888:
	brsl	$0,func_1480	# 1480
	ori	$7,$81,0
	ceqbi	$23,$3,0
	xsbh	$22,$23
	brhz	$22,label_1834	# 1834
	il	$3,-1
label_18a0:
	sf	$30,$1,$84
	lqd	$28,0($1)
	ila	$31,66051	# 10203
	shufb	$29,$30,$30,$31
	a	$1,$1,$29
	stqd	$28,0($1)
	lqd	$1,0($1)
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$127,-112($1)
	bi	$0
.global func_18e0
func_18e0:
	il	$9,0
	hbrr	label_1944,label_1a74	# 1a74
	il	$7,-1712
	fsmbi	$10,257	# 101
	stqd	$88,-144($1)
	ori	$88,$5,0
	stqd	$82,-48($1)
	andbi	$5,$10,15
	ori	$82,$6,0
	stqd	$0,16($1)
	and	$8,$3,$5
	stqd	$80,-16($1)
	il	$5,-3
	stqd	$81,-32($1)
	ceq	$6,$8,$9
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$1,-1712($1)
	a	$1,$1,$7
	ori	$7,$3,0
	gb	$3,$6
	cgti	$2,$3,11
label_1944:
	brz	$2,label_1a74	# 1a74
	ai	$20,$88,13
	lqd	$19,0($88)
	ceqi	$13,$4,0
	hbrr	label_1974,label_1a70	# 1a70
	rotqby	$18,$19,$20
	ceqbi	$17,$18,0
	xsbh	$16,$17
	ceqhi	$15,$16,0
	nor	$14,$15,$15
	xshw	$12,$14
	or	$11,$13,$12
label_1974:
	brnz	$11,label_1a70	# 1a70
	ori	$83,$7,0
	shlqbyi	$81,$4,0
label_1980:
	clgti	$23,$81,32	# 20
	hbrr	label_19b4,func_970	# 970
	il	$4,32	# 20
	shlqbyi	$3,$83,0
	il	$85,0
	fsmbi	$84,0
	selb	$80,$81,$4,$23
	ai	$86,$1,48	# 30
	a	$22,$80,$80
	ai	$4,$1,32	# 20
	a	$21,$22,$80
	shli	$87,$21,4
	ori	$5,$87,0
label_19b4:
	brsl	$0,func_970	# 970
	br	label_19d0	# 19d0
label_19bc:
	brsl	$0,func_1f7e0	# 1f7e0
	hbrr	label_19e4,label_19bc	# 19bc
	brz	$3,label_1a10	# 1a10
	ai	$84,$84,48	# 30
	ai	$86,$86,48	# 30
label_19d0:
	ceq	$24,$85,$80
	shlqbyi	$3,$86,0
	ori	$4,$88,0
	il	$5,32	# 20
	ai	$85,$85,1
label_19e4:
	brz	$24,label_19bc	# 19bc
	hbrr	label_1a0c,label_1980	# 1980
	sf	$81,$80,$81
	brz	$81,label_1a70	# 1a70
	rotqmbyi	$26,$87,-4
	lqr	$28,data_22810
	cg	$27,$83,$26
	shufb	$25,$27,$27,$28
	addx	$25,$83,$26
	ori	$83,$25,0
label_1a0c:
	br	label_1980	# 1980
label_1a10:
	ai	$43,$84,32	# 20
	lqd	$37,0($82)
	ai	$42,$1,32	# 20
	cdd	$39,0($82)
	il	$29,8
	lqx	$40,$43,$1
	a	$41,$84,$42
	hbrr	label_1a64,func_1f8a0	# 1f8a0
	il	$5,32	# 20
	cdd	$33,8($82)
	ai	$36,$41,8
	shlqbyi	$4,$86,0
	ai	$3,$82,16
	lqd	$35,0($36)
	rotqby	$38,$40,$84
	shufb	$34,$38,$37,$39
	rotqby	$32,$35,$36
	stqd	$34,0($82)
	lqx	$31,$82,$29
	shufb	$30,$32,$31,$33
	stqx	$30,$82,$29
label_1a64:
	brsl	$0,func_1f8a0	# 1f8a0
	il	$5,0
	br	label_1a74	# 1a74
label_1a70:
	il	$5,-2
label_1a74:
	lqd	$0,1728($1)	# 6c0
	il	$44,1712	# 6b0
	shlqbyi	$3,$5,0
	a	$1,$1,$44
	lqd	$80,-16($1)
	hbr	label_1aac,$0
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
label_1aac:
	bi	$0
.global func_1ab0
func_1ab0:
	il	$10,0
	hbrr	label_1af0,label_1b34	# 1b34
	il	$5,16
	fsmbi	$7,257	# 101
	stqd	$80,-16($1)
	stqd	$0,16($1)
	ori	$80,$4,0
	stqd	$1,-64($1)
	andbi	$11,$7,15
	ai	$1,$1,-64
	and	$9,$3,$11
	ai	$4,$1,32	# 20
	ceq	$8,$9,$10
	il	$7,-3
	gb	$6,$8
	cgti	$2,$6,11
label_1af0:
	brz	$2,label_1b34	# 1b34
	brsl	$0,func_970	# 970
	il	$9,8
	lqd	$12,32($1)	# 20
	il	$7,-1
	cdd	$6,0($80)
	cdd	$8,8($80)
	ceqi	$3,$12,1
	rotqbyi	$4,$12,8
	brz	$3,label_1b34	# 1b34
	il	$7,0
	lqd	$16,0($80)
	shufb	$15,$12,$16,$6
	stqd	$15,0($80)
	lqx	$14,$80,$9
	shufb	$5,$4,$14,$8
	stqx	$5,$80,$9
label_1b34:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$3,$7,0
	lqd	$80,-16($1)
	bi	$0
.global func_1b48
func_1b48:
	il	$5,-4
	hbr	label_1b84,$0
	lqd	$8,432($3)	# 1b0
	rotqbyi	$7,$8,5
	ceqbi	$6,$7,0
	xsbh	$2,$6
	brhnz	$2,label_1b80	# 1b80
	lqd	$11,0($3)
	il	$5,0
	rotqbyi	$9,$11,12
	lqd	$10,0($9)
	stqd	$10,0($4)
	lqd	$3,16($9)
	stqd	$3,16($4)
label_1b80:
	ori	$3,$5,0
label_1b84:
	bi	$0
.global func_1b88
func_1b88:
	il	$4,0
	lqd	$23,0($3)
	il	$19,4
	cwd	$11,0($3)
	il	$15,8
	cwd	$12,4($3)
	il	$8,12
	cwd	$18,8($3)
	il	$10,20	# 14
	cwd	$9,12($3)
	hbr	label_1bf8,$0
	shufb	$22,$4,$23,$11
	stqd	$22,0($3)
	lqx	$21,$3,$19
	shufb	$20,$4,$21,$12
	stqx	$20,$3,$19
	lqx	$17,$3,$15
	shufb	$16,$4,$17,$18
	stqx	$16,$3,$15
	lqx	$14,$3,$8
	shufb	$13,$4,$14,$9
	stqx	$13,$3,$8
	lqd	$7,16($3)
	shufb	$6,$4,$7,$11
	stqd	$6,16($3)
	lqx	$5,$3,$10
	shufb	$2,$4,$5,$12
	stqx	$2,$3,$10
label_1bf8:
	bi	$0
	lnop
.global func_1c00
func_1c00:
	ai	$19,$4,1
	lqd	$17,0($4)
	ai	$18,$4,13
	hbrr	label_1c4c,label_1de4	# 1de4
	ai	$14,$4,14
	lqd	$13,0($19)
	ori	$11,$4,0
	shlqbyi	$12,$3,0
	rotqby	$16,$17,$18
	rotqby	$10,$13,$14
	ceqbi	$15,$16,127	# 7f
	ceqbi	$8,$10,69	# 45
	xsbh	$9,$15
	xsbh	$6,$8
	ceqhi	$7,$9,0
	ceqhi	$5,$6,0
	xshw	$3,$7
	xshw	$4,$5
	or	$2,$3,$4
label_1c4c:
	brhnz	$2,label_1de4	# 1de4
	ai	$36,$11,2
	hbrr	label_1c98,label_1de4	# 1de4
	ai	$35,$11,3
	lqd	$33,0($36)
	ai	$34,$11,15
	lqd	$30,0($35)
	ai	$31,$11,16
	rotqby	$32,$33,$34
	rotqby	$29,$30,$31
	ceqbi	$28,$32,76	# 4c
	ceqbi	$27,$29,70	# 46
	xsbh	$26,$28
	xsbh	$25,$27
	ceqhi	$24,$26,0
	ceqhi	$23,$25,0
	xshw	$22,$24
	xshw	$21,$23
	or	$20,$22,$21
label_1c98:
	brhnz	$20,label_1de4	# 1de4
	ai	$53,$11,6
	ai	$52,$11,5
	hbrr	label_1ce4,label_1de4	# 1de4
	ai	$51,$11,19	# 13
	lqd	$50,0($53)
	ai	$48,$11,18	# 12
	lqd	$47,0($52)
	rotqby	$49,$50,$51
	rotqby	$46,$47,$48
	ceqbi	$45,$49,1
	ceqbi	$44,$46,2
	xsbh	$43,$45
	xsbh	$42,$44
	ceqhi	$41,$43,0
	ceqhi	$40,$42,0
	xshw	$39,$41
	xshw	$38,$40
	or	$37,$39,$38
label_1ce4:
	brhnz	$37,label_1de4	# 1de4
	ai	$59,$11,4
	hbrr	label_1d10,label_1de4	# 1de4
	ai	$58,$11,17	# 11
	lqd	$57,0($59)
	rotqby	$56,$57,$58
	xsbh	$55,$56
	xshw	$3,$55
	ceqi	$54,$3,1
	brnz	$54,label_1d7c	# 1d7c
	ceqi	$60,$3,2
label_1d10:
	brz	$60,label_1de4	# 1de4
	lqd	$76,0($12)
	il	$71,4
	cwd	$77,0($12)
	ai	$78,$11,79	# 4f
	cwd	$74,4($12)
	ai	$70,$11,56	# 38
	hbrr	label_1d78,label_1ddc	# 1ddc
	andi	$64,$78,-16
	cwd	$62,8($12)
	ai	$69,$11,70	# 46
	fsmbi	$13,0
	il	$8,8
	shufb	$75,$11,$76,$77
	stqd	$75,0($12)
	lqx	$73,$12,$71
	shufb	$72,$64,$73,$74
	stqx	$72,$12,$71
	lqd	$68,0($70)
	lqx	$11,$12,$8
	rotqby	$67,$68,$69
	mpyui	$66,$67,56	# 38
	ai	$65,$66,15
	a	$63,$64,$65
	andi	$61,$63,-16
	shufb	$4,$61,$11,$62
label_1d78:
	br	label_1ddc	# 1ddc
label_1d7c:
	il	$19,12
	ai	$8,$11,67	# 43
	cwd	$23,12($12)
	ai	$15,$11,44	# 2c
	lqx	$21,$12,$19
	andi	$5,$8,-16
	cwd	$18,0($12)
	ai	$7,$11,58	# 3a
	cwd	$10,4($12)
	ila	$3,65535	# ffff
	fsmbi	$13,0
	il	$8,20	# 14
	shufb	$20,$11,$21,$23
	stqx	$20,$12,$19
	lqd	$17,16($12)
	shufb	$16,$5,$17,$18
	stqd	$16,16($12)
	lqd	$14,0($15)
	lqx	$79,$12,$8
	rotqby	$9,$14,$7
	and	$6,$9,$3
	shli	$4,$6,5
	a	$2,$4,$5
	shufb	$4,$2,$79,$10
label_1ddc:
	stqx	$4,$12,$8
	br	label_1de8	# 1de8
label_1de4:
	il	$13,-1
label_1de8:
	ori	$3,$13,0
	bi	$0
	il	$3,1
	bi	$0
	il	$3,1
	bi	$0
.global func_1e00
func_1e00:
	lqd	$6,432($3)	# 1b0
	cdd	$5,0($1)
	shufb	$2,$4,$6,$5
	stqd	$2,432($3)	# 1b0
	bi	$0
	lnop
.global func_1e18
func_1e18:
	lqd	$5,0($3)
	il	$3,21	# 15
	biz	$5,$0
	lqd	$6,0($4)
	fsmbi	$10,257	# 101
	andbi	$9,$10,3
	ceq	$7,$6,$9
	gb	$2,$7
	cgti	$3,$2,11
	brz	$3,label_1f3c	# 1f3c
	il	$8,0
	rotqbyi	$3,$6,8
	ceq	$12,$3,$8
	gb	$11,$12
	cgti	$6,$11,11
	brnz	$6,label_1f3c	# 1f3c
	lqd	$17,16($5)
	rotqby	$6,$17,$5
	clgt	$16,$3,$6
	ceq	$14,$3,$6
	xswd	$15,$16
	selb	$13,$16,$15,$14
	brnz	$13,label_1f3c	# 1f3c
	lqd	$5,16($4)
	ceq	$20,$5,$8
	gb	$19,$20
	cgti	$18,$19,11
	brnz	$18,label_1f3c	# 1f3c
	clgt	$24,$5,$6
	ceq	$22,$5,$6
	xswd	$23,$24
	selb	$21,$24,$23,$22
	brnz	$21,label_1f3c	# 1f3c
	rotqbyi	$29,$5,8
	clgt	$28,$29,$6
	ceq	$26,$29,$6
	xswd	$27,$28
	selb	$25,$28,$27,$26
	brnz	$25,label_1f3c	# 1f3c
	lqd	$35,32($4)	# 20
	rotqbyi	$34,$35,8
	clgt	$33,$34,$6
	ceq	$31,$34,$6
	xswd	$32,$33
	selb	$30,$33,$32,$31
	brnz	$30,label_1f3c	# 1f3c
	lqd	$3,48($4)	# 30
	clgt	$39,$3,$6
	ceq	$37,$3,$6
	xswd	$38,$39
	selb	$36,$39,$38,$37
	brnz	$36,label_1f3c	# 1f3c
	rotqbyi	$5,$3,8
	clgt	$44,$5,$6
	ceq	$42,$5,$6
	xswd	$43,$44
	selb	$41,$44,$43,$42
	brnz	$41,label_1f3c	# 1f3c
	lqd	$7,64($4)	# 40
	lqr	$50,data_22810
	cg	$49,$5,$7
	shufb	$47,$49,$49,$50
	addx	$47,$5,$7
	clgt	$46,$47,$6
	ceq	$4,$47,$6
	xswd	$45,$46
	selb	$3,$46,$45,$4
	brnz	$3,label_1f3c	# 1f3c
	rotqbyi	$54,$7,8
	ceq	$53,$54,$8
	gb	$52,$53
	cgti	$51,$52,11
	binz	$51,$0
label_1f3c:
	il	$3,19	# 13
	bi	$0
	lnop
.global func_1f48
func_1f48:
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$0,16($1)
	stqd	$81,-32($1)
	ori	$81,$5,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_1e18	# 1e18
	il	$12,0
	lqd	$16,80($80)	# 50
	ai	$80,$80,80	# 50
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$13,16($80)
	il	$6,28	# 1c
	lqd	$80,-16($1)
	ceqi	$5,$3,0
	rotqbyi	$15,$16,12
	hbr	label_1fc4,$0
	rotqbyi	$11,$13,8
	ceq	$14,$81,$15
	lnop
	ceqi	$81,$14,0
	ceq	$10,$11,$12
	gb	$9,$10
	cgti	$8,$9,11
	ceqi	$7,$8,0
	andi	$4,$7,19	# 13
	selb	$2,$4,$6,$81
	lqd	$81,-32($1)
	selb	$3,$3,$2,$5
label_1fc4:
	bi	$0
.global func_1fc8
func_1fc8:
	il	$7,0
	lqd	$5,0($3)
	il	$3,21	# 15
	biz	$5,$0
	lqd	$3,0($4)
	ceq	$9,$3,$7
	ori	$6,$3,0
	gb	$8,$9
	cgti	$2,$8,11
	brnz	$2,label_2054	# 2054
	lqd	$14,16($5)
	rotqbyi	$3,$3,8
	ceqi	$3,$3,1
	rotqby	$13,$14,$5
	clgt	$12,$6,$13
	ceq	$11,$6,$13
	xswd	$10,$12
	selb	$6,$12,$10,$11
	brnz	$6,label_2054	# 2054
	brz	$3,label_2054	# 2054
	il	$3,0
	lqd	$21,16($4)
	rotqbyi	$20,$21,4
	rotqmbyi	$19,$20,-4
	clgt	$18,$19,$13
	ceq	$16,$19,$13
	xswd	$17,$18
	selb	$15,$18,$17,$16
	brnz	$15,label_2054	# 2054
	lqd	$24,16($4)
	rotqbyi	$23,$24,8
	ceq	$22,$23,$7
	gb	$7,$22
	cgti	$4,$7,11
	binz	$4,$0
label_2054:
	il	$3,19	# 13
	bi	$0
	lnop
.global func_2060
func_2060:
	ila	$4,141944	# 22a78
	lqd	$7,0($3)
	cwd	$6,0($3)
	shufb	$2,$4,$7,$6
	stqd	$2,0($3)
	br	func_d538	# d538
	ila	$4,141944	# 22a78
	lqd	$6,0($3)
	cwd	$5,0($3)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
	bi	$0
.global func_2090
func_2090:
	ila	$4,141944	# 22a78
	lqd	$6,0($3)
	cwd	$5,0($3)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
	bi	$0
	ila	$4,141880	# 22a38
	hbrr	label_20d4,func_2090	# 2090
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	lqd	$6,0($3)
	cwd	$5,0($1)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
label_20d4:
	brsl	$0,func_2090	# 2090
	ori	$3,$80,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	br	func_d538	# d538
	lnop
.global func_20f0
func_20f0:
	ila	$4,141880	# 22a38
	lqd	$7,0($3)
	cwd	$5,0($1)
	shufb	$2,$4,$7,$5
	stqd	$2,0($3)
	br	func_2090	# 2090
	ila	$4,141912	# 22a58
	hbrr	label_2134,func_2090	# 2090
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	lqd	$6,0($3)
	cwd	$5,0($1)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
label_2134:
	brsl	$0,func_2090	# 2090
	ori	$3,$80,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	br	func_d538	# d538
	lnop
.global func_2150
func_2150:
	ila	$4,141912	# 22a58
	lqd	$7,0($3)
	cwd	$5,0($1)
	shufb	$2,$4,$7,$5
	stqd	$2,0($3)
	br	func_2090	# 2090
	ila	$4,142008	# 22ab8
	lqd	$7,0($3)
	cwd	$6,0($3)
	shufb	$2,$4,$7,$6
	stqd	$2,0($3)
	br	func_d538	# d538
	ila	$4,142008	# 22ab8
	lqd	$6,0($3)
	cwd	$5,0($3)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
	bi	$0
.global func_2198
func_2198:
	ila	$4,142008	# 22ab8
	lqd	$6,0($3)
	cwd	$5,0($3)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
	bi	$0
	ila	$4,141976	# 22a98
	hbrr	label_21dc,func_2198	# 2198
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	lqd	$6,0($3)
	cwd	$5,0($3)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
label_21dc:
	brsl	$0,func_2198	# 2198
	ori	$3,$80,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	br	func_d538	# d538
	lnop
.global func_21f8
func_21f8:
	ila	$4,141976	# 22a98
	lqd	$7,0($3)
	cwd	$6,0($3)
	shufb	$2,$4,$7,$6
	stqd	$2,0($3)
	br	func_2198	# 2198
.global func_2210
func_2210:
	hbrr	label_2294,func_44e8	# 44e8
	stqd	$88,-144($1)
	ori	$88,$6,0
	lqd	$6,432($3)	# 1b0
	stqd	$85,-96($1)
	stqd	$84,-80($1)
	ori	$85,$9,0
	stqd	$80,-16($1)
	ai	$84,$3,504	# 1f8
	stqd	$81,-32($1)
	ori	$80,$85,0
	stqd	$82,-48($1)
	il	$81,0
	stqd	$86,-112($1)
	ori	$82,$3,0
	stqd	$89,-160($1)
	ori	$3,$84,0
label_2254:
	hbrp
	ori	$89,$8,0
	stqd	$87,-128($1)
	ori	$86,$10,0
	stqd	$90,-176($1)
	ori	$87,$5,0
	stqd	$91,-192($1)
	ori	$90,$7,0
	stqd	$0,16($1)
	ori	$91,$4,0
	stqd	$83,-64($1)
	il	$4,0
	stqd	$1,-240($1)
	il	$5,32	# 20
	ai	$1,$1,-240
	il	$7,32	# 20
label_2294:
	brsl	$0,func_44e8	# 44e8
	br	label_22ac	# 22ac
label_229c:
	lqd	$4,0($80)
	rotqby	$4,$4,$80
	ai	$80,$80,4
	brsl	$0,func_3c90	# 3c90
label_22ac:
	brnz	$3,label_262c	# 262c
	ceq	$2,$81,$86
	shlqbyi	$3,$84,0
	ai	$81,$81,1
	brz	$2,label_229c	# 229c
	ori	$3,$82,0
	lqd	$5,416($82)	# 1a0
	rotqbyi	$83,$5,8
	brsl	$0,func_34d8	# 34d8
	brnz	$3,label_262c	# 262c
	ori	$3,$84,0
	brsl	$0,func_4088	# 4088
	lqd	$6,416($82)	# 1a0
	ori	$3,$82,0
	il	$4,1
	rotqbyi	$5,$6,8
	brsl	$0,func_3290	# 3290
	brnz	$3,label_2634	# 2634
	lqd	$4,0($82)
	fsmbi	$13,514	# 202
	andbi	$11,$13,32	# 20
	lqd	$12,16($4)
	rotqby	$10,$12,$4
	clgt	$3,$10,$11
	ceq	$8,$10,$11
	xswd	$9,$3
	selb	$7,$3,$9,$8
	brnz	$7,label_2634	# 2634
	ai	$18,$4,12
	il	$16,8192	# 2000
	lqd	$17,0($18)
	rotqby	$15,$17,$18
	clgt	$14,$15,$16
	brnz	$14,label_2634	# 2634
	lqr	$24,data_22a20
	ori	$3,$84,0
	hbrr	label_237c,func_44e8	# 44e8
	il	$4,0
	lqr	$23,data_22810
	ori	$80,$85,0
	lqd	$19,432($82)	# 1b0
	il	$81,0
	fsmbi	$26,257	# 101
	cg	$25,$10,$24
	shufb	$21,$25,$25,$23
	andbi	$20,$26,32	# 20
	cg	$22,$19,$20
	addx	$21,$10,$24
	shufb	$6,$22,$22,$23
	shlqbyi	$5,$21,4
	addx	$6,$19,$20
	ori	$7,$5,0
label_237c:
	brsl	$0,func_44e8	# 44e8
	br	label_2394	# 2394
label_2384:
	lqd	$27,0($80)
	rotqby	$4,$27,$80
	ai	$80,$80,4
	brsl	$0,func_3c90	# 3c90
label_2394:
	brnz	$3,label_262c	# 262c
	ceq	$28,$81,$86
	shlqbyi	$3,$84,0
	ai	$81,$81,1
	brz	$28,label_2384	# 2384
	ori	$3,$82,0
	brsl	$0,func_34d8	# 34d8
	brnz	$3,label_262c	# 262c
	ori	$3,$84,0
	brsl	$0,func_4088	# 4088
	lqd	$33,0($82)
	ori	$4,$87,0
	hbrr	label_2408,func_2fc8	# 2fc8
	ori	$5,$88,0
	lqd	$34,96($82)	# 60
	ila	$3,204128	# 31d60
	cwd	$84,8($1)
	cwd	$86,0($1)
	ai	$40,$33,12
	lqd	$39,0($40)
	rotqby	$38,$39,$40
	ai	$37,$38,96	# 60
	ai	$36,$38,32	# 20
	a	$35,$83,$37
	a	$32,$83,$36
	shufb	$31,$35,$34,$86
	shufb	$30,$32,$33,$84
	stqd	$31,96($82)	# 60
	stqd	$30,0($82)
label_2408:
	brsl	$0,func_2fc8	# 2fc8
	lqd	$29,0($82)
	ila	$3,204128	# 31d60
	il	$5,64	# 40
	rotqbyi	$4,$29,8
	ori	$6,$4,0
	brsl	$0,func_3060	# 3060
	hbrr	label_245c,func_30f0	# 30f0
	brnz	$3,label_262c	# 262c
	lqd	$48,0($82)
	ila	$3,204160	# 31d80
	ai	$47,$48,12
	ai	$44,$48,20	# 14
	rotqbyi	$4,$48,8
	lqd	$46,0($47)
	lqd	$43,0($44)
	ai	$5,$4,32	# 20
	rotqby	$45,$46,$47
	rotqby	$42,$43,$44
	ai	$80,$45,96	# 60
	sf	$81,$80,$42
label_245c:
	brsl	$0,func_30f0	# 30f0
	a	$4,$83,$80
	ori	$5,$81,0
	ori	$6,$4,0
	ila	$3,204160	# 31d80
	brsl	$0,func_3188	# 3188
	brnz	$3,label_262c	# 262c
	ori	$3,$82,0
	lqd	$4,96($82)	# 60
	brsl	$0,func_1fc8	# 1fc8
	brnz	$3,label_2634	# 2634
	ori	$4,$90,0
	lqd	$53,0($89)
	ai	$3,$1,32	# 20
	il	$80,14
	rotqby	$5,$53,$89
	brsl	$0,func_3720	# 3720
	ai	$3,$1,32	# 20
	lqd	$52,96($82)	# 60
	ori	$4,$83,0
	lqd	$51,0($52)
	rotqby	$50,$51,$52
	shlqbyi	$5,$50,4
	a	$6,$83,$5
	brsl	$0,func_3698	# 3698
	brnz	$3,label_2620	# 2620
	ai	$81,$83,32	# 20
	ori	$5,$91,0
	shlqbyi	$3,$82,0
	ori	$4,$81,0
	brsl	$0,func_1f48	# 1f48
	ori	$80,$3,0
	brnz	$3,label_2620	# 2620
	ai	$75,$83,44	# 2c
	lqd	$76,0($82)
	ai	$69,$83,76	# 4c
	cwd	$80,4($1)
	ai	$64,$83,84	# 54
	cwd	$85,12($1)
	ai	$59,$83,92	# 5c
	lqd	$65,16($82)
	ai	$3,$82,32	# 20
	hbrr	label_2564,func_28c0	# 28c0
	shufb	$72,$81,$76,$80
	stqd	$72,0($82)
	lqd	$74,0($75)
	rotqby	$73,$74,$75
	a	$71,$83,$73
	shufb	$70,$71,$72,$85
	stqd	$70,0($82)
	lqd	$68,0($69)
	rotqby	$67,$68,$69
	a	$66,$83,$67
	shufb	$61,$66,$65,$86
	stqd	$61,16($82)
	lqd	$63,0($64)
	rotqby	$62,$63,$64
	a	$60,$83,$62
	shufb	$56,$60,$61,$80
	stqd	$56,16($82)
	lqd	$58,0($59)
	rotqby	$57,$58,$59
	a	$55,$83,$57
	ori	$4,$55,0
	shufb	$54,$55,$56,$84
	stqd	$54,16($82)
label_2564:
	brsl	$0,func_28c0	# 28c0
	brnz	$3,label_261c	# 261c
	lqd	$3,0($82)
	lqd	$14,96($82)	# 60
	hbrr	label_25d8,func_3a48	# 3a48
	ai	$18,$3,12
	ai	$3,$82,112	# 70
	lqd	$17,0($18)
	rotqby	$16,$17,$18
	ai	$15,$16,128	# 80
	a	$5,$83,$15
	shufb	$6,$5,$14,$80
	ai	$13,$6,12
	stqd	$6,96($82)	# 60
	lqd	$12,0($13)
	rotqby	$10,$12,$13
	a	$11,$10,$10
	a	$9,$11,$10
	shli	$8,$9,4
	a	$89,$5,$8
	shufb	$88,$89,$6,$84
	stqd	$88,96($82)	# 60
	lqd	$2,16($6)
	rotqby	$91,$2,$6
	shli	$90,$91,4
	a	$87,$89,$90
	shufb	$86,$87,$88,$85
	ori	$4,$87,0
	stqd	$86,96($82)	# 60
label_25d8:
	brsl	$0,func_3a48	# 3a48
	lqd	$85,0($82)
	ai	$3,$82,400	# 190
	rotqbyi	$84,$85,4
	ai	$79,$84,20	# 14
	lqd	$78,0($79)
	rotqby	$77,$78,$79
	a	$4,$83,$77
	brsl	$0,func_1c00	# 1c00
	ori	$80,$3,0
	brnz	$3,label_261c	# 261c
	lqd	$19,432($82)	# 1b0
	il	$20,1
	cbd	$21,8($1)
	shufb	$83,$20,$19,$21
	stqd	$83,432($82)	# 1b0
	br	label_2620	# 2620
label_261c:
	il	$80,19	# 13
label_2620:
	ai	$3,$1,32	# 20
	brsl	$0,func_21f8	# 21f8
	br	label_2638	# 2638
label_262c:
	il	$80,21	# 15
	br	label_2638	# 2638
label_2634:
	il	$80,19	# 13
label_2638:
	ori	$3,$80,0
	lqd	$0,256($1)	# 100
	ai	$1,$1,240	# f0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	hbr	label_2678,$0
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
label_2678:
	bi	$0
	lnop
.global func_2680
func_2680:
	il	$4,0
	stqd	$0,16($1)
	il	$5,8192	# 2000
	stqd	$1,-32($1)
	ai	$1,$1,-32
	ila	$3,195632	# 2fc30
	brsl	$0,func_1f718	# 1f718
	lqd	$0,48($1)	# 30
	ila	$3,203824	# 31c30
	fsmbi	$4,0
	il	$5,20	# 14
	ai	$1,$1,32	# 20
	br	func_1f718	# 1f718
	lnop
.global func_26b8
func_26b8:
	stqd	$0,16($1)
	stqd	$80,-16($1)
	il	$80,0
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$1,-160($1)
	ai	$1,$1,-160
	lqd	$33,0($3)
	il	$87,0
	lqd	$32,16($3)
	ai	$3,$3,32	# 20
	cwd	$83,0($1)
	hbrr	label_2738,func_29e0	# 29e0
	cwd	$82,4($1)
	cwd	$84,8($1)
	shufb	$31,$80,$33,$83
	shufb	$30,$80,$32,$83
	cwd	$85,12($1)
	cdd	$86,0($1)
	shufb	$29,$80,$31,$82
	shufb	$28,$80,$30,$82
	shufb	$27,$80,$29,$84
	shufb	$26,$80,$28,$84
	shufb	$25,$80,$27,$85
	stqd	$26,16($81)
	stqd	$25,0($81)
label_2738:
	brsl	$0,func_29e0	# 29e0
	lqd	$24,96($81)	# 60
	ai	$3,$81,112	# 70
	shufb	$23,$80,$24,$83
	shufb	$22,$80,$23,$82
	shufb	$21,$80,$22,$84
	shufb	$20,$80,$21,$85
	stqd	$20,96($81)	# 60
	brsl	$0,func_3b48	# 3b48
	ai	$3,$81,400	# 190
	brsl	$0,func_1b88	# 1b88
	lqd	$19,416($81)	# 1a0
	ila	$16,195632	# 2fc30
	hbrr	label_27b8,func_2aa0	# 2aa0
	ai	$13,$81,424	# 1a8
	cbd	$10,8($1)
	il	$12,4
	cbd	$9,9($1)
	ai	$3,$81,448	# 1c0
	cwd	$17,4($13)
	chd	$8,10($1)
	shufb	$18,$16,$19,$84
	stqd	$18,416($81)	# 1a0
	lqx	$15,$13,$12
	shufb	$14,$16,$15,$17
	stqx	$14,$13,$12
	lqd	$11,432($81)	# 1b0
	shufb	$7,$87,$11,$86
	shufb	$6,$80,$7,$10
	shufb	$5,$80,$6,$9
	shufb	$80,$80,$5,$8
	stqd	$80,432($81)	# 1b0
label_27b8:
	brsl	$0,func_2aa0	# 2aa0
	lqd	$4,496($81)	# 1f0
	ai	$3,$81,504	# 1f8
	shufb	$2,$87,$4,$86
	stqd	$2,496($81)	# 1f0
	brsl	$0,func_4148	# 4148
	il	$3,592	# 250
	fsmbi	$4,0
	il	$5,48	# 30
	a	$3,$81,$3
	brsl	$0,func_1f718	# 1f718
	hbrr	label_2814,func_2680	# 2680
	ori	$3,$81,0
	lqd	$0,176($1)	# b0
	ai	$1,$1,160	# a0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
label_2814:
	br	func_2680	# 2680
.global func_2818
func_2818:
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_2680	# 2680
	ai	$3,$80,448	# 1c0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	br	func_2a98	# 2a98
	lnop
.global func_2848
func_2848:
	hbrr	label_286c,func_3930	# 3930
	ori	$6,$3,0
	il	$3,-4
	lqd	$9,432($6)	# 1b0
	rotqbyi	$8,$9,5
	ceqbi	$7,$8,0
	xsbh	$2,$7
	bihnz	$2,$0
	ai	$3,$6,400	# 190
label_286c:
	br	func_3930	# 3930
.global func_2870
func_2870:
	il	$5,-4
	hbrr	label_289c,func_3840	# 3840
	lqd	$8,432($3)	# 1b0
	stqd	$0,16($1)
	ai	$3,$3,400	# 190
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqbyi	$7,$8,5
	ceqbi	$6,$7,0
	xsbh	$2,$6
	brhnz	$2,label_28b0	# 28b0
label_289c:
	brsl	$0,func_3840	# 3840
	il	$4,-2
	fsmbi	$5,0
	ceqi	$3,$3,0
	selb	$5,$4,$5,$3
label_28b0:
	ori	$3,$5,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_28c0
func_28c0:
	hbrr	label_28e8,label_29ac	# 29ac
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
label_28e8:
	br	label_29ac	# 29ac
label_28ec:
	lqd	$8,0($81)
	ceqi	$2,$8,1
	ceqi	$3,$8,2
	brnz	$2,label_2904	# 2904
	brz	$3,label_2984	# 2984
	br	label_2954	# 2954
label_2904:
	lqd	$19,16($81)
	lqd	$18,0($80)
	hbrr	label_2950,label_2984	# 2984
	shufb	$17,$19,$18,$4
	stqd	$17,0($80)
	lqd	$16,16($81)
	lqx	$14,$80,$6
	rotqbyi	$15,$16,8
	shufb	$13,$15,$14,$5
	stqx	$13,$80,$6
	lqd	$11,16($80)
	lqd	$12,32($81)	# 20
	shufb	$10,$12,$11,$4
	stqd	$10,16($80)
	lqd	$9,32($81)	# 20
	lqx	$4,$80,$7
	rotqbyi	$6,$9,8
	shufb	$3,$6,$4,$5
	stqx	$3,$80,$7
label_2950:
	br	label_2984	# 2984
label_2954:
	il	$5,20	# 14
	ai	$4,$81,36	# 24
	ai	$3,$80,32	# 20
	brsl	$0,func_1f8a0	# 1f8a0
	hbrr	label_29bc,label_28ec	# 28ec
	il	$7,56	# 38
	lqd	$23,48($81)	# 30
	cdd	$5,8($80)
	lqx	$21,$80,$7
	rotqbyi	$22,$23,8
	shufb	$20,$22,$21,$5
	stqx	$20,$80,$7
label_2984:
	lqd	$31,0($81)
	il	$29,0
	rotqbyi	$28,$31,8
	rotqbyi	$25,$31,4
	ceq	$27,$28,$29
	a	$82,$82,$25
	gb	$26,$27
	cgti	$24,$26,11
	brnz	$24,label_29c0	# 29c0
	ori	$81,$82,0
label_29ac:
	cdd	$4,0($80)
	il	$6,8
	cdd	$5,8($80)
	il	$7,24	# 18
label_29bc:
	brnz	$81,label_28ec	# 28ec
label_29c0:
	il	$3,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_29e0
func_29e0:
	il	$8,0
	lqd	$5,0($3)
	ori	$6,$3,0
	cdd	$12,0($3)
	il	$17,56	# 38
	cdd	$9,8($3)
	il	$14,8
	hbrr	label_2a48,func_1f718	# 1f718
	il	$13,24	# 18
	lqx	$19,$3,$17
	il	$4,0
	shufb	$20,$8,$5,$12
	ai	$3,$3,32	# 20
	il	$5,20	# 14
	stqd	$20,0($6)
	lqx	$16,$6,$14
	shufb	$18,$8,$19,$9
	stqx	$18,$6,$17
	shufb	$15,$8,$16,$9
	stqx	$15,$6,$14
	lqd	$11,16($6)
	shufb	$10,$8,$11,$12
	stqd	$10,16($6)
	lqx	$7,$6,$13
	shufb	$2,$8,$7,$9
	stqx	$2,$6,$13
label_2a48:
	br	func_1f718	# 1f718
	lnop
.global func_2a50
func_2a50:
	il	$5,32	# 20
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	il	$4,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1f718	# 1f718
	il	$3,0
	lqd	$5,32($80)	# 20
	cwd	$4,0($1)
	shufb	$2,$3,$5,$4
	stqd	$2,32($80)	# 20
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_2a98
func_2a98:
	br	func_2a50	# 2a50
	lnop
.global func_2aa0
func_2aa0:
	il	$4,0
	lqd	$7,32($3)	# 20
	cwd	$5,0($1)
	shufb	$2,$4,$7,$5
	stqd	$2,32($3)	# 20
	br	func_2a50	# 2a50
.global func_2ab8
func_2ab8:
	hbrr	label_2b28,func_37a8	# 37a8
	lqd	$11,432($3)	# 1b0
	stqd	$84,-80($1)
	ori	$84,$7,0
	stqd	$82,-48($1)
	ori	$82,$6,0
	stqd	$80,-16($1)
	rotqbyi	$7,$11,5
	il	$80,-4
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$85,-96($1)
	ori	$85,$8,0
	stqd	$86,-112($1)
	ceqbi	$6,$7,0
	stqd	$87,-128($1)
	ori	$86,$9,0
	stqd	$0,16($1)
	xsbh	$2,$6
	stqd	$83,-64($1)
	ori	$87,$10,0
	stqd	$88,-144($1)
	stqd	$1,-176($1)
	ai	$1,$1,-176
	brhnz	$2,label_2cac	# 2cac
	il	$8,592	# 250
	a	$88,$3,$8
	ori	$6,$88,0
label_2b28:
	brsl	$0,func_37a8	# 37a8
	ori	$80,$3,0
	brnz	$3,label_2ca0	# 2ca0
	lqd	$12,592($81)	# 250
	il	$10,0
	hbrr	label_2b88,func_44e8	# 44e8
	rotqbyi	$5,$12,8
	ceq	$9,$5,$10
	gb	$4,$9
	cgti	$3,$4,11
	brnz	$3,label_2cac	# 2cac
	lqd	$13,432($81)	# 1b0
	ai	$83,$81,504	# 1f8
	lqd	$14,592($81)	# 250
	ori	$4,$82,0
	lqr	$16,data_22810	# 22810
	ori	$3,$83,0
	shlqbyi	$5,$5,4
	ori	$80,$84,0
	fsmbi	$82,0
	cg	$15,$13,$14
	shlqbyi	$7,$5,0
	shufb	$6,$15,$15,$16
	addx	$6,$13,$14
label_2b88:
	brsl	$0,func_44e8	# 44e8
	br	label_2ba0	# 2ba0
label_2b90:
	lqd	$17,0($80)
	rotqby	$4,$17,$80
	ai	$80,$80,4
	brsl	$0,func_3c90	# 3c90
label_2ba0:
	brnz	$3,label_2ca8	# 2ca8
	cgt	$18,$85,$82
	ori	$3,$83,0
	ai	$82,$82,1
	brnz	$18,label_2b90	# 2b90
	ori	$80,$86,0
	il	$82,0
	br	label_2bd4	# 2bd4
label_2bc0:
	lqd	$19,0($80)
	rotqby	$4,$19,$80
	ai	$80,$80,4
	brsl	$0,func_4248	# 4248
	brnz	$3,label_2ca8	# 2ca8
label_2bd4:
	cgt	$20,$87,$82
	ori	$3,$83,0
	ai	$82,$82,1
	brnz	$20,label_2bc0	# 2bc0
	lqd	$23,608($81)	# 260
	rotqbyi	$22,$23,8
	ceqi	$21,$22,2
	brz	$21,label_2ca0	# 2ca0
	hbrr	label_2c20,func_3c88	# 3c88
	ila	$3,204224	# 31dc0
	lqd	$31,608($81)	# 260
	il	$5,64	# 40
	lqd	$29,96($81)	# 60
	il	$80,19	# 13
	rotqbyi	$30,$31,12
	rotqbyi	$28,$29,8
	shli	$27,$30,4
	a	$26,$27,$28
	ai	$4,$26,32	# 20
label_2c20:
	brsl	$0,func_3c88	# 3c88
	lqd	$4,624($81)	# 270
	ceqi	$24,$4,3
	brz	$24,label_2cac	# 2cac
	ila	$3,204160	# 31d80
	hbrr	label_2c58,func_30f0	# 30f0
	lqd	$38,96($81)	# 60
	rotqbyi	$40,$4,8
	rotqbyi	$39,$4,4
	shli	$37,$40,4
	shli	$35,$39,4
	rotqbyi	$36,$38,8
	a	$5,$36,$37
	a	$4,$36,$35
label_2c58:
	brsl	$0,func_30f0	# 30f0
	lqd	$34,624($81)	# 270
	rotqbyi	$33,$34,12
	ceqi	$32,$33,1
	brz	$32,label_2ca0	# 2ca0
	ori	$3,$81,0
	brsl	$0,func_2ce8	# 2ce8
	ori	$80,$3,0
	brnz	$3,label_2cac	# 2cac
	ori	$3,$81,0
	ori	$4,$88,0
	brsl	$0,func_33f8	# 33f8
	brz	$3,label_2c94	# 2c94
	il	$80,14
	br	label_2cac	# 2cac
label_2c94:
	ori	$3,$83,0
	brsl	$0,func_4088	# 4088
	br	label_2cac	# 2cac
label_2ca0:
	il	$80,19	# 13
	br	label_2cac	# 2cac
label_2ca8:
	il	$80,21	# 15
label_2cac:
	lqd	$0,192($1)	# c0
	ai	$1,$1,176	# b0
	shlqbyi	$3,$80,0
	lqd	$80,-16($1)
	hbr	label_2ce0,$0
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
label_2ce0:
	bi	$0
	lnop
.global func_2ce8
func_2ce8:
	hbrr	label_2d1c,func_3f78	# 3f78
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$83,-64($1)
	il	$83,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$1,-128($1)
	ai	$1,$1,-128
label_2d10:
	ai	$81,$82,504	# 1f8
	ai	$4,$1,32	# 20
	ori	$3,$81,0
label_2d1c:
	brsl	$0,func_3f78	# 3f78
	clgti	$2,$3,1
	brnz	$2,label_2f58	# 2f58
	ceqi	$4,$3,1
	shlqbyi	$3,$81,0
	il	$5,1
	selb	$83,$83,$5,$4
	ai	$4,$1,48	# 30
	brsl	$0,func_4470	# 4470
	brnz	$3,label_2f58	# 2f58
	lqd	$11,32($1)	# 20
	il	$17,24	# 18
	lqd	$9,48($1)	# 30
	il	$13,20	# 14
	hbrr	label_2d98,label_2e08	# 2e08
	ai	$10,$11,24	# 18
	lqx	$19,$9,$17
	ai	$12,$11,20	# 14
	lqd	$22,0($10)
	cwd	$21,8($9)
	cwd	$8,4($9)
	rotqby	$20,$22,$10
	shufb	$18,$20,$19,$21
	stqx	$18,$9,$17
	lqd	$16,0($12)
	lqx	$14,$9,$13
	rotqby	$15,$16,$12
	shufb	$7,$15,$14,$8
	stqx	$7,$9,$13
	lqd	$6,0($12)
	rotqby	$3,$6,$12
label_2d98:
	brz	$3,label_2e08	# 2e08
	ori	$4,$11,0
	ori	$3,$82,0
	brsl	$0,func_35a8	# 35a8
	ila	$4,203856	# 31c50
	lqd	$24,32($1)	# 20
	ila	$3,204160	# 31d80
	ori	$6,$4,0
	ai	$23,$24,24	# 18
	lqd	$10,0($23)
	rotqby	$5,$10,$23
	brsl	$0,func_3188	# 3188
	brnz	$3,label_2f58	# 2f58
	lqd	$4,48($1)	# 30
	ori	$3,$82,0
	brsl	$0,func_3630	# 3630
	ceqbi	$26,$83,0
	xsbh	$25,$26
	brhnz	$25,label_2f28	# 2f28
	lqr	$5,data_31d50
	ila	$3,204224	# 31dc0
	ila	$4,203856	# 31c50
	brsl	$0,func_3c50	# 3c50
	brnz	$3,label_2f58	# 2f58
	lqr	$27,data_31d50
	cwd	$28,0($1)
	shufb	$2,$3,$27,$28
	br	label_2ef0	# 2ef0
label_2e08:
	hbrr	label_2e40,func_3188	# 3188
	lqd	$32,0($10)
	lqd	$31,16($9)
	rotqby	$5,$32,$10
	rotqby	$30,$31,$9
	clgt	$29,$5,$30
	brnz	$29,label_2f58	# 2f58
	ai	$36,$11,12
	ai	$34,$9,12
	lqd	$35,0($36)
	ila	$3,204160	# 31d80
	lqd	$33,0($34)
	rotqby	$4,$35,$36
	rotqby	$6,$33,$34
label_2e40:
	brsl	$0,func_3188	# 3188
	brnz	$3,label_2f58	# 2f58
	ceqbi	$38,$83,0
	xsbh	$37,$38
	brhnz	$37,label_2ef8	# 2ef8
	lqr	$39,data_31d50
	hbrr	label_2e84,label_2ed8	# 2ed8
	lqd	$4,48($1)	# 30
	lqd	$6,32($1)	# 20
	brnz	$39,label_2e88	# 2e88
	ai	$43,$4,12
	ai	$41,$6,24	# 18
	ila	$3,204224	# 31dc0
	lqd	$42,0($43)
	lqd	$40,0($41)
	rotqby	$4,$42,$43
	rotqby	$5,$40,$41
label_2e84:
	br	label_2ed8	# 2ed8
label_2e88:
	ai	$48,$6,24	# 18
	hbrr	label_2eb0,func_3c50	# 3c50
	ai	$46,$4,12
	lqd	$47,0($48)
	ila	$3,204224	# 31dc0
	lqd	$45,0($46)
	rotqby	$44,$47,$48
	rotqby	$4,$45,$46
	andi	$80,$44,15
	sf	$5,$80,$44
label_2eb0:
	brsl	$0,func_3c50	# 3c50
	brnz	$3,label_2f58	# 2f58
	brz	$80,label_2ecc	# 2ecc
	lqd	$4,48($1)	# 30
	ori	$5,$80,0
	shlqbyi	$3,$82,0
	brsl	$0,func_31d0	# 31d0
label_2ecc:
	lqr	$5,data_31d50
	ila	$3,204224	# 31dc0
	ila	$4,203856	# 31c50
label_2ed8:
	brsl	$0,func_3c50	# 3c50
	brnz	$3,label_2f58	# 2f58
	il	$50,0
	lqr	$49,data_31d50
	cwd	$51,0($1)
	shufb	$2,$50,$49,$51
label_2ef0:
	stqr	$2,data_31d50
	br	label_2f28	# 2f28
label_2ef8:
	ila	$3,204224	# 31dc0
	hbrr	label_2f20,func_3c50	# 3c50
	lqd	$57,48($1)	# 30
	lqd	$56,32($1)	# 20
	ai	$55,$57,12
	ai	$53,$56,24	# 18
	lqd	$54,0($55)
	lqd	$52,0($53)
	rotqby	$4,$54,$55
	rotqby	$5,$52,$53
label_2f20:
	brsl	$0,func_3c50	# 3c50
	brnz	$3,label_2f58	# 2f58
label_2f28:
	ori	$3,$81,0
	lqd	$4,48($1)	# 30
	brsl	$0,func_42f8	# 42f8
	brnz	$3,label_2f58	# 2f58
	ori	$3,$81,0
	lqd	$4,32($1)	# 20
	brsl	$0,func_3c90	# 3c90
	brnz	$3,label_2f58	# 2f58
	ceqbi	$59,$83,0
	xsbh	$58,$59
	brhnz	$58,label_2d10	# 2d10
	br	label_2f5c	# 2f5c
label_2f58:
	il	$3,21	# 15
label_2f5c:
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
.global func_2f78
func_2f78:
	ila	$18,141944	# 22a78
	lqd	$17,0($3)
	il	$13,4
	cwd	$7,0($1)
	il	$10,256	# 100
	cwd	$15,4($1)
	ila	$6,141912	# 22a58
	hbr	label_2fc4,$0
	il	$4,0
	cwd	$12,8($1)
	il	$16,0
	cwd	$8,12($1)
	shufb	$14,$18,$17,$7
	stqd	$16,16($3)
	shufb	$11,$13,$14,$15
	shufb	$9,$10,$11,$12
	shufb	$5,$6,$9,$7
	shufb	$2,$4,$5,$8
	stqd	$2,0($3)
label_2fc4:
	bi	$0
.global func_2fc8
func_2fc8:
	lqd	$13,0($3)
	cwd	$14,12($1)
	lqd	$10,16($3)
	cdd	$8,0($1)
	hbr	label_3004,$0
	cdd	$9,8($1)
	shufb	$12,$4,$13,$14
	stqd	$12,0($3)
	lqd	$11,0($5)
	shufb	$6,$11,$10,$8
	stqd	$6,16($3)
	lqd	$7,0($5)
	rotqbyi	$4,$7,8
	shufb	$2,$4,$6,$9
	stqd	$2,16($3)
label_3004:
	bi	$0
.global func_3008
func_3008:
	ceqi	$2,$3,1
	brz	$2,label_3024	# 3024
	ila	$6,65535	# ffff
	ila	$3,204128	# 31d60
	ceq	$5,$4,$6
	biz	$5,$0
	br	func_2f78	# 2f78
label_3024:
	binz	$3,$0
	ila	$8,65535	# ffff
	ila	$3,204128	# 31d60
	ceq	$7,$4,$8
	biz	$7,$0
	br	func_2150	# 2150
	lnop
.global func_3040
func_3040:
	il	$3,0
	ila	$4,65535	# ffff
	br	func_3008	# 3008
	lnop
.global func_3050
func_3050:
	il	$3,1
	ila	$4,65535	# ffff
	br	func_3008	# 3008
	lnop
.global func_3060
func_3060:
	ori	$8,$3,0
	hbrr	label_308c,func_4d98	# 4d98
	ori	$3,$6,0
	stqd	$0,16($1)
	lqd	$6,0($8)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	ai	$8,$8,16
	ori	$7,$6,0
	rotqbyi	$6,$6,12
	rotqbyi	$7,$7,8
label_308c:
	brsl	$0,func_4d98	# 4d98
	il	$3,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_30a0
func_30a0:
	ila	$18,141944	# 22a78
	lqd	$17,0($3)
	il	$13,3
	cwd	$7,0($1)
	il	$10,128	# 80
	cwd	$15,4($1)
	ila	$6,141880	# 22a38
	hbr	label_30ec,$0
	il	$4,0
	cwd	$12,8($1)
	il	$16,0
	cwd	$8,12($1)
	shufb	$14,$18,$17,$7
	stqd	$16,16($3)
	shufb	$11,$13,$14,$15
	shufb	$9,$10,$11,$12
	shufb	$5,$6,$9,$7
	shufb	$2,$4,$5,$8
	stqd	$2,0($3)
label_30ec:
	bi	$0
.global func_30f0
func_30f0:
	lqd	$13,0($3)
	cwd	$14,12($1)
	lqd	$10,16($3)
	cdd	$8,0($1)
	hbr	label_312c,$0
	cdd	$9,8($1)
	shufb	$12,$4,$13,$14
	stqd	$12,0($3)
	lqd	$11,0($5)
	shufb	$6,$11,$10,$8
	stqd	$6,16($3)
	lqd	$7,0($5)
	rotqbyi	$4,$7,8
	shufb	$2,$4,$6,$9
	stqd	$2,16($3)
label_312c:
	bi	$0
.global func_3130
func_3130:
	ceqi	$2,$3,1
	brz	$2,label_314c	# 314c
	ila	$6,65535	# ffff
	ila	$3,204160	# 31d80
	ceq	$5,$4,$6
	biz	$5,$0
	br	func_30a0	# 30a0
label_314c:
	binz	$3,$0
	ila	$8,65535	# ffff
	ila	$3,204160	# 31d80
	ceq	$7,$4,$8
	biz	$7,$0
	br	func_20f0	# 20f0
	lnop
.global func_3168
func_3168:
	il	$3,0
	ila	$4,65535	# ffff
	br	func_3130	# 3130
	lnop
.global func_3178
func_3178:
	il	$3,1
	ila	$4,65535	# ffff
	br	func_3130	# 3130
	lnop
.global func_3188
func_3188:
	ori	$8,$3,0
	hbrr	label_31b8,func_5098	# 5098
	ori	$3,$6,0
	stqd	$0,16($1)
	il	$9,0
	lqd	$6,0($8)
	ai	$8,$8,16
	stqd	$1,-32($1)
	ai	$1,$1,-32
	ori	$7,$6,0
	rotqbyi	$6,$6,12
	rotqbyi	$7,$7,8
label_31b8:
	brsl	$0,func_5098	# 5098
	lqd	$0,48($1)	# 30
	il	$3,0
	ai	$1,$1,32	# 20
	bi	$0
	lnop
.global func_31d0
func_31d0:
	ori	$11,$5,0
	lqr	$2,data_31d50
	ila	$9,203856	# 31c50
	shlqbyi	$5,$4,0
	a	$10,$11,$9
	a	$7,$2,$9
	a	$6,$10,$2
	br	label_320c	# 320c
label_31f0:
	hbrr	label_321c,0
	lqd	$14,0($7)
	lqd	$12,0($6)
	cbd	$4,0($6)
	rotqby	$13,$14,$8
	shufb	$3,$13,$12,$4
	stqd	$3,0($6)
label_320c:
	ai	$7,$7,-1
	clgt	$15,$6,$10
	ai	$8,$7,13
	ai	$6,$6,-1
label_321c:
	brnz	$15,label_31f0	# 31f0
	hbrr	label_3244,label_3268	# 3268
	ai	$16,$5,24	# 18
	ai	$5,$5,12
	lqd	$10,0($16)
	lqd	$8,0($5)
	rotqby	$6,$10,$16
	rotqby	$7,$8,$5
	a	$7,$7,$6
	sf	$4,$11,$7
label_3244:
	br	label_3268	# 3268
label_3248:
	hbrr	label_3274,0
	lqd	$20,0($4)
	ai	$4,$4,1
	lqd	$18,0($9)
	rotqby	$19,$20,$5
	shufb	$17,$19,$18,$6
	stqd	$17,0($9)
	ai	$9,$9,1
label_3268:
	clgt	$21,$7,$4
	cbd	$6,0($9)
	ai	$5,$4,13
label_3274:
	brnz	$21,label_3248	# 3248
	lqr	$23,data_31d50
	cwd	$24,0($1)
	a	$22,$23,$11
	shufb	$9,$22,$23,$24
	stqr	$9,data_31d50
	bi	$0
.global func_3290
func_3290:
	ori	$8,$3,0
	lqd	$12,0($3)
	ilhu	$3,21315	# 5343
	cwd	$13,0($1)
	ai	$9,$5,4
	iohl	$3,17664	# 4500
	il	$10,19	# 13
	shufb	$11,$5,$12,$13
	stqd	$11,0($8)
	lqd	$7,0($5)
	rotqby	$6,$7,$5
	ceq	$2,$6,$3
	brz	$2,label_3390	# 3390
	lqd	$15,0($9)
	ai	$3,$5,10
	ai	$7,$5,24	# 18
	rotqby	$14,$15,$9
	ceqi	$9,$14,2
	brz	$9,label_3390	# 3390
	lqd	$20,0($3)
	ila	$19,65535	# ffff
	ai	$6,$5,12
	rotqby	$18,$20,$7
	and	$17,$18,$19
	ceq	$16,$17,$4
	brz	$16,label_3390	# 3390
	lqd	$23,0($6)
	fsmbi	$4,257	# 101
	andbi	$4,$4,127	# 7f
	rotqby	$22,$23,$6
	andi	$21,$22,15
	brnz	$21,label_3390	# 3390
	il	$28,0
	lqd	$33,16($5)
	rotqby	$32,$33,$5
	and	$27,$32,$4
	clgt	$31,$32,$4
	ceq	$26,$27,$28
	ceq	$29,$32,$4
	gb	$25,$26
	xswd	$30,$31
	selb	$4,$31,$30,$29
	cgti	$24,$25,11
	brz	$24,label_3390	# 3390
	ai	$3,$5,8
	hbrr	label_3388,label_3390	# 3390
	ai	$6,$5,22	# 16
	chd	$7,10($1)
	brz	$4,label_3390	# 3390
	lqd	$42,0($3)
	il	$36,1
	lqd	$39,432($8)	# 1b0
	il	$10,0
	cbd	$38,9($1)
	rotqby	$41,$42,$6
	andi	$40,$41,15
	shufb	$37,$40,$39,$7
	stqd	$37,432($8)	# 1b0
	lqd	$35,0($3)
	shufb	$3,$36,$37,$38
	rotqby	$34,$35,$6
	cgthi	$5,$34,-1
label_3388:
	brhnz	$5,label_3390	# 3390
	stqd	$3,432($8)	# 1b0
label_3390:
	ori	$3,$10,0
	bi	$0
.global func_3398
func_3398:
	ori	$10,$3,0
	fsmbi	$7,0
	il	$6,1
	br	label_33d4	# 33d4
label_33a8:
	nor	$14,$3,$3
	hbrr	label_33ec,label_33a8	# 33a8
	lqx	$13,$7,$10
	lqx	$12,$7,$4
	sfi	$3,$14,0
	ai	$7,$7,1
	rotqby	$6,$13,$8
	rotqby	$11,$12,$9
	ceqb	$8,$6,$11
	fsm	$2,$8
	and	$6,$3,$2
label_33d4:
	a	$16,$7,$10
	a	$9,$7,$4
	ceq	$15,$7,$5
	ai	$8,$16,13
	ai	$9,$9,13
	ceqi	$3,$6,0
label_33ec:
	brz	$15,label_33a8	# 33a8
	sfi	$3,$3,0
	bi	$0
.global func_33f8
func_33f8:
	il	$5,19	# 13
	hbrr	label_3430,label_3470	# 3470
	stqd	$80,-16($1)
	ori	$80,$4,0
	ila	$4,203824	# 31c30
	stqd	$81,-32($1)
	ori	$81,$3,0
	lqd	$7,16($80)
	ila	$3,204224	# 31dc0
	stqd	$0,16($1)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	rotqbyi	$6,$7,8
	ceqi	$2,$6,2
label_3430:
	brz	$2,label_3470	# 3470
	brsl	$0,func_3c78	# 3c78
	hbrr	label_345c,func_3398	# 3398
	lqd	$12,16($80)
	il	$5,20	# 14
	lqd	$10,96($81)	# 60
	ila	$3,203824	# 31c30
	rotqbyi	$11,$12,12
	rotqbyi	$9,$10,8
	shli	$8,$11,4
	a	$4,$8,$9
label_345c:
	brsl	$0,func_3398	# 3398
	il	$4,14
	fsmbi	$5,0
	ceqi	$3,$3,0
	selb	$5,$4,$5,$3
label_3470:
	ori	$3,$5,0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_3488
func_3488:
	ori	$6,$3,0
	br	label_34b8	# 34b8
label_3490:
	lqd	$12,0($7)
	hbrr	label_34c8,label_3490	# 3490
	lqd	$11,0($4)
	ai	$4,$4,16
	rotqby	$10,$12,$7
	stqd	$11,0($10)
	ai	$2,$10,16
	lqx	$7,$6,$9
	shufb	$3,$2,$7,$8
	stqx	$3,$6,$9
label_34b8:
	clgt	$13,$5,$4
	cwd	$8,4($6)
	ai	$7,$6,4
	il	$9,4
label_34c8:
	brnz	$13,label_3490	# 3490
	ori	$3,$4,0
	bi	$0
	lnop
.global func_34d8
func_34d8:
	hbrr	label_3508,func_3f78	# 3f78
	stqd	$80,-16($1)
	il	$80,0
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$0,16($1)
	stqd	$81,-32($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
label_34fc:
	ai	$81,$82,504	# 1f8
	ai	$4,$1,32	# 20
	ori	$3,$81,0
label_3508:
	brsl	$0,func_3f78	# 3f78
	hbrr	label_3564,func_3488	# 3488
	ori	$6,$3,0
	ceqi	$5,$3,1
	il	$2,1
	clgti	$4,$6,1
	ai	$3,$82,424	# 1a8
	selb	$80,$80,$2,$5
	brnz	$4,label_3588	# 3588
	lqd	$18,32($1)	# 20
	ai	$17,$18,24	# 18
	ai	$14,$18,20	# 14
	ai	$12,$18,12
	lqd	$16,0($17)
	lqd	$13,0($14)
	lqd	$11,0($12)
	rotqby	$15,$16,$17
	rotqby	$10,$13,$14
	rotqby	$4,$11,$12
	rotmi	$9,$15,-4
	a	$8,$9,$10
	shli	$7,$8,4
	a	$5,$4,$7
label_3564:
	brsl	$0,func_3488	# 3488
	ori	$3,$81,0
	lqd	$4,32($1)	# 20
	brsl	$0,func_3c90	# 3c90
	ceqbi	$2,$80,0
	brnz	$3,label_3588	# 3588
	xsbh	$19,$2
	brhnz	$19,label_34fc	# 34fc
	br	label_358c	# 358c
label_3588:
	il	$3,21	# 15
label_358c:
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_35a8
func_35a8:
	ai	$6,$4,24	# 18
	lqr	$13,data_31d50
	ai	$7,$4,20	# 14
	cwd	$15,0($1)
	ai	$4,$4,12
	lqd	$16,0($6)
	ila	$8,203856	# 31c50
	hbrr	label_35f4,label_3618	# 3618
	rotqby	$14,$16,$6
	shufb	$12,$14,$13,$15
	stqr	$12,data_31d50
	lqd	$11,0($4)
	lqd	$10,0($7)
	lqd	$9,0($6)
	rotqby	$3,$11,$4
	rotqby	$2,$10,$7
	rotqby	$5,$9,$6
	a	$4,$3,$2
	a	$7,$4,$5
label_35f4:
	br	label_3618	# 3618
label_35f8:
	hbrr	label_3624,0
	lqd	$20,0($4)
	ai	$4,$4,1
	lqd	$18,0($8)
	rotqby	$19,$20,$5
	shufb	$17,$19,$18,$6
	stqd	$17,0($8)
	ai	$8,$8,1
label_3618:
	clgt	$21,$7,$4
	cbd	$6,0($8)
	ai	$5,$4,13
label_3624:
	brnz	$21,label_35f8	# 35f8
	bi	$0
	lnop
.global func_3630
func_3630:
	ai	$6,$4,20	# 14
	hbrr	label_365c,label_3680	# 3680
	ai	$4,$4,12
	lqr	$5,data_31d50
	ila	$7,203856	# 31c50
	lqd	$9,0($6)
	lqd	$8,0($4)
	rotqby	$3,$9,$6
	rotqby	$2,$8,$4
	a	$4,$2,$3
	a	$8,$4,$5
label_365c:
	br	label_3680	# 3680
label_3660:
	hbrr	label_368c,0
	lqd	$13,0($7)
	ai	$7,$7,1
	lqd	$11,0($4)
	rotqby	$12,$13,$5
	shufb	$10,$12,$11,$6
	stqd	$10,0($4)
	ai	$4,$4,1
label_3680:
	clgt	$14,$8,$4
	cbd	$6,0($4)
	ai	$5,$7,13
label_368c:
	brnz	$14,label_3660	# 3660
	bi	$0
	lnop
.global func_3698
func_3698:
	hbrr	label_36bc,func_5428	# 5428
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	ila	$3,204192	# 31da0
	stqd	$0,16($1)
	ori	$81,$6,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
label_36bc:
	brsl	$0,func_5428	# 5428
	ai	$7,$80,12
	hbrr	label_36f4,func_8750	# 8750
	ori	$5,$3,0
	shlqbyi	$3,$81,0
	ai	$80,$80,8
	cgti	$2,$5,-1
	ila	$4,204192	# 31da0
	il	$5,1
	brz	$2,label_3704	# 3704
	lqd	$8,0($80)
	lqd	$6,0($7)
	rotqby	$5,$8,$80
	rotqby	$6,$6,$7
label_36f4:
	brsl	$0,func_8750	# 8750
	cgti	$4,$3,-1
	nor	$3,$4,$4
	sfi	$5,$3,0
label_3704:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$3,$5,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_3720
func_3720:
	ila	$28,142008	# 22ab8
	lqd	$27,0($3)
	il	$21,4
	cwd	$20,0($3)
	il	$24,1
	cwd	$25,4($3)
	ila	$19,141976	# 22a98
	cwd	$13,8($3)
	il	$7,8
	fsmbi	$12,0
	il	$8,12
	cwd	$14,12($3)
	shufb	$26,$28,$27,$20
	hbr	label_37a4,$0
	stqd	$26,0($3)
	lqx	$23,$3,$21
	shufb	$22,$24,$23,$25
	stqx	$22,$3,$21
	lqd	$18,0($3)
	shufb	$17,$19,$18,$20
	stqd	$17,0($3)
	lqx	$16,$3,$7
	shufb	$15,$12,$16,$13
	stqx	$15,$3,$7
	lqx	$11,$3,$8
	shufb	$10,$12,$11,$14
	stqx	$10,$3,$8
	lqx	$9,$3,$7
	shufb	$6,$4,$9,$13
	stqx	$6,$3,$7
	lqx	$4,$3,$8
	shufb	$2,$5,$4,$14
	stqx	$2,$3,$8
label_37a4:
	bi	$0
.global func_37a8
func_37a8:
	ori	$9,$4,0
	lqd	$10,432($3)	# 1b0
	il	$7,-4
	rotqbyi	$8,$10,5
	ceqbi	$4,$8,0
	xsbh	$2,$4
	brhnz	$2,label_3838	# 3838
	br	label_37e8	# 37e8
label_37c8:
	il	$7,0
	lqd	$9,0($4)
	stqd	$9,0($6)
	lqd	$5,16($4)
	stqd	$5,16($6)
	lqd	$3,32($4)	# 20
	stqd	$3,32($6)	# 20
	br	label_3838	# 3838
label_37e8:
	il	$7,0
	lqd	$14,96($3)	# 60
	ai	$12,$14,12
	rotqbyi	$4,$14,4
	lqd	$11,0($12)
	rotqby	$8,$11,$12
	br	label_3828	# 3828
label_3804:
	hbrr	label_3830,0
	lqd	$20,16($4)
	rotqbyi	$18,$20,4
	ceq	$19,$20,$9
	nor	$17,$19,$19
	ceq	$16,$18,$5
	andc	$15,$16,$17
	brnz	$15,label_37c8	# 37c8
	ai	$4,$4,48	# 30
label_3828:
	ceq	$22,$7,$8
	ai	$7,$7,1
label_3830:
	brz	$22,label_3804	# 3804
	il	$7,-3
label_3838:
	ori	$3,$7,0
	bi	$0
.global func_3840
func_3840:
	il	$12,8
	lqd	$2,0($3)
	il	$13,24	# 18
	cdd	$10,0($4)
	il	$14,40	# 28
	cdd	$11,8($4)
	il	$16,56	# 38
	shlqbyi	$7,$4,0
	il	$15,-1
	rotqby	$8,$2,$3
	ai	$9,$8,8
	brz	$8,label_3924	# 3924
	ai	$31,$8,24	# 18
	lqd	$43,0($8)
	ai	$22,$8,40	# 28
	lqd	$41,0($4)
	ai	$6,$8,56	# 38
	hbr	label_3928,$0
	il	$15,0
	rotqby	$42,$43,$8
	shufb	$40,$42,$41,$10
	stqd	$40,0($4)
	lqd	$39,0($9)
	lqx	$37,$4,$12
	rotqby	$38,$39,$9
	shufb	$36,$38,$37,$11
	stqx	$36,$4,$12
	lqd	$35,16($8)
	lqd	$33,16($4)
	rotqby	$34,$35,$8
	shufb	$32,$34,$33,$10
	stqd	$32,16($4)
	lqd	$30,0($31)
	lqx	$28,$4,$13
	rotqby	$29,$30,$31
	shufb	$27,$29,$28,$11
	stqx	$27,$4,$13
	lqd	$26,32($8)	# 20
	lqd	$24,32($4)	# 20
	rotqby	$25,$26,$8
	shufb	$23,$25,$24,$10
	stqd	$23,32($4)	# 20
	lqd	$21,0($22)
	lqx	$19,$4,$14
	rotqby	$20,$21,$22
	shufb	$18,$20,$19,$11
	stqx	$18,$4,$14
	lqd	$17,48($8)	# 30
	lqd	$13,48($4)	# 30
	rotqby	$14,$17,$8
	shufb	$12,$14,$13,$10
	stqd	$12,48($4)	# 30
	lqd	$9,0($6)
	lqx	$4,$4,$16
	rotqby	$5,$9,$6
	shufb	$3,$5,$4,$11
	stqx	$3,$7,$16
label_3924:
	ori	$3,$15,0
label_3928:
	bi	$0
	lnop
.global func_3930
func_3930:
	ori	$8,$5,0
	lqd	$2,0($3)
	ori	$6,$3,0
	shlqbyi	$7,$4,0
	il	$12,-4
	rotqby	$5,$2,$3
	ai	$3,$5,56	# 38
	brz	$5,label_3a3c	# 3a3c
	ai	$19,$5,70	# 46
	lqd	$18,0($3)
	ila	$17,65535	# ffff
	cdd	$9,0($8)
	shli	$12,$4,6
	cdd	$11,8($8)
	ai	$10,$6,4
	shli	$6,$4,3
	il	$13,8
	rotqby	$16,$18,$19
	il	$14,24	# 18
	sf	$6,$6,$12
	il	$15,40	# 28
	and	$4,$16,$17
	il	$12,-2
	clgt	$3,$4,$7
	brz	$3,label_3a3c	# 3a3c
	lqd	$48,0($10)
	il	$12,0
	lqd	$44,0($8)
	rotqby	$47,$48,$10
	lqx	$46,$6,$47
	a	$20,$6,$47
	ai	$42,$20,8
	ai	$33,$20,24	# 18
	ai	$24,$20,40	# 28
	rotqby	$45,$46,$20
	shufb	$43,$45,$44,$9
	stqd	$43,0($8)
	lqd	$41,0($42)
	lqx	$39,$8,$13
	rotqby	$40,$41,$42
	shufb	$38,$40,$39,$11
	stqx	$38,$8,$13
	lqd	$37,16($20)
	lqd	$35,16($8)
	rotqby	$36,$37,$20
	shufb	$34,$36,$35,$9
	stqd	$34,16($8)
	lqd	$32,0($33)
	lqx	$30,$8,$14
	rotqby	$31,$32,$33
	shufb	$29,$31,$30,$11
	stqx	$29,$8,$14
	lqd	$28,32($20)	# 20
	lqd	$26,32($8)	# 20
	rotqby	$27,$28,$20
	shufb	$25,$27,$26,$9
	stqd	$25,32($8)	# 20
	lqd	$23,0($24)
	lqx	$21,$8,$15
	rotqby	$22,$23,$24
	shufb	$14,$22,$21,$11
	stqx	$14,$8,$15
	lqd	$13,48($20)	# 30
	lqd	$10,48($8)	# 30
	rotqby	$11,$13,$20
	shufb	$7,$11,$10,$9
	stqd	$7,48($8)	# 30
label_3a3c:
	ori	$3,$12,0
	bi	$0
	lnop
.global func_3a48
func_3a48:
	hbrr	label_3a70,label_3b2c	# 3b2c
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
label_3a70:
	br	label_3b2c	# 3b2c
label_3a74:
	hbrr	label_3a98,label_3b00	# 3b00
	il	$6,264	# 108
	lqd	$8,0($80)
	il	$7,280	# 118
	cdd	$4,0($81)
	cdd	$5,8($81)
	ceqi	$2,$8,1
	ceqi	$3,$8,2
	brnz	$2,label_3aa0	# 3aa0
label_3a98:
	brz	$3,label_3b00	# 3b00
	br	label_3af0	# 3af0
label_3aa0:
	lqd	$19,16($80)
	lqd	$18,256($81)	# 100
	hbrr	label_3aec,label_3b00	# 3b00
	shufb	$17,$19,$18,$4
	stqd	$17,256($81)	# 100
	lqd	$16,16($80)
	lqx	$14,$81,$6
	rotqbyi	$15,$16,8
	shufb	$13,$15,$14,$5
	stqx	$13,$81,$6
	lqd	$11,272($81)	# 110
	lqd	$12,32($80)	# 20
	shufb	$10,$12,$11,$4
	stqd	$10,272($81)	# 110
	lqd	$9,32($80)	# 20
	lqx	$4,$81,$7
	rotqbyi	$6,$9,8
	shufb	$3,$6,$4,$5
	stqx	$3,$81,$7
label_3aec:
	br	label_3b00	# 3b00
label_3af0:
	ai	$4,$80,16
	shlqbyi	$3,$81,0
	il	$5,256	# 100
	brsl	$0,func_1f8a0	# 1f8a0
label_3b00:
	il	$24,0
	lqd	$26,0($80)
	hbrr	label_3b2c,label_3a74	# 3a74
	rotqbyi	$23,$26,8
	rotqbyi	$20,$26,4
	ceq	$22,$23,$24
	a	$82,$82,$20
	gb	$21,$22
	cgti	$7,$21,11
	ceqi	$5,$7,0
	and	$80,$82,$5
label_3b2c:
	brnz	$80,label_3a74	# 3a74
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_3b48
func_3b48:
	il	$4,0
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	il	$5,256	# 100
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1f718	# 1f718
	il	$3,0
	lqd	$14,256($80)	# 100
	il	$10,264	# 108
	cdd	$5,0($80)
	il	$7,280	# 118
	cdd	$6,8($80)
	shufb	$13,$3,$14,$5
	stqd	$13,256($80)	# 100
	lqx	$12,$80,$10
	shufb	$11,$3,$12,$6
	stqx	$11,$80,$10
	lqd	$9,272($80)	# 110
	shufb	$8,$3,$9,$5
	stqd	$8,272($80)	# 110
	lqx	$4,$80,$7
	shufb	$2,$3,$4,$6
	stqx	$2,$80,$7
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_3bc0
func_3bc0:
	il	$2,2
	hbrr	label_3bf4,func_1f718	# 1f718
	ori	$7,$3,0
	stqd	$0,16($1)
	il	$4,0
	stqd	$1,-32($1)
	ai	$1,$1,-32
	lqd	$9,0($3)
	il	$5,240	# f0
	cwd	$8,0($1)
	ai	$3,$3,16
	shufb	$6,$2,$9,$8
	stqd	$6,0($7)
label_3bf4:
	brsl	$0,func_1f718	# 1f718
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
	lnop
.global func_3c08
func_3c08:
	ila	$7,65535	# ffff
	ceqi	$3,$3,1
	ceq	$6,$4,$7
	nor	$2,$3,$3
	nor	$5,$6,$6
	ila	$3,204224	# 31dc0
	or	$4,$2,$5
	binz	$4,$0
	br	func_3bc0	# 3bc0
	lnop
.global func_3c30
func_3c30:
	il	$3,1
	ila	$4,65535	# ffff
	br	func_3c08	# 3c08
	lnop
.global func_3c40
func_3c40:
	il	$3,0
	ila	$4,65535	# ffff
	br	func_3c08	# 3c08
	lnop
.global func_3c50
func_3c50:
	ai	$3,$3,16
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_55b8	# 55b8
	lqd	$0,48($1)	# 30
	il	$3,0
	ai	$1,$1,32	# 20
	bi	$0
	lnop
.global func_3c78
func_3c78:
	ai	$2,$3,16
	shlqbyi	$3,$4,0
	ori	$4,$2,0
	br	func_55d8	# 55d8
.global func_3c88
func_3c88:
	ai	$3,$3,16
	br	func_54b8	# 54b8
.global func_3c90
func_3c90:
	ai	$6,$3,76	# 4c
	hbrr	label_3d0c,label_3dec	# 3dec
	ai	$7,$3,89	# 59
	stqd	$81,-32($1)
	ori	$81,$4,0
	lqd	$5,0($6)
	il	$6,-4
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$82,-48($1)
	ai	$82,$3,56	# 38
	stqd	$0,16($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
	rotqby	$4,$5,$7
	ceqbi	$3,$4,0
	xsbh	$2,$3
	brhnz	$2,label_3e08	# 3e08
	ai	$9,$81,4
	lqd	$14,0($82)
	ceqi	$10,$81,0
	cwd	$11,12($80)
	il	$8,4
	shlqbyi	$3,$81,0
	andc	$7,$9,$10
	ai	$5,$80,60	# 3c
	il	$12,60	# 3c
	cwd	$9,4($7)
	ai	$6,$1,32	# 20
	rotqby	$13,$14,$82
	cwd	$10,0($7)
label_3d0c:
	brz	$13,label_3dec	# 3dec
	lqx	$29,$7,$8
	lqd	$28,0($5)
	shufb	$27,$5,$29,$9
	rotqby	$21,$28,$5
	stqx	$27,$7,$8
	lqd	$26,0($7)
	cwd	$24,4($21)
	shufb	$25,$21,$26,$10
	stqd	$25,0($7)
	lqx	$23,$21,$8
	shufb	$22,$7,$23,$24
	stqx	$22,$21,$8
	lqx	$20,$80,$12
	shufb	$19,$7,$20,$11
	stqx	$19,$80,$12
	lqd	$18,0($81)
	lqd	$17,48($80)	# 30
	lqd	$16,0($82)
	rotqby	$15,$18,$81
	rotqby	$4,$17,$80
	rotqby	$5,$16,$82
	ai	$12,$15,8
	lqd	$11,0($12)
	rotqby	$8,$11,$12
	bisl	$0,$8
	il	$6,-1
	brnz	$3,label_3e08	# 3e08
	lqd	$33,0($82)
	il	$13,56	# 38
	lqd	$31,32($1)	# 20
	cdd	$11,0($80)
	cwd	$12,8($80)
	cwd	$10,0($80)
	rotqby	$32,$33,$82
	rotqmbyi	$8,$31,-4
	sf	$9,$31,$32
	clgt	$30,$31,$32
	ceqi	$3,$9,0
	brnz	$30,label_3e08	# 3e08
	lqd	$47,48($80)	# 30
	lqd	$46,80($80)	# 50
	lqr	$44,data_22810	# 22810
	rotqby	$40,$47,$80
	rotqby	$45,$46,$80
	cg	$43,$40,$8
	selb	$42,$45,$81,$3
	shufb	$38,$43,$43,$44
	shufb	$39,$42,$46,$10
	addx	$38,$40,$8
	stqd	$39,80($80)	# 50
	shufb	$36,$38,$47,$11
	stqd	$36,48($80)	# 30
	lqx	$35,$80,$13
	shufb	$34,$9,$35,$12
	stqx	$34,$80,$13
label_3dec:
	il	$48,28	# 1c
	il	$51,0
	cbd	$52,12($81)
	il	$6,0
	lqx	$50,$81,$48
	shufb	$49,$51,$50,$52
	stqx	$49,$81,$48
label_3e08:
	ori	$3,$6,0
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_3e28
func_3e28:
	ai	$12,$3,76	# 4c
	hbrr	label_3e80,label_3f54	# 3f54
	ai	$3,$3,89	# 59
	stqd	$81,-32($1)
	lqd	$9,0($12)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$0,16($1)
	ori	$83,$4,0
	stqd	$80,-16($1)
	stqd	$1,-112($1)
	ai	$1,$1,-112
	rotqby	$8,$9,$3
	lqd	$10,32($1)	# 20
	cdd	$11,0($1)
	ceqbi	$4,$8,0
	xsbh	$2,$4
	shufb	$7,$6,$10,$11
	il	$6,-4
	rotqbyi	$81,$7,4
	ori	$82,$7,0
	stqd	$7,32($1)	# 20
label_3e80:
	brhnz	$2,label_3f54	# 3f54
	ai	$15,$5,4
	il	$6,-2
	lqd	$14,0($15)
	rotqby	$4,$14,$15
	ceq	$13,$4,$5
	brnz	$13,label_3f54	# 3f54
	ceqi	$34,$4,0
	ai	$33,$4,-4
	il	$6,4
	andc	$80,$33,$34
	ai	$32,$80,8
	ai	$5,$80,4
	cwd	$21,4($80)
	lqd	$31,0($32)
	lqd	$30,0($5)
	cwd	$18,4($5)
	rotqby	$25,$31,$32
	rotqby	$22,$30,$5
	lqd	$28,0($25)
	cwd	$29,0($25)
	cwd	$26,4($22)
	shufb	$27,$22,$28,$29
	stqd	$27,0($25)
	lqx	$24,$22,$6
	shufb	$23,$25,$24,$26
	stqx	$23,$22,$6
	lqx	$20,$80,$6
	shufb	$19,$5,$20,$21
	stqx	$19,$80,$6
	lqx	$17,$5,$6
	shufb	$16,$5,$17,$18
	stqx	$16,$5,$6
label_3f04:
	lqx	$45,$80,$81
	a	$46,$80,$81
	andi	$47,$82,1
	ori	$3,$46,0
	ceqi	$39,$47,0
	rotqby	$44,$45,$46
	a	$43,$44,$82
	ai	$42,$43,-1
	lqd	$41,0($42)
	rotqby	$38,$41,$42
	selb	$37,$38,$82,$39
	bisl	$0,$37
	ceqbi	$36,$3,0
	xsbh	$35,$36
	brhnz	$35,label_3f04	# 3f04
	il	$6,0
	lqd	$49,0($83)
	cwd	$50,0($83)
	shufb	$48,$80,$49,$50
	stqd	$48,0($83)
label_3f54:
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	shlqbyi	$3,$6,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
	lnop
.global func_3f78
func_3f78:
	il	$21,17	# 11
	hbrr	label_3fc0,func_3e28	# 3e28
	il	$17,0
	stqd	$0,16($1)
	ai	$5,$3,60	# 3c
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$1,-80($1)
	ai	$1,$1,-80
	lqd	$20,32($1)	# 20
	cwd	$22,0($1)
	cwd	$19,4($1)
	shufb	$18,$21,$20,$22
	shufb	$16,$17,$18,$19
	ori	$6,$16,0
	stqd	$16,32($1)	# 20
label_3fc0:
	brsl	$0,func_3e28	# 3e28
	lqd	$14,0($81)
	il	$9,28	# 1c
	il	$12,1
	ceqi	$8,$3,0
	rotqby	$5,$14,$81
	lqx	$11,$5,$9
	cbd	$13,12($5)
	shufb	$10,$12,$11,$13
	stqx	$10,$5,$9
	lqd	$0,96($1)	# 60
	hbr	label_4010,$0
	ai	$1,$1,80	# 50
	lqd	$7,80($80)	# 50
	lqd	$81,-32($1)
	rotqby	$6,$7,$80
	lqd	$80,-16($1)
	ceq	$4,$6,$5
	sfi	$2,$4,0
	selb	$3,$3,$2,$8
label_4010:
	bi	$0
	lnop
.global func_4018
func_4018:
	hbrr	label_4058,func_3e28	# 3e28
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$0,16($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
	lqd	$6,48($1)	# 30
	cdd	$3,0($1)
	shufb	$2,$5,$6,$3
	stqd	$2,48($1)	# 30
label_4048:
	ai	$4,$1,32	# 20
	lqd	$6,48($1)	# 30
	ori	$3,$81,0
	shlqbyi	$5,$80,0
label_4058:
	brsl	$0,func_3e28	# 3e28
	ceqi	$4,$3,-2
	brnz	$4,label_406c	# 406c
	brnz	$3,label_4070	# 4070
	br	label_4048	# 4048
label_406c:
	il	$3,0
label_4070:
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_4088
func_4088:
	il	$8,17	# 11
	hbrr	label_40d0,func_4018	# 4018
	il	$6,0
	stqd	$80,-16($1)
	ai	$4,$3,60	# 3c
	stqd	$81,-32($1)
	ori	$80,$3,0
	stqd	$82,-48($1)
	stqd	$0,16($1)
	stqd	$1,-112($1)
	ai	$1,$1,-112
	lqd	$7,48($1)	# 30
	cwd	$82,0($1)
	cwd	$81,4($1)
	shufb	$5,$8,$7,$82
	shufb	$2,$6,$5,$81
	ori	$5,$2,0
	stqd	$2,48($1)	# 30
label_40d0:
	brsl	$0,func_4018	# 4018
	hbrr	label_4100,func_4018	# 4018
	ori	$6,$3,0
	shlqbyi	$3,$80,0
	brnz	$6,label_412c	# 412c
	lqd	$20,32($1)	# 20
	il	$21,21	# 15
	ai	$4,$80,68	# 44
	shufb	$19,$21,$20,$82
	shufb	$18,$6,$19,$81
	ori	$5,$18,0
	stqd	$18,32($1)	# 20
label_4100:
	brsl	$0,func_4018	# 4018
	ai	$17,$80,76	# 4c
	ai	$16,$80,89	# 59
	cbd	$12,12($80)
	ceqi	$14,$3,0
	lqd	$15,0($17)
	il	$9,76	# 4c
	rotqby	$13,$15,$16
	selb	$11,$13,$3,$14
	shufb	$4,$11,$15,$12
	stqx	$4,$80,$9
label_412c:
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_4148
func_4148:
	il	$34,0
	lqd	$50,0($3)
	il	$46,8
	cdd	$35,0($3)
	il	$8,0
	cwd	$31,8($3)
	il	$41,24	# 18
	cwd	$20,12($3)
	il	$36,40	# 28
	cwd	$21,4($3)
	il	$28,56	# 38
	hbr	label_4244,$0
	il	$14,60	# 3c
	shufb	$49,$34,$50,$35
	ai	$25,$3,60	# 3c
	cbd	$23,12($3)
	il	$17,68	# 44
	cwd	$22,0($3)
	ai	$24,$3,68	# 44
	cwd	$18,4($25)
	il	$15,4
	stqd	$49,0($3)
	il	$16,76	# 4c
	lqx	$48,$3,$46
	cwd	$19,4($24)
	shufb	$47,$8,$48,$31
	stqx	$47,$3,$46
	lqd	$45,16($3)
	shufb	$44,$34,$45,$35
	stqd	$44,16($3)
	lqx	$43,$3,$41
	shufb	$42,$8,$43,$31
	stqx	$42,$3,$41
	lqd	$40,32($3)	# 20
	shufb	$39,$34,$40,$35
	stqd	$39,32($3)	# 20
	lqx	$38,$3,$36
	shufb	$37,$8,$38,$31
	stqx	$37,$3,$36
	lqd	$33,48($3)	# 30
	shufb	$32,$34,$33,$35
	stqd	$32,48($3)	# 30
	lqx	$30,$3,$28
	shufb	$29,$8,$30,$31
	stqx	$29,$3,$28
	lqx	$27,$3,$14
	shufb	$26,$25,$27,$20
	stqx	$26,$3,$14
	lqd	$13,64($3)	# 40
	shufb	$12,$25,$13,$18
	stqd	$12,64($3)	# 40
	lqx	$11,$3,$17
	shufb	$10,$24,$11,$21
	stqx	$10,$3,$17
	lqx	$9,$24,$15
	shufb	$7,$24,$9,$19
	stqx	$7,$24,$15
	lqx	$6,$3,$16
	shufb	$5,$8,$6,$23
	stqx	$5,$3,$16
	lqd	$4,80($3)	# 50
	shufb	$2,$8,$4,$22
	stqd	$2,80($3)	# 50
label_4244:
	bi	$0
.global func_4248
func_4248:
	ai	$7,$3,76	# 4c
	cwd	$12,4($3)
	ai	$5,$3,89	# 59
	shlqbyi	$6,$3,0
	ai	$8,$3,68	# 44
	lqd	$17,0($7)
	ori	$7,$4,0
	ai	$4,$4,4
	ceqi	$16,$7,0
	cbd	$11,12($7)
	il	$10,4
	il	$14,68	# 44
	il	$15,28	# 1c
	rotqby	$9,$17,$5
	andc	$5,$4,$16
	il	$13,-4
	cwd	$4,4($5)
	ceqbi	$3,$9,0
	cwd	$9,0($5)
	xsbh	$2,$3
	brhnz	$2,label_42f0	# 42f0
	lqx	$28,$5,$10
	il	$13,0
	lqd	$27,0($8)
	hbr	label_42f4,$0
	shufb	$26,$8,$28,$4
	rotqby	$20,$27,$8
	stqx	$26,$5,$10
	lqd	$25,0($5)
	cwd	$23,4($20)
	shufb	$24,$20,$25,$9
	stqd	$24,0($5)
	lqx	$22,$20,$10
	shufb	$21,$5,$22,$23
	stqx	$21,$20,$10
	lqx	$19,$6,$14
	il	$10,0
	shufb	$18,$5,$19,$12
	stqx	$18,$6,$14
	lqx	$8,$7,$15
	shufb	$6,$10,$8,$11
	stqx	$6,$7,$15
label_42f0:
	ori	$3,$13,0
label_42f4:
	bi	$0
.global func_42f8
func_42f8:
	ai	$7,$3,76	# 4c
	hbrr	label_4374,label_4438	# 4438
	ai	$6,$3,89	# 59
	stqd	$81,-32($1)
	ori	$81,$4,0
	lqd	$5,0($7)
	il	$7,-4
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$82,-48($1)
	ai	$82,$3,40	# 28
	stqd	$0,16($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
	rotqby	$4,$5,$6
	ceqbi	$3,$4,0
	xsbh	$2,$3
	brhnz	$2,label_4454	# 4454
	ai	$9,$81,4
	lqd	$14,0($82)
	ceqi	$10,$81,0
	cwd	$11,4($80)
	il	$8,4
	shlqbyi	$3,$81,0
	andc	$7,$9,$10
	ai	$5,$80,68	# 44
	il	$12,68	# 44
	cwd	$9,4($7)
	ai	$6,$1,32	# 20
	rotqby	$13,$14,$82
	cwd	$10,0($7)
label_4374:
	brz	$13,label_4438	# 4438
	lqx	$29,$7,$8
	lqd	$28,0($5)
	shufb	$27,$5,$29,$9
	rotqby	$21,$28,$5
	stqx	$27,$7,$8
	lqd	$26,0($7)
	cwd	$24,4($21)
	shufb	$25,$21,$26,$10
	stqd	$25,0($7)
	lqx	$23,$21,$8
	shufb	$22,$7,$23,$24
	stqx	$22,$21,$8
	lqx	$20,$80,$12
	lqd	$19,32($80)	# 20
	shufb	$18,$7,$20,$11
	rotqby	$4,$19,$80
	stqx	$18,$80,$12
	lqd	$17,0($81)
	lqd	$16,0($82)
	rotqby	$15,$17,$81
	rotqby	$5,$16,$82
	ai	$12,$15,12
	lqd	$11,0($12)
	rotqby	$8,$11,$12
	bisl	$0,$8
	il	$7,-1
	brnz	$3,label_4454	# 4454
	lqd	$33,0($82)
	il	$11,40	# 28
	lqd	$31,32($1)	# 20
	cdd	$9,0($80)
	cwd	$10,8($80)
	rotqby	$32,$33,$82
	rotqmbyi	$6,$31,-4
	clgt	$30,$31,$32
	sf	$8,$31,$32
	brnz	$30,label_4454	# 4454
	lqd	$42,32($80)	# 20
	lqr	$41,data_22810	# 22810
	rotqby	$39,$42,$80
	cg	$40,$39,$6
	shufb	$38,$40,$40,$41
	addx	$38,$39,$6
	shufb	$36,$38,$42,$9
	stqd	$36,32($80)	# 20
	lqx	$35,$80,$11
	shufb	$34,$8,$35,$10
	stqx	$34,$80,$11
label_4438:
	il	$43,28	# 1c
	cbd	$47,12($81)
	il	$46,0
	fsmbi	$7,0
	lqx	$45,$81,$43
	shufb	$44,$46,$45,$47
	stqx	$44,$81,$43
label_4454:
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	shlqbyi	$3,$7,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_4470
func_4470:
	il	$15,21	# 15
	hbrr	label_44b0,func_3e28	# 3e28
	il	$11,0
	stqd	$0,16($1)
	ai	$5,$3,68	# 44
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	lqd	$14,32($1)	# 20
	cwd	$16,0($1)
	cwd	$13,4($1)
	shufb	$12,$15,$14,$16
	shufb	$10,$11,$12,$13
	ori	$6,$10,0
	stqd	$10,32($1)	# 20
label_44b0:
	brsl	$0,func_3e28	# 3e28
	lqd	$9,0($80)
	il	$7,28	# 1c
	il	$5,1
	rotqby	$2,$9,$80
	lqx	$8,$2,$7
	cbd	$6,12($2)
	shufb	$4,$5,$8,$6
	stqx	$4,$2,$7
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_44e8
func_44e8:
	ai	$11,$3,76	# 4c
	shlqbyi	$18,$4,0
	ai	$30,$3,89	# 59
	cwd	$14,12($3)
	ai	$10,$3,60	# 3c
	lqd	$29,0($11)
	ai	$9,$3,68	# 44
	cwd	$17,4($3)
	ori	$8,$3,0
	cdd	$11,0($3)
	il	$20,60	# 3c
	cwd	$12,8($3)
	il	$21,68	# 44
	cbd	$15,12($3)
	il	$22,4
	cwd	$19,0($3)
	il	$25,8
	rotqby	$4,$29,$30
	il	$26,24	# 18
	cwd	$13,4($10)
	il	$27,40	# 28
	cwd	$16,4($9)
	il	$23,76	# 4c
	ceqbi	$3,$4,0
	il	$28,56	# 38
	xsbh	$2,$3
	il	$24,-3
	brhz	$2,label_4610	# 4610
	il	$37,1
	lqx	$46,$8,$20
	il	$32,0
	hbr	label_4614,$0
	il	$24,0
	shufb	$45,$10,$46,$14
	stqx	$45,$8,$20
	lqd	$44,64($8)	# 40
	shufb	$43,$10,$44,$13
	stqd	$43,64($8)	# 40
	lqx	$42,$8,$21
	shufb	$41,$9,$42,$17
	stqx	$41,$8,$21
	lqx	$40,$9,$22
	shufb	$39,$9,$40,$16
	stqx	$39,$9,$22
	lqd	$38,0($8)
	lqx	$36,$8,$23
	shufb	$35,$18,$38,$11
	shufb	$34,$37,$36,$15
	stqd	$35,0($8)
	lqx	$33,$8,$25
	stqx	$34,$8,$23
	lqd	$31,80($8)	# 50
	shufb	$23,$5,$33,$12
	shufb	$22,$32,$31,$19
	stqx	$23,$8,$25
	lqd	$21,16($8)
	stqd	$22,80($8)	# 50
	shufb	$20,$6,$21,$11
	stqd	$20,16($8)
	lqx	$19,$8,$26
	shufb	$17,$7,$19,$12
	stqx	$17,$8,$26
	lqd	$16,32($8)	# 20
	shufb	$15,$18,$16,$11
	stqd	$15,32($8)	# 20
	lqx	$14,$8,$27
	shufb	$13,$5,$14,$12
	stqx	$13,$8,$27
	lqd	$10,48($8)	# 30
	shufb	$9,$6,$10,$11
	stqd	$9,48($8)	# 30
	lqx	$6,$8,$28
	shufb	$5,$7,$6,$12
	stqx	$5,$8,$28
label_4610:
	ori	$3,$24,0
label_4614:
	bi	$0
.global func_4618
func_4618:
	il	$15,12
	cwd	$18,12($3)
	il	$12,20	# 14
	cwd	$8,0($3)
	il	$11,0
	lqx	$17,$3,$15
	il	$10,24	# 18
	hbr	label_466c,$0
	cwd	$9,4($3)
	cwd	$13,8($3)
	shufb	$16,$4,$17,$18
	stqx	$16,$3,$15
	lqd	$14,16($3)
	shufb	$7,$5,$14,$8
	stqd	$7,16($3)
	lqx	$6,$3,$12
	shufb	$5,$11,$6,$9
	stqx	$5,$3,$12
	lqx	$4,$3,$10
	shufb	$2,$11,$4,$13
	stqx	$2,$3,$10
label_466c:
	bi	$0
.global func_4670
func_4670:
	ila	$4,142040	# 22ad8
	lqd	$7,0($3)
	cwd	$6,0($3)
	shufb	$2,$4,$7,$6
	stqd	$2,0($3)
	br	func_d538	# d538
	ila	$4,142040	# 22ad8
	lqd	$6,0($3)
	cwd	$5,0($3)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
	bi	$0
.global func_46a0
func_46a0:
	ila	$4,142040	# 22ad8
	lqd	$6,0($3)
	cwd	$5,0($3)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
	bi	$0
.global func_46b8
func_46b8:
	il	$26,4
	cwd	$14,4($3)
	ai	$27,$3,4
	cwd	$18,0($3)
	ila	$25,142040	# 22ad8
	lqx	$32,$3,$26
	il	$19,12
	cwd	$30,4($27)
	il	$6,0
	cwd	$22,12($3)
	il	$10,20	# 14
	hbr	label_4754,$0
	il	$11,24	# 18
	cwd	$15,8($3)
	il	$13,28	# 1c
	cbd	$16,12($3)
	shufb	$31,$27,$32,$14
	stqx	$31,$3,$26
	lqx	$29,$27,$26
	shufb	$28,$27,$29,$30
	stqx	$28,$27,$26
	lqd	$24,0($3)
	shufb	$23,$25,$24,$18
	stqd	$23,0($3)
	lqx	$21,$3,$19
	shufb	$20,$6,$21,$22
	stqx	$20,$3,$19
	lqd	$17,16($3)
	shufb	$12,$6,$17,$18
	stqd	$12,16($3)
	lqx	$9,$3,$10
	shufb	$8,$6,$9,$14
	stqx	$8,$3,$10
	lqx	$7,$3,$11
	shufb	$5,$6,$7,$15
	stqx	$5,$3,$11
	lqx	$4,$3,$13
	shufb	$2,$6,$4,$16
	stqx	$2,$3,$13
label_4754:
	bi	$0
.global func_4758
func_4758:
	ceqi	$19,$4,0
	hbr	label_47a8,$0
	clgti	$18,$4,1
	nor	$17,$19,$19
	clgti	$13,$4,3
	ceqi	$14,$18,0
	sfi	$15,$17,0
	il	$16,2
	clgti	$12,$4,7
	selb	$10,$16,$15,$14
	ceqi	$9,$13,0
	il	$11,4
	ceqi	$7,$12,0
	selb	$8,$11,$10,$9
	clgti	$6,$4,15
	il	$5,8
	ceqi	$4,$6,0
	selb	$2,$5,$8,$7
	il	$3,16
	selb	$3,$3,$2,$4
label_47a8:
	bi	$0
	lnop
.global func_47b0
func_47b0:
	ila	$4,142072	# 22af8
	hbrr	label_47dc,func_46a0	# 46a0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	lqd	$6,0($3)
	cwd	$5,0($3)
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
label_47dc:
	brsl	$0,func_46a0	# 46a0
	ori	$3,$80,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	br	func_d538	# d538
	lnop
.global func_47f8
func_47f8:
	br	func_d4c0	# d4c0
	lnop
.global func_4800
func_4800:
	ila	$7,65535	# ffff
	ceqi	$3,$3,1
	ceq	$6,$4,$7
	nor	$2,$3,$3
	nor	$5,$6,$6
	ila	$3,204480	# 31ec0
	or	$4,$2,$5
	binz	$4,$0
	br	func_47f8	# 47f8
	lnop
.global func_4828
func_4828:
	il	$3,1
	ila	$4,65535	# ffff
	br	func_4800	# 4800
	lnop
.global func_4838
func_4838:
	clgti	$2,$6,15
	stqd	$81,-32($1)
	ori	$81,$6,0
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$84,-80($1)
	il	$3,-241
	stqd	$86,-112($1)
	ori	$84,$4,0
	stqd	$87,-128($1)
	ori	$86,$5,0
	stqd	$0,16($1)
	ori	$87,$7,0
	stqd	$80,-16($1)
	stqd	$83,-64($1)
	stqd	$85,-96($1)
	stqd	$1,-160($1)
	ai	$1,$1,-160
	brnz	$2,label_49c4	# 49c4
	il	$85,0
label_4888:
	rotqmbyi	$83,$85,-4
	lqr	$3,data_22810	# 22810
	hbrr	label_48b8,label_48d0	# 48d0
	fsmbi	$10,257	# 101
	cg	$9,$84,$83
	shufb	$3,$9,$9,$3
	andhi	$8,$10,257	# 101
	addx	$3,$84,$83
	and	$7,$3,$8
	shlqbyi	$6,$7,4
	ceqbi	$5,$6,0
	xsbh	$4,$5
label_48b8:
	brhnz	$4,label_48d0	# 48d0
	ceqi	$12,$81,0
	ori	$3,$82,0
	nor	$11,$12,$12
	sfi	$4,$11,0
	br	label_4900	# 4900
label_48d0:
	il	$16,0
	fsmbi	$18,257	# 101
	andbi	$17,$18,3
	and	$4,$3,$17
	ceq	$15,$4,$16
	gb	$14,$15
	cgti	$13,$14,11
	brnz	$13,label_490c	# 490c
	clgti	$2,$81,2
	shlqbyi	$3,$82,0
	il	$4,2
label_48fc:
	selb	$4,$81,$4,$2
label_4900:
	brsl	$0,func_4758	# 4758
	ori	$80,$3,0
	br	label_4980	# 4980
label_490c:
	fsmbi	$23,257	# 101
	andbi	$22,$23,7
	and	$5,$3,$22
	ceq	$21,$5,$4
	gb	$20,$21
	cgti	$19,$20,11
	brnz	$19,label_4938	# 4938
	clgti	$2,$81,4
	shlqbyi	$3,$82,0
	il	$4,4
	br	label_48fc	# 48fc
label_4938:
	hbrr	label_4964,label_48fc	# 48fc
	fsmbi	$29,257	# 101
	andbi	$28,$29,15
	and	$27,$3,$28
	ceq	$26,$27,$5
	gb	$25,$26
	cgti	$24,$25,11
	brnz	$24,label_4968	# 4968
	clgti	$2,$81,8
	shlqbyi	$3,$82,0
	il	$4,8
label_4964:
	br	label_48fc	# 48fc
label_4968:
	ori	$3,$82,0
	shlqbyi	$4,$81,0
	brsl	$0,func_4758	# 4758
	hbrr	label_49b0,func_d4c8	# d4c8
	ori	$80,$3,0
	brz	$3,label_49c0	# 49c0
label_4980:
	cg	$32,$86,$83
	lqr	$33,data_22810	# 22810
	sf	$81,$80,$81
	lqd	$30,32($82)	# 20
	ori	$5,$80,0
	shlqbyi	$31,$84,4
	il	$7,0
	shlqbyi	$8,$87,0
	a	$3,$31,$85
	shufb	$4,$32,$32,$33
	rotqby	$6,$30,$82
	addx	$4,$86,$83
label_49b0:
	brsl	$0,func_d4c8	# d4c8
	brz	$81,label_49c0	# 49c0
	a	$85,$85,$80
	br	label_4888	# 4888
label_49c0:
	il	$3,0
label_49c4:
	lqd	$0,176($1)	# b0
	ai	$1,$1,160	# a0
	hbr	label_49f0,$0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
label_49f0:
	bi	$0
	lnop
.global func_49f8
func_49f8:
	ori	$2,$3,0
	lqd	$3,32($3)	# 20
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqby	$3,$3,$2
	brsl	$0,func_d4f8	# d4f8
	lqd	$0,48($1)	# 30
	andi	$3,$3,255	# ff
	ai	$1,$1,32	# 20
	bi	$0
	lnop
	ori	$2,$3,0
	lqd	$3,32($3)	# 20
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqby	$3,$3,$2
	brsl	$0,func_d4f8	# d4f8
	lqd	$0,48($1)	# 30
	andi	$3,$3,255	# ff
	ai	$1,$1,32	# 20
	bi	$0
	lnop
.global func_4a58
func_4a58:
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_46b8	# 46b8
	ila	$2,142072	# 22af8
	lqd	$7,0($80)
	lqd	$6,32($80)	# 20
	cwd	$5,0($80)
	shufb	$3,$2,$7,$5
	shufb	$4,$81,$6,$5
	stqd	$3,0($80)
	stqd	$4,32($80)	# 20
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_4ab0
func_4ab0:
	ori	$7,$4,0
	hbrr	label_4ae8,label_4b80	# 4b80
	stqd	$82,-48($1)
	stqd	$0,16($1)
	ori	$82,$6,0
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
	brnz	$5,label_4aec	# 4aec
	il	$8,0
	lqd	$2,0($6)
	cwd	$3,0($6)
	shufb	$2,$5,$2,$3
label_4ae8:
	br	label_4b80	# 4b80
label_4aec:
	ai	$14,$3,20	# 14
	il	$8,-1
	hbrr	label_4b30,label_4b88	# 4b88
	lqd	$10,0($14)
	fsmbi	$16,257	# 101
	andbi	$15,$16,15
	rotqby	$6,$10,$14
	and	$13,$4,$15
	andi	$6,$6,15
	rotqmbyi	$10,$6,-4
	ceq	$12,$10,$13
	gb	$11,$12
	cgti	$5,$11,11
	brz	$5,label_4c08	# 4c08
	ai	$17,$3,24	# 18
	lqd	$8,0($17)
	rotqby	$81,$8,$17
label_4b30:
	brz	$6,label_4b88	# 4b88
	a	$18,$81,$6
	clgti	$4,$18,16
	brnz	$4,label_4c04	# 4c04
	ai	$23,$3,12
	lqr	$20,data_22810	# 22810
	ori	$5,$7,0
	shlqbyi	$6,$81,0
	il	$7,32	# 20
	lqd	$22,0($23)
	rotqby	$21,$22,$23
	rotqmbyi	$9,$21,-4
	cg	$19,$9,$10
	shufb	$4,$19,$19,$20
	addx	$4,$9,$10
label_4b6c:
	brsl	$0,func_4838	# 4838
	il	$8,0
	lqd	$7,0($82)
	cwd	$24,0($82)
	shufb	$2,$81,$7,$24
label_4b80:
	stqd	$2,0($82)
	br	label_4c08	# 4c08
label_4b88:
	andi	$2,$81,15
	brz	$2,label_4bb8	# 4bb8
	ceq	$25,$81,$2
	brz	$25,label_4c04	# 4c04
	ai	$28,$3,12
	shlqbyi	$5,$4,0
	ori	$6,$81,0
	lqd	$27,0($28)
	il	$7,32	# 20
	rotqby	$26,$27,$28
	rotqmbyi	$4,$26,-4
	br	label_4b6c	# 4b6c
label_4bb8:
	ai	$34,$3,12
	hbrr	label_4bec,func_d4c8	# d4c8
	il	$8,32	# 20
	lqd	$36,16($3)
	il	$7,0
	lqd	$35,32($3)	# 20
	lqd	$33,0($34)
	rotqby	$31,$36,$3
	rotqby	$6,$35,$3
	rotqby	$3,$33,$34
	clgt	$32,$81,$31
	selb	$80,$81,$31,$32
	ori	$5,$80,0
label_4bec:
	brsl	$0,func_d4c8	# d4c8
	il	$8,0
	lqd	$29,0($82)
	cwd	$30,0($82)
	shufb	$2,$80,$29,$30
	br	label_4b80	# 4b80
label_4c04:
	il	$8,-2
label_4c08:
	ori	$3,$8,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_4c28
func_4c28:
	ori	$10,$5,0
	hbrr	label_4c64,label_4d70	# 4d70
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	ori	$81,$3,0
	stqd	$0,16($1)
	ori	$82,$6,0
	stqd	$80,-16($1)
	stqd	$83,-64($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
	brnz	$5,label_4c68	# 4c68
	lqd	$2,0($6)
	cwd	$3,0($6)
	shufb	$2,$5,$2,$3
label_4c64:
	br	label_4d70	# 4d70
label_4c68:
	shlqbyi	$5,$4,4
	andi	$83,$5,15
	brz	$83,label_4cb8	# 4cb8
	ai	$13,$3,12
	sfi	$80,$83,16
	hbrr	label_4cb4,label_4d00	# 4d00
	ori	$5,$4,0
	lqd	$12,0($13)
	clgt	$6,$10,$80
	rotqmbyi	$9,$83,-4
	il	$7,64	# 40
	lqr	$8,data_22810	# 22810
	selb	$80,$10,$80,$6
	ori	$6,$80,0
	rotqby	$11,$12,$13
	rotqmbyi	$10,$11,-4
	cg	$4,$10,$9
	shufb	$4,$4,$4,$8
	addx	$4,$10,$9
label_4cb4:
	br	label_4d00	# 4d00
label_4cb8:
	andi	$80,$10,15
	clgti	$24,$10,15
	ceqi	$23,$80,0
	nor	$21,$24,$24
	nor	$22,$23,$23
	ai	$7,$3,12
	sfi	$19,$22,0
	sfi	$20,$21,0
	lqd	$17,0($7)
	and	$18,$19,$20
	ceqbi	$15,$18,0
	xsbh	$14,$15
	rotqby	$16,$17,$7
	brhnz	$14,label_4d08	# 4d08
	ori	$5,$4,0
	rotqmbyi	$4,$16,-4
	ori	$6,$80,0
	il	$7,64	# 40
label_4d00:
	brsl	$0,func_4838	# 4838
	br	label_4d3c	# 4d3c
label_4d08:
	sf	$25,$80,$10
	hbrr	label_4d38,func_d4c8	# d4c8
	il	$7,0
	lqd	$29,16($3)
	il	$8,64	# 40
	lqd	$28,32($3)	# 20
	ori	$3,$16,0
	rotqby	$27,$29,$81
	rotqby	$6,$28,$81
	clgt	$26,$25,$27
	selb	$80,$25,$27,$26
	ori	$5,$80,0
label_4d38:
	brsl	$0,func_d4c8	# d4c8
label_4d3c:
	il	$36,20	# 14
	il	$32,24	# 18
	cwd	$39,4($81)
	lqx	$38,$81,$36
	cwd	$35,8($81)
	cwd	$31,0($82)
	shufb	$37,$83,$38,$39
	stqx	$37,$81,$36
	lqx	$34,$81,$32
	shufb	$33,$80,$34,$35
	stqx	$33,$81,$32
	lqd	$30,0($82)
	shufb	$2,$80,$30,$31
label_4d70:
	il	$3,0
	stqd	$2,0($82)
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
	lnop
.global func_4d98
func_4d98:
	il	$9,-560
	hbra	label_4e24,func_5a70
	cgti	$2,$5,-1
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$81,-32($1)
	ori	$81,$8,0
	stqd	$88,-144($1)
	ori	$88,$3,0
	stqd	$89,-160($1)
	il	$3,-2
	stqd	$94,-240($1)
	ori	$89,$4,0
	stqd	$95,-256($1)
	ori	$94,$6,0
	stqd	$82,-48($1)
	ori	$95,$7,0
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	lnop
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$90,-176($1)
	stqd	$91,-192($1)
	stqd	$92,-208($1)
	stqd	$93,-224($1)
	stqd	$0,16($1)
	nop	$127
	stqd	$1,-560($1)
	a	$1,$1,$9
	brz	$2,label_5040	# 5040
	ori	$4,$6,0
	shlqbyi	$5,$7,0
	ai	$3,$1,32	# 20
label_4e24:
	brsl	$0,func_5a70	# 5a70
	ori	$91,$3,0
	fsmbi	$3,65535	# ffff
	ceqi	$4,$91,-1
	brnz	$4,label_5040	# 5040
	rotmai	$14,$80,-31
	lqd	$13,0($81)
	rotmai	$6,$80,-4
	rotmi	$12,$14,-29
	rotmi	$11,$14,-28
	stqd	$13,288($1)	# 120
	a	$10,$6,$12
	a	$8,$80,$11
	rotmai	$4,$10,-3
	andi	$7,$8,-16
	sf	$92,$7,$80
	shli	$3,$4,3
	cgti	$5,$4,0
	lnop
	sf	$93,$3,$6
	brz	$5,label_4f40	# 4f40
	ori	$90,$4,0
	lnop
label_4e80:
	ori	$3,$88,0
	hbra	label_4ebc,func_6800
	ori	$4,$89,0
	lqd	$87,112($89)	# 70
	ai	$5,$1,32	# 20
	lqd	$80,0($89)
	ori	$6,$91,0
	lqd	$81,16($89)
	ai	$90,$90,-1
	lqd	$82,32($89)	# 20
	lqd	$83,48($89)	# 30
	lqd	$84,64($89)	# 40
	lqd	$85,80($89)	# 50
	lqd	$86,96($89)	# 60
	ai	$89,$89,128	# 80
label_4ebc:
	brsl	$0,func_6800	# 6800
	hbra	label_4f3c,label_4e80
	lqd	$18,0($88)
	lqd	$31,16($88)
	lqd	$19,288($1)	# 120
	lqd	$30,32($88)	# 20
	lqd	$29,48($88)	# 30
	lqd	$27,64($88)	# 40
	lqd	$25,80($88)	# 50
	xor	$28,$31,$80
	lqd	$23,96($88)	# 60
	xor	$15,$18,$19
	lqd	$21,112($88)	# 70
	xor	$26,$30,$81
	stqd	$28,16($88)
	xor	$24,$29,$82
	stqd	$15,0($88)
	xor	$22,$27,$83
	lnop
	xor	$20,$25,$84
	stqd	$26,32($88)	# 20
	xor	$17,$23,$85
	stqd	$24,48($88)	# 30
	xor	$16,$21,$86
	stqd	$22,64($88)	# 40
	stqd	$20,80($88)	# 50
	stqd	$17,96($88)	# 60
	nop	$127
	stqd	$16,112($88)	# 70
	ai	$88,$88,128	# 80
	stqd	$87,288($1)	# 120
	nop	$127
label_4f3c:
	brnz	$90,label_4e80	# 4e80
label_4f40:
	cgti	$32,$93,0
	brz	$32,label_4fa8	# 4fa8
	ori	$81,$93,0
	lnop
label_4f50:
	ori	$3,$88,0
	hbra	label_4f7c,func_6610
	ori	$4,$89,0
	lqd	$90,0($89)
	ai	$5,$1,32	# 20
	shlqbyi	$6,$91,0
	ai	$81,$81,-1
	lnop
	ai	$89,$89,16
	nop	$127
	nop	$127
label_4f7c:
	brsl	$0,func_6610	# 6610
	hbra	label_4fa4,label_4f50
	lqd	$34,0($88)
	lqd	$35,288($1)	# 120
	stqd	$90,288($1)	# 120
	nop	$127
	nop	$127
	xor	$33,$34,$35
	stqd	$33,0($88)
	ai	$88,$88,16
label_4fa4:
	brnz	$81,label_4f50	# 4f50
label_4fa8:
	cgti	$36,$92,0
	hbra	label_4fd4,func_5670
	nop	$127
	nop	$127
	nop	$127
	brz	$36,label_5038	# 5038
	ori	$4,$94,0
	shlqbyi	$5,$95,0
	ai	$80,$1,272	# 110
	lnop
	ai	$3,$1,32	# 20
label_4fd4:
	brsl	$0,func_5670	# 5670
	ori	$6,$91,0
	shlqbyi	$3,$80,0
	ai	$4,$1,288	# 120
	lnop
	ai	$5,$1,32	# 20
	brsl	$0,func_5b88	# 5b88
	il	$6,0
	hbra	label_5034,label_4ff8
label_4ff8:
	a	$48,$80,$6
	lqx	$47,$89,$6
	ai	$46,$6,13
	lqx	$45,$80,$6
	ai	$44,$48,13
	lqx	$39,$88,$6
	cbx	$41,$1,$6
	rotqby	$43,$47,$46
	rotqby	$42,$45,$44
	xor	$40,$43,$42
	shufb	$38,$40,$39,$41
	stqx	$38,$88,$6
	ai	$6,$6,1
	cgt	$37,$92,$6
	nop	$127
label_5034:
	brnz	$37,label_4ff8	# 4ff8
label_5038:
	il	$3,0
	lnop
label_5040:
	il	$49,560	# 230
	a	$1,$1,$49
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_5094,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
	lqd	$93,-224($1)
	lqd	$94,-240($1)
	lqd	$95,-256($1)
	nop	$127
label_5094:
	bi	$0
.global func_5098
func_5098:
	il	$10,-736
	hbra	label_5114,func_5670
	cgti	$2,$5,-1
	stqd	$86,-112($1)
	fsmbi	$86,15
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	il	$3,-2
	stqd	$82,-48($1)
	ori	$81,$5,0
	stqd	$85,-96($1)
	ori	$82,$4,0
	stqd	$92,-208($1)
	ori	$4,$6,0
	stqd	$83,-64($1)
	ori	$5,$7,0
	stqd	$84,-80($1)
	ori	$92,$8,0
	stqd	$87,-128($1)
	ori	$85,$9,0
	lnop
	stqd	$88,-144($1)
	stqd	$89,-160($1)
	stqd	$90,-176($1)
	stqd	$91,-192($1)
	stqd	$0,16($1)
	stqd	$1,-736($1)
	a	$1,$1,$10
	brz	$2,label_53e0	# 53e0
	ai	$3,$1,32	# 20
label_5114:
	brsl	$0,func_5670	# 5670
	ori	$87,$3,0
	fsmbi	$3,65535	# ffff
	ceqi	$4,$87,-1
	brnz	$4,label_53e0	# 53e0
	rotmai	$14,$81,-31
	hbra	label_517c,label_5168
	rotmai	$5,$81,-4
	lqd	$83,0($92)
	ai	$7,$1,272	# 110
	il	$6,7
	rotmi	$13,$14,-29
	rotmi	$12,$14,-28
	a	$11,$5,$13
	a	$9,$81,$12
	rotmai	$4,$11,-3
	andi	$8,$9,-16
	sf	$90,$8,$81
	shli	$3,$4,3
	sf	$91,$3,$5
	lnop
label_5168:
	ai	$6,$6,-1
	stqd	$83,0($7)
	ai	$7,$7,16
	cgti	$15,$6,-1
	nop	$127
label_517c:
	brnz	$15,label_5168	# 5168
	ai	$7,$85,-1
	shlqbyi	$84,$83,0
	clgti	$6,$7,30	# 1e
	brnz	$6,label_51a8	# 51a8
	ila	$19,66051	# 10203
	fsmbi	$16,15
	shufb	$18,$85,$85,$19
	shl	$17,$86,$18
	xor	$86,$17,$16
	lnop
label_51a8:
	cgti	$20,$4,0
	brz	$20,label_52e0	# 52e0
	ori	$85,$4,0
	lqa	$81,0x22b10
	ai	$89,$1,400	# 190
	ai	$88,$1,272	# 110
label_51c0:
	a	$59,$84,$81
	hbra	label_524c,func_5d30
	selb	$58,$83,$84,$86
	shlqbyi	$3,$89,0
	a	$57,$59,$81
	shlqbyi	$4,$88,0
	selb	$56,$83,$59,$86
	stqd	$58,272($1)	# 110
	a	$55,$57,$81
	shlqbyi	$6,$87,0
	selb	$54,$83,$57,$86
	stqd	$56,288($1)	# 120
	a	$53,$55,$81
	lnop
	selb	$52,$83,$55,$86
	stqd	$54,304($1)	# 130
	a	$51,$53,$81
	lnop
	selb	$50,$83,$53,$86
	stqd	$52,320($1)	# 140
	a	$49,$51,$81
	lnop
	selb	$48,$83,$51,$86
	stqd	$50,336($1)	# 150
	a	$47,$49,$81
	lnop
	selb	$46,$83,$49,$86
	stqd	$48,352($1)	# 160
	selb	$45,$83,$47,$86
	lnop
	a	$84,$47,$81
	stqd	$46,368($1)	# 170
	ai	$5,$1,32	# 20
	stqd	$45,384($1)	# 180
	ai	$85,$85,-1
label_524c:
	brsl	$0,func_5d30	# 5d30
	lqd	$43,0($82)
	hbra	label_52dc,label_51c0
	lqd	$44,400($1)	# 190
	lqd	$41,416($1)	# 1a0
	lqd	$38,432($1)	# 1b0
	lqd	$35,448($1)	# 1c0
	lqd	$32,464($1)	# 1d0
	lqd	$29,480($1)	# 1e0
	xor	$42,$43,$44
	lqd	$26,496($1)	# 1f0
	lqd	$23,512($1)	# 200
	stqd	$42,0($80)
	lqd	$40,16($82)
	xor	$39,$40,$41
	stqd	$39,16($80)
	lqd	$37,32($82)	# 20
	xor	$36,$37,$38
	stqd	$36,32($80)	# 20
	lqd	$34,48($82)	# 30
	xor	$33,$34,$35
	stqd	$33,48($80)	# 30
	lqd	$31,64($82)	# 40
	xor	$30,$31,$32
	stqd	$30,64($80)	# 40
	lqd	$28,80($82)	# 50
	xor	$27,$28,$29
	stqd	$27,80($80)	# 50
	lqd	$25,96($82)	# 60
	xor	$24,$25,$26
	stqd	$24,96($80)	# 60
	lqd	$22,112($82)	# 70
	ai	$82,$82,128	# 80
	xor	$21,$22,$23
	stqd	$21,112($80)	# 70
	ai	$80,$80,128	# 80
label_52dc:
	brnz	$85,label_51c0	# 51c0
label_52e0:
	cgti	$60,$91,0
	brz	$60,label_5350	# 5350
	ori	$81,$91,0
	lqa	$89,0x22b10
	ai	$88,$1,400	# 190
	ai	$85,$1,272	# 110
label_52f8:
	selb	$64,$83,$84,$86
	hbra	label_5324,func_5b88
	ori	$3,$88,0
	shlqbyi	$4,$85,0
	ai	$5,$1,32	# 20
	stqd	$64,272($1)	# 110
	ori	$6,$87,0
	ai	$81,$81,-1
	a	$84,$84,$89
	nop	$127
	nop	$127
label_5324:
	brsl	$0,func_5b88	# 5b88
	hbra	label_534c,label_52f8
	lqd	$62,0($82)
	ai	$82,$82,16
	lqd	$63,400($1)	# 190
	nop	$127
	nop	$127
	xor	$61,$62,$63
	stqd	$61,0($80)
	ai	$80,$80,16
label_534c:
	brnz	$81,label_52f8	# 52f8
label_5350:
	cgti	$65,$90,0
	brz	$65,label_53d0	# 53d0
	selb	$66,$83,$84,$86
	hbra	label_5384,func_5b88
	ai	$81,$1,400	# 190
	shlqbyi	$6,$87,0
	ai	$5,$1,32	# 20
	stqd	$66,272($1)	# 110
	ori	$3,$81,0
	lnop
	ai	$4,$1,272	# 110
	nop	$127
	nop	$127
label_5384:
	brsl	$0,func_5b88	# 5b88
	il	$5,0
	hbra	label_53c4,label_5390
label_5390:
	ai	$74,$5,13
	lqx	$76,$82,$5
	lqx	$75,$81,$5
	lqx	$69,$80,$5
	cbx	$71,$1,$5
	rotqby	$73,$76,$74
	rotqby	$72,$75,$74
	xor	$70,$73,$72
	shufb	$68,$70,$69,$71
	stqx	$68,$80,$5
	ai	$5,$5,1
	cgt	$67,$90,$5
	nop	$127
label_53c4:
	brnz	$67,label_5390	# 5390
	lqa	$77,0x22b10
	a	$84,$84,$77
label_53d0:
	selb	$78,$83,$84,$86
	fsmbi	$3,0
	nop	$127
	stqd	$78,0($92)
label_53e0:
	il	$79,736	# 2e0
	a	$1,$1,$79
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_5424,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
label_5424:
	bi	$0
.global func_5428
func_5428:
	cgti	$2,$5,-1
	hbra	label_546c,func_72a0
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	il	$4,-2
	stqd	$82,-48($1)
	ori	$81,$5,0
	stqd	$0,16($1)
	ori	$82,$3,0
	stqd	$1,-256($1)
	ai	$1,$1,-256
	ai	$3,$1,32	# 20
	nop	$127
	brz	$2,label_5498	# 5498
	nop	$127
label_546c:
	brsl	$0,func_72a0	# 72a0
	ori	$4,$80,0
	shlqbyi	$5,$81,0
	ai	$3,$1,32	# 20
	brsl	$0,func_7318	# 7318
	ori	$3,$82,0
	lnop
	ai	$4,$1,32	# 20
	brsl	$0,func_7550	# 7550
	il	$4,0
	lnop
label_5498:
	ai	$1,$1,256	# 100
	shlqbyi	$3,$4,0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	nop	$127
	bi	$0
.global func_54b8
func_54b8:
	clgti	$2,$5,64	# 40
	stqd	$80,-16($1)
	ai	$7,$3,176	# b0
	stqd	$0,16($1)
	ori	$80,$3,0
	stqd	$1,-112($1)
	ori	$8,$5,0
	shlqbyi	$9,$4,0
	ai	$1,$1,-112
	fsmbi	$3,65535	# ffff
	nop	$127
	brnz	$2,label_55a8	# 55a8
	il	$5,0
	hbra	label_5514,label_54f8
	ori	$3,$7,0
	il	$4,3
label_54f8:
	ai	$4,$4,-1
	stqd	$5,0($3)
	ai	$3,$3,16
	lnop
	cgti	$6,$4,-1
	nop	$127
	nop	$127
label_5514:
	brnz	$6,label_54f8	# 54f8
	cgti	$2,$8,0
	hbra	label_5554,label_5528
	il	$6,0
	brz	$2,label_5558	# 5558
label_5528:
	a	$13,$9,$6
	lqx	$11,$9,$6
	nop	$127
	lqx	$10,$7,$6
	ai	$12,$13,13
	cbx	$5,$7,$6
	rotqby	$3,$11,$12
	shufb	$4,$3,$10,$5
	stqx	$4,$7,$6
	ai	$6,$6,1
	cgt	$2,$8,$6
label_5554:
	brnz	$2,label_5528	# 5528
label_5558:
	il	$5,0
	hbra	label_558c,label_5568
	il	$6,3
	lnop
label_5568:
	a	$15,$5,$80
	ai	$6,$6,-1
	ai	$8,$5,32	# 20
	lqd	$14,176($15)	# b0
	cgti	$7,$6,-1
	ai	$5,$5,16
	xorbi	$9,$14,54	# 36
	stqx	$9,$8,$1
	nop	$127
label_558c:
	brnz	$7,label_5568	# 5568
	ori	$3,$80,0
	brsl	$0,func_72a0	# 72a0
	ori	$3,$80,0
	il	$5,64	# 40
	ai	$4,$1,32	# 20
	brsl	$0,func_7318	# 7318
label_55a8:
	ai	$1,$1,112	# 70
	lqd	$0,16($1)
	lqd	$80,-16($1)
	bi	$0
.global func_55b8
func_55b8:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_7318	# 7318
	ai	$1,$1,32	# 20
	lqd	$0,16($1)
	nop	$127
	bi	$0
.global func_55d8
func_55d8:
	hbra	label_55fc,func_7550
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$0,16($1)
	stqd	$1,-160($1)
	ai	$1,$1,-160
	ai	$3,$1,96	# 60
label_55fc:
	brsl	$0,func_7550	# 7550
	il	$2,-1
	brnz	$3,label_5658	# 5658
	il	$5,0
	hbra	label_563c,label_5618
	il	$6,3
	lnop
label_5618:
	a	$8,$5,$80
	ai	$6,$6,-1
	ai	$2,$5,32	# 20
	lqd	$7,176($8)	# b0
	cgti	$4,$6,-1
	ai	$5,$5,16
	xorbi	$3,$7,92	# 5c
	stqx	$3,$2,$1
	nop	$127
label_563c:
	brnz	$4,label_5618	# 5618
	ori	$3,$81,0
	ai	$4,$1,32	# 20
	il	$5,84	# 54
	brsl	$0,func_5428	# 5428
	ori	$2,$3,0
	lnop
label_5658:
	ai	$1,$1,160	# a0
	shlqbyi	$3,$2,0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_5670
func_5670:
	ceqi	$2,$5,192	# c0
	lqa	$39,0x22bc0
	ori	$20,$3,0
	lqa	$40,0x22bd0
	lqa	$38,0x22be0
	lqa	$35,0x22bf0
	lqa	$36,0x22c00
	lqa	$37,0x22c10
	lqa	$33,0x22c20
	lqa	$34,0x22c30
	lqa	$30,0x22c40
	lqa	$31,0x22c50
	lqa	$32,0x22c60
	lqa	$28,0x22c70
	lqa	$29,0x22c80
	lqa	$25,0x22c90
	lqa	$26,0x22ca0
	lnop
	lqa	$27,0x22cb0
	stqd	$1,-288($1)
	ai	$1,$1,-288
	brnz	$2,label_58e8	# 58e8
	cgti	$3,$5,192	# c0
	brnz	$3,label_56e0	# 56e0
	ceqi	$6,$5,128	# 80
	brnz	$6,label_5800	# 5800
label_56d8:
	il	$3,-1
	br	label_5a68	# 5a68
label_56e0:
	ceqi	$7,$5,256	# 100
	brz	$7,label_56d8	# 56d8
	il	$22,0
	hbra	label_57f4,label_5738
	ilhu	$42,7454	# 1d1e
	lqd	$21,16($4)
	ilhu	$43,7197	# 1c1d
	lqd	$5,0($4)
	ai	$18,$20,32	# 20
	lqa	$44,0x22cc0
	iohl	$42,7964	# 1f1c
	lqa	$45,0x22cd0
	iohl	$43,7711	# 1e1f
	fsmbi	$41,15
	ila	$24,66051	# 10203
	fsmbi	$19,0
	ori	$4,$21,0
	stqd	$21,16($20)
	ila	$23,142112	# 22b20
	stqd	$5,0($20)
	ori	$17,$22,0
	lnop
label_5738:
	rotmi	$3,$19,-31
	shufb	$2,$17,$4,$43
	and	$77,$5,$41
	shufb	$6,$17,$4,$42
	shufb	$14,$5,$17,$24
	shufb	$4,$5,$17,$44
	a	$11,$19,$3
	shufb	$76,$5,$17,$45
	selb	$13,$6,$2,$22
	shlqbyi	$5,$21,0
	rotmai	$12,$11,-1
	andbi	$75,$13,31	# 1f
	andbi	$7,$13,32	# 20
	lnop
	andbi	$16,$13,64	# 40
	shufb	$67,$26,$27,$75
	shli	$72,$12,4
	shufb	$78,$39,$40,$75
	ceqbi	$66,$7,32	# 20
	shufb	$79,$38,$35,$75
	ceqbi	$61,$16,64	# 40
	shufb	$73,$36,$37,$75
	clgtbi	$57,$13,127	# 7f
	shufb	$74,$33,$34,$75
	xor	$70,$14,$4
	shufb	$68,$30,$31,$75
	selb	$63,$78,$79,$66
	shufb	$69,$32,$28,$75
	xor	$71,$76,$77
	shufb	$65,$29,$25,$75
	selb	$64,$73,$74,$66
	lqx	$59,$72,$23
	xor	$47,$70,$71
	selb	$60,$68,$69,$66
	selb	$62,$65,$67,$66
	selb	$56,$63,$64,$61
	selb	$58,$60,$62,$61
	andc	$48,$59,$22
	selb	$49,$56,$58,$57
	ai	$19,$19,1
	xor	$46,$48,$49
	cgti	$20,$19,12
	xor	$4,$47,$46
	xorbi	$22,$22,-1
	ori	$21,$4,0
	stqd	$4,0($18)
	ai	$18,$18,16
label_57f4:
	brz	$20,label_5738	# 5738
	il	$3,14
	br	label_5a68	# 5a68
label_5800:
	ilhu	$41,3342	# d0e
	hbra	label_58dc,label_5838
	ila	$42,66051	# 10203
	lqd	$2,0($4)
	iohl	$41,3852	# f0c
	lqa	$43,0x22cc0
	ila	$24,142112	# 22b20
	lqa	$23,0x22cd0
	il	$19,0
	fsmbi	$22,15
	il	$18,0
	il	$21,9
	nop	$127
	stqd	$2,0($20)
label_5838:
	and	$60,$2,$22
	shufb	$63,$2,$19,$41
	ai	$21,$21,-1
	shufb	$61,$2,$19,$42
	a	$17,$18,$20
	shufb	$62,$2,$19,$43
	cgti	$16,$21,-1
	shufb	$59,$2,$19,$23
	andbi	$54,$63,31	# 1f
	lqx	$44,$18,$24
	andbi	$65,$63,32	# 20
	lnop
	andbi	$64,$63,64	# 40
	shufb	$15,$26,$27,$54
	ceqbi	$49,$65,32	# 20
	shufb	$57,$39,$40,$54
	ceqbi	$45,$64,64	# 40
	shufb	$58,$38,$35,$54
	clgtbi	$10,$63,127	# 7f
	shufb	$52,$36,$37,$54
	xor	$55,$61,$62
	shufb	$53,$33,$34,$54
	xor	$56,$59,$60
	shufb	$50,$30,$31,$54
	selb	$46,$57,$58,$49
	shufb	$51,$32,$28,$54
	xor	$13,$55,$56
	shufb	$48,$29,$25,$54
	selb	$47,$52,$53,$49
	ai	$18,$18,16
	selb	$14,$50,$51,$49
	selb	$11,$48,$15,$49
	selb	$9,$46,$47,$45
	selb	$4,$14,$11,$45
	selb	$8,$9,$4,$10
	xor	$12,$44,$8
	xor	$5,$13,$12
	lnop
	ori	$2,$5,0
	stqd	$5,16($17)
	nop	$127
label_58dc:
	brnz	$16,label_5838	# 5838
	il	$3,10
	br	label_5a68	# 5a68
label_58e8:
	ilhu	$48,5398	# 1516
	hbra	label_592c,label_5940
	ila	$49,66051	# 10203
	lqd	$19,16($4)
	iohl	$48,5908	# 1714
	lqa	$45,0x22cc0
	il	$24,0
	lqa	$46,0x22cd0
	il	$23,0
	lqa	$44,0x22ce0
	ila	$22,142112	# 22b20
	lqa	$47,0x22cf0
	il	$21,0
	lqd	$18,0($4)
	fsmbi	$43,15
	fsmbi	$42,3840	# f00
	nop	$127
label_592c:
	br	label_5940	# 5940
label_5930:
	ori	$18,$11,0
	shufb	$55,$11,$41,$47
	xor	$41,$55,$5
	ori	$19,$41,0
label_5940:
	ai	$54,$1,32	# 20
	shufb	$10,$18,$19,$48
	ai	$53,$21,32	# 20
	hbra	label_59f4,label_5930
	and	$50,$18,$43
	shufb	$51,$18,$23,$49
	a	$16,$21,$54
	shufb	$52,$18,$23,$45
	andbi	$2,$10,31	# 1f
	shufb	$15,$18,$23,$46
	andbi	$5,$10,32	# 20
	lqd	$68,0($22)
	andbi	$8,$10,64	# 40
	shufb	$14,$26,$27,$2
	ceqbi	$17,$5,32	# 20
	shufb	$3,$39,$40,$2
	ceqbi	$73,$8,64	# 40
	shufb	$9,$38,$35,$2
	clgtbi	$70,$10,127	# 7f
	shufb	$7,$36,$37,$2
	xor	$11,$51,$52
	shufb	$12,$33,$34,$2
	and	$77,$19,$42
	shufb	$4,$30,$31,$2
	selb	$72,$3,$9,$17
	shufb	$13,$32,$28,$2
	ai	$24,$24,1
	shufb	$79,$29,$25,$2
	selb	$74,$7,$12,$17
	stqx	$18,$53,$1
	xor	$6,$15,$50
	shufb	$78,$18,$19,$44
	selb	$75,$4,$13,$17
	stqd	$19,16($16)
	selb	$76,$79,$14,$17
	selb	$69,$72,$74,$73
	selb	$71,$75,$76,$73
	xor	$67,$11,$6
	selb	$19,$69,$71,$70
	ceqi	$66,$24,8
	xor	$18,$68,$19
	xor	$5,$78,$77
	ai	$21,$21,32	# 20
	ai	$22,$22,16
	xor	$11,$67,$18
label_59f4:
	brz	$66,label_5930	# 5930
	il	$9,0
	hbra	label_5a5c,label_5a10
	il	$8,0
	lqa	$13,0x22d00
	il	$10,3
	lqa	$12,0x22d10
label_5a10:
	ai	$32,$1,32	# 20
	ai	$31,$9,32	# 20
	a	$26,$9,$32
	lnop
	a	$22,$8,$20
	lqx	$30,$31,$1
	ai	$10,$10,-1
	lqd	$28,16($26)
	ai	$9,$9,64	# 40
	lqd	$29,32($26)	# 20
	cgti	$21,$10,-1
	stqx	$30,$8,$20
	ai	$8,$8,48	# 30
	shufb	$27,$28,$29,$13
	stqd	$27,16($22)
	lqd	$25,48($26)	# 30
	lqd	$24,32($26)	# 20
	shufb	$23,$24,$25,$12
	stqd	$23,32($22)	# 20
label_5a5c:
	brnz	$21,label_5a10	# 5a10
	il	$3,12
	stqd	$11,192($20)	# c0
label_5a68:
	ai	$1,$1,288	# 120
	bi	$0
.global func_5a70
func_5a70:
	hbra	label_5a94,func_5670
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$1,-288($1)
	ai	$1,$1,-288
	ai	$3,$1,32	# 20
	nop	$127
	nop	$127
label_5a94:
	brsl	$0,func_5670	# 5670
	cgti	$2,$3,-1
	shlqbyi	$17,$3,0
	nop	$127
	brz	$2,label_5b70	# 5b70
	shli	$12,$3,4
	lqd	$27,48($1)	# 30
	il	$16,0
	lqd	$26,64($1)	# 40
	cgti	$14,$3,10
	lqd	$25,80($1)	# 50
	nop	$127
	lqd	$24,96($1)	# 60
	ai	$28,$12,32	# 20
	lqd	$23,112($1)	# 70
	lqd	$22,128($1)	# 80
	lqd	$21,144($1)	# 90
	lqd	$20,160($1)	# a0
	lqd	$19,176($1)	# b0
	lqa	$15,0x22d20
	lqd	$18,32($1)	# 20
	lqx	$13,$28,$1
	shufb	$11,$27,$16,$15
	shufb	$10,$26,$16,$15
	shufb	$9,$25,$16,$15
	shufb	$8,$24,$16,$15
	shufb	$7,$23,$16,$15
	shufb	$6,$22,$16,$15
	shufb	$5,$21,$16,$15
	shufb	$4,$20,$16,$15
	shufb	$3,$19,$16,$15
	stqd	$18,0($80)
	stqd	$11,16($80)
	stqd	$10,32($80)	# 20
	stqd	$9,48($80)	# 30
	stqd	$8,64($80)	# 40
	stqd	$7,80($80)	# 50
	stqd	$6,96($80)	# 60
	stqd	$5,112($80)	# 70
	stqd	$4,128($80)	# 80
	stqd	$3,144($80)	# 90
	stqx	$13,$12,$80
	brz	$14,label_5b70	# 5b70
	ori	$5,$16,0
	hbra	label_5b6c,label_5b50
	il	$4,160	# a0
	ai	$3,$17,-10
label_5b50:
	ai	$30,$4,32	# 20
	ai	$3,$3,-1
	lqx	$29,$30,$1
	shufb	$16,$29,$5,$15
	nop	$127
	stqx	$16,$4,$80
	ai	$4,$4,16
label_5b6c:
	brnz	$3,label_5b50	# 5b50
label_5b70:
	ai	$1,$1,288	# 120
	shlqbyi	$3,$17,0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	nop	$127
	bi	$0
.global func_5b88
func_5b88:
	ori	$37,$3,0
	lqd	$7,0($4)
	cgti	$3,$6,1
	lqd	$2,0($5)
	ai	$14,$5,16
	lqa	$36,0x22bc0
	lqa	$32,0x22bd0
	lqa	$33,0x22be0
	lqa	$27,0x22bf0
	lqa	$34,0x22c00
	xor	$7,$7,$2
	lqa	$28,0x22c10
	lqa	$29,0x22c20
	lqa	$23,0x22c30
	lqa	$30,0x22c40
	lqa	$24,0x22c50
	lqa	$31,0x22c60
	lnop
	lqa	$25,0x22c70
	lqa	$26,0x22c80
	lqa	$22,0x22c90
	lqa	$21,0x22ca0
	lqa	$20,0x22cb0
	lqa	$35,0x22d20
	lqa	$19,0x22d30
	lqa	$18,0x22d40
	lqa	$17,0x22d50
	brz	$3,label_5cb8	# 5cb8
	ai	$15,$6,-1
	hbra	label_5cb4,label_5c08
	il	$16,0
	lnop
label_5c08:
	andbi	$59,$7,31	# 1f
	lqd	$13,0($14)
	andbi	$63,$7,32	# 20
	lnop
	andbi	$62,$7,64	# 40
	shufb	$54,$21,$20,$59
	ceqbi	$53,$63,32	# 20
	shufb	$60,$36,$32,$59
	ceqbi	$48,$62,64	# 40
	shufb	$61,$33,$27,$59
	clgtbi	$45,$7,127	# 7f
	shufb	$57,$34,$28,$59
	ai	$15,$15,-1
	shufb	$58,$29,$23,$59
	ai	$14,$14,16
	shufb	$55,$30,$24,$59
	selb	$50,$60,$61,$53
	shufb	$56,$31,$25,$59
	shufb	$52,$26,$22,$59
	selb	$51,$57,$58,$53
	selb	$47,$55,$56,$53
	selb	$49,$52,$54,$53
	selb	$44,$50,$51,$48
	selb	$46,$47,$49,$48
	selb	$12,$44,$46,$45
	lnop
	clgtbi	$43,$12,127	# 7f
	shlqbii	$42,$12,1
	nop	$127
	shufb	$38,$12,$16,$18
	andbi	$41,$43,27	# 1b
	shufb	$39,$12,$16,$17
	andbi	$40,$42,-2
	xor	$11,$40,$41
	xor	$4,$38,$39
	lnop
	xor	$10,$11,$12
	shufb	$8,$11,$16,$35
	shufb	$9,$10,$16,$19
	xor	$6,$8,$9
	xor	$5,$6,$4
	lnop
	xor	$7,$13,$5
label_5cb4:
	brnz	$15,label_5c08	# 5c08
label_5cb8:
	andbi	$66,$7,31	# 1f
	hbr	label_5d2c,$0
	andbi	$69,$7,32	# 20
	lqd	$14,0($14)
	andbi	$68,$7,64	# 40
	shufb	$65,$21,$20,$66
	ceqbi	$64,$69,32	# 20
	shufb	$67,$36,$32,$66
	ceqbi	$32,$68,64	# 40
	shufb	$36,$33,$27,$66
	clgtbi	$20,$7,127	# 7f
	shufb	$33,$34,$28,$66
	il	$18,0
	shufb	$34,$29,$23,$66
	il	$3,0
	shufb	$28,$30,$24,$66
	selb	$24,$67,$36,$64
	shufb	$29,$31,$25,$66
	shufb	$27,$26,$22,$66
	selb	$25,$33,$34,$64
	selb	$22,$28,$29,$64
	selb	$23,$27,$65,$64
	selb	$19,$24,$25,$32
	selb	$21,$22,$23,$32
	selb	$17,$19,$21,$20
	shufb	$16,$17,$18,$35
	xor	$15,$16,$14
	stqd	$15,0($37)
	nop	$127
label_5d2c:
	bi	$0
.global func_5d30
func_5d30:
	ori	$12,$6,0
	lqd	$2,0($5)
	cgti	$11,$6,1
	stqd	$87,-128($1)
	ai	$87,$5,16
	stqd	$88,-144($1)
	ori	$88,$3,0
	lqd	$13,112($4)	# 70
	lqd	$3,0($4)
	lqd	$5,16($4)
	lqd	$6,32($4)	# 20
	lqd	$8,48($4)	# 30
	nop	$127
	lqd	$9,64($4)	# 40
	xor	$67,$13,$2
	lqd	$10,80($4)	# 50
	xor	$66,$3,$2
	lnop
	xor	$65,$5,$2
	lqd	$7,96($4)	# 60
	xor	$64,$6,$2
	stqd	$80,-16($1)
	xor	$63,$8,$2
	stqd	$81,-32($1)
	xor	$62,$9,$2
	stqd	$82,-48($1)
	xor	$61,$10,$2
	stqd	$83,-64($1)
	nop	$127
	stqd	$84,-80($1)
	xor	$60,$7,$2
	stqd	$85,-96($1)
	lqa	$81,0x22bc0
	lqa	$80,0x22bd0
	lqa	$79,0x22be0
	lnop
	lqa	$77,0x22bf0
	lqa	$78,0x22c00
	lqa	$75,0x22c10
	lqa	$76,0x22c20
	lqa	$68,0x22c30
	lqa	$72,0x22c40
	lqa	$69,0x22c50
	lqa	$73,0x22c60
	lqa	$70,0x22c70
	lqa	$74,0x22c80
	lqa	$71,0x22c90
	lqa	$59,0x22ca0
	lqa	$58,0x22cb0
	lqa	$85,0x22d20
	lqa	$84,0x22d30
	lqa	$83,0x22d40
	lnop
	lqa	$82,0x22d50
	stqd	$86,-112($1)
	stqd	$1,-176($1)
	ai	$1,$1,-176
	brz	$11,label_62c8	# 62c8
	ai	$86,$12,-1
	lqa	$57,0x22d60
	il	$56,0
	lnop
label_5e28:
	andbi	$39,$66,31	# 1f
	lqd	$42,0($87)
	andbi	$33,$65,31	# 1f
	lnop
	andbi	$16,$66,32	# 20
	shufb	$41,$59,$58,$39
	andbi	$38,$65,32	# 20
	shufb	$29,$59,$58,$33
	andbi	$32,$64,31	# 1f
	shufb	$20,$79,$77,$39
	andbi	$7,$62,31	# 1f
	shufb	$49,$76,$68,$39
	andbi	$8,$63,31	# 1f
	shufb	$21,$73,$70,$39
	ceqbi	$2,$16,32	# 20
	shufb	$25,$81,$80,$39
	ceqbi	$5,$38,32	# 20
	shufb	$47,$78,$75,$39
	andbi	$37,$64,32	# 20
	shufb	$43,$72,$69,$39
	andbi	$19,$63,32	# 20
	shufb	$15,$74,$71,$39
	andbi	$36,$62,32	# 20
	shufb	$9,$74,$71,$33
	selb	$47,$47,$49,$2
	shufb	$50,$59,$58,$32
	selb	$25,$25,$20,$2
	shufb	$51,$59,$58,$8
	selb	$15,$15,$41,$2
	shufb	$30,$79,$77,$33
	selb	$9,$9,$29,$5
	shufb	$26,$76,$68,$33
	selb	$43,$43,$21,$2
	shufb	$40,$72,$69,$33
	andbi	$6,$61,31	# 1f
	shufb	$18,$73,$70,$33
	ceqbi	$11,$37,32	# 20
	shufb	$48,$76,$68,$32
	ceqbi	$13,$19,32	# 20
	shufb	$31,$72,$69,$32
	ceqbi	$14,$36,32	# 20
	shufb	$12,$73,$70,$32
	andbi	$35,$61,32	# 20
	shufb	$45,$79,$77,$8
	andbi	$4,$60,31	# 1f
	shufb	$27,$76,$68,$8
	ceqbi	$16,$35,32	# 20
	shufb	$20,$73,$70,$8
	selb	$49,$31,$12,$11
	shufb	$2,$79,$77,$7
	andbi	$34,$60,32	# 20
	shufb	$24,$81,$80,$33
	andbi	$3,$67,31	# 1f
	shufb	$46,$78,$75,$33
	ceqbi	$19,$34,32	# 20
	shufb	$44,$78,$75,$32
	andbi	$28,$67,32	# 20
	shufb	$10,$74,$71,$32
	selb	$24,$24,$30,$5
	shufb	$22,$81,$80,$8
	selb	$46,$46,$26,$5
	shufb	$41,$78,$75,$8
	selb	$44,$44,$48,$11
	shufb	$29,$72,$69,$8
	selb	$10,$10,$50,$11
	shufb	$21,$81,$80,$7
	selb	$50,$40,$18,$5
	shufb	$8,$74,$71,$8
	selb	$41,$41,$27,$13
	shufb	$53,$59,$58,$6
	selb	$29,$29,$20,$13
	shufb	$17,$79,$77,$32
	selb	$22,$22,$45,$13
	shufb	$30,$78,$75,$7
	selb	$8,$8,$51,$13
	shufb	$18,$76,$68,$7
	selb	$21,$21,$2,$14
	shufb	$26,$72,$69,$7
	ceqbi	$28,$28,32	# 20
	shufb	$5,$73,$70,$7
	andbi	$39,$66,64	# 40
	shufb	$48,$79,$77,$6
	andbi	$38,$65,64	# 40
	shufb	$27,$78,$75,$6
	andbi	$37,$64,64	# 40
	shufb	$13,$76,$68,$6
	selb	$45,$26,$5,$14
	shufb	$2,$73,$70,$6
	andbi	$36,$63,64	# 40
	shufb	$52,$59,$58,$7
	andbi	$35,$62,64	# 40
	shufb	$23,$81,$80,$32
	andbi	$34,$61,64	# 40
	shufb	$51,$74,$71,$7
	andbi	$33,$60,64	# 40
	shufb	$12,$81,$80,$6
	andbi	$32,$67,64	# 40
	shufb	$20,$72,$69,$6
	selb	$23,$23,$17,$11
	shufb	$6,$74,$71,$6
	selb	$7,$51,$52,$14
	shufb	$54,$59,$58,$4
	selb	$51,$30,$18,$14
	shufb	$52,$79,$77,$4
	selb	$12,$12,$48,$16
	shufb	$18,$76,$68,$4
	selb	$48,$27,$13,$16
	shufb	$14,$72,$69,$4
	selb	$6,$6,$53,$16
	shufb	$13,$73,$70,$4
	selb	$20,$20,$2,$16
	shufb	$11,$81,$80,$4
	ceqbi	$39,$39,64	# 40
	shufb	$17,$78,$75,$4
	ceqbi	$38,$38,64	# 40
	shufb	$53,$74,$71,$4
	ceqbi	$37,$37,64	# 40
	shufb	$55,$59,$58,$3
	selb	$11,$11,$52,$19
	shufb	$5,$81,$80,$3
	selb	$17,$17,$18,$19
	shufb	$16,$79,$77,$3
	selb	$18,$14,$13,$19
	shufb	$52,$78,$75,$3
	selb	$4,$53,$54,$19
	shufb	$2,$73,$70,$3
	ceqbi	$36,$36,64	# 40
	shufb	$54,$76,$68,$3
	selb	$53,$5,$16,$28
	shufb	$19,$72,$69,$3
	ceqbi	$35,$35,64	# 40
	shufb	$3,$74,$71,$3
	ceqbi	$34,$34,64	# 40
	selb	$16,$52,$54,$28
	selb	$13,$19,$2,$28
	selb	$14,$3,$55,$28
	ceqbi	$33,$33,64	# 40
	ceqbi	$32,$32,64	# 40
	selb	$40,$50,$9,$38
	selb	$31,$49,$10,$37
	selb	$52,$29,$8,$36
	hbra	label_62c4,label_5e28
	selb	$26,$45,$7,$35
	selb	$50,$20,$6,$34
	selb	$49,$18,$4,$33
	selb	$45,$13,$14,$32
	selb	$43,$43,$15,$39
	selb	$25,$25,$47,$39
	selb	$24,$24,$46,$38
	selb	$23,$23,$44,$37
	selb	$22,$22,$41,$36
	selb	$21,$21,$51,$35
	selb	$12,$12,$48,$34
	selb	$5,$53,$16,$32
	selb	$11,$11,$17,$33
	clgtbi	$44,$66,127	# 7f
	clgtbi	$27,$65,127	# 7f
	clgtbi	$54,$63,127	# 7f
	clgtbi	$51,$62,127	# 7f
	clgtbi	$48,$61,127	# 7f
	clgtbi	$46,$60,127	# 7f
	clgtbi	$41,$67,127	# 7f
	clgtbi	$30,$64,127	# 7f
	selb	$34,$25,$43,$44
	selb	$67,$24,$40,$27
	lnop
	selb	$64,$23,$31,$30
	rotqmbii	$39,$34,-5
	selb	$61,$22,$52,$54
	rotqmbii	$3,$67,-5
	selb	$54,$21,$26,$51
	rotqmbii	$2,$64,-5
	selb	$51,$12,$50,$48
	rotqmbii	$38,$61,-5
	selb	$48,$11,$49,$46
	rotqmbii	$37,$54,-5
	selb	$46,$5,$45,$41
	rotqmbii	$29,$51,-5
	andbi	$36,$39,7
	rotqmbii	$19,$48,-5
	andbi	$14,$3,7
	rotqmbii	$20,$46,-5
	andbi	$15,$2,7
	shlqbii	$9,$34,1
	andbi	$16,$38,7
	shlqbii	$10,$67,1
	andbi	$17,$37,7
	shlqbii	$8,$64,1
	andbi	$18,$29,7
	shlqbii	$7,$61,1
	andbi	$65,$19,7
	shlqbii	$6,$54,1
	andbi	$60,$20,7
	shlqbii	$4,$51,1
	andbi	$66,$9,62	# 3e
	shlqbii	$28,$48,1
	andbi	$62,$10,62	# 3e
	shlqbii	$35,$46,1
	andbi	$53,$8,62	# 3e
	shufb	$13,$57,$57,$36
	andbi	$50,$7,62	# 3e
	shufb	$63,$57,$57,$14
	andbi	$32,$6,62	# 3e
	shufb	$55,$57,$57,$15
	andbi	$33,$4,62	# 3e
	shufb	$52,$57,$57,$16
	andbi	$44,$28,62	# 3e
	shufb	$49,$57,$57,$17
	andbi	$26,$35,62	# 3e
	shufb	$47,$57,$57,$18
	xor	$43,$66,$13
	shufb	$45,$57,$57,$65
	xor	$31,$62,$63
	shufb	$27,$57,$57,$60
	xor	$30,$53,$55
	shufb	$60,$34,$56,$82
	xor	$41,$50,$52
	shufb	$53,$67,$56,$82
	xor	$40,$32,$49
	shufb	$50,$64,$56,$82
	xor	$39,$33,$47
	shufb	$32,$61,$56,$82
	xor	$3,$44,$45
	shufb	$9,$43,$56,$85
	xor	$2,$26,$27
	shufb	$4,$39,$56,$85
	xor	$38,$43,$34
	shufb	$10,$31,$56,$85
	xor	$37,$31,$67
	shufb	$8,$30,$56,$85
	xor	$29,$30,$64
	shufb	$28,$38,$56,$84
	xor	$36,$41,$61
	shufb	$14,$37,$56,$84
	xor	$35,$40,$54
	shufb	$15,$29,$56,$84
	xor	$18,$39,$51
	shufb	$16,$36,$56,$84
	xor	$19,$3,$48
	shufb	$17,$35,$56,$84
	xor	$20,$2,$46
	shufb	$7,$41,$56,$85
	xor	$39,$8,$15
	shufb	$66,$19,$56,$84
	xor	$41,$9,$28
	shufb	$63,$20,$56,$84
	ai	$86,$86,-1
	shufb	$6,$40,$56,$85
	xor	$38,$7,$16
	shufb	$65,$3,$56,$85
	xor	$40,$10,$14
	shufb	$62,$2,$56,$85
	ai	$87,$87,16
	shufb	$13,$18,$56,$84
	xor	$37,$6,$17
	shufb	$55,$34,$56,$83
	xor	$35,$65,$66
	shufb	$52,$67,$56,$83
	xor	$34,$62,$63
	shufb	$49,$64,$56,$83
	xor	$36,$4,$13
	shufb	$47,$61,$56,$83
	xor	$25,$55,$60
	shufb	$33,$54,$56,$82
	xor	$24,$52,$53
	shufb	$44,$51,$56,$82
	xor	$23,$49,$50
	shufb	$27,$48,$56,$82
	xor	$22,$47,$32
	shufb	$26,$46,$56,$82
	xor	$19,$41,$25
	shufb	$45,$54,$56,$83
	xor	$17,$40,$24
	shufb	$43,$51,$56,$83
	xor	$16,$39,$23
	shufb	$31,$48,$56,$83
	xor	$15,$38,$22
	shufb	$30,$46,$56,$83
	xor	$21,$45,$33
	xor	$29,$43,$44
	xor	$28,$31,$27
	xor	$20,$30,$26
	xor	$14,$37,$21
	xor	$4,$36,$29
	xor	$12,$35,$28
	xor	$18,$34,$20
	xor	$66,$42,$19
	xor	$67,$42,$18
	xor	$65,$42,$17
	xor	$64,$42,$16
	xor	$63,$42,$15
	xor	$62,$42,$14
	xor	$61,$42,$4
	lnop
	xor	$60,$42,$12
label_62c4:
	brnz	$86,label_5e28	# 5e28
label_62c8:
	andbi	$17,$66,31	# 1f
	lqd	$82,0($87)
	andbi	$34,$65,31	# 1f
	lnop
	andbi	$25,$64,31	# 1f
	shufb	$26,$76,$68,$17
	andbi	$50,$63,31	# 1f
	shufb	$32,$59,$58,$34
	andbi	$56,$62,31	# 1f
	shufb	$48,$59,$58,$25
	andbi	$9,$61,31	# 1f
	shufb	$52,$59,$58,$50
	andbi	$8,$60,31	# 1f
	shufb	$53,$59,$58,$56
	andbi	$39,$67,31	# 1f
	shufb	$84,$73,$70,$17
	andbi	$40,$66,32	# 20
	shufb	$45,$78,$75,$34
	andbi	$29,$65,32	# 20
	shufb	$24,$59,$58,$39
	andbi	$37,$64,32	# 20
	shufb	$33,$76,$68,$34
	ceqbi	$2,$40,32	# 20
	shufb	$87,$72,$69,$34
	ceqbi	$4,$29,32	# 20
	shufb	$5,$73,$70,$34
	ceqbi	$11,$37,32	# 20
	shufb	$12,$79,$77,$25
	andbi	$38,$63,32	# 20
	shufb	$86,$76,$68,$25
	andbi	$19,$62,32	# 20
	shufb	$31,$72,$69,$25
	andbi	$35,$67,32	# 20
	shufb	$27,$73,$70,$25
	ceqbi	$49,$38,32	# 20
	shufb	$14,$74,$71,$25
	ceqbi	$41,$19,32	# 20
	shufb	$7,$59,$58,$17
	ceqbi	$15,$35,32	# 20
	shufb	$54,$59,$58,$9
	andbi	$36,$61,32	# 20
	shufb	$55,$59,$58,$8
	andbi	$30,$60,32	# 20
	shufb	$58,$79,$77,$34
	ceqbi	$29,$36,32	# 20
	shufb	$46,$78,$75,$17
	ceqbi	$30,$30,32	# 20
	shufb	$42,$72,$69,$17
	andbi	$57,$66,64	# 40
	shufb	$59,$74,$71,$17
	andbi	$40,$65,64	# 40
	shufb	$20,$81,$80,$34
	selb	$46,$46,$26,$2
	shufb	$13,$74,$71,$34
	selb	$42,$42,$84,$2
	shufb	$18,$81,$80,$25
	andbi	$37,$63,64	# 40
	shufb	$43,$78,$75,$25
	selb	$20,$20,$58,$4
	shufb	$51,$76,$68,$39
	selb	$58,$45,$33,$4
	shufb	$83,$73,$70,$39
	selb	$13,$13,$32,$4
	shufb	$3,$74,$71,$39
	selb	$33,$87,$5,$4
	shufb	$22,$79,$77,$17
	selb	$87,$14,$48,$11
	shufb	$16,$79,$77,$50
	selb	$18,$18,$12,$11
	shufb	$26,$76,$68,$50
	selb	$43,$43,$86,$11
	shufb	$25,$72,$69,$50
	selb	$86,$31,$27,$11
	shufb	$84,$73,$70,$50
	andbi	$38,$62,64	# 40
	shufb	$12,$74,$71,$50
	andbi	$36,$61,64	# 40
	shufb	$11,$74,$71,$56
	andbi	$35,$60,64	# 40
	shufb	$47,$78,$75,$39
	andbi	$34,$67,64	# 40
	shufb	$44,$72,$69,$39
	ceqbi	$37,$37,64	# 40
	shufb	$21,$81,$80,$17
	selb	$17,$59,$7,$2
	shufb	$32,$78,$75,$50
	selb	$59,$3,$24,$15
	shufb	$7,$81,$80,$50
	selb	$47,$47,$51,$15
	shufb	$28,$79,$77,$39
	selb	$21,$21,$22,$2
	shufb	$6,$81,$80,$56
	selb	$32,$32,$26,$49
	shufb	$22,$79,$77,$56
	selb	$26,$25,$84,$49
	shufb	$5,$72,$69,$56
	selb	$84,$12,$52,$49
	shufb	$24,$73,$70,$56
	selb	$7,$7,$16,$49
	shufb	$50,$81,$80,$9
	selb	$44,$44,$83,$15
	shufb	$2,$79,$77,$9
	selb	$83,$11,$53,$41
	shufb	$51,$78,$75,$9
	selb	$25,$5,$24,$41
	shufb	$49,$76,$68,$9
	ceqbi	$38,$38,64	# 40
	shufb	$52,$72,$69,$9
	selb	$5,$50,$2,$29
	shufb	$48,$73,$70,$9
	ceqbi	$50,$35,64	# 40
	shufb	$4,$81,$80,$8
	selb	$24,$51,$49,$29
	shufb	$23,$81,$80,$39
	andbi	$39,$64,64	# 40
	shufb	$80,$79,$77,$8
	ceqbi	$2,$34,64	# 40
	shufb	$27,$78,$75,$56
	ceqbi	$39,$39,64	# 40
	shufb	$10,$76,$68,$56
	selb	$23,$23,$28,$15
	shufb	$53,$74,$71,$9
	selb	$28,$6,$22,$41
	shufb	$19,$78,$75,$8
	selb	$22,$52,$48,$29
	shufb	$75,$76,$68,$8
	selb	$56,$27,$10,$41
	shufb	$68,$72,$69,$8
	selb	$9,$53,$54,$29
	shufb	$69,$73,$70,$8
	ceqbi	$41,$57,64	# 40
	shufb	$16,$74,$71,$8
	ceqbi	$57,$40,64	# 40
	hbr	label_660c,$0
	selb	$49,$4,$80,$30
	fsmbi	$77,0
	selb	$10,$68,$69,$30
	selb	$29,$19,$75,$30
	selb	$8,$16,$55,$30
	ceqbi	$15,$36,64	# 40
	selb	$30,$42,$17,$41
	selb	$12,$20,$58,$57
	selb	$17,$33,$13,$57
	clgtbi	$3,$65,127	# 7f
	selb	$31,$86,$87,$39
	selb	$13,$25,$83,$38
	selb	$54,$44,$59,$2
	selb	$6,$28,$56,$38
	clgtbi	$40,$66,127	# 7f
	clgtbi	$27,$64,127	# 7f
	clgtbi	$66,$63,127	# 7f
	clgtbi	$65,$62,127	# 7f
	clgtbi	$63,$61,127	# 7f
	clgtbi	$62,$60,127	# 7f
	selb	$48,$26,$84,$37
	selb	$52,$22,$9,$15
	selb	$53,$10,$8,$50
	selb	$51,$21,$46,$41
	selb	$11,$18,$43,$39
	selb	$45,$7,$32,$37
	selb	$14,$5,$24,$15
	selb	$4,$49,$29,$50
	selb	$55,$23,$47,$2
	clgtbi	$60,$67,127	# 7f
	selb	$42,$12,$17,$3
	fsmbi	$3,0
	selb	$87,$11,$31,$27
	lnop
	selb	$84,$45,$48,$66
	shufb	$80,$42,$77,$85
	selb	$81,$6,$13,$65
	shufb	$78,$87,$77,$85
	selb	$61,$51,$30,$40
	shufb	$75,$84,$77,$85
	selb	$79,$14,$52,$63
	shufb	$73,$81,$77,$85
	selb	$76,$4,$53,$62
	shufb	$83,$61,$77,$85
	selb	$64,$55,$54,$60
	shufb	$71,$79,$77,$85
	ai	$1,$1,176	# b0
	shufb	$69,$76,$77,$85
	xor	$70,$80,$82
	shufb	$86,$64,$77,$85
	xor	$72,$83,$82
	lqd	$80,-16($1)
	xor	$68,$78,$82
	stqd	$70,16($88)
	xor	$59,$75,$82
	stqd	$72,0($88)
	xor	$74,$86,$82
	stqd	$68,32($88)	# 20
	xor	$58,$73,$82
	stqd	$59,48($88)	# 30
	xor	$57,$71,$82
	stqd	$74,112($88)	# 70
	xor	$56,$69,$82
	stqd	$58,64($88)	# 40
	stqd	$57,80($88)	# 50
	stqd	$56,96($88)	# 60
	lqd	$81,-32($1)
	lnop
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
label_660c:
	bi	$0
.global func_6610
func_6610:
	ai	$16,$6,-1
	lqd	$7,0($4)
	shli	$4,$6,4
	lqa	$40,0x22d70
	ori	$41,$3,0
	lqa	$38,0x22d80
	cgti	$3,$16,0
	lqa	$39,0x22d90
	ori	$14,$5,0
	lqa	$35,0x22da0
	lqx	$2,$4,$5
	lqa	$36,0x22db0
	lqa	$29,0x22dc0
	lqa	$30,0x22dd0
	lqa	$31,0x22de0
	lqa	$32,0x22df0
	xor	$11,$7,$2
	lnop
	lqa	$33,0x22e00
	lqa	$34,0x22e10
	lqa	$27,0x22e20
	lqa	$28,0x22e30
	lqa	$26,0x22e40
	lqa	$25,0x22e50
	lqa	$23,0x22e60
	lqa	$37,0x22e70
	lqa	$24,0x22e80
	lqa	$22,0x22e90
	lqa	$21,0x22ea0
	brz	$3,label_6788	# 6788
	shli	$5,$16,4
	hbra	label_6784,label_66a8
	il	$17,0
	lqa	$20,0x22d60
	lqa	$19,0x22eb0
	lqa	$18,0x22ec0
	a	$15,$5,$14
	lnop
label_66a8:
	andbi	$79,$11,31	# 1f
	lqd	$63,0($15)
	andbi	$4,$11,32	# 20
	lnop
	andbi	$7,$11,64	# 40
	shufb	$74,$25,$23,$79
	ceqbi	$73,$4,32	# 20
	shufb	$3,$40,$38,$79
	ceqbi	$68,$7,64	# 40
	shufb	$2,$39,$35,$79
	clgtbi	$65,$11,127	# 7f
	shufb	$77,$36,$29,$79
	ai	$16,$16,-1
	shufb	$78,$30,$31,$79
	ai	$15,$15,-16
	shufb	$75,$32,$33,$79
	selb	$70,$3,$2,$73
	shufb	$76,$34,$27,$79
	cgti	$9,$16,0
	shufb	$72,$28,$26,$79
	selb	$71,$77,$78,$73
	selb	$67,$75,$76,$73
	selb	$69,$72,$74,$73
	selb	$64,$70,$71,$68
	selb	$66,$67,$69,$68
	selb	$62,$64,$66,$65
	xor	$50,$62,$63
	rotqmbii	$61,$50,-5
	shlqbii	$60,$50,1
	shlqbii	$59,$50,2
	shlqbii	$58,$50,3
	andbi	$57,$61,7
	andbi	$53,$60,62	# 3e
	lnop
	andbi	$51,$59,124	# 7c
	shufb	$56,$18,$18,$57
	andbi	$55,$58,-8
	shufb	$54,$20,$20,$57
	shufb	$52,$19,$19,$57
	xor	$47,$55,$56
	xor	$49,$53,$54
	xor	$46,$51,$52
	xor	$45,$47,$50
	xor	$48,$46,$49
	xor	$44,$45,$49
	shufb	$11,$45,$17,$21
	xor	$43,$47,$48
	lnop
	xor	$42,$45,$46
	shufb	$13,$44,$17,$24
	shufb	$12,$43,$17,$37
	shufb	$10,$42,$17,$22
	xor	$8,$12,$13
	xor	$6,$10,$11
	xor	$11,$8,$6
label_6784:
	brnz	$9,label_66a8	# 66a8
label_6788:
	andbi	$5,$11,31	# 1f
	hbr	label_67fc,$0
	andbi	$10,$11,32	# 20
	lqd	$14,0($14)
	andbi	$9,$11,64	# 40
	shufb	$12,$25,$23,$5
	ceqbi	$6,$10,32	# 20
	shufb	$8,$40,$38,$5
	ceqbi	$23,$9,64	# 40
	shufb	$38,$39,$35,$5
	clgtbi	$20,$11,127	# 7f
	shufb	$35,$36,$29,$5
	il	$18,0
	shufb	$36,$30,$31,$5
	il	$3,0
	shufb	$30,$34,$27,$5
	selb	$25,$8,$38,$6
	shufb	$27,$28,$26,$5
	shufb	$29,$32,$33,$5
	selb	$26,$35,$36,$6
	selb	$24,$27,$12,$6
	selb	$22,$29,$30,$6
	selb	$19,$25,$26,$23
	selb	$21,$22,$24,$23
	selb	$17,$19,$21,$20
	shufb	$16,$17,$18,$37
	xor	$15,$16,$14
	stqd	$15,0($41)
	nop	$127
label_67fc:
	bi	$0
.global func_6800
func_6800:
	shli	$13,$6,4
	stqd	$97,-288($1)
	ori	$97,$5,0
	stqd	$95,-256($1)
	ai	$95,$6,-1
	stqd	$96,-272($1)
	ori	$96,$3,0
	lqd	$5,112($4)	# 70
	cgti	$12,$95,0
	lqx	$2,$13,$97
	lqd	$6,0($4)
	lqd	$8,16($4)
	lqd	$3,32($4)	# 20
	lqd	$7,48($4)	# 30
	nop	$127
	lqd	$9,64($4)	# 40
	xor	$67,$5,$2
	lqd	$10,80($4)	# 50
	xor	$66,$6,$2
	lnop
	xor	$65,$8,$2
	lqd	$11,96($4)	# 60
	xor	$64,$3,$2
	stqd	$80,-16($1)
	xor	$63,$7,$2
	stqd	$81,-32($1)
	xor	$62,$9,$2
	stqd	$82,-48($1)
	xor	$61,$10,$2
	stqd	$83,-64($1)
	nop	$127
	stqd	$88,-144($1)
	xor	$60,$11,$2
	stqd	$91,-192($1)
	stqd	$92,-208($1)
	stqd	$93,-224($1)
	lqa	$83,0x22d70
	lnop
	lqa	$81,0x22d80
	lqa	$82,0x22d90
	lqa	$79,0x22da0
	lqa	$80,0x22db0
	lqa	$77,0x22dc0
	lqa	$78,0x22dd0
	lqa	$75,0x22de0
	lqa	$76,0x22df0
	lqa	$72,0x22e00
	lqa	$73,0x22e10
	lqa	$70,0x22e20
	lqa	$74,0x22e30
	lqa	$71,0x22e40
	lqa	$69,0x22e50
	lqa	$68,0x22e60
	lqa	$88,0x22e70
	lnop
	lqa	$93,0x22e80
	lqa	$91,0x22e90
	lqa	$92,0x22ea0
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$89,-160($1)
	stqd	$90,-176($1)
	stqd	$94,-240($1)
	stqd	$1,-320($1)
	ai	$1,$1,-320
	brz	$12,label_6f28	# 6f28
	shli	$4,$95,4
	lqa	$90,0x22ed0
	il	$56,0
	lqa	$89,0x22ee0
	lqa	$59,0x22d60
	lqa	$87,0x22ef0
	a	$94,$4,$97
	lqa	$86,0x22f00
	lqa	$58,0x22eb0
	lqa	$85,0x22f10
	lqa	$84,0x22f20
	lqa	$57,0x22ec0
label_6940:
	andbi	$41,$66,31	# 1f
	lqd	$26,0($94)
	andbi	$35,$65,31	# 1f
	lnop
	andbi	$34,$64,31	# 1f
	shufb	$43,$69,$68,$41
	andbi	$17,$66,32	# 20
	shufb	$31,$69,$68,$35
	andbi	$40,$65,32	# 20
	shufb	$50,$69,$68,$34
	andbi	$39,$64,32	# 20
	shufb	$24,$82,$79,$41
	andbi	$12,$63,31	# 1f
	shufb	$49,$78,$75,$41
	andbi	$10,$62,31	# 1f
	shufb	$9,$73,$70,$41
	ceqbi	$2,$17,32	# 20
	shufb	$32,$82,$79,$35
	ceqbi	$4,$40,32	# 20
	shufb	$27,$78,$75,$35
	ceqbi	$6,$39,32	# 20
	shufb	$21,$82,$79,$34
	andbi	$28,$63,32	# 20
	shufb	$22,$83,$81,$41
	andbi	$38,$62,32	# 20
	shufb	$47,$80,$77,$41
	andbi	$8,$61,31	# 1f
	shufb	$44,$76,$72,$41
	ceqbi	$15,$28,32	# 20
	shufb	$18,$74,$71,$41
	selb	$22,$22,$24,$2
	shufb	$20,$83,$81,$35
	selb	$47,$47,$49,$2
	shufb	$46,$80,$77,$35
	selb	$44,$44,$9,$2
	shufb	$13,$74,$71,$35
	selb	$18,$18,$43,$2
	shufb	$19,$83,$81,$34
	selb	$20,$20,$32,$4
	shufb	$14,$74,$71,$34
	selb	$46,$46,$27,$4
	shufb	$51,$69,$68,$12
	selb	$13,$13,$31,$4
	shufb	$52,$69,$68,$10
	selb	$19,$19,$21,$6
	shufb	$23,$73,$70,$35
	selb	$14,$14,$50,$6
	shufb	$48,$78,$75,$34
	ceqbi	$16,$38,32	# 20
	shufb	$33,$76,$72,$34
	andbi	$37,$61,32	# 20
	shufb	$7,$73,$70,$34
	andbi	$5,$60,31	# 1f
	shufb	$29,$82,$79,$12
	ceqbi	$17,$37,32	# 20
	shufb	$25,$78,$75,$12
	andbi	$36,$60,32	# 20
	shufb	$24,$73,$70,$12
	selb	$49,$33,$7,$6
	shufb	$2,$82,$79,$10
	andbi	$3,$67,31	# 1f
	shufb	$27,$78,$75,$10
	ceqbi	$28,$36,32	# 20
	shufb	$50,$76,$72,$10
	andbi	$30,$67,32	# 20
	shufb	$21,$73,$70,$10
	andbi	$41,$66,64	# 40
	shufb	$42,$76,$72,$35
	ceqbi	$30,$30,32	# 20
	shufb	$45,$80,$77,$34
	andbi	$35,$60,64	# 40
	shufb	$11,$83,$81,$12
	andbi	$34,$67,64	# 40
	shufb	$43,$80,$77,$12
	selb	$42,$42,$23,$4
	shufb	$31,$76,$72,$12
	selb	$45,$45,$48,$6
	shufb	$9,$83,$81,$10
	selb	$11,$11,$29,$15
	shufb	$32,$80,$77,$10
	selb	$43,$43,$25,$15
	shufb	$12,$74,$71,$12
	selb	$31,$31,$24,$15
	shufb	$10,$74,$71,$10
	selb	$9,$9,$2,$16
	shufb	$7,$83,$81,$8
	selb	$32,$32,$27,$16
	shufb	$4,$82,$79,$8
	selb	$12,$12,$51,$15
	shufb	$53,$69,$68,$8
	selb	$10,$10,$52,$16
	shufb	$51,$78,$75,$8
	selb	$27,$50,$21,$16
	shufb	$52,$73,$70,$8
	selb	$50,$7,$4,$17
	shufb	$29,$80,$77,$8
	andbi	$40,$65,64	# 40
	shufb	$25,$76,$72,$8
	andbi	$39,$64,64	# 40
	shufb	$48,$74,$71,$8
	andbi	$38,$63,64	# 40
	shufb	$6,$83,$81,$5
	selb	$29,$29,$51,$17
	shufb	$16,$82,$79,$5
	selb	$25,$25,$52,$17
	shufb	$23,$78,$75,$5
	selb	$8,$48,$53,$17
	shufb	$15,$73,$70,$5
	andbi	$37,$62,64	# 40
	shufb	$17,$76,$72,$5
	selb	$48,$6,$16,$28
	shufb	$54,$69,$68,$5
	andbi	$36,$61,64	# 40
	shufb	$24,$80,$77,$5
	ceqbi	$41,$41,64	# 40
	shufb	$51,$74,$71,$5
	ceqbi	$40,$40,64	# 40
	shufb	$55,$69,$68,$3
	ceqbi	$39,$39,64	# 40
	shufb	$4,$83,$81,$3
	selb	$24,$24,$23,$28
	shufb	$21,$82,$79,$3
	selb	$23,$17,$15,$28
	shufb	$2,$80,$77,$3
	selb	$5,$51,$54,$28
	shufb	$53,$78,$75,$3
	ceqbi	$15,$35,64	# 40
	shufb	$28,$76,$72,$3
	selb	$51,$4,$21,$30
	shufb	$52,$73,$70,$3
	ceqbi	$38,$38,64	# 40
	shufb	$16,$74,$71,$3
	selb	$21,$2,$53,$30
	ceqbi	$37,$37,64	# 40
	selb	$17,$28,$52,$30
	selb	$54,$16,$55,$30
	ceqbi	$53,$34,64	# 40
	ceqbi	$36,$36,64	# 40
	selb	$2,$44,$18,$41
	selb	$33,$49,$14,$39
	selb	$52,$27,$10,$37
	selb	$49,$31,$12,$38
	selb	$18,$23,$5,$15
	selb	$55,$17,$54,$53
	selb	$7,$50,$29,$36
	selb	$6,$48,$24,$15
	selb	$4,$51,$21,$53
	selb	$42,$42,$13,$40
	selb	$28,$25,$8,$36
	selb	$20,$20,$46,$40
	selb	$19,$19,$45,$39
	selb	$11,$11,$43,$38
	selb	$9,$9,$32,$37
	selb	$22,$22,$47,$41
	clgtbi	$3,$66,127	# 7f
	clgtbi	$45,$65,127	# 7f
	clgtbi	$29,$64,127	# 7f
	clgtbi	$65,$63,127	# 7f
	clgtbi	$46,$62,127	# 7f
	clgtbi	$64,$61,127	# 7f
	clgtbi	$30,$60,127	# 7f
	clgtbi	$16,$67,127	# 7f
	selb	$47,$22,$2,$3
	selb	$61,$20,$42,$45
	selb	$43,$19,$33,$29
	selb	$5,$11,$49,$65
	selb	$54,$9,$52,$46
	selb	$8,$7,$28,$64
	selb	$34,$6,$18,$30
	selb	$12,$4,$55,$16
	xor	$11,$5,$26
	xor	$9,$54,$26
	xor	$22,$47,$26
	rotqmbii	$44,$11,-5
	xor	$4,$12,$26
	rotqmbii	$10,$9,-5
	xor	$20,$61,$26
	rotqmbii	$50,$22,-5
	xor	$19,$43,$26
	rotqmbii	$48,$4,-5
	xor	$7,$8,$26
	rotqmbii	$35,$20,-5
	xor	$6,$34,$26
	rotqmbii	$15,$19,-5
	andbi	$51,$50,7
	rotqmbii	$14,$7,-5
	andbi	$55,$44,7
	rotqmbii	$38,$6,-5
	andbi	$3,$35,7
	shufb	$37,$57,$57,$51
	andbi	$65,$15,7
	shufb	$60,$57,$57,$55
	andbi	$61,$10,7
	shufb	$13,$57,$57,$3
	andbi	$54,$14,7
	shufb	$63,$57,$57,$65
	andbi	$50,$38,7
	shufb	$41,$57,$57,$61
	andbi	$44,$48,7
	shufb	$40,$57,$57,$54
	andbi	$53,$22,31	# 1f
	shufb	$31,$57,$57,$50
	andbi	$52,$20,31	# 1f
	shufb	$32,$57,$57,$44
	andbi	$66,$19,31	# 1f
	shufb	$39,$85,$84,$53
	andbi	$46,$11,31	# 1f
	shufb	$67,$85,$84,$52
	andbi	$47,$9,31	# 1f
	shufb	$36,$85,$84,$66
	andbi	$43,$7,31	# 1f
	shufb	$27,$85,$84,$46
	andbi	$34,$6,31	# 1f
	shufb	$26,$85,$84,$47
	andbi	$35,$4,31	# 1f
	shufb	$25,$85,$84,$43
	xor	$48,$39,$37
	shufb	$24,$85,$84,$34
	xor	$37,$67,$13
	shufb	$21,$85,$84,$35
	xor	$67,$36,$63
	shufb	$49,$59,$59,$51
	xor	$63,$27,$60
	shufb	$2,$58,$58,$51
	xor	$60,$26,$41
	shufb	$33,$59,$59,$3
	xor	$51,$24,$31
	shufb	$45,$58,$58,$3
	xor	$22,$48,$22
	shufb	$23,$90,$89,$53
	xor	$20,$37,$20
	shufb	$28,$87,$86,$53
	xor	$53,$25,$40
	shufb	$18,$90,$89,$52
	xor	$19,$67,$19
	shufb	$29,$87,$86,$52
	xor	$23,$23,$49
	hbra	label_6f24,label_6940
	xor	$49,$21,$32
	shufb	$62,$90,$89,$66
	xor	$28,$28,$2
	shufb	$64,$58,$58,$65
	xor	$29,$29,$45
	shufb	$16,$90,$89,$46
	xor	$18,$18,$33
	shufb	$42,$59,$59,$55
	xor	$7,$53,$7
	shufb	$41,$58,$58,$55
	xor	$6,$51,$6
	shufb	$13,$90,$89,$47
	xor	$55,$60,$9
	shufb	$5,$58,$58,$61
	xor	$4,$49,$4
	shufb	$12,$90,$89,$43
	ai	$95,$95,-1
	shufb	$52,$58,$58,$54
	ai	$94,$94,-16
	shufb	$2,$90,$89,$34
	shufb	$3,$59,$59,$50
	shufb	$15,$58,$58,$50
	shufb	$45,$59,$59,$44
	shufb	$38,$58,$58,$44
	shufb	$17,$59,$59,$65
	shufb	$30,$87,$86,$66
	shufb	$31,$87,$86,$46
	shufb	$40,$59,$59,$61
	xor	$65,$62,$17
	shufb	$46,$90,$89,$35
	xor	$30,$30,$64
	shufb	$32,$87,$86,$47
	xor	$64,$16,$42
	shufb	$8,$59,$59,$54
	xor	$31,$31,$41
	shufb	$33,$87,$86,$43
	xor	$50,$46,$45
	shufb	$66,$87,$86,$34
	xor	$61,$13,$40
	shufb	$47,$87,$86,$35
	xor	$32,$32,$5
	shufb	$44,$20,$56,$92
	xor	$54,$12,$8
	shufb	$45,$19,$56,$92
	xor	$34,$66,$15
	shufb	$66,$22,$56,$92
	xor	$33,$33,$52
	lnop
	xor	$35,$47,$38
	shufb	$47,$7,$56,$92
	xor	$52,$2,$3
	shufb	$38,$55,$56,$92
	xor	$62,$63,$11
	xor	$43,$28,$23
	xor	$42,$29,$18
	shufb	$46,$62,$56,$92
	xor	$41,$30,$65
	xor	$40,$31,$64
	xor	$14,$32,$61
	xor	$10,$33,$54
	xor	$5,$34,$52
	xor	$8,$35,$50
	xor	$39,$48,$43
	shufb	$48,$6,$56,$92
	xor	$36,$67,$41
	shufb	$43,$4,$56,$92
	xor	$27,$63,$40
	shufb	$67,$39,$56,$88
	xor	$26,$60,$14
	shufb	$60,$36,$56,$88
	xor	$25,$53,$10
	shufb	$53,$27,$56,$88
	xor	$24,$51,$5
	shufb	$51,$26,$56,$88
	xor	$21,$49,$8
	shufb	$49,$25,$56,$88
	xor	$17,$19,$65
	shufb	$41,$24,$56,$88
	xor	$16,$62,$64
	shufb	$40,$21,$56,$88
	xor	$15,$22,$28
	xor	$14,$20,$29
	xor	$37,$37,$42
	shufb	$65,$15,$56,$91
	xor	$23,$22,$23
	lnop
	xor	$18,$20,$18
	shufb	$63,$37,$56,$88
	xor	$13,$55,$61
	shufb	$10,$23,$56,$93
	xor	$12,$7,$54
	shufb	$64,$18,$56,$93
	xor	$5,$19,$30
	shufb	$61,$17,$56,$93
	xor	$11,$62,$31
	shufb	$54,$16,$56,$93
	xor	$3,$6,$52
	shufb	$62,$14,$56,$91
	xor	$2,$4,$50
	shufb	$52,$13,$56,$93
	xor	$9,$55,$32
	shufb	$50,$12,$56,$93
	xor	$7,$7,$33
	shufb	$42,$3,$56,$93
	xor	$8,$6,$34
	shufb	$29,$2,$56,$93
	xor	$34,$4,$35
	shufb	$55,$5,$56,$91
	xor	$37,$63,$64
	shufb	$33,$11,$56,$91
	xor	$36,$60,$61
	shufb	$32,$9,$56,$91
	xor	$39,$67,$10
	shufb	$31,$7,$56,$91
	xor	$22,$65,$66
	shufb	$30,$8,$56,$91
	xor	$20,$62,$44
	shufb	$28,$34,$56,$91
	xor	$19,$55,$45
	xor	$27,$53,$54
	xor	$23,$33,$46
	xor	$26,$51,$52
	xor	$18,$32,$38
	xor	$25,$49,$50
	xor	$17,$31,$47
	xor	$24,$41,$42
	xor	$16,$30,$48
	xor	$21,$40,$29
	xor	$15,$28,$43
	cgti	$14,$95,0
	xor	$66,$39,$22
	xor	$65,$37,$20
	xor	$64,$36,$19
	xor	$63,$27,$23
	xor	$62,$26,$18
	xor	$61,$25,$17
	xor	$60,$24,$16
	lnop
	xor	$67,$21,$15
label_6f24:
	brnz	$14,label_6940	# 6940
label_6f28:
	andbi	$17,$66,31	# 1f
	lqd	$84,0($97)
	andbi	$34,$65,31	# 1f
	lnop
	andbi	$94,$64,31	# 1f
	shufb	$52,$82,$79,$17
	andbi	$28,$62,31	# 1f
	shufb	$11,$69,$68,$34
	andbi	$59,$63,31	# 1f
	shufb	$87,$69,$68,$94
	andbi	$55,$61,31	# 1f
	shufb	$53,$69,$68,$28
	andbi	$86,$60,31	# 1f
	shufb	$40,$69,$68,$59
	andbi	$91,$67,31	# 1f
	shufb	$92,$69,$68,$55
	andbi	$39,$66,32	# 20
	shufb	$85,$69,$68,$86
	andbi	$89,$65,32	# 20
	shufb	$48,$69,$68,$91
	andbi	$36,$64,32	# 20
	shufb	$3,$74,$71,$91
	andbi	$35,$67,32	# 20
	shufb	$16,$78,$75,$17
	ceqbi	$95,$39,32	# 20
	shufb	$97,$73,$70,$17
	ceqbi	$90,$89,32	# 20
	shufb	$56,$82,$79,$34
	ceqbi	$12,$36,32	# 20
	shufb	$45,$80,$77,$34
	ceqbi	$15,$35,32	# 20
	shufb	$33,$76,$72,$34
	andbi	$37,$62,32	# 20
	shufb	$93,$73,$70,$34
	andbi	$10,$63,32	# 20
	shufb	$5,$69,$68,$17
	andbi	$29,$61,32	# 20
	shufb	$69,$78,$75,$34
	andbi	$30,$60,32	# 20
	shufb	$21,$83,$81,$17
	ceqbi	$41,$10,32	# 20
	shufb	$46,$80,$77,$17
	ceqbi	$19,$37,32	# 20
	shufb	$42,$76,$72,$17
	ceqbi	$30,$30,32	# 20
	shufb	$57,$74,$71,$17
	selb	$21,$21,$52,$95
	shufb	$20,$83,$81,$34
	selb	$46,$46,$16,$95
	shufb	$13,$74,$71,$34
	selb	$42,$42,$97,$95
	shufb	$14,$74,$71,$94
	selb	$17,$57,$5,$95
	shufb	$49,$82,$79,$91
	selb	$57,$3,$48,$15
	shufb	$50,$78,$75,$91
	selb	$13,$13,$11,$90
	shufb	$38,$76,$72,$91
	selb	$20,$20,$56,$90
	shufb	$51,$73,$70,$91
	selb	$56,$45,$69,$90
	shufb	$25,$82,$79,$94
	selb	$69,$33,$93,$90
	shufb	$31,$78,$75,$94
	selb	$14,$14,$87,$12
	shufb	$68,$76,$72,$94
	andbi	$8,$66,64	# 40
	shufb	$22,$73,$70,$94
	andbi	$54,$65,64	# 40
	shufb	$9,$82,$79,$59
	andbi	$39,$64,64	# 40
	shufb	$58,$78,$75,$59
	andbi	$89,$63,64	# 40
	shufb	$26,$76,$72,$59
	andbi	$36,$62,64	# 40
	shufb	$44,$73,$70,$59
	andbi	$37,$61,64	# 40
	shufb	$6,$74,$71,$59
	andbi	$35,$60,64	# 40
	shufb	$24,$83,$81,$28
	andbi	$34,$67,64	# 40
	shufb	$27,$82,$79,$28
	clgtbi	$3,$65,127	# 7f
	shufb	$5,$80,$77,$28
	clgtbi	$45,$66,127	# 7f
	shufb	$2,$78,$75,$28
	clgtbi	$65,$64,127	# 7f
	shufb	$48,$76,$72,$28
	clgtbi	$66,$62,127	# 7f
	shufb	$4,$73,$70,$28
	clgtbi	$64,$63,127	# 7f
	shufb	$11,$74,$71,$28
	ceqbi	$28,$39,64	# 40
	shufb	$16,$83,$81,$55
	clgtbi	$62,$61,127	# 7f
	shufb	$52,$82,$79,$55
	ai	$1,$1,320	# 140
	shufb	$95,$80,$77,$55
	shufb	$97,$78,$75,$55
	shufb	$93,$76,$72,$55
	shufb	$90,$74,$71,$55
	shufb	$87,$83,$81,$86
	shufb	$23,$83,$81,$91
	shufb	$47,$80,$77,$91
	ceqbi	$91,$29,32	# 20
	shufb	$18,$83,$81,$94
	nop	$127
	shufb	$43,$80,$77,$94
	selb	$23,$23,$49,$15
	shufb	$94,$73,$70,$55
	selb	$47,$47,$50,$15
	shufb	$7,$83,$81,$59
	selb	$18,$18,$25,$12
	shufb	$81,$82,$79,$86
	selb	$25,$48,$4,$19
	shufb	$79,$80,$77,$86
	selb	$43,$43,$31,$12
	shufb	$32,$80,$77,$59
	selb	$31,$68,$22,$12
	shufb	$77,$78,$75,$86
	selb	$59,$11,$53,$19
	shufb	$75,$76,$72,$86
	selb	$68,$26,$44,$41
	shufb	$72,$73,$70,$86
	selb	$12,$6,$40,$41
	shufb	$70,$74,$71,$86
	selb	$6,$24,$27,$19
	hbr	label_729c,$0
	selb	$44,$38,$51,$15
	selb	$27,$5,$2,$19
	selb	$24,$95,$97,$91
	selb	$5,$16,$52,$91
	selb	$22,$93,$94,$91
	selb	$7,$7,$9,$41
	selb	$32,$32,$58,$41
	selb	$9,$90,$92,$91
	selb	$58,$70,$85,$30
	ceqbi	$40,$8,64	# 40
	ceqbi	$41,$54,64	# 40
	ceqbi	$38,$89,64	# 40
	selb	$4,$87,$81,$30
	lnop
	selb	$19,$79,$77,$30
	fsmbi	$77,0
	selb	$10,$75,$72,$30
	ceqbi	$50,$36,64	# 40
	ceqbi	$49,$37,64	# 40
	ceqbi	$2,$35,64	# 40
	ceqbi	$51,$34,64	# 40
	selb	$97,$10,$58,$2
	selb	$93,$44,$57,$51
	selb	$33,$69,$13,$41
	selb	$26,$68,$12,$38
	selb	$16,$25,$59,$50
	selb	$8,$20,$56,$41
	selb	$94,$4,$19,$2
	selb	$91,$23,$47,$51
	clgtbi	$95,$60,127	# 7f
	clgtbi	$92,$67,127	# 7f
	selb	$48,$42,$17,$40
	selb	$29,$31,$14,$28
	selb	$54,$22,$9,$49
	selb	$11,$21,$46,$40
	selb	$15,$18,$43,$28
	selb	$52,$7,$32,$38
	selb	$53,$6,$27,$50
	selb	$55,$5,$24,$49
	lnop
	selb	$90,$91,$93,$92
	lqd	$91,-192($1)
	selb	$76,$94,$97,$95
	lqd	$92,-208($1)
	selb	$87,$8,$33,$3
	shufb	$85,$90,$77,$88
	selb	$89,$11,$48,$45
	shufb	$69,$76,$77,$88
	selb	$86,$15,$29,$65
	shufb	$80,$87,$77,$88
	selb	$83,$52,$26,$64
	shufb	$82,$89,$77,$88
	selb	$81,$53,$16,$66
	shufb	$78,$86,$77,$88
	selb	$79,$55,$54,$62
	shufb	$75,$83,$77,$88
	xor	$74,$85,$84
	shufb	$73,$81,$77,$88
	xor	$72,$82,$84
	shufb	$71,$79,$77,$88
	xor	$70,$80,$84
	stqd	$74,112($96)	# 70
	xor	$68,$78,$84
	stqd	$72,0($96)
	xor	$59,$75,$84
	stqd	$70,16($96)
	xor	$58,$73,$84
	stqd	$68,32($96)	# 20
	xor	$57,$71,$84
	stqd	$59,48($96)	# 30
	xor	$56,$69,$84
	stqd	$58,64($96)	# 40
	il	$3,0
	stqd	$57,80($96)	# 50
	stqd	$56,96($96)	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lnop
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$93,-224($1)
	lqd	$94,-240($1)
	lqd	$95,-256($1)
	lqd	$96,-272($1)
	lqd	$97,-288($1)
	nop	$127
label_729c:
	bi	$0
.global func_72a0
func_72a0:
	il	$12,0
	lqd	$11,80($3)	# 50
	ilhu	$15,26437	# 6745
	cdd	$13,0($1)
	ilhu	$14,61389	# efcd
	hbr	label_7314,$0
	iohl	$15,8961	# 2301
	shlqbyi	$5,$3,0
	iohl	$14,43913	# ab89
	cwd	$6,0($1)
	il	$4,0
	stqd	$15,0($3)
	ilhu	$10,4146	# 1032
	shufb	$8,$12,$11,$13
	ilhu	$9,50130	# c3d2
	stqd	$14,16($3)
	ilhu	$3,39098	# 98ba
	iohl	$10,21622	# 5476
	iohl	$3,56574	# dcfe
	stqd	$8,80($5)	# 50
	iohl	$9,57840	# e1f0
	lqd	$7,160($5)	# a0
	nop	$127
	stqd	$3,32($5)	# 20
	il	$3,0
	stqd	$10,48($5)	# 30
	stqd	$9,64($5)	# 40
	shufb	$2,$4,$7,$6
	stqd	$2,160($5)	# a0
label_7314:
	bi	$0
.global func_7318
func_7318:
	cgti	$2,$5,-1
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$82,-48($1)
	ori	$82,$5,0
	stqd	$83,-64($1)
	il	$5,-2
	stqd	$80,-16($1)
	ori	$83,$4,0
	stqd	$84,-80($1)
	stqd	$0,16($1)
	stqd	$1,-112($1)
	ai	$1,$1,-112
	brz	$2,label_7528	# 7528
	il	$5,0
	lqd	$4,160($3)	# a0
	clgti	$3,$4,63	# 3f
	brnz	$3,label_7528	# 7528
	a	$6,$4,$82
	cgti	$5,$6,63	# 3f
	nop	$127
	brz	$5,label_7458	# 7458
	rotmai	$9,$4,-31
	rotmi	$8,$9,-28
	a	$7,$4,$8
	rotmai	$3,$7,-4
	cgti	$4,$3,3
	brnz	$4,label_73b8	# 73b8
	shli	$11,$3,4
	hbra	label_73b4,label_73a0
	sfi	$3,$3,4
	a	$10,$11,$81
	ai	$4,$10,96	# 60
	lnop
label_73a0:
	ai	$3,$3,-1
	lqd	$12,0($83)
	ai	$83,$83,16
	stqd	$12,0($4)
	ai	$4,$4,16
label_73b4:
	brnz	$3,label_73a0	# 73a0
label_73b8:
	ai	$84,$81,96	# 60
	shlqbyi	$3,$81,0
	il	$5,1
	lnop
	ori	$4,$84,0
	brsl	$0,func_78d8	# 78d8
	nop	$127
	lqd	$24,80($81)	# 50
	il	$26,1
	lqa	$10,0x22810
	il	$15,0
	lqd	$20,80($81)	# 50
	xswd	$23,$26
	cdd	$22,0($1)
	hbra	label_7424,label_7460
	lqd	$19,160($81)	# a0
	cg	$25,$23,$24
	cwd	$16,0($1)
	shufb	$21,$25,$25,$10
	a	$18,$19,$82
	addx	$21,$23,$24
	ai	$82,$18,-64
	shufb	$17,$21,$20,$22
	stqd	$17,80($81)	# 50
	lqd	$14,160($81)	# a0
	shufb	$13,$15,$14,$16
	stqd	$13,160($81)	# a0
label_7424:
	br	label_7460	# 7460
label_7428:
	il	$5,0
	hbra	label_7454,label_7528
	lqd	$56,160($81)	# a0
	lqd	$53,160($81)	# a0
	cwd	$55,0($1)
	nop	$127
	nop	$127
	a	$54,$56,$6
	shufb	$52,$54,$53,$55
	stqd	$52,160($81)	# a0
	nop	$127
label_7454:
	br	label_7528	# 7528
label_7458:
	ai	$84,$81,96	# 60
	lqa	$10,0x22810
label_7460:
	cgti	$27,$82,63	# 3f
	brz	$27,label_7480	# 7480
	il	$30,0
	lqd	$29,160($81)	# a0
	cwd	$31,0($1)
	shufb	$28,$30,$29,$31
	nop	$127
	stqd	$28,160($81)	# a0
label_7480:
	rotmai	$42,$82,-31
	lqd	$37,80($81)	# 50
	ori	$3,$81,0
	hbra	label_74cc,func_78d8
	ori	$4,$83,0
	lqd	$33,80($81)	# 50
	cdd	$35,0($1)
	rotmi	$41,$42,-26
	a	$40,$82,$41
	rotmai	$5,$40,-6
	shli	$80,$5,6
	rotqbyi	$39,$5,-4
	xswd	$36,$39
	sf	$82,$80,$82
	cg	$38,$36,$37
	shufb	$34,$38,$38,$10
	addx	$34,$36,$37
	shufb	$32,$34,$33,$35
	stqd	$32,80($81)	# 50
label_74cc:
	brsl	$0,func_78d8	# 78d8
	cgti	$2,$82,0
	fsmbi	$6,0
	a	$7,$83,$80
	lnop
label_74e0:
	nop	$127
	brz	$2,label_7428	# 7428
	a	$51,$7,$6
	lqd	$50,160($81)	# a0
	nop	$127
	lqx	$48,$7,$6
	ai	$49,$51,13
	hbra	label_7524,label_74e0
	a	$43,$50,$84
	rotqby	$46,$48,$49
	lqx	$45,$43,$6
	cbx	$47,$43,$6
	shufb	$44,$46,$45,$47
	stqx	$44,$43,$6
	ai	$6,$6,1
	cgt	$2,$82,$6
	nop	$127
label_7524:
	br	label_74e0	# 74e0
label_7528:
	ai	$1,$1,112	# 70
	shlqbyi	$3,$5,0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	nop	$127
	bi	$0
.global func_7550
func_7550:
	il	$40,-1
	stqd	$81,-32($1)
	ori	$81,$3,0
	lqd	$3,160($4)	# a0
	nop	$127
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$80,-16($1)
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
	clgti	$2,$3,63	# 3f
	nop	$127
	brnz	$2,label_78b8	# 78b8
	ai	$80,$4,96	# 60
	shlqbyi	$5,$3,0
	lqx	$7,$3,$80
	cbx	$8,$3,$80
	il	$3,-128
	shufb	$6,$3,$7,$8
	stqx	$6,$5,$80
	lqd	$3,160($4)	# a0
	cgti	$4,$3,55	# 37
	brz	$4,label_7608	# 7608
	ai	$4,$3,1
	cgti	$5,$4,63	# 3f
	nop	$127
	brnz	$5,label_75f0	# 75f0
	il	$5,0
	hbra	label_75ec,label_75c8
label_75c8:
	lqx	$11,$80,$4
	cbx	$12,$80,$4
	nop	$127
	nop	$127
	shufb	$10,$5,$11,$12
	stqx	$10,$80,$4
	ai	$4,$4,1
	cgti	$9,$4,63	# 3f
	nop	$127
label_75ec:
	brz	$9,label_75c8	# 75c8
label_75f0:
	il	$5,1
	shlqbyi	$3,$82,0
	ori	$4,$80,0
	brsl	$0,func_78d8	# 78d8
	il	$5,-1
	lnop
label_7608:
	ai	$4,$5,1
	cgti	$13,$4,55	# 37
	nop	$127
	brnz	$13,label_7648	# 7648
	il	$5,0
	hbra	label_7644,label_7620
label_7620:
	lqx	$16,$80,$4
	cbx	$17,$80,$4
	nop	$127
	nop	$127
	shufb	$15,$5,$16,$17
	stqx	$15,$80,$4
	ai	$4,$4,1
	cgti	$14,$4,55	# 37
	nop	$127
label_7644:
	brz	$14,label_7620	# 7620
label_7648:
	ori	$4,$80,0
	lqd	$65,80($82)	# 50
	il	$5,1
	lqd	$66,160($82)	# a0
	ori	$3,$82,0
	lqa	$60,0x22810
	hbra	label_7698,func_78d8
	lqd	$50,144($82)	# 90
	cdd	$52,8($1)
	rotqbyi	$64,$65,8
	shli	$62,$66,3
	shlqbyi	$63,$64,9
	rotqbyi	$61,$62,-4
	shlqbii	$58,$63,1
	xswd	$56,$61
	cg	$59,$56,$58
	shufb	$46,$59,$59,$60
	addx	$46,$56,$58
	shufb	$36,$46,$50,$52
	stqd	$36,144($82)	# 90
label_7698:
	brsl	$0,func_78d8	# 78d8
	lqd	$43,0($82)
	il	$55,1
	lqd	$21,0($81)
	il	$47,2
	cbd	$42,0($81)
	il	$33,3
	cbx	$22,$81,$55
	il	$27,4
	cbx	$53,$81,$47
	il	$19,5
	cbx	$45,$81,$33
	il	$9,6
	rotqbyi	$41,$43,-3
	il	$11,7
	cbx	$31,$81,$27
	il	$12,8
	cbx	$26,$81,$19
	il	$75,9
	cbx	$17,$81,$9
	il	$69,10
	shufb	$40,$41,$21,$42
	il	$64,11
	cbx	$13,$81,$11
	il	$58,12
	cbx	$10,$81,$12
	il	$52,13
	cbx	$79,$81,$75
	il	$46,14
	stqd	$40,0($81)
	il	$43,15
	lqd	$37,0($82)
	il	$42,17	# 11
	lqx	$39,$81,$55
	il	$41,18	# 12
	cbx	$73,$81,$69
	il	$21,19	# 13
	cbx	$68,$81,$64
	il	$40,0
	cbx	$62,$81,$58
	cbx	$56,$81,$52
	rotqbyi	$38,$37,-2
	cbx	$50,$81,$46
	cbx	$36,$81,$43
	cbd	$37,16($81)
	shufb	$57,$38,$39,$22
	cbx	$38,$81,$42
	cbx	$22,$81,$41
	cbx	$39,$81,$21
	stqx	$57,$81,$55
	lqd	$54,0($82)
	lqx	$49,$81,$47
	rotqbyi	$51,$54,-1
	shufb	$48,$51,$49,$53
	stqx	$48,$81,$47
	lqx	$35,$81,$33
	lqd	$44,0($82)
	shufb	$34,$44,$35,$45
	stqx	$34,$81,$33
	lqd	$32,16($82)
	lqx	$29,$81,$27
	rotqbyi	$30,$32,-3
	shufb	$28,$30,$29,$31
	stqx	$28,$81,$27
	lqd	$25,16($82)
	lqx	$23,$81,$19
	rotqbyi	$24,$25,-2
	shufb	$20,$24,$23,$26
	stqx	$20,$81,$19
	lqd	$18,16($82)
	lqx	$15,$81,$9
	rotqbyi	$16,$18,-1
	shufb	$14,$16,$15,$17
	stqx	$14,$81,$9
	lqd	$5,16($82)
	lqx	$8,$81,$11
	shufb	$3,$5,$8,$13
	stqx	$3,$81,$11
	lqd	$7,32($82)	# 20
	lqx	$6,$81,$12
	rotqbyi	$2,$7,-3
	shufb	$4,$2,$6,$10
	stqx	$4,$81,$12
	lqd	$80,32($82)	# 20
	lqx	$77,$81,$75
	rotqbyi	$78,$80,-2
	shufb	$76,$78,$77,$79
	stqx	$76,$81,$75
	lqd	$74,32($82)	# 20
	lqx	$71,$81,$69
	rotqbyi	$72,$74,-1
	shufb	$70,$72,$71,$73
	stqx	$70,$81,$69
	lqd	$67,32($82)	# 20
	lqx	$66,$81,$64
	shufb	$65,$67,$66,$68
	stqx	$65,$81,$64
	lqd	$63,48($82)	# 30
	lqx	$60,$81,$58
	rotqbyi	$61,$63,-3
	shufb	$59,$61,$60,$62
	stqx	$59,$81,$58
	lqd	$57,48($82)	# 30
	lqx	$54,$81,$52
	rotqbyi	$55,$57,-2
	shufb	$53,$55,$54,$56
	stqx	$53,$81,$52
	lqd	$51,48($82)	# 30
	lqx	$48,$81,$46
	rotqbyi	$49,$51,-1
	shufb	$47,$49,$48,$50
	stqx	$47,$81,$46
	lqd	$45,48($82)	# 30
	lqx	$44,$81,$43
	shufb	$35,$45,$44,$36
	stqx	$35,$81,$43
	lqd	$34,64($82)	# 40
	lqd	$32,16($81)
	rotqbyi	$33,$34,-3
	shufb	$31,$33,$32,$37
	stqd	$31,16($81)
	lqd	$30,64($82)	# 40
	lqx	$28,$81,$42
	rotqbyi	$29,$30,-2
	shufb	$27,$29,$28,$38
	stqx	$27,$81,$42
	lqd	$26,64($82)	# 40
	lqx	$24,$81,$41
	rotqbyi	$25,$26,-1
	shufb	$23,$25,$24,$22
	stqx	$23,$81,$41
	lqd	$20,64($82)	# 40
	lqx	$19,$81,$21
	shufb	$18,$20,$19,$39
	nop	$127
	stqx	$18,$81,$21
label_78b8:
	ai	$1,$1,80	# 50
	shlqbyi	$3,$40,0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	nop	$127
	bi	$0
.global func_78d8
func_78d8:
	cgti	$2,$5,0
	lqd	$46,0($3)
	ori	$56,$3,0
	lqd	$48,16($3)
	ori	$45,$4,0
	lqd	$47,32($3)	# 20
	lqd	$49,48($3)	# 30
	lqd	$50,64($3)	# 40
	nop	$127
	brz	$2,label_8730	# 8730
	ilhu	$53,23170	# 5a82
	lqa	$44,0x22d10
	ilhu	$42,1029	# 405
	lqa	$43,0x22f30
	ilhu	$39,2057	# 809
	shlqbyi	$51,$5,0
	ilhu	$40,3085	# c0d
	fsmbi	$38,0
	ilhu	$54,28377	# 6ed9
	ilhu	$55,36635	# 8f1b
	ilhu	$52,51810	# ca62
	iohl	$53,31129	# 7999
	ila	$41,66051	# 10203
	iohl	$42,1543	# 607
	iohl	$39,2571	# a0b
	iohl	$40,3599	# e0f
	iohl	$54,60321	# eba1
	iohl	$55,48348	# bcdc
	iohl	$52,49622	# c1d6
	lnop
label_7950:
	selb	$2,$49,$47,$48
	lqd	$37,0($45)
	roti	$58,$48,30	# 1e
	rotqbii	$5,$46,5
	roti	$78,$46,30	# 1e
	lqd	$10,16($45)
	ai	$51,$51,-1
	lqd	$25,48($45)	# 30
	lqd	$30,32($45)	# 20
	a	$57,$50,$5
	a	$7,$37,$53
	selb	$69,$47,$58,$46
	a	$16,$10,$53
	shufb	$70,$7,$38,$41
	xor	$24,$10,$25
	shufb	$27,$7,$38,$42
	xor	$22,$37,$30
	shufb	$26,$7,$38,$39
	a	$17,$30,$53
	shufb	$77,$7,$38,$40
	a	$14,$2,$70
	shufb	$74,$37,$10,$44
	a	$60,$69,$27
	shufb	$21,$16,$38,$41
	a	$68,$57,$14
	rotqbyi	$63,$25,4
	a	$20,$25,$53
	shufb	$23,$16,$38,$42
	selb	$72,$58,$78,$68
	rotqbii	$66,$68,5
	roti	$32,$68,30	# 1e
	shufb	$31,$16,$38,$39
	a	$29,$72,$26
	shufb	$64,$10,$30,$44
	xor	$73,$74,$22
	shufb	$69,$16,$38,$40
	a	$4,$49,$66
	shufb	$57,$17,$38,$41
	xor	$33,$73,$63
	shufb	$68,$17,$38,$42
	a	$12,$4,$60
	shufb	$26,$17,$38,$39
	roti	$11,$33,1
	shufb	$72,$17,$38,$40
	selb	$35,$78,$32,$12
	rotqbii	$19,$12,5
	roti	$60,$12,30	# 1e
	shufb	$66,$20,$38,$41
	a	$28,$35,$77
	shufb	$77,$30,$25,$44
	xor	$63,$64,$24
	shufb	$67,$25,$11,$43
	a	$61,$47,$19
	shufb	$37,$20,$38,$42
	ai	$45,$45,64	# 40
	shufb	$35,$20,$38,$39
	a	$3,$61,$29
	shufb	$74,$20,$38,$40
	xor	$6,$73,$67
	lnop
	selb	$62,$32,$60,$3
	rotqbii	$59,$3,5
	roti	$33,$3,30	# 1e
	a	$76,$62,$21
	a	$15,$58,$59
	a	$8,$15,$28
	selb	$65,$60,$33,$8
	rotqbii	$18,$8,5
	roti	$28,$8,30	# 1e
	a	$70,$65,$23
	roti	$65,$6,1
	a	$9,$78,$18
	a	$36,$9,$76
	lnop
	xor	$14,$30,$65
	rotqbyi	$79,$65,4
	selb	$71,$33,$28,$36
	rotqbii	$75,$36,5
	roti	$76,$36,30	# 1e
	shufb	$67,$25,$65,$44
	a	$29,$71,$31
	xor	$13,$63,$79
	a	$27,$32,$75
	roti	$2,$13,1
	a	$5,$27,$70
	xor	$75,$77,$14
	selb	$7,$28,$76,$5
	rotqbii	$22,$5,5
	roti	$5,$5,30	# 1e
	shufb	$19,$65,$2,$43
	a	$62,$7,$69
	a	$34,$65,$53
	a	$61,$60,$22
	lnop
	xor	$10,$63,$19
	shufb	$36,$34,$38,$41
	a	$4,$61,$29
	shufb	$71,$34,$38,$42
	roti	$61,$10,1
	shufb	$79,$34,$38,$39
	selb	$12,$76,$5,$4
	rotqbii	$21,$4,5
	roti	$29,$4,30	# 1e
	shufb	$34,$34,$38,$40
	a	$73,$12,$57
	lnop
	xor	$15,$25,$61
	rotqbyi	$64,$61,4
	a	$24,$33,$21
	shufb	$33,$65,$61,$44
	a	$16,$61,$54
	a	$3,$24,$62
	xor	$59,$75,$64
	shufb	$21,$16,$38,$41
	selb	$11,$5,$29,$3
	rotqbii	$58,$3,5
	roti	$62,$3,30	# 1e
	shufb	$24,$16,$38,$42
	a	$70,$11,$68
	shufb	$64,$16,$38,$39
	roti	$78,$59,1
	shufb	$16,$16,$38,$40
	a	$23,$28,$58
	xor	$59,$67,$15
	a	$8,$23,$73
	shufb	$18,$61,$78,$43
	selb	$31,$29,$62,$8
	rotqbii	$32,$8,5
	roti	$78,$8,30	# 1e
	a	$77,$31,$26
	xor	$13,$75,$18
	a	$27,$76,$32
	roti	$76,$13,1
	a	$9,$27,$70
	selb	$30,$62,$78,$9
	rotqbii	$2,$9,5
	roti	$27,$9,30	# 1e
	rotqbyi	$69,$76,4
	a	$25,$30,$72
	shufb	$30,$61,$76,$44
	xor	$6,$65,$76
	a	$22,$5,$2
	xor	$60,$59,$69
	a	$19,$22,$77
	roti	$63,$60,1
	lnop
	selb	$7,$78,$27,$19
	rotqbii	$57,$19,5
	roti	$77,$19,30	# 1e
	a	$67,$7,$66
	xor	$65,$33,$6
	shufb	$12,$76,$63,$43
	a	$68,$29,$57
	a	$14,$76,$54
	a	$4,$68,$25
	lnop
	xor	$28,$59,$12
	shufb	$69,$14,$38,$41
	selb	$58,$27,$77,$4
	rotqbii	$11,$4,5
	roti	$59,$4,30	# 1e
	shufb	$22,$14,$38,$42
	a	$18,$58,$37
	shufb	$60,$14,$38,$39
	roti	$58,$28,1
	shufb	$19,$14,$38,$40
	a	$3,$62,$11
	a	$73,$3,$67
	xor	$72,$61,$58
	rotqbyi	$26,$58,4
	selb	$23,$77,$59,$73
	rotqbii	$17,$73,5
	roti	$67,$73,30	# 1e
	a	$63,$23,$35
	xor	$31,$65,$26
	a	$75,$78,$17
	roti	$32,$31,1
	shufb	$31,$76,$58,$44
	a	$8,$75,$18
	a	$15,$58,$54
	selb	$70,$59,$67,$8
	rotqbii	$66,$8,5
	roti	$61,$8,30	# 1e
	shufb	$2,$58,$32,$43
	a	$6,$70,$74
	shufb	$73,$15,$38,$41
	xor	$74,$30,$72
	shufb	$23,$15,$38,$42
	a	$57,$27,$66
	shufb	$26,$15,$38,$39
	xor	$29,$65,$2
	shufb	$15,$15,$38,$40
	a	$9,$57,$63
	roti	$57,$29,1
	selb	$33,$67,$61,$9
	rotqbii	$25,$9,5
	roti	$63,$9,30	# 1e
	a	$17,$33,$36
	xor	$18,$76,$57
	rotqbyi	$37,$57,4
	a	$68,$77,$25
	shufb	$77,$58,$57,$44
	a	$10,$57,$54
	a	$62,$68,$6
	xor	$35,$74,$37
	shufb	$76,$10,$38,$41
	selb	$12,$61,$63,$62
	rotqbii	$7,$62,5
	roti	$65,$62,30	# 1e
	shufb	$68,$10,$38,$42
	a	$72,$12,$71
	shufb	$6,$10,$38,$39
	roti	$20,$35,1
	shufb	$62,$10,$38,$40
	a	$78,$59,$7
	a	$59,$65,$21
	a	$4,$78,$17
	lnop
	xor	$78,$31,$18
	shufb	$32,$57,$20,$43
	selb	$75,$63,$65,$4
	rotqbii	$70,$4,5
	roti	$25,$4,30	# 1e
	a	$11,$75,$79
	xor	$30,$74,$32
	a	$66,$67,$70
	a	$75,$25,$24
	a	$27,$66,$72
	roti	$30,$30,1
	lnop
	selb	$2,$65,$25,$27
	rotqbii	$36,$27,5
	roti	$13,$27,30	# 1e
	a	$5,$2,$34
	a	$35,$30,$54
	rotqbyi	$71,$30,4
	a	$33,$61,$36
	shufb	$36,$57,$30,$44
	a	$27,$13,$64
	lnop
	a	$8,$33,$11
	shufb	$11,$35,$38,$41
	xor	$20,$78,$71
	shufb	$71,$35,$38,$39
	xor	$37,$8,$13
	rotqbii	$12,$8,5
	roti	$74,$8,30	# 1e
	lnop
	xor	$7,$37,$25
	shufb	$37,$35,$38,$42
	roti	$32,$20,1
	lnop
	a	$17,$63,$12
	shufb	$63,$35,$38,$40
	a	$21,$59,$7
	a	$9,$17,$5
	a	$25,$74,$16
	lnop
	xor	$18,$9,$74
	rotqbii	$3,$9,5
	roti	$34,$9,30	# 1e
	xor	$79,$18,$13
	a	$4,$21,$3
	a	$72,$75,$79
	xor	$70,$4,$34
	rotqbii	$67,$4,5
	roti	$12,$4,30	# 1e
	shufb	$4,$30,$32,$43
	xor	$66,$70,$74
	a	$18,$34,$69
	a	$65,$72,$67
	a	$33,$27,$66
	xor	$61,$65,$12
	rotqbii	$64,$65,5
	roti	$24,$65,30	# 1e
	xor	$2,$61,$34
	a	$75,$12,$22
	a	$8,$33,$64
	a	$5,$25,$2
	lnop
	xor	$7,$8,$24
	rotqbii	$59,$8,5
	roti	$74,$8,30	# 1e
	xor	$17,$7,$12
	a	$72,$24,$60
	a	$16,$5,$59
	a	$79,$18,$17
	lnop
	xor	$9,$16,$74
	rotqbii	$20,$16,5
	roti	$65,$16,30	# 1e
	xor	$13,$9,$24
	a	$33,$74,$19
	a	$21,$79,$20
	a	$69,$75,$13
	lnop
	xor	$3,$21,$65
	rotqbii	$70,$21,5
	roti	$12,$21,30	# 1e
	xor	$67,$3,$74
	a	$59,$65,$73
	a	$66,$69,$70
	a	$64,$72,$67
	lnop
	xor	$34,$66,$12
	rotqbii	$61,$66,5
	roti	$22,$66,30	# 1e
	xor	$27,$34,$65
	a	$24,$12,$23
	a	$25,$64,$61
	a	$7,$33,$27
	lnop
	xor	$8,$25,$22
	rotqbii	$2,$25,5
	roti	$20,$25,30	# 1e
	xor	$60,$8,$12
	a	$73,$22,$26
	a	$14,$7,$2
	a	$9,$59,$60
	lnop
	xor	$5,$14,$20
	rotqbii	$17,$14,5
	roti	$70,$14,30	# 1e
	xor	$18,$5,$22
	a	$72,$20,$15
	a	$19,$9,$17
	a	$75,$24,$18
	lnop
	xor	$79,$19,$70
	rotqbii	$13,$19,5
	roti	$65,$19,30	# 1e
	xor	$74,$79,$20
	a	$27,$70,$76
	a	$21,$75,$13
	a	$16,$73,$74
	lnop
	xor	$69,$21,$65
	rotqbii	$3,$21,5
	roti	$8,$21,30	# 1e
	xor	$67,$69,$70
	a	$5,$65,$68
	a	$66,$16,$3
	a	$64,$72,$67
	lnop
	xor	$34,$66,$8
	rotqbii	$61,$66,5
	roti	$26,$66,30	# 1e
	xor	$33,$34,$65
	a	$24,$8,$6
	a	$12,$64,$61
	a	$59,$27,$33
	lnop
	xor	$7,$12,$26
	rotqbii	$60,$12,5
	roti	$22,$12,30	# 1e
	xor	$2,$7,$8
	a	$13,$26,$62
	a	$17,$59,$60
	a	$25,$5,$2
	lnop
	xor	$9,$17,$22
	rotqbii	$18,$17,5
	roti	$74,$17,30	# 1e
	xor	$23,$9,$26
	a	$69,$22,$11
	a	$20,$25,$18
	a	$14,$24,$23
	lnop
	xor	$19,$20,$74
	rotqbii	$79,$20,5
	roti	$68,$20,30	# 1e
	xor	$76,$19,$22
	a	$66,$74,$37
	a	$75,$14,$79
	a	$15,$13,$76
	lnop
	xor	$73,$75,$68
	rotqbii	$21,$75,5
	roti	$62,$75,30	# 1e
	xor	$70,$73,$74
	a	$33,$68,$71
	a	$10,$15,$21
	a	$67,$69,$70
	lnop
	xor	$16,$10,$62
	rotqbii	$3,$10,5
	roti	$26,$10,30	# 1e
	xor	$72,$16,$68
	xor	$31,$78,$4
	a	$65,$67,$3
	a	$64,$66,$72
	lnop
	xor	$34,$65,$26
	rotqbii	$61,$65,5
	roti	$23,$65,30	# 1e
	xor	$32,$34,$62
	roti	$31,$31,1
	a	$12,$64,$61
	a	$7,$33,$32
	lnop
	xor	$27,$12,$23
	rotqbii	$8,$12,5
	a	$59,$62,$63
	rotqbyi	$71,$31,4
	xor	$60,$27,$26
	shufb	$27,$30,$31,$44
	roti	$69,$12,30	# 1e
	a	$25,$7,$8
	a	$9,$31,$55
	lnop
	a	$6,$59,$60
	rotqbii	$35,$25,5
	or	$37,$25,$69
	shufb	$18,$9,$38,$41
	and	$5,$25,$69
	shufb	$24,$9,$38,$42
	and	$2,$37,$23
	shufb	$70,$9,$38,$39
	a	$76,$6,$35
	shufb	$61,$9,$38,$40
	a	$22,$26,$18
	lnop
	roti	$64,$25,30	# 1e
	rotqbii	$17,$76,5
	or	$19,$5,$2
	xor	$79,$58,$30
	a	$73,$23,$24
	a	$20,$22,$17
	or	$14,$76,$64
	a	$10,$20,$19
	xor	$34,$77,$79
	lnop
	and	$13,$14,$69
	rotqbii	$74,$10,5
	and	$75,$76,$64
	roti	$35,$76,30	# 1e
	or	$21,$75,$13
	a	$11,$73,$74
	xor	$15,$34,$71
	a	$60,$11,$21
	roti	$4,$15,1
	lnop
	or	$68,$10,$35
	rotqbii	$78,$60,5
	a	$16,$69,$70
	and	$3,$68,$64
	and	$67,$10,$35
	shufb	$65,$31,$4,$43
	roti	$17,$10,30	# 1e
	a	$66,$16,$78
	or	$72,$67,$3
	xor	$33,$34,$65
	a	$12,$66,$72
	roti	$33,$33,1
	or	$63,$60,$17
	rotqbii	$32,$12,5
	a	$62,$64,$61
	and	$28,$60,$17
	and	$8,$63,$35
	rotqbyi	$14,$33,4
	roti	$73,$60,30	# 1e
	a	$9,$33,$55
	a	$7,$62,$32
	lnop
	or	$59,$28,$8
	shufb	$37,$9,$38,$41
	or	$58,$12,$73
	shufb	$23,$9,$38,$42
	a	$77,$7,$59
	shufb	$74,$9,$38,$39
	and	$18,$12,$73
	shufb	$66,$9,$38,$40
	and	$5,$58,$17
	rotqbii	$26,$77,5
	a	$25,$35,$37
	shufb	$28,$31,$33,$44
	roti	$65,$12,30	# 1e
	or	$24,$18,$5
	a	$6,$25,$26
	xor	$2,$57,$31
	a	$78,$6,$24
	or	$22,$77,$65
	xor	$72,$36,$2
	rotqbii	$19,$78,5
	a	$20,$17,$23
	and	$79,$22,$73
	and	$29,$77,$65
	roti	$58,$77,30	# 1e
	a	$13,$20,$19
	or	$76,$29,$79
	xor	$75,$72,$14
	a	$10,$13,$76
	roti	$21,$75,1
	lnop
	or	$71,$78,$58
	rotqbii	$15,$10,5
	a	$70,$73,$74
	and	$69,$71,$65
	and	$68,$78,$58
	shufb	$4,$33,$21,$43
	roti	$25,$78,30	# 1e
	a	$67,$70,$15
	or	$16,$68,$69
	xor	$34,$72,$4
	a	$11,$67,$16
	a	$64,$65,$66
	or	$61,$10,$25
	rotqbii	$3,$11,5
	roti	$65,$34,1
	and	$32,$10,$25
	and	$63,$61,$58
	roti	$29,$10,30	# 1e
	a	$12,$65,$55
	rotqbyi	$22,$65,4
	a	$8,$64,$3
	lnop
	or	$62,$32,$63
	shufb	$59,$12,$38,$41
	or	$60,$11,$29
	shufb	$26,$12,$38,$42
	a	$17,$8,$62
	shufb	$77,$12,$38,$39
	and	$37,$11,$29
	shufb	$68,$12,$38,$40
	and	$57,$60,$25
	rotqbii	$36,$17,5
	a	$35,$58,$59
	shufb	$32,$33,$65,$44
	roti	$78,$11,30	# 1e
	or	$5,$37,$57
	a	$7,$35,$36
	xor	$18,$30,$33
	a	$71,$7,$5
	or	$24,$17,$78
	xor	$69,$27,$18
	rotqbii	$9,$71,5
	a	$6,$25,$26
	and	$23,$24,$29
	and	$2,$17,$78
	roti	$11,$17,30	# 1e
	a	$20,$6,$9
	or	$19,$2,$23
	xor	$79,$69,$22
	a	$64,$20,$19
	roti	$76,$79,1
	lnop
	or	$14,$71,$11
	rotqbii	$13,$64,5
	a	$75,$29,$77
	and	$74,$14,$78
	and	$73,$71,$11
	shufb	$70,$65,$76,$43
	roti	$27,$71,30	# 1e
	a	$15,$75,$13
	or	$21,$73,$74
	xor	$16,$69,$70
	a	$62,$15,$21
	a	$72,$78,$68
	or	$67,$64,$27
	rotqbii	$4,$62,5
	roti	$78,$16,1
	and	$61,$64,$27
	and	$66,$67,$11
	roti	$6,$64,30	# 1e
	a	$58,$78,$55
	rotqbyi	$22,$78,4
	a	$3,$72,$4
	lnop
	or	$63,$61,$66
	shufb	$59,$58,$38,$41
	or	$60,$62,$6
	shufb	$18,$58,$38,$42
	a	$17,$3,$63
	shufb	$19,$58,$38,$39
	and	$37,$62,$6
	shufb	$71,$58,$38,$40
	and	$57,$60,$27
	rotqbii	$36,$17,5
	a	$35,$11,$59
	shufb	$61,$65,$78,$44
	roti	$21,$62,30	# 1e
	or	$5,$37,$57
	a	$8,$35,$36
	xor	$30,$31,$65
	a	$76,$8,$5
	or	$26,$17,$21
	xor	$73,$28,$30
	rotqbii	$25,$76,5
	a	$24,$27,$18
	and	$23,$26,$6
	and	$2,$17,$21
	roti	$59,$17,30	# 1e
	a	$7,$24,$25
	or	$10,$2,$23
	xor	$9,$73,$22
	a	$66,$7,$10
	roti	$12,$9,1
	lnop
	or	$20,$76,$59
	rotqbii	$79,$66,5
	a	$77,$6,$19
	and	$29,$20,$21
	and	$14,$76,$59
	shufb	$74,$78,$12,$43
	roti	$30,$76,30	# 1e
	a	$75,$77,$79
	or	$13,$14,$29
	xor	$15,$73,$74
	a	$63,$75,$13
	a	$68,$21,$71
	or	$70,$66,$30
	rotqbii	$69,$63,5
	roti	$21,$15,1
	and	$72,$66,$30
	and	$67,$70,$59
	roti	$7,$66,30	# 1e
	a	$11,$21,$55
	rotqbyi	$28,$21,4
	a	$4,$68,$69
	lnop
	or	$64,$72,$67
	shufb	$60,$11,$38,$41
	or	$62,$63,$7
	shufb	$5,$11,$38,$42
	a	$23,$4,$64
	shufb	$22,$11,$38,$39
	and	$57,$63,$7
	shufb	$75,$11,$38,$40
	and	$58,$62,$30
	rotqbii	$37,$23,5
	a	$36,$59,$60
	shufb	$72,$78,$21,$44
	roti	$74,$63,30	# 1e
	or	$35,$57,$58
	a	$3,$36,$37
	xor	$31,$33,$78
	a	$20,$3,$35
	xor	$79,$32,$31
	or	$18,$23,$74
	rotqbii	$27,$20,5
	a	$26,$30,$5
	xor	$17,$79,$28
	and	$25,$18,$7
	and	$24,$23,$74
	roti	$59,$23,30	# 1e
	a	$8,$26,$27
	or	$2,$24,$25
	roti	$10,$17,1
	a	$71,$8,$2
	or	$19,$20,$59
	a	$29,$7,$22
	rotqbii	$77,$71,5
	and	$6,$20,$59
	shufb	$12,$21,$10,$43
	and	$9,$19,$74
	roti	$31,$20,30	# 1e
	or	$76,$6,$9
	xor	$14,$79,$12
	a	$13,$29,$77
	roti	$29,$14,1
	a	$58,$13,$76
	or	$73,$71,$31
	roti	$27,$71,30	# 1e
	rotqbii	$70,$58,5
	a	$66,$29,$52
	rotqbyi	$37,$29,4
	a	$69,$74,$75
	shufb	$13,$21,$29,$44
	and	$68,$73,$59
	shufb	$60,$66,$38,$41
	and	$67,$71,$31
	shufb	$32,$66,$38,$42
	a	$63,$69,$70
	shufb	$18,$66,$38,$39
	or	$64,$67,$68
	shufb	$10,$66,$38,$40
	xor	$62,$65,$21
	a	$5,$63,$64
	xor	$57,$58,$27
	lnop
	xor	$17,$61,$62
	rotqbii	$33,$5,5
	roti	$7,$58,30	# 1e
	a	$35,$59,$60
	xor	$36,$57,$31
	xor	$34,$17,$37
	a	$4,$35,$36
	xor	$28,$5,$7
	a	$22,$4,$33
	roti	$30,$34,1
	roti	$70,$5,30	# 1e
	rotqbii	$25,$22,5
	a	$3,$31,$32
	xor	$26,$28,$27
	roti	$60,$22,30	# 1e
	shufb	$23,$29,$30,$43
	a	$24,$3,$26
	xor	$2,$22,$70
	a	$12,$24,$25
	a	$19,$27,$18
	xor	$8,$2,$7
	rotqbii	$9,$12,5
	xor	$20,$17,$23
	a	$6,$19,$8
	roti	$17,$20,1
	a	$69,$6,$9
	xor	$79,$12,$60
	lnop
	roti	$36,$12,30	# 1e
	rotqbii	$75,$69,5
	a	$11,$17,$52
	rotqbyi	$67,$17,4
	a	$76,$7,$10
	shufb	$10,$29,$17,$44
	xor	$77,$79,$70
	shufb	$71,$11,$38,$41
	xor	$73,$78,$29
	shufb	$61,$11,$38,$42
	a	$74,$76,$77
	shufb	$37,$11,$38,$39
	xor	$68,$69,$36
	shufb	$24,$11,$38,$40
	a	$59,$74,$75
	xor	$30,$72,$73
	roti	$23,$69,30	# 1e
	rotqbii	$63,$59,5
	a	$65,$70,$71
	hbra	label_872c,label_7950
	xor	$66,$68,$60
	xor	$64,$30,$67
	a	$62,$65,$66
	xor	$57,$59,$23
	a	$5,$62,$63
	roti	$58,$64,1
	roti	$7,$59,30	# 1e
	rotqbii	$33,$5,5
	a	$34,$60,$61
	xor	$35,$57,$36
	roti	$72,$5,30	# 1e
	shufb	$31,$17,$58,$43
	a	$32,$34,$35
	xor	$28,$5,$7
	a	$4,$32,$33
	a	$26,$36,$37
	xor	$27,$28,$23
	rotqbii	$25,$4,5
	xor	$18,$30,$31
	a	$3,$26,$27
	roti	$30,$18,1
	a	$16,$3,$25
	xor	$22,$4,$72
	lnop
	roti	$67,$4,30	# 1e
	rotqbii	$8,$16,5
	a	$19,$30,$52
	rotqbyi	$79,$30,4
	a	$20,$23,$24
	lnop
	xor	$2,$22,$7
	shufb	$12,$19,$38,$41
	xor	$15,$21,$17
	shufb	$73,$19,$38,$42
	a	$6,$20,$2
	shufb	$68,$19,$38,$39
	xor	$9,$16,$67
	shufb	$34,$19,$38,$40
	a	$71,$6,$8
	xor	$61,$13,$15
	roti	$33,$16,30	# 1e
	rotqbii	$75,$71,5
	a	$77,$7,$12
	xor	$78,$9,$72
	xor	$76,$61,$79
	a	$74,$77,$78
	xor	$69,$71,$33
	a	$60,$74,$75
	roti	$70,$76,1
	lnop
	roti	$22,$71,30	# 1e
	rotqbii	$64,$60,5
	a	$65,$72,$73
	xor	$66,$69,$67
	roti	$7,$60,30	# 1e
	shufb	$62,$30,$70,$43
	a	$63,$65,$66
	xor	$59,$60,$22
	a	$32,$63,$64
	a	$37,$67,$68
	xor	$58,$61,$62
	rotqbii	$36,$32,5
	xor	$57,$59,$33
	roti	$13,$58,1
	a	$35,$37,$57
	xor	$31,$32,$7
	a	$4,$35,$36
	lnop
	a	$11,$13,$52
	rotqbyi	$20,$13,4
	roti	$5,$32,30	# 1e
	rotqbii	$26,$4,5
	a	$27,$33,$34
	shufb	$23,$11,$38,$41
	xor	$28,$31,$22
	shufb	$15,$11,$38,$42
	xor	$24,$29,$30
	shufb	$16,$11,$38,$39
	a	$25,$27,$28
	shufb	$68,$11,$38,$40
	xor	$21,$4,$5
	a	$3,$25,$26
	xor	$76,$10,$24
	lnop
	a	$18,$22,$23
	rotqbii	$14,$3,5
	roti	$67,$4,30	# 1e
	xor	$19,$21,$7
	xor	$17,$76,$20
	a	$6,$18,$19
	roti	$8,$17,1
	a	$75,$6,$14
	xor	$12,$3,$67
	lnop
	a	$9,$7,$15
	rotqbii	$79,$75,5
	roti	$37,$3,30	# 1e
	shufb	$77,$13,$8,$43
	xor	$2,$12,$5
	a	$71,$5,$16
	a	$78,$9,$2
	xor	$74,$75,$37
	a	$65,$78,$79
	roti	$32,$75,30	# 1e
	xor	$73,$76,$77
	rotqbii	$70,$65,5
	xor	$72,$74,$67
	roti	$66,$73,1
	a	$69,$71,$72
	xor	$64,$65,$32
	a	$61,$69,$70
	a	$60,$66,$52
	roti	$26,$65,30	# 1e
	rotqbii	$59,$61,5
	a	$62,$67,$68
	shufb	$57,$60,$38,$41
	xor	$63,$64,$37
	shufb	$33,$60,$38,$42
	roti	$18,$61,30	# 1e
	shufb	$27,$60,$38,$39
	a	$58,$62,$63
	shufb	$19,$60,$38,$40
	xor	$36,$61,$26
	a	$29,$58,$59
	a	$34,$37,$57
	lnop
	xor	$35,$36,$32
	rotqbii	$31,$29,5
	xor	$28,$29,$18
	a	$30,$34,$35
	roti	$4,$29,30	# 1e
	a	$21,$30,$31
	a	$24,$32,$33
	lnop
	xor	$25,$28,$26
	rotqbii	$23,$21,5
	xor	$20,$21,$4
	a	$22,$24,$25
	roti	$3,$21,30	# 1e
	a	$12,$22,$23
	a	$16,$26,$27
	lnop
	xor	$17,$20,$18
	rotqbii	$15,$12,5
	xor	$13,$12,$3
	a	$14,$16,$17
	a	$11,$18,$19
	a	$7,$14,$15
	xor	$10,$13,$4
	lnop
	roti	$6,$12,30	# 1e
	rotqbii	$5,$7,5
	a	$9,$11,$10
	a	$48,$7,$48
	a	$49,$3,$49
	a	$8,$9,$5
	a	$47,$6,$47
	a	$46,$8,$46
	a	$50,$4,$50
label_872c:
	brnz	$51,label_7950	# 7950
label_8730:
	il	$3,0
	hbr	label_874c,$0
	stqd	$50,64($56)	# 40
	stqd	$46,0($56)
	stqd	$48,16($56)
	stqd	$47,32($56)	# 20
	stqd	$49,48($56)	# 30
label_874c:
	bi	$0
.global func_8750
func_8750:
	hbra	label_87ac,func_d3b0
	hbra	label_87d4,func_8870
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$6,0
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$82,-48($1)
	ori	$3,$6,0
	stqd	$83,-64($1)
	ori	$82,$4,0
	stqd	$84,-80($1)
	ori	$83,$5,0
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$0,16($1)
	stqd	$1,-384($1)
	ai	$1,$1,-384
	ai	$84,$1,96	# 60
	ai	$85,$1,128	# 80
	ai	$86,$1,64	# 40
	ai	$87,$1,160	# a0
label_87ac:
	brsl	$0,func_d3b0	# d3b0
	il	$2,-1
	shlqbyi	$5,$84,0
	ori	$6,$85,0
	shlqbyi	$7,$80,0
	nop	$127
	brz	$3,label_8820	# 8820
	ai	$3,$1,32	# 20
	shlqbyi	$4,$86,0
	nop	$127
label_87d4:
	brsl	$0,func_8870	# 8870
	ori	$4,$80,0
	shlqbyi	$3,$87,0
	nop	$127
	brsl	$0,func_8908	# 8908
	ori	$3,$81,0
	hbra	label_8814,func_8968
	ori	$4,$82,0
	shlqbyi	$5,$83,0
	ori	$7,$86,0
	shlqbyi	$8,$84,0
	ai	$6,$1,32	# 20
	shlqbyi	$9,$85,0
	ori	$10,$87,0
	nop	$127
	nop	$127
label_8814:
	brsl	$0,func_8968	# 8968
	ori	$2,$3,0
	lnop
label_8820:
	ai	$1,$1,384	# 180
	shlqbyi	$3,$2,0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_886c,$0
	lqd	$85,-96($1)
	nop	$127
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_886c:
	bi	$0
.global func_8870
func_8870:
	il	$10,121	# 79
	hbra	label_88b8,func_d3c0
	mpyui	$8,$7,121	# 79
	stqd	$81,-32($1)
	mpyh	$9,$7,$10
	shlqbyi	$81,$4,0
	ila	$2,143168	# 22f40
	stqd	$80,-16($1)
	stqd	$0,16($1)
	stqd	$82,-48($1)
	ori	$82,$5,0
	stqd	$83,-64($1)
	ori	$83,$6,0
	stqd	$1,-96($1)
	ai	$1,$1,-96
	a	$4,$9,$8
	a	$80,$4,$2
	ori	$4,$80,0
label_88b8:
	brsl	$0,func_d3c0	# d3c0
	ori	$3,$81,0
	ai	$4,$80,20	# 14
	brsl	$0,func_d3c0	# d3c0
	ori	$3,$82,0
	lnop
	ai	$4,$80,40	# 28
	brsl	$0,func_d3c0	# d3c0
	ori	$3,$83,0
	lnop
	ai	$4,$80,60	# 3c
	brsl	$0,func_d440	# d440
	ai	$1,$1,96	# 60
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	nop	$127
	bi	$0
.global func_8908
func_8908:
	il	$7,121	# 79
	hbra	label_8940,func_d3c0
	mpyui	$5,$4,121	# 79
	stqd	$80,-16($1)
	mpyh	$6,$4,$7
	stqd	$0,16($1)
	ila	$2,143168	# 22f40
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	a	$4,$6,$5
	a	$80,$4,$2
	ai	$4,$80,81	# 51
label_8940:
	brsl	$0,func_d3c0	# d3c0
	ai	$3,$81,32	# 20
	ai	$4,$80,101	# 65
	brsl	$0,func_d3c0	# d3c0
	ai	$1,$1,64	# 40
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	nop	$127
	bi	$0
.global func_8968
func_8968:
	il	$2,-784
	hbra	label_89e4,func_d0d8
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$82,-48($1)
	ori	$4,$80,0
	stqd	$83,-64($1)
	ori	$82,$5,0
	stqd	$87,-128($1)
	ori	$87,$6,0
	stqd	$88,-144($1)
	ori	$88,$9,0
	stqd	$89,-160($1)
	stqd	$90,-176($1)
	stqd	$91,-192($1)
	ori	$91,$7,0
	lnop
	nop	$127
	stqd	$92,-208($1)
	ori	$92,$10,0
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$1,-784($1)
	a	$1,$1,$2
	ai	$90,$1,64	# 40
	lnop
	ori	$3,$90,0
label_89e4:
	brsl	$0,func_d0d8	# d0d8
	ai	$4,$80,21	# 15
	ai	$83,$1,96	# 60
	ori	$3,$83,0
	brsl	$0,func_d0d8	# d0d8
	ori	$4,$81,0
	fsmbi	$81,65535	# ffff
	ai	$3,$1,32	# 20
	brsl	$0,func_cf18	# cf18
	ori	$4,$82,0
	ai	$89,$1,256	# 100
	ori	$3,$89,0
	brsl	$0,func_cf18	# cf18
	ai	$4,$82,20	# 14
	ai	$80,$1,288	# 120
	ori	$3,$80,0
	brsl	$0,func_cf18	# cf18
	ori	$3,$87,0
	lnop
	il	$4,2
	brsl	$0,func_9cd8	# 9cd8
	ceqi	$3,$3,1
	brnz	$3,label_8bb8	# 8bb8
	ori	$3,$89,0
	shlqbyi	$4,$89,0
	ori	$5,$87,0
	brsl	$0,func_a2d8	# a2d8
	ori	$3,$80,0
	shlqbyi	$4,$80,0
	ori	$5,$87,0
	brsl	$0,func_a2d8	# a2d8
	ori	$3,$90,0
	shlqbyi	$4,$88,0
	brsl	$0,func_d340	# d340
	brz	$3,label_8bb8	# 8bb8
	ori	$3,$83,0
	shlqbyi	$4,$88,0
	brsl	$0,func_d340	# d340
	brz	$3,label_8bb8	# 8bb8
	ai	$84,$1,128	# 80
	shlqbyi	$4,$83,0
	ori	$5,$88,0
	lnop
	ori	$3,$84,0
	brsl	$0,func_c320	# c320
	ori	$5,$88,0
	ai	$3,$1,32	# 20
	ori	$4,$3,0
	brsl	$0,func_a2d8	# a2d8
	ori	$5,$84,0
	ori	$6,$88,0
	ai	$81,$1,160	# a0
	ai	$4,$1,32	# 20
	ori	$3,$81,0
	brsl	$0,func_cc48	# cc48
	ori	$4,$81,0
	ai	$86,$1,192	# c0
	ori	$3,$86,0
	brsl	$0,func_d2a8	# d2a8
	ori	$3,$81,0
	shlqbyi	$4,$90,0
	ori	$6,$88,0
	shlqbyi	$5,$84,0
	brsl	$0,func_cc48	# cc48
	ori	$4,$81,0
	ai	$85,$1,224	# e0
	lnop
	ori	$3,$85,0
	brsl	$0,func_d2a8	# d2a8
	lqd	$5,0($87)
	ai	$80,$1,384	# 180
	ai	$83,$1,352	# 160
	ai	$82,$1,480	# 1e0
	rotqbyi	$3,$5,12
	brsl	$0,func_c430	# c430
	ori	$4,$91,0
	shlqbyi	$5,$87,0
	ori	$84,$3,0
	shlqbyi	$3,$83,0
	nop	$127
	brsl	$0,func_ca18	# ca18
	ori	$4,$92,0
	shlqbyi	$3,$80,0
	ori	$5,$87,0
	brsl	$0,func_8f58	# 8f58
	ori	$3,$82,0
	shlqbyi	$4,$89,0
	ori	$5,$87,0
	brsl	$0,func_8f58	# 8f58
	ori	$3,$80,0
	hbra	label_8b74,func_9a50
	ori	$7,$85,0
	shlqbyi	$8,$83,0
	ori	$9,$87,0
	shlqbyi	$10,$84,0
	ori	$4,$80,0
	shlqbyi	$5,$82,0
	ori	$6,$86,0
	nop	$127
	nop	$127
label_8b74:
	brsl	$0,func_9a50	# 9a50
	ori	$6,$84,0
	shlqbyi	$3,$89,0
	ori	$4,$80,0
	shlqbyi	$5,$87,0
	nop	$127
	brsl	$0,func_9058	# 9058
	ori	$3,$81,0
	shlqbyi	$4,$89,0
	ori	$5,$88,0
	brsl	$0,func_a2d8	# a2d8
	ori	$3,$81,0
	shlqbyi	$4,$90,0
	il	$5,2
	brsl	$0,func_9e20	# 9e20
	ceqi	$4,$3,0
	nor	$81,$4,$4
label_8bb8:
	il	$6,784	# 310
	shlqbyi	$3,$81,0
	a	$1,$1,$6
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_8c04,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
	nop	$127
label_8c04:
	bi	$0
.global func_8c08
func_8c08:
	hbra	label_8c54,func_cf18
	stqd	$0,16($1)
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$6,0
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	ori	$85,$3,0
	stqd	$86,-112($1)
	ori	$86,$4,0
	stqd	$87,-128($1)
	ori	$4,$6,0
	stqd	$1,-384($1)
	ai	$1,$1,-384
	shlqbyi	$87,$5,0
	ai	$3,$1,32	# 20
label_8c54:
	brsl	$0,func_cf18	# cf18
	ai	$4,$80,20	# 14
	ai	$84,$1,64	# 40
	ori	$3,$84,0
	brsl	$0,func_cf18	# cf18
	ai	$4,$80,40	# 28
	ai	$83,$1,96	# 60
	ori	$3,$83,0
	brsl	$0,func_cf18	# cf18
	ai	$4,$80,60	# 3c
	ai	$82,$1,128	# 80
	ori	$3,$82,0
	brsl	$0,func_d0d8	# d0d8
	ai	$4,$80,81	# 51
	ai	$81,$1,160	# a0
	ori	$3,$81,0
	brsl	$0,func_cf18	# cf18
	ai	$4,$80,101	# 65
	lnop
	ai	$3,$1,192	# c0
	brsl	$0,func_cf18	# cf18
	ori	$3,$85,0
	hbra	label_8cd4,func_8968
	ori	$4,$86,0
	shlqbyi	$5,$87,0
	ori	$7,$84,0
	shlqbyi	$8,$83,0
	ori	$9,$82,0
	shlqbyi	$10,$81,0
	ai	$6,$1,32	# 20
	nop	$127
	nop	$127
label_8cd4:
	brsl	$0,func_8968	# 8968
	ai	$1,$1,384	# 180
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_8d1c,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_8d1c:
	bi	$0
.global func_8d20
func_8d20:
	rotmai	$13,$4,-31
	hbr	label_8d5c,$0
	il	$5,1
	rotmi	$12,$13,-27
	a	$11,$4,$12
	rotmai	$10,$11,-5
	shli	$9,$10,2
	shli	$8,$10,5
	a	$2,$9,$3
	lqx	$7,$9,$3
	sf	$4,$8,$4
	shl	$3,$5,$4
	rotqby	$6,$7,$2
	and	$3,$6,$3
	nop	$127
label_8d5c:
	bi	$0
.global func_8d60
func_8d60:
	ai	$4,$4,-1
	shlqbyi	$6,$3,0
	il	$7,1
	cgti	$2,$4,0
	shli	$5,$4,2
	brz	$2,label_8db0	# 8db0
label_8d78:
	shli	$5,$4,2
	hbra	label_8da4,label_8d78
	nop	$127
	nop	$127
	a	$3,$5,$6
	lqx	$9,$5,$6
	rotqby	$8,$9,$3
	brnz	$8,label_8db0	# 8db0
	ai	$4,$4,-1
	cgti	$5,$4,0
	nop	$127
label_8da4:
	brnz	$5,label_8d78	# 8d78
	shli	$5,$4,2
	lnop
label_8db0:
	a	$10,$5,$6
	hbra	label_8ddc,label_8df0
	shli	$4,$4,5
	lqx	$11,$5,$6
	il	$5,31	# 1f
	lnop
	nop	$127
	nop	$127
	rotqby	$3,$11,$10
	nop	$127
	nop	$127
label_8ddc:
	br	label_8df0	# 8df0
label_8de0:
	ai	$5,$5,-1
	cgti	$13,$5,-1
	nop	$127
	brz	$13,label_8e10	# 8e10
label_8df0:
	shl	$12,$7,$5
	and	$6,$12,$3
	nop	$127
	brz	$6,label_8de0	# 8de0
	a	$7,$4,$5
	cgti	$4,$5,-1
	ai	$2,$7,1
	brnz	$4,label_8e18	# 8e18
label_8e10:
	il	$2,0
	lnop
label_8e18:
	ori	$3,$2,0
	bi	$0
	il	$4,2
	hbra	label_8e40,func_9d40
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
label_8e40:
	brsl	$0,func_9d40	# 9d40
	il	$4,2
	ceqi	$2,$3,1
	ai	$3,$80,32	# 20
	nop	$127
	brnz	$2,label_8e60	# 8e60
label_8e58:
	il	$2,0
	br	label_8e88	# 8e88
label_8e60:
	brsl	$0,func_9d40	# 9d40
	il	$4,2
	ceqi	$5,$3,1
	ai	$3,$80,64	# 40
	nop	$127
	brz	$5,label_8e58	# 8e58
	brsl	$0,func_9cd8	# 9cd8
	il	$2,1
	ceqi	$3,$3,1
	brz	$3,label_8e58	# 8e58
label_8e88:
	ai	$1,$1,48	# 30
	shlqbyi	$3,$2,0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	nop	$127
	bi	$0
.global func_8ea0
func_8ea0:
	il	$4,1
	hbra	label_8ec4,func_9c90
	il	$5,2
	stqd	$0,16($1)
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
label_8ec4:
	brsl	$0,func_9c90	# 9c90
	ai	$3,$80,32	# 20
	il	$4,1
	il	$5,2
	brsl	$0,func_9c90	# 9c90
	ai	$3,$80,64	# 40
	lnop
	il	$4,2
	brsl	$0,func_9c58	# 9c58
	ai	$1,$1,48	# 30
	lqd	$0,16($1)
	lqd	$80,-16($1)
	bi	$0
.global func_8ef8
func_8ef8:
	il	$5,2
	hbra	label_8f1c,func_9de0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
label_8f1c:
	brsl	$0,func_9de0	# 9de0
	ai	$3,$80,32	# 20
	ai	$4,$81,32	# 20
	il	$5,2
	brsl	$0,func_9de0	# 9de0
	ai	$3,$80,64	# 40
	ai	$4,$81,64	# 40
	il	$5,2
	brsl	$0,func_9de0	# 9de0
	ai	$1,$1,64	# 40
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	nop	$127
	bi	$0
.global func_8f58
func_8f58:
	hbra	label_8f94,func_9c58
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	il	$4,2
	stqd	$82,-48($1)
	ori	$81,$5,0
	stqd	$83,-64($1)
	ori	$82,$3,0
	stqd	$0,16($1)
	ai	$83,$80,32	# 20
	stqd	$1,-128($1)
	ai	$1,$1,-128
	ai	$3,$1,32	# 20
	nop	$127
label_8f94:
	brsl	$0,func_9c58	# 9c58
	il	$4,2
	shlqbyi	$3,$80,0
	brsl	$0,func_9cd8	# 9cd8
	il	$4,2
	nop	$127
	brnz	$3,label_8ff8	# 8ff8
label_8fb0:
	ori	$4,$80,0
	shlqbyi	$3,$82,0
	ori	$5,$81,0
	brsl	$0,func_ca18	# ca18
	ori	$4,$83,0
	shlqbyi	$5,$81,0
	ai	$3,$82,32	# 20
	brsl	$0,func_ca18	# ca18
	il	$4,1
	il	$5,2
	ai	$3,$1,32	# 20
	brsl	$0,func_9c90	# 9c90
	ai	$3,$82,64	# 40
	shlqbyi	$5,$81,0
	ai	$4,$1,32	# 20
	brsl	$0,func_ca18	# ca18
	nop	$127
	br	label_9038	# 9038
label_8ff8:
	ori	$3,$83,0
	brsl	$0,func_9cd8	# 9cd8
	il	$4,1
	il	$5,2
	nop	$127
	brz	$3,label_8fb0	# 8fb0
	ori	$3,$82,0
	brsl	$0,func_9c90	# 9c90
	ai	$3,$82,32	# 20
	il	$4,1
	il	$5,2
	brsl	$0,func_9c90	# 9c90
	ai	$3,$82,64	# 40
	lnop
	il	$4,2
	brsl	$0,func_9c58	# 9c58
label_9038:
	ai	$1,$1,128	# 80
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	nop	$127
	bi	$0
.global func_9058
func_9058:
	hbra	label_90ac,func_9c90
	stqd	$0,16($1)
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$81,-32($1)
	il	$5,2
	stqd	$82,-48($1)
	ori	$81,$6,0
	stqd	$83,-64($1)
	ori	$82,$3,0
	stqd	$84,-80($1)
	ori	$83,$4,0
	stqd	$85,-96($1)
	il	$4,0
	stqd	$1,-192($1)
	ai	$1,$1,-192
	ai	$84,$82,32	# 20
	ai	$85,$1,64	# 40
	ai	$3,$1,32	# 20
	nop	$127
label_90ac:
	brsl	$0,func_9c90	# 9c90
	il	$5,2
	shlqbyi	$3,$85,0
	il	$4,0
	brsl	$0,func_9c90	# 9c90
	il	$4,2
	shlqbyi	$3,$83,0
	brsl	$0,func_9d40	# 9d40
	il	$4,2
	ceqi	$2,$3,1
	ai	$3,$83,32	# 20
	nop	$127
	brnz	$2,label_91c8	# 91c8
label_90e0:
	ori	$6,$81,0
	shlqbyi	$5,$80,0
	ai	$4,$83,64	# 40
	lnop
	ai	$3,$1,32	# 20
	brsl	$0,func_c838	# c838
	ori	$5,$80,0
	ai	$3,$1,32	# 20
	ori	$4,$3,0
	brsl	$0,func_c320	# c320
	ori	$5,$80,0
	ai	$3,$1,32	# 20
	ori	$4,$3,0
	brsl	$0,func_ca18	# ca18
	ori	$3,$85,0
	lnop
	ori	$6,$80,0
	shlqbyi	$7,$81,0
	ai	$4,$1,32	# 20
	lnop
	ori	$5,$4,0
	brsl	$0,func_c500	# c500
	ori	$7,$81,0
	shlqbyi	$3,$82,0
	ori	$4,$83,0
	shlqbyi	$5,$85,0
	ori	$6,$80,0
	brsl	$0,func_c500	# c500
	ori	$3,$82,0
	shlqbyi	$4,$82,0
	ori	$5,$80,0
	shlqbyi	$6,$81,0
	nop	$127
	brsl	$0,func_c838	# c838
	ori	$3,$85,0
	shlqbyi	$4,$85,0
	ori	$6,$80,0
	shlqbyi	$7,$81,0
	ai	$5,$1,32	# 20
	brsl	$0,func_c500	# c500
	ai	$4,$83,32	# 20
	shlqbyi	$5,$85,0
	ori	$3,$84,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$3,$84,0
	shlqbyi	$4,$84,0
	ori	$5,$80,0
	shlqbyi	$6,$81,0
	brsl	$0,func_c838	# c838
	ai	$3,$82,64	# 40
	il	$4,1
	lnop
	il	$5,2
	brsl	$0,func_9c90	# 9c90
	nop	$127
	br	label_9208	# 9208
label_91c8:
	brsl	$0,func_9d40	# 9d40
	il	$4,2
	ceqi	$5,$3,1
	ai	$3,$83,64	# 40
	nop	$127
	brz	$5,label_90e0	# 90e0
	brsl	$0,func_9cd8	# 9cd8
	il	$4,2
	ceqi	$6,$3,1
	shlqbyi	$3,$82,0
	nop	$127
	brz	$6,label_90e0	# 90e0
	brsl	$0,func_9c58	# 9c58
	ori	$3,$84,0
	il	$4,2
	brsl	$0,func_9c58	# 9c58
label_9208:
	ai	$1,$1,192	# c0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	nop	$127
	bi	$0
.global func_9230
func_9230:
	hbra	label_9294,func_9c58
	stqd	$0,16($1)
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	nop	$127
	stqd	$84,-80($1)
	ori	$84,$6,0
	stqd	$85,-96($1)
	ori	$85,$3,0
	stqd	$86,-112($1)
	nop	$127
	stqd	$87,-128($1)
	ai	$86,$85,32	# 20
	stqd	$88,-144($1)
	ori	$88,$4,0
	lnop
	il	$4,2
	stqd	$1,-304($1)
	ai	$1,$1,-304
	ai	$81,$85,64	# 40
	ai	$3,$1,32	# 20
label_9294:
	brsl	$0,func_9c58	# 9c58
	il	$4,2
	ai	$82,$1,64	# 40
	ori	$3,$82,0
	brsl	$0,func_9c58	# 9c58
	il	$4,2
	ai	$83,$1,96	# 60
	ori	$3,$83,0
	brsl	$0,func_9c58	# 9c58
	il	$4,2
	ai	$87,$1,128	# 80
	ori	$3,$87,0
	brsl	$0,func_9c58	# 9c58
	ori	$3,$85,0
	lnop
	il	$4,2
	brsl	$0,func_9d40	# 9d40
	ceqi	$3,$3,1
	brnz	$3,label_9530	# 9530
label_92e0:
	ori	$4,$85,0
	hbra	label_930c,func_c500
	ori	$5,$85,0
	shlqbyi	$6,$80,0
	ori	$7,$84,0
	lnop
	ai	$3,$1,32	# 20
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_930c:
	brsl	$0,func_c500	# c500
	ori	$3,$82,0
	shlqbyi	$4,$81,0
	ori	$5,$81,0
	shlqbyi	$6,$80,0
	ori	$7,$84,0
	brsl	$0,func_c500	# c500
	ori	$7,$84,0
	shlqbyi	$3,$82,0
	ori	$4,$82,0
	shlqbyi	$5,$82,0
	ori	$6,$80,0
	brsl	$0,func_c500	# c500
	ori	$3,$83,0
	shlqbyi	$6,$80,0
	ai	$4,$1,32	# 20
	lnop
	ori	$5,$4,0
	brsl	$0,func_a458	# a458
	ori	$5,$83,0
	shlqbyi	$6,$80,0
	ai	$3,$1,32	# 20
	lnop
	ori	$4,$3,0
	brsl	$0,func_a458	# a458
	ori	$3,$82,0
	shlqbyi	$4,$88,0
	ori	$7,$84,0
	shlqbyi	$5,$82,0
	ori	$6,$80,0
	brsl	$0,func_c500	# c500
	ori	$5,$82,0
	shlqbyi	$6,$80,0
	ai	$3,$1,32	# 20
	lnop
	ori	$4,$3,0
	brsl	$0,func_a458	# a458
	ori	$3,$81,0
	shlqbyi	$4,$86,0
	ori	$7,$84,0
	shlqbyi	$5,$81,0
	ori	$6,$80,0
	brsl	$0,func_c500	# c500
	ori	$3,$81,0
	shlqbyi	$4,$81,0
	ori	$5,$81,0
	shlqbyi	$6,$80,0
	nop	$127
	brsl	$0,func_a458	# a458
	ori	$3,$82,0
	shlqbyi	$4,$85,0
	ori	$5,$86,0
	shlqbyi	$6,$80,0
	ori	$7,$84,0
	brsl	$0,func_c500	# c500
	ori	$7,$84,0
	shlqbyi	$3,$82,0
	ori	$4,$82,0
	shlqbyi	$5,$86,0
	ori	$6,$80,0
	brsl	$0,func_c500	# c500
	ori	$3,$82,0
	shlqbyi	$4,$82,0
	il	$6,2
	lnop
	il	$5,2
	brsl	$0,func_b080	# b080
	ori	$3,$82,0
	shlqbyi	$4,$82,0
	ori	$5,$80,0
	brsl	$0,func_a2d8	# a2d8
	ori	$3,$87,0
	lnop
	ori	$7,$84,0
	shlqbyi	$6,$80,0
	ai	$4,$1,32	# 20
	lnop
	ori	$5,$4,0
	brsl	$0,func_c500	# c500
	ori	$3,$83,0
	shlqbyi	$4,$82,0
	il	$5,2
	brsl	$0,func_9de0	# 9de0
	ori	$3,$83,0
	shlqbyi	$4,$83,0
	ori	$5,$83,0
	shlqbyi	$6,$80,0
	nop	$127
	brsl	$0,func_a458	# a458
	ori	$3,$85,0
	shlqbyi	$4,$87,0
	ori	$5,$83,0
	shlqbyi	$6,$80,0
	nop	$127
	brsl	$0,func_a6f8	# a6f8
	ori	$3,$83,0
	shlqbyi	$4,$86,0
	ori	$5,$86,0
	shlqbyi	$6,$80,0
	ori	$7,$84,0
	brsl	$0,func_c500	# c500
	ori	$7,$84,0
	shlqbyi	$3,$83,0
	ori	$4,$83,0
	shlqbyi	$5,$83,0
	ori	$6,$80,0
	brsl	$0,func_c500	# c500
	ori	$3,$83,0
	shlqbyi	$4,$83,0
	il	$6,2
	lnop
	il	$5,3
	brsl	$0,func_b080	# b080
	ori	$3,$83,0
	shlqbyi	$4,$83,0
	ori	$5,$80,0
	brsl	$0,func_a2d8	# a2d8
	ori	$3,$82,0
	shlqbyi	$4,$82,0
	ori	$5,$85,0
	shlqbyi	$6,$80,0
	nop	$127
	brsl	$0,func_a6f8	# a6f8
	ori	$5,$82,0
	shlqbyi	$6,$80,0
	ori	$7,$84,0
	ai	$3,$1,32	# 20
	ori	$4,$3,0
	brsl	$0,func_c500	# c500
	ori	$3,$86,0
	shlqbyi	$5,$83,0
	ori	$6,$80,0
	lnop
	ai	$4,$1,32	# 20
	brsl	$0,func_a6f8	# a6f8
	nop	$127
	br	label_9560	# 9560
label_9530:
	ori	$3,$86,0
	lnop
	il	$4,2
	brsl	$0,func_9d40	# 9d40
	ceqi	$2,$3,1
	brz	$2,label_92e0	# 92e0
	il	$4,2
	shlqbyi	$3,$81,0
	brsl	$0,func_9cd8	# 9cd8
	ceqi	$4,$3,1
	nop	$127
	brz	$4,label_92e0	# 92e0
label_9560:
	ai	$1,$1,304	# 130
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_95a4,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	nop	$127
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_95a4:
	bi	$0
.global func_95a8
func_95a8:
	hbra	label_961c,func_9d40
	stqd	$80,-16($1)
	ori	$80,$6,0
	stqd	$81,-32($1)
	ori	$81,$7,0
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$83,-64($1)
	il	$4,2
	stqd	$85,-96($1)
	ori	$85,$3,0
	stqd	$87,-128($1)
	ai	$87,$82,64	# 40
	stqd	$88,-144($1)
	ai	$83,$85,64	# 40
	stqd	$89,-160($1)
	ai	$88,$85,32	# 20
	lnop
	ai	$89,$82,32	# 20
	stqd	$92,-208($1)
	ori	$92,$5,0
	stqd	$84,-80($1)
	stqd	$86,-112($1)
	stqd	$90,-176($1)
	stqd	$91,-192($1)
	stqd	$0,16($1)
	nop	$127
	stqd	$1,-432($1)
	ai	$1,$1,-432
label_961c:
	brsl	$0,func_9d40	# 9d40
	ceqi	$3,$3,1
	brnz	$3,label_9918	# 9918
label_9628:
	ori	$3,$82,0
	lnop
	il	$4,2
	brsl	$0,func_9d40	# 9d40
	ceqi	$5,$3,1
	brnz	$5,label_9980	# 9980
label_9640:
	ai	$86,$1,128	# 80
	hbra	label_966c,func_c500
	ai	$84,$1,160	# a0
	shlqbyi	$4,$83,0
	ori	$3,$86,0
	shlqbyi	$5,$83,0
	ori	$6,$80,0
	shlqbyi	$7,$81,0
	nop	$127
	nop	$127
	nop	$127
label_966c:
	brsl	$0,func_c500	# c500
	ori	$3,$84,0
	shlqbyi	$4,$87,0
	ori	$5,$87,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$4,$82,0
	shlqbyi	$5,$86,0
	ori	$6,$80,0
	shlqbyi	$7,$81,0
	ai	$3,$1,32	# 20
	brsl	$0,func_c500	# c500
	ori	$7,$81,0
	shlqbyi	$4,$85,0
	ori	$5,$84,0
	shlqbyi	$6,$80,0
	ai	$90,$1,64	# 40
	lnop
	ori	$3,$90,0
	brsl	$0,func_c500	# c500
	ori	$5,$90,0
	shlqbyi	$6,$80,0
	ai	$91,$1,96	# 60
	ai	$4,$1,32	# 20
	ori	$3,$91,0
	brsl	$0,func_a6f8	# a6f8
	ori	$3,$86,0
	shlqbyi	$4,$86,0
	ori	$5,$83,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$3,$84,0
	shlqbyi	$4,$84,0
	ori	$5,$87,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$3,$86,0
	shlqbyi	$4,$86,0
	ori	$5,$89,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$3,$84,0
	shlqbyi	$4,$84,0
	ori	$5,$88,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$4,$86,0
	shlqbyi	$5,$84,0
	ori	$6,$80,0
	ai	$82,$1,192	# c0
	ori	$3,$82,0
	brsl	$0,func_a6f8	# a6f8
	ori	$3,$91,0
	lnop
	il	$4,2
	brsl	$0,func_9cd8	# 9cd8
	nop	$127
	brnz	$3,label_98e8	# 98e8
	ai	$3,$1,32	# 20
	shlqbyi	$5,$90,0
	ori	$6,$80,0
	lnop
	ori	$4,$3,0
	brsl	$0,func_a458	# a458
	ori	$3,$86,0
	shlqbyi	$4,$86,0
	ori	$5,$84,0
	shlqbyi	$6,$80,0
	nop	$127
	brsl	$0,func_a458	# a458
	ori	$3,$83,0
	shlqbyi	$4,$87,0
	ori	$5,$83,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$3,$83,0
	shlqbyi	$4,$83,0
	ori	$5,$91,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$3,$90,0
	shlqbyi	$4,$82,0
	ori	$5,$82,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$3,$84,0
	shlqbyi	$4,$91,0
	ori	$5,$91,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$7,$81,0
	shlqbyi	$5,$84,0
	ori	$6,$80,0
	ai	$3,$1,32	# 20
	ori	$4,$3,0
	brsl	$0,func_c500	# c500
	ori	$3,$85,0
	shlqbyi	$4,$90,0
	ori	$6,$80,0
	lnop
	ai	$5,$1,32	# 20
	brsl	$0,func_a6f8	# a6f8
	ori	$5,$85,0
	shlqbyi	$6,$80,0
	ai	$3,$1,32	# 20
	lnop
	ori	$4,$3,0
	brsl	$0,func_a6f8	# a6f8
	ori	$5,$85,0
	shlqbyi	$6,$80,0
	ai	$3,$1,32	# 20
	lnop
	ori	$4,$3,0
	brsl	$0,func_a6f8	# a6f8
	ori	$5,$82,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	ai	$3,$1,32	# 20
	ori	$4,$3,0
	brsl	$0,func_c500	# c500
	ori	$3,$84,0
	shlqbyi	$4,$84,0
	ori	$5,$91,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$3,$86,0
	shlqbyi	$4,$86,0
	ori	$5,$84,0
	shlqbyi	$6,$80,0
	ori	$7,$81,0
	brsl	$0,func_c500	# c500
	ori	$3,$88,0
	shlqbyi	$5,$86,0
	ori	$6,$80,0
	lnop
	ai	$4,$1,32	# 20
	brsl	$0,func_a6f8	# a6f8
	ori	$3,$88,0
	brsl	$0,func_9ea8	# 9ea8
	nop	$127
	brz	$3,label_99f0	# 99f0
label_98c8:
	ori	$4,$88,0
	shlqbyi	$3,$88,0
	il	$5,1
	lnop
	il	$6,2
	brsl	$0,func_b738	# b738
	nop	$127
	br	label_9a08	# 9a08
label_98e8:
	ori	$3,$82,0
	lnop
	il	$4,2
	brsl	$0,func_9cd8	# 9cd8
	nop	$127
	brz	$3,label_99b8	# 99b8
	ori	$3,$85,0
	shlqbyi	$4,$92,0
	ori	$5,$80,0
	shlqbyi	$6,$81,0
	brsl	$0,func_9230	# 9230
	br	label_9a08	# 9a08
label_9918:
	ori	$3,$88,0
	lnop
	il	$4,2
	brsl	$0,func_9d40	# 9d40
	ceqi	$2,$3,1
	brz	$2,label_9628	# 9628
	il	$4,2
	shlqbyi	$3,$83,0
	brsl	$0,func_9cd8	# 9cd8
	ceqi	$4,$3,1
	nop	$127
	brz	$4,label_9628	# 9628
	ori	$3,$85,0
	shlqbyi	$4,$82,0
	il	$5,2
	brsl	$0,func_9de0	# 9de0
	ori	$3,$88,0
	shlqbyi	$4,$89,0
	il	$5,2
	brsl	$0,func_9de0	# 9de0
	ori	$3,$83,0
	shlqbyi	$4,$87,0
	il	$5,2
	brsl	$0,func_9de0	# 9de0
	nop	$127
	br	label_9a08	# 9a08
label_9980:
	ori	$3,$89,0
	lnop
	il	$4,2
	brsl	$0,func_9d40	# 9d40
	ceqi	$6,$3,1
	brz	$6,label_9640	# 9640
	ori	$3,$87,0
	lnop
	il	$4,2
	brsl	$0,func_9cd8	# 9cd8
	ceqi	$7,$3,1
	brz	$7,label_9640	# 9640
	nop	$127
	br	label_9a08	# 9a08
label_99b8:
	ori	$3,$85,0
	il	$4,1
	il	$5,2
	brsl	$0,func_9c90	# 9c90
	ori	$3,$88,0
	il	$4,1
	il	$5,2
	brsl	$0,func_9c90	# 9c90
	ori	$3,$83,0
	lnop
	il	$4,2
	brsl	$0,func_9c58	# 9c58
	nop	$127
	br	label_9a08	# 9a08
label_99f0:
	ori	$5,$80,0
	shlqbyi	$3,$88,0
	ori	$4,$88,0
	brsl	$0,func_9f50	# 9f50
	nop	$127
	br	label_98c8	# 98c8
label_9a08:
	ai	$1,$1,432	# 1b0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_9a4c,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
	nop	$127
label_9a4c:
	bi	$0
.global func_9a50
func_9a50:
	hbra	label_9abc,func_8ef8
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$81,$10,0
	stqd	$82,-48($1)
	ori	$82,$9,0
	stqd	$83,-64($1)
	ori	$83,$8,0
	stqd	$84,-80($1)
	ori	$84,$7,0
	stqd	$85,-96($1)
	nop	$127
	stqd	$86,-112($1)
	ori	$86,$6,0
	stqd	$87,-128($1)
	ori	$87,$5,0
	lnop
	nop	$127
	stqd	$88,-144($1)
	ori	$88,$4,0
	stqd	$89,-160($1)
	ori	$89,$3,0
	stqd	$1,-384($1)
	ai	$1,$1,-384
	lnop
	ai	$3,$1,32	# 20
label_9abc:
	brsl	$0,func_8ef8	# 8ef8
	ori	$4,$87,0
	lnop
	ori	$5,$83,0
	shlqbyi	$6,$82,0
	ori	$7,$81,0
	lnop
	ai	$3,$1,32	# 20
	brsl	$0,func_95a8	# 95a8
	ai	$85,$1,128	# 80
	lnop
	ori	$3,$85,0
	brsl	$0,func_8ea0	# 8ea0
	ori	$3,$86,0
	lnop
	il	$4,6
	brsl	$0,func_8d60	# 8d60
	il	$4,6
	lnop
	ai	$80,$3,-1
	shlqbyi	$3,$84,0
	brsl	$0,func_8d60	# 8d60
	ai	$4,$3,-1
	cgt	$2,$80,$4
	selb	$80,$4,$80,$2
	cgti	$3,$80,-1
	brnz	$3,label_9b60	# 9b60
	nop	$127
	br	label_9c00	# 9c00
label_9b30:
	ori	$3,$84,0
	brsl	$0,func_8d20	# 8d20
	ori	$4,$87,0
	lnop
	ori	$5,$83,0
	shlqbyi	$6,$82,0
	ori	$7,$81,0
	brnz	$3,label_9bb0	# 9bb0
	ai	$80,$80,-1
	cgti	$5,$80,-1
	nop	$127
	brz	$5,label_9c00	# 9c00
label_9b60:
	ori	$5,$82,0
	shlqbyi	$6,$81,0
	ori	$3,$85,0
	shlqbyi	$4,$83,0
	nop	$127
	brsl	$0,func_9230	# 9230
	ori	$4,$80,0
	shlqbyi	$3,$86,0
	brsl	$0,func_8d20	# 8d20
	ori	$4,$80,0
	nop	$127
	brz	$3,label_9b30	# 9b30
	ori	$3,$84,0
	brsl	$0,func_8d20	# 8d20
	ori	$4,$88,0
	lnop
	ori	$5,$83,0
	shlqbyi	$6,$82,0
	ori	$7,$81,0
	brnz	$3,label_9bd0	# 9bd0
label_9bb0:
	ori	$3,$85,0
	brsl	$0,func_95a8	# 95a8
label_9bb8:
	ai	$80,$80,-1
	cgti	$5,$80,-1
	nop	$127
	brnz	$5,label_9b60	# 9b60
	nop	$127
	br	label_9c00	# 9c00
label_9bd0:
	ori	$3,$85,0
	hbra	label_9bf8,func_95a8
	ai	$4,$1,32	# 20
	shlqbyi	$5,$83,0
	ori	$6,$82,0
	shlqbyi	$7,$81,0
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_9bf8:
	brsl	$0,func_95a8	# 95a8
	br	label_9bb8	# 9bb8
label_9c00:
	ori	$3,$89,0
	shlqbyi	$4,$85,0
	brsl	$0,func_8ef8	# 8ef8
	ai	$1,$1,384	# 180
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_9c54,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	nop	$127
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_9c54:
	bi	$0
.global func_9c58
func_9c58:
	cgti	$2,$4,0
	hbra	label_9c84,label_9c78
	nop	$127
	nop	$127
	nop	$127
	brz	$2,label_9c88	# 9c88
	il	$2,0
	lnop
label_9c78:
	ai	$4,$4,-1
	stqd	$2,0($3)
	ai	$3,$3,16
label_9c84:
	brnz	$4,label_9c78	# 9c78
label_9c88:
	nop	$127
	bi	$0
.global func_9c90
func_9c90:
	cgti	$2,$5,0
	hbra	label_9cbc,label_9cb0
	ori	$6,$3,0
	nop	$127
	nop	$127
	brz	$2,label_9cc0	# 9cc0
	il	$2,0
	lnop
label_9cb0:
	ai	$5,$5,-1
	stqd	$2,0($3)
	ai	$3,$3,16
label_9cbc:
	brnz	$5,label_9cb0	# 9cb0
label_9cc0:
	lqd	$7,0($6)
	cwd	$3,12($1)
	shufb	$5,$4,$7,$3
	stqd	$5,0($6)
	nop	$127
	bi	$0
.global func_9cd8
func_9cd8:
	cgti	$2,$4,0
	fsmbi	$8,0
	il	$7,0
	brz	$2,label_9d28	# 9d28
	ori	$5,$3,0
	lnop
label_9cf0:
	ai	$7,$7,1
	hbra	label_9d24,label_9cf0
	lqd	$13,0($5)
	cgt	$6,$4,$7
	ai	$5,$5,16
	clgt	$12,$8,$13
	clgti	$11,$13,0
	gb	$3,$12
	gb	$10,$11
	ceq	$9,$10,$3
	nop	$127
	brz	$9,label_9d30	# 9d30
	nop	$127
label_9d24:
	brnz	$6,label_9cf0	# 9cf0
label_9d28:
	il	$3,1
	br	label_9d38	# 9d38
label_9d30:
	il	$3,0
	lnop
label_9d38:
	nop	$127
	bi	$0
.global func_9d40
func_9d40:
	ori	$7,$4,0
	hbra	label_9d74,label_9dd8
	ori	$5,$3,0
	lqd	$11,0($3)
	il	$8,0
	lqa	$12,0x22b10
	il	$6,0
	clgt	$10,$12,$11
	clgt	$9,$11,$12
	gb	$4,$10
	gb	$2,$9
	ceq	$3,$2,$4
	nop	$127
label_9d74:
	brz	$3,label_9dd8	# 9dd8
	cgti	$13,$7,1
	il	$6,1
	nop	$127
	brz	$13,label_9dc8	# 9dc8
	ai	$4,$5,16
	lnop
label_9d90:
	ai	$6,$6,1
	hbra	label_9dc4,label_9d90
	lqd	$19,0($4)
	cgt	$5,$7,$6
	ai	$4,$4,16
	clgt	$18,$8,$19
	clgti	$17,$19,0
	gb	$16,$18
	gb	$15,$17
	ceq	$14,$15,$16
	nop	$127
	brz	$14,label_9dd0	# 9dd0
	nop	$127
label_9dc4:
	brnz	$5,label_9d90	# 9d90
label_9dc8:
	il	$6,1
	br	label_9dd8	# 9dd8
label_9dd0:
	il	$6,0
	lnop
label_9dd8:
	ori	$3,$6,0
	bi	$0
.global func_9de0
func_9de0:
	ceq	$2,$3,$4
	brnz	$2,label_9e18	# 9e18
	cgti	$6,$5,0
	hbra	label_9e14,label_9e00
	nop	$127
	brz	$6,label_9e18	# 9e18
	il	$6,0
	lnop
label_9e00:
	ai	$5,$5,-1
	lqx	$7,$6,$4
	nop	$127
	stqx	$7,$6,$3
	ai	$6,$6,16
label_9e14:
	brnz	$5,label_9e00	# 9e00
label_9e18:
	nop	$127
	bi	$0
.global func_9e20
func_9e20:
	ai	$5,$5,-1
	shlqbyi	$9,$3,0
	ori	$8,$4,0
	cgti	$2,$5,-1
	nop	$127
	brz	$2,label_9e88	# 9e88
	shli	$6,$5,4
	lnop
label_9e40:
	ai	$5,$5,-1
	hbra	label_9e84,label_9e40
	nop	$127
	lqx	$4,$6,$8
	cgti	$7,$5,-1
	lqx	$14,$6,$9
	ai	$6,$6,-16
	clgt	$13,$4,$14
	clgt	$12,$14,$4
	gb	$3,$13
	gb	$11,$12
	clgt	$10,$11,$3
	clgt	$4,$3,$11
	brnz	$10,label_9e90	# 9e90
	nop	$127
	brnz	$4,label_9e98	# 9e98
	nop	$127
label_9e84:
	brnz	$7,label_9e40	# 9e40
label_9e88:
	il	$3,0
	br	label_9ea0	# 9ea0
label_9e90:
	il	$3,1
	br	label_9ea0	# 9ea0
label_9e98:
	il	$3,-1
	lnop
label_9ea0:
	nop	$127
	bi	$0
.global func_9ea8
func_9ea8:
	hbr	label_9ec4,$0
	lqd	$5,0($3)
	rotqbyi	$4,$5,12
	andi	$2,$4,1
	ceqi	$3,$2,0
	andi	$3,$3,1
	nop	$127
label_9ec4:
	bi	$0
.global func_9ec8
func_9ec8:
	lqd	$29,0($4)
	lqd	$30,0($5)
	hbr	label_9f4c,$0
	cg	$26,$29,$30
	a	$27,$29,$30
	shlqbyi	$28,$26,4
	cg	$25,$27,$28
	a	$23,$27,$28
	a	$22,$26,$25
	shlqbyi	$24,$25,4
	cg	$21,$23,$24
	a	$19,$23,$24
	a	$16,$22,$21
	shlqbyi	$20,$21,4
	cg	$17,$19,$20
	a	$18,$19,$20
	a	$15,$16,$17
	stqd	$18,0($3)
	lqd	$13,16($4)
	lqd	$14,16($5)
	rotqmbyi	$10,$15,-12
	ori	$12,$10,0
	addx	$10,$13,$14
	cgx	$12,$13,$14
	shlqbyi	$11,$12,4
	cg	$9,$10,$11
	a	$8,$10,$11
	shlqbyi	$5,$9,4
	cg	$7,$8,$5
	a	$6,$8,$5
	shlqbyi	$4,$7,4
	a	$2,$6,$4
	stqd	$2,16($3)
label_9f4c:
	bi	$0
.global func_9f50
func_9f50:
	lqd	$23,0($4)
	lqd	$24,0($5)
	hbr	label_9fbc,$0
	cg	$20,$23,$24
	a	$21,$23,$24
	shlqbyi	$22,$20,4
	cg	$19,$21,$22
	a	$17,$21,$22
	a	$16,$20,$19
	shlqbyi	$18,$19,4
	cg	$15,$17,$18
	a	$13,$17,$18
	a	$10,$16,$15
	shlqbyi	$14,$15,4
	cg	$11,$13,$14
	a	$12,$13,$14
	a	$9,$10,$11
	stqd	$12,0($3)
	lqd	$7,16($4)
	lqd	$6,16($5)
	rotqmbyi	$5,$9,-12
	ori	$8,$5,0
	addx	$5,$7,$6
	cgx	$8,$7,$6
	shlqbyi	$4,$8,4
	a	$2,$5,$4
	stqd	$2,16($3)
label_9fbc:
	bi	$0
.global func_9fc0
func_9fc0:
	cgti	$2,$8,0
	shlqbyi	$12,$3,0
	ori	$13,$4,0
	shlqbyi	$11,$5,0
	ori	$10,$6,0
	fsmbi	$3,0
	nop	$127
	brz	$2,label_a048	# a048
	il	$9,0
	hbra	label_a044,label_9fe8
label_9fe8:
	ori	$20,$7,0
	lqx	$23,$9,$11
	ori	$21,$7,0
	lqx	$24,$9,$10
	ai	$8,$8,-1
	cgx	$20,$23,$24
	addx	$21,$23,$24
	shlqbyi	$22,$20,4
	cg	$19,$21,$22
	a	$17,$21,$22
	a	$16,$20,$19
	shlqbyi	$18,$19,4
	cg	$15,$17,$18
	a	$14,$17,$18
	a	$7,$16,$15
	shlqbyi	$4,$15,4
	cg	$3,$14,$4
	a	$6,$14,$4
	a	$5,$7,$3
	stqx	$6,$9,$12
	ai	$9,$9,16
	rotqmbyi	$3,$5,-12
	ori	$7,$3,0
label_a044:
	brnz	$8,label_9fe8	# 9fe8
label_a048:
	stqd	$3,0($13)
	bi	$0
.global func_a050
func_a050:
	ori	$17,$7,0
	lqa	$11,0x22f30
	il	$12,1
	fsmbi	$8,0
	bgx	$17,$6,$5
	hbr	label_a0bc,$0
	sfx	$7,$6,$5
	shufb	$15,$17,$12,$11
	ori	$16,$15,0
	sfx	$15,$8,$7
	bgx	$16,$8,$7
	lnop
	and	$13,$17,$16
	shufb	$2,$16,$12,$11
	ori	$14,$2,0
	sfx	$2,$8,$15
	bgx	$14,$8,$15
	shufb	$5,$14,$12,$11
	ori	$6,$5,0
	sfx	$5,$8,$2
	bgx	$6,$8,$2
	stqd	$5,0($3)
	and	$7,$14,$6
	and	$9,$13,$7
	shufb	$10,$12,$9,$11
	stqd	$10,0($4)
	nop	$127
label_a0bc:
	bi	$0
	ori	$8,$6,0
	hbr	label_a0ec,$0
	sfx	$6,$5,$4
	lnop
	bgx	$8,$5,$4
	lqa	$5,0x22f30
	il	$2,1
	fsmbi	$4,0
	shufb	$7,$8,$2,$5
	sfx	$7,$4,$6
	stqd	$7,0($3)
label_a0ec:
	bi	$0
.global func_a0f0
func_a0f0:
	il	$9,1
	stqd	$82,-48($1)
	cgti	$2,$8,0
	stqd	$83,-64($1)
	ori	$82,$6,0
	stqd	$84,-80($1)
	ori	$83,$5,0
	stqd	$85,-96($1)
	ori	$84,$3,0
	stqd	$80,-16($1)
	ori	$85,$4,0
	stqd	$81,-32($1)
	stqd	$0,16($1)
	stqd	$1,-144($1)
	ai	$1,$1,-144
	stqd	$9,32($1)	# 20
	nop	$127
	brz	$2,label_a180	# a180
	ori	$80,$8,0
	fsmbi	$81,0
label_a140:
	a	$3,$81,$84
	hbra	label_a16c,func_a050
	ai	$4,$1,32	# 20
	lqx	$5,$81,$83
	ai	$80,$80,-1
	lqx	$6,$81,$82
	ai	$81,$81,16
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_a16c:
	brsl	$0,func_a050	# a050
	nop	$127
	lqd	$9,32($1)	# 20
	ori	$7,$9,0
	brnz	$80,label_a140	# a140
label_a180:
	ai	$1,$1,144	# 90
	stqd	$9,0($85)
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	bi	$0
.global func_a1a8
func_a1a8:
	il	$7,1
	hbra	label_a1ec,func_a050
	nop	$127
	stqd	$82,-48($1)
	ori	$82,$5,0
	lqd	$5,0($4)
	stqd	$0,16($1)
	lqd	$6,0($82)
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$1,-96($1)
	ai	$1,$1,-96
	ai	$4,$1,32	# 20
	nop	$127
label_a1ec:
	brsl	$0,func_a050	# a050
	ai	$3,$81,16
	lqd	$5,16($80)
	nop	$127
	lqd	$6,16($82)
	ai	$4,$1,32	# 20
	lqd	$7,32($1)	# 20
	brsl	$0,func_a050	# a050
	ai	$1,$1,96	# 60
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	nop	$127
	bi	$0
.global func_a228
func_a228:
	hbra	label_a274,func_a050
	stqd	$81,-32($1)
	ori	$81,$5,0
	lqd	$5,0($4)
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$4,0
	lqd	$6,0($81)
	nop	$127
	stqd	$82,-48($1)
	il	$82,1
	stqd	$83,-64($1)
	ori	$83,$3,0
	stqd	$0,16($1)
	ori	$7,$82,0
	stqd	$1,-112($1)
	ai	$1,$1,-112
	ai	$4,$1,32	# 20
	nop	$127
label_a274:
	brsl	$0,func_a050	# a050
	il	$4,0
	lqd	$6,16($80)
	lqd	$8,16($81)
	lqa	$3,0x22f30
	lqd	$5,32($1)	# 20
	ai	$1,$1,112	# 70
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	ori	$7,$5,0
	sfx	$5,$8,$6
	bgx	$7,$8,$6
	hbr	label_a2d4,$0
	shufb	$2,$7,$82,$3
	lqd	$82,-48($1)
	sfx	$2,$4,$5
	nop	$127
	stqd	$2,16($83)
	lqd	$83,-64($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_a2d4:
	bi	$0
.global func_a2d8
func_a2d8:
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$85,-96($1)
	ori	$85,$3,0
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$0,16($1)
	stqd	$1,-176($1)
	ai	$1,$1,-176
	ai	$3,$1,32	# 20
	lnop
	ceq	$2,$3,$4
	shlqbyi	$6,$3,0
	nop	$127
	brnz	$2,label_a340	# a340
	il	$3,0
	il	$5,2
label_a328:
	ai	$5,$5,-1
	lqx	$7,$3,$4
	nop	$127
	stqx	$7,$3,$6
	ai	$3,$3,16
	brnz	$5,label_a328	# a328
label_a340:
	ai	$81,$1,32	# 20
	lqa	$84,0x22f30
	il	$83,1
	fsmbi	$82,0
	nop	$127
	br	label_a3b0	# a3b0
label_a358:
	nop	$127
	brnz	$7,label_a3b8	# a3b8
label_a360:
	ai	$3,$1,32	# 20
	hbra	label_a388,func_a050
	ai	$4,$1,64	# 40
	lqd	$5,32($1)	# 20
	il	$7,1
	lqd	$6,0($80)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_a388:
	brsl	$0,func_a050	# a050
	lqd	$16,16($80)
	lqd	$6,64($1)	# 40
	lqd	$15,48($1)	# 30
	ori	$14,$6,0
	sfx	$6,$16,$15
	bgx	$14,$16,$15
	shufb	$5,$14,$83,$84
	sfx	$5,$82,$6
	stqd	$5,48($1)	# 30
label_a3b0:
	il	$6,1
	il	$5,16
label_a3b8:
	ai	$6,$6,-1
	hbra	label_a3f4,label_a358
	nop	$127
	lqx	$4,$5,$80
	cgti	$7,$6,-1
	lqx	$13,$5,$81
	ai	$5,$5,-16
	clgt	$12,$4,$13
	clgt	$11,$13,$4
	gb	$10,$12
	gb	$9,$11
	clgt	$8,$9,$10
	clgt	$4,$10,$9
	brnz	$8,label_a360	# a360
	nop	$127
label_a3f4:
	brz	$4,label_a358	# a358
	ai	$18,$1,32	# 20
	lnop
	ceq	$17,$85,$18
	shlqbyi	$5,$18,0
	nop	$127
	brnz	$17,label_a430	# a430
	il	$3,0
	il	$4,2
label_a418:
	ai	$4,$4,-1
	lqx	$19,$3,$5
	nop	$127
	stqx	$19,$3,$85
	ai	$3,$3,16
	brnz	$4,label_a418	# a418
label_a430:
	ai	$1,$1,176	# b0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	nop	$127
	bi	$0
.global func_a458
func_a458:
	hbra	label_a494,func_9f50
	stqd	$80,-16($1)
	ori	$80,$6,0
	stqd	$81,-32($1)
	nop	$127
	stqd	$85,-96($1)
	ori	$85,$3,0
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$0,16($1)
	stqd	$1,-208($1)
	ai	$1,$1,-208
	ai	$3,$1,32	# 20
	nop	$127
label_a494:
	brsl	$0,func_9f50	# 9f50
	il	$3,0
	hbra	label_a4d4,label_a530
	il	$4,2
	ai	$5,$1,32	# 20
	ai	$81,$1,64	# 40
	lnop
label_a4b0:
	ai	$4,$4,-1
	lqx	$2,$3,$5
	nop	$127
	stqx	$2,$3,$81
	ai	$3,$3,16
	brnz	$4,label_a4b0	# a4b0
	il	$84,1
	lqa	$83,0x22f30
	il	$82,0
label_a4d4:
	br	label_a530	# a530
label_a4d8:
	nop	$127
	brnz	$7,label_a538	# a538
label_a4e0:
	il	$7,1
	hbra	label_a508,func_a050
	ori	$3,$81,0
	lqd	$5,64($1)	# 40
	ai	$4,$1,96	# 60
	lqd	$6,0($80)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_a508:
	brsl	$0,func_a050	# a050
	lqd	$14,16($80)
	lqd	$6,96($1)	# 60
	lqd	$13,80($1)	# 50
	ori	$7,$6,0
	sfx	$6,$14,$13
	bgx	$7,$14,$13
	shufb	$5,$7,$84,$83
	sfx	$5,$82,$6
	stqd	$5,80($1)	# 50
label_a530:
	il	$6,1
	il	$5,16
label_a538:
	ai	$6,$6,-1
	hbra	label_a574,label_a4d8
	nop	$127
	lqx	$4,$5,$80
	cgti	$7,$6,-1
	lqx	$12,$5,$81
	ai	$5,$5,-16
	clgt	$11,$4,$12
	clgt	$10,$12,$4
	gb	$3,$11
	gb	$9,$10
	clgt	$8,$9,$3
	clgt	$4,$3,$9
	brnz	$8,label_a4e0	# a4e0
	nop	$127
label_a574:
	brz	$4,label_a4d8	# a4d8
	ceq	$15,$85,$81
	brnz	$15,label_a5a0	# a5a0
	il	$3,0
	il	$4,2
label_a588:
	ai	$4,$4,-1
	lqx	$16,$3,$81
	nop	$127
	stqx	$16,$3,$85
	ai	$3,$3,16
	brnz	$4,label_a588	# a588
label_a5a0:
	ai	$1,$1,208	# d0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	nop	$127
	bi	$0
.global func_a5c8
func_a5c8:
	nop	$127
	stqd	$81,-32($1)
	ori	$81,$5,0
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$80,-16($1)
	ori	$5,$6,0
	stqd	$0,16($1)
	stqd	$1,-128($1)
	ai	$1,$1,-128
	ai	$3,$1,32	# 20
	lnop
	ceq	$2,$3,$4
	shlqbyi	$8,$3,0
	nop	$127
	brnz	$2,label_a628	# a628
	il	$3,0
	il	$7,2
label_a610:
	ai	$7,$7,-1
	lqx	$6,$3,$4
	nop	$127
	stqx	$6,$3,$8
	ai	$3,$3,16
	brnz	$7,label_a610	# a610
label_a628:
	ai	$10,$1,32	# 20
	il	$8,1
	il	$7,16
	lnop
label_a638:
	ai	$8,$8,-1
	hbra	label_a684,label_a638
	nop	$127
	lqx	$4,$7,$81
	cgti	$9,$8,-1
	lqx	$16,$7,$10
	ai	$7,$7,-16
	clgt	$15,$4,$16
	clgt	$14,$16,$4
	gb	$13,$15
	gb	$12,$14
	clgt	$11,$12,$13
	clgt	$4,$13,$12
	brnz	$11,label_a698	# a698
	nop	$127
	brnz	$4,label_a688	# a688
	nop	$127
	brz	$9,label_a698	# a698
	nop	$127
label_a684:
	br	label_a638	# a638
label_a688:
	ai	$3,$1,32	# 20
	lnop
	ori	$4,$3,0
	brsl	$0,func_9ec8	# 9ec8
label_a698:
	ai	$80,$1,64	# 40
	hbra	label_a6c4,func_a050
	ori	$3,$82,0
	lqd	$6,0($81)
	ori	$4,$80,0
	lqd	$5,32($1)	# 20
	il	$7,1
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_a6c4:
	brsl	$0,func_a050	# a050
	ai	$3,$82,16
	lqd	$6,16($81)
	ori	$4,$80,0
	lqd	$5,48($1)	# 30
	lqd	$7,64($1)	# 40
	brsl	$0,func_a050	# a050
	ai	$1,$1,128	# 80
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_a6f8
func_a6f8:
	nop	$127
	stqd	$81,-32($1)
	ori	$81,$5,0
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$80,-16($1)
	ori	$5,$6,0
	stqd	$0,16($1)
	stqd	$1,-128($1)
	ai	$1,$1,-128
	ai	$3,$1,32	# 20
	lnop
	ceq	$2,$3,$4
	shlqbyi	$8,$3,0
	nop	$127
	brnz	$2,label_a758	# a758
	il	$3,0
	il	$7,2
label_a740:
	ai	$7,$7,-1
	lqx	$6,$3,$4
	nop	$127
	stqx	$6,$3,$8
	ai	$3,$3,16
	brnz	$7,label_a740	# a740
label_a758:
	ai	$10,$1,32	# 20
	il	$8,1
	il	$7,16
	lnop
label_a768:
	ai	$8,$8,-1
	hbra	label_a7b4,label_a768
	nop	$127
	lqx	$4,$7,$81
	cgti	$9,$8,-1
	lqx	$16,$7,$10
	ai	$7,$7,-16
	clgt	$15,$4,$16
	clgt	$14,$16,$4
	gb	$13,$15
	gb	$12,$14
	clgt	$11,$12,$13
	clgt	$4,$13,$12
	brnz	$11,label_a7c8	# a7c8
	nop	$127
	brnz	$4,label_a7b8	# a7b8
	nop	$127
	brz	$9,label_a7c8	# a7c8
	nop	$127
label_a7b4:
	br	label_a768	# a768
label_a7b8:
	ai	$3,$1,32	# 20
	lnop
	ori	$4,$3,0
	brsl	$0,func_9f50	# 9f50
label_a7c8:
	il	$80,1
	hbra	label_a7f4,func_a050
	ori	$3,$82,0
	lqd	$5,32($1)	# 20
	ori	$7,$80,0
	lqd	$6,0($81)
	ai	$4,$1,64	# 40
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_a7f4:
	brsl	$0,func_a050	# a050
	nop	$127
	lqd	$18,16($81)
	il	$8,0
	lqa	$10,0x22f30
	lqd	$5,64($1)	# 40
	lqd	$17,48($1)	# 30
	ai	$1,$1,128	# 80
	lqd	$0,16($1)
	lqd	$81,-32($1)
	ori	$9,$5,0
	sfx	$5,$18,$17
	bgx	$9,$18,$17
	hbr	label_a854,$0
	shufb	$7,$9,$80,$10
	lqd	$80,-16($1)
	sfx	$7,$8,$5
	nop	$127
	stqd	$7,16($82)
	lqd	$82,-48($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_a854:
	bi	$0
.global func_a858
func_a858:
	il	$51,0
	shufb	$65,$6,$6,$9
	nop	$127
	shufb	$64,$6,$6,$8
	ori	$55,$51,0
	shlqbyi	$59,$51,0
	ori	$47,$51,0
	hbr	label_a98c,$0
	mpyu	$63,$5,$65
	mpyhhu	$62,$5,$64
	mpyhhu	$61,$5,$65
	mpyu	$57,$5,$64
	cgx	$55,$62,$63
	lnop
	addx	$59,$62,$63
	shlqbyi	$58,$61,4
	shlqbyi	$60,$55,4
	rotqmbyi	$9,$61,-12
	cgx	$47,$57,$58
	cg	$56,$59,$60
	a	$53,$59,$60
	shlqbyi	$52,$47,4
	addx	$51,$57,$58
	shlqbyi	$54,$56,4
	a	$49,$55,$56
	cg	$48,$51,$52
	cg	$50,$53,$54
	lnop
	a	$43,$53,$54
	shlqbyi	$46,$48,4
	a	$45,$51,$52
	shlqbyi	$44,$50,4
	a	$38,$49,$50
	a	$41,$47,$48
	cg	$42,$45,$46
	a	$40,$43,$44
	a	$34,$45,$46
	shlqbyi	$35,$42,4
	cg	$39,$43,$44
	shlqbyi	$36,$40,2
	a	$32,$41,$42
	rotqmbyi	$15,$40,-14
	a	$37,$38,$39
	a	$28,$34,$35
	cg	$27,$36,$7
	rotqmbyi	$31,$37,-12
	a	$29,$36,$7
	lnop
	cg	$33,$34,$35
	shlqbyi	$24,$27,4
	a	$30,$32,$33
	shlqbyi	$12,$31,2
	ori	$26,$24,0
	rotqmbyi	$13,$30,-12
	addx	$24,$28,$29
	cgx	$26,$28,$29
	a	$23,$27,$26
	shlqbyi	$25,$26,4
	cg	$22,$24,$25
	a	$20,$24,$25
	a	$19,$23,$22
	shlqbyi	$21,$22,4
	cg	$18,$20,$21
	a	$16,$20,$21
	a	$11,$19,$18
	shlqbyi	$17,$18,4
	cg	$14,$16,$17
	a	$6,$16,$17
	a	$7,$11,$14
	stqd	$6,0($3)
	rotqmbyi	$8,$7,-12
	a	$5,$15,$8
	a	$3,$5,$13
	a	$2,$3,$12
	a	$10,$2,$9
	stqd	$10,0($4)
	nop	$127
label_a98c:
	bi	$0
.global func_a990
func_a990:
	il	$10,0
	stqd	$82,-48($1)
	cgti	$2,$7,0
	stqd	$83,-64($1)
	ori	$11,$7,0
	stqd	$84,-80($1)
	ori	$83,$8,0
	stqd	$85,-96($1)
	ori	$84,$6,0
	stqd	$86,-112($1)
	ori	$85,$5,0
	stqd	$87,-128($1)
	ori	$86,$3,0
	stqd	$80,-16($1)
	ori	$87,$4,0
	stqd	$81,-32($1)
	ori	$82,$9,0
	shlqbyi	$7,$10,0
	lnop
	stqd	$0,16($1)
	stqd	$1,-176($1)
	ai	$1,$1,-176
	stqd	$10,32($1)	# 20
	brz	$2,label_aa38	# aa38
	ori	$80,$11,0
	fsmbi	$81,0
label_a9f8:
	a	$3,$81,$86
	hbra	label_aa24,func_a858
	ai	$4,$1,32	# 20
	lqx	$5,$81,$85
	ori	$6,$84,0
	shlqbyi	$8,$83,0
	ori	$9,$82,0
	ai	$80,$80,-1
	ai	$81,$81,16
	nop	$127
	nop	$127
label_aa24:
	brsl	$0,func_a858	# a858
	nop	$127
	lqd	$10,32($1)	# 20
	ori	$7,$10,0
	brnz	$80,label_a9f8	# a9f8
label_aa38:
	ai	$1,$1,176	# b0
	stqd	$10,0($87)
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_aa84,$0
	lqd	$85,-96($1)
	nop	$127
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_aa84:
	bi	$0
.global func_aa88
func_aa88:
	il	$43,0
	lqd	$27,0($4)
	nop	$127
	shufb	$25,$5,$5,$6
	ori	$14,$43,0
	shufb	$26,$5,$5,$7
	ori	$21,$43,0
	lqd	$16,16($4)
	ori	$77,$43,0
	shlqbyi	$2,$43,0
	ori	$13,$43,0
	shlqbyi	$72,$43,0
	mpyhhu	$23,$27,$25
	shlqbyi	$62,$43,0
	mpyu	$24,$27,$26
	hbr	label_ac7c,$0
	mpyhhu	$20,$27,$26
	mpyu	$18,$27,$25
	mpyhhu	$17,$16,$25
	mpyu	$12,$16,$26
	mpyhhu	$7,$16,$26
	mpyu	$54,$16,$25
	cgx	$14,$23,$24
	lnop
	addx	$21,$23,$24
	shlqbyi	$19,$20,4
	shlqbyi	$22,$14,4
	rotqmbyi	$20,$20,-12
	cgx	$13,$17,$12
	lnop
	cgx	$77,$18,$19
	shlqbyi	$55,$7,4
	cg	$15,$21,$22
	shlqbyi	$73,$13,4
	a	$4,$21,$22
	shlqbyi	$11,$77,4
	addx	$2,$18,$19
	shlqbyi	$10,$15,4
	addx	$72,$17,$12
	a	$9,$14,$15
	cg	$78,$2,$11
	cg	$6,$4,$10
	a	$75,$4,$10
	shlqbyi	$8,$78,4
	a	$79,$2,$11
	shlqbyi	$76,$6,4
	cg	$5,$72,$73
	a	$70,$9,$6
	cg	$69,$79,$8
	shlqbyi	$53,$5,4
	a	$74,$75,$76
	lnop
	a	$66,$79,$8
	shlqbyi	$67,$69,4
	a	$68,$77,$78
	shlqbyi	$61,$74,2
	cg	$71,$75,$76
	rotqmbyi	$24,$74,-14
	a	$52,$72,$73
	a	$60,$66,$67
	cg	$58,$61,$43
	a	$65,$70,$71
	a	$63,$68,$69
	shlqbyi	$49,$58,4
	cg	$64,$66,$67
	rotqmbyi	$56,$65,-12
	cgx	$62,$54,$55
	a	$59,$63,$64
	ori	$57,$49,0
	shlqbyi	$44,$62,4
	addx	$49,$60,$61
	rotqmbyi	$23,$59,-12
	cgx	$57,$60,$61
	shlqbyi	$21,$56,2
	cg	$51,$52,$53
	lnop
	a	$48,$58,$57
	shlqbyi	$50,$57,4
	addx	$43,$54,$55
	shlqbyi	$46,$51,4
	a	$45,$52,$53
	cg	$42,$43,$44
	cg	$47,$49,$50
	lnop
	a	$39,$49,$50
	shlqbyi	$36,$42,4
	a	$38,$48,$47
	shlqbyi	$40,$47,4
	a	$41,$45,$46
	a	$35,$43,$44
	shlqbyi	$16,$41,2
	cg	$37,$39,$40
	a	$32,$39,$40
	lnop
	a	$30,$38,$37
	shlqbyi	$33,$37,4
	cg	$34,$35,$36
	a	$28,$35,$36
	shlqbyi	$29,$34,4
	cg	$31,$32,$33
	a	$27,$32,$33
	a	$26,$30,$31
	a	$13,$28,$29
	stqd	$27,0($3)
	rotqmbyi	$25,$26,-12
	a	$22,$24,$25
	a	$19,$22,$23
	a	$18,$19,$21
	a	$17,$18,$20
	cg	$15,$16,$17
	a	$14,$16,$17
	shlqbyi	$11,$15,4
	ori	$12,$11,0
	addx	$11,$13,$14
	cgx	$12,$13,$14
	shlqbyi	$10,$12,4
	cg	$9,$11,$10
	a	$8,$11,$10
	shlqbyi	$5,$9,4
	cg	$7,$8,$5
	a	$6,$8,$5
	shlqbyi	$4,$7,4
	a	$2,$6,$4
	stqd	$2,16($3)
	nop	$127
label_ac7c:
	bi	$0
.global func_ac80
func_ac80:
	lqd	$47,0($5)
	lqd	$65,0($7)
	shufb	$23,$6,$6,$9
	shufb	$39,$6,$6,$10
	shufb	$10,$8,$8,$10
	shufb	$8,$8,$8,$9
	mpyhhu	$53,$47,$23
	lqd	$14,16($5)
	mpyu	$64,$47,$39
	lqd	$13,16($7)
	mpyhhu	$37,$47,$39
	mpyhhu	$52,$65,$8
	mpyu	$63,$65,$10
	mpyhhu	$36,$65,$10
	mpyu	$61,$47,$23
	mpyu	$12,$65,$8
	cg	$30,$53,$64
	lnop
	a	$58,$53,$64
	shlqbyi	$62,$37,4
	mpyhhu	$34,$14,$23
	shlqbyi	$59,$30,4
	cg	$78,$52,$63
	rotqmbyi	$53,$37,-12
	a	$42,$52,$63
	shlqbyi	$60,$36,4
	cg	$71,$61,$62
	shlqbyi	$57,$78,4
	cg	$33,$58,$59
	rotqmbyi	$52,$36,-12
	a	$44,$61,$62
	shlqbyi	$45,$71,4
	cg	$65,$12,$60
	shlqbyi	$49,$33,4
	cg	$79,$42,$57
	lnop
	a	$2,$12,$60
	shlqbyi	$56,$65,4
	a	$5,$58,$59
	shlqbyi	$48,$79,4
	cg	$72,$44,$45
	a	$16,$42,$57
	cg	$47,$2,$56
	shlqbyi	$54,$72,4
	cg	$74,$5,$49
	lnop
	cg	$43,$16,$48
	shlqbyi	$46,$47,4
	a	$11,$44,$45
	shlqbyi	$68,$74,4
	a	$17,$2,$56
	shlqbyi	$62,$43,4
	a	$67,$5,$49
	cg	$45,$11,$54
	a	$61,$16,$48
	lnop
	cg	$49,$17,$46
	shlqbyi	$44,$45,4
	a	$76,$67,$68
	lnop
	a	$18,$61,$62
	shlqbyi	$48,$49,4
	a	$56,$11,$54
	shlqbyi	$9,$76,2
	a	$54,$17,$46
	shlqbyi	$40,$18,2
	a	$41,$56,$44
	rotqmbyi	$17,$76,-14
	a	$55,$54,$48
	rotqmbyi	$76,$18,-14
	cg	$7,$41,$9
	hbr	label_b004,$0
	cg	$75,$55,$40
	lnop
	mpyu	$32,$14,$39
	shlqbyi	$21,$7,4
	a	$38,$41,$9
	shlqbyi	$29,$75,4
	mpyhhu	$22,$13,$8
	mpyu	$31,$13,$10
	a	$35,$55,$40
	cg	$24,$38,$21
	cg	$77,$35,$29
	lnop
	mpyhhu	$51,$13,$10
	shlqbyi	$15,$24,4
	a	$19,$38,$21
	shlqbyi	$25,$77,4
	cg	$27,$34,$32
	a	$20,$35,$29
	cg	$50,$22,$31
	shlqbyi	$60,$27,4
	mpyhhu	$6,$14,$39
	lnop
	cg	$70,$19,$15
	shlqbyi	$55,$50,4
	cg	$64,$20,$25
	shlqbyi	$10,$51,4
	a	$12,$34,$32
	shlqbyi	$50,$70,4
	a	$9,$22,$31
	shlqbyi	$32,$64,4
	mpyu	$14,$14,$23
	mpyu	$13,$13,$8
	a	$73,$30,$33
	shlqbyi	$6,$6,4
	a	$69,$7,$24
	cg	$28,$12,$60
	a	$51,$19,$15
	lnop
	a	$66,$78,$79
	shlqbyi	$79,$28,4
	a	$63,$75,$77
	cg	$26,$9,$55
	a	$31,$20,$25
	lnop
	a	$58,$73,$74
	shlqbyi	$75,$26,4
	a	$46,$71,$72
	a	$42,$69,$70
	cg	$59,$67,$68
	cg	$57,$51,$50
	a	$38,$66,$43
	a	$34,$65,$47
	a	$35,$63,$64
	cg	$39,$61,$62
	cg	$29,$31,$32
	a	$78,$12,$60
	a	$41,$58,$59
	a	$40,$42,$57
	a	$30,$46,$45
	rotqmbyi	$23,$41,-12
	cg	$33,$56,$44
	rotqmbyi	$7,$40,-12
	a	$74,$9,$55
	a	$22,$38,$39
	a	$15,$35,$29
	shlqbyi	$60,$23,2
	a	$24,$34,$49
	rotqmbyi	$8,$22,-12
	cg	$27,$54,$48
	rotqmbyi	$77,$15,-12
	cg	$21,$14,$6
	a	$25,$30,$33
	cg	$5,$78,$79
	shlqbyi	$62,$21,4
	cg	$16,$13,$10
	rotqmbyi	$72,$25,-12
	a	$11,$24,$27
	shlqbyi	$70,$5,4
	cg	$2,$74,$75
	shlqbyi	$57,$16,4
	a	$61,$14,$6
	rotqmbyi	$67,$11,-12
	a	$71,$17,$7
	shlqbyi	$65,$2,4
	a	$69,$78,$79
	shlqbyi	$55,$8,2
	a	$56,$13,$10
	a	$66,$76,$77
	a	$64,$74,$75
	cg	$73,$61,$62
	a	$59,$71,$72
	lnop
	a	$63,$69,$70
	shlqbyi	$45,$73,4
	cg	$68,$56,$57
	lnop
	a	$54,$66,$67
	shlqbyi	$38,$63,2
	a	$58,$64,$65
	shlqbyi	$42,$68,4
	a	$49,$59,$60
	lnop
	a	$48,$54,$55
	shlqbyi	$30,$58,2
	a	$44,$61,$62
	a	$39,$49,$53
	a	$41,$56,$57
	a	$33,$48,$52
	cg	$47,$44,$45
	cg	$43,$38,$39
	cg	$46,$41,$42
	shlqbyi	$37,$47,4
	cg	$40,$30,$33
	shlqbyi	$22,$43,4
	a	$36,$44,$45
	shlqbyi	$35,$46,4
	a	$34,$41,$42
	shlqbyi	$21,$40,4
	a	$28,$36,$37
	lnop
	a	$29,$38,$39
	shlqbyi	$27,$22,0
	a	$25,$34,$35
	lnop
	a	$26,$30,$33
	shlqbyi	$24,$21,0
	cgx	$27,$28,$29
	cgx	$24,$25,$26
	addx	$22,$28,$29
	shlqbyi	$23,$27,4
	addx	$21,$25,$26
	shlqbyi	$17,$24,4
	a	$19,$51,$50
	a	$20,$31,$32
	cg	$18,$22,$23
	stqd	$19,0($3)
	cg	$16,$21,$17
	stqd	$20,0($4)
	a	$14,$22,$23
	shlqbyi	$15,$18,4
	a	$12,$21,$17
	shlqbyi	$9,$16,4
	cg	$13,$14,$15
	cg	$11,$12,$9
	a	$10,$14,$15
	shlqbyi	$2,$13,4
	a	$8,$12,$9
	shlqbyi	$5,$11,4
	a	$6,$10,$2
	a	$7,$8,$5
	stqd	$6,16($3)
	stqd	$7,16($4)
	nop	$127
label_b004:
	bi	$0
.global func_b008
func_b008:
	rotmai	$12,$4,-31
	hbr	label_b03c,$0
	cgti	$13,$4,7
	ceqi	$11,$13,0
	rotmi	$10,$12,-29
	fsm	$5,$11
	a	$9,$4,$10
	rotmai	$7,$9,-3
	andi	$8,$9,-8
	sf	$4,$8,$4
	shlqby	$2,$3,$7
	selb	$3,$2,$3,$5
	shlqbi	$3,$3,$4
label_b03c:
	bi	$0
.global func_b040
func_b040:
	rotmai	$13,$4,-31
	hbr	label_b07c,$0
	cgti	$14,$4,7
	ceqi	$12,$14,0
	rotmi	$11,$13,-29
	fsm	$5,$12
	a	$10,$4,$11
	rotmai	$8,$10,-3
	andi	$9,$10,-8
	sf	$2,$4,$9
	sfi	$7,$8,0
	rotqmby	$4,$3,$7
	selb	$3,$4,$3,$5
	rotqmbi	$3,$3,$2
	nop	$127
label_b07c:
	bi	$0
.global func_b080
func_b080:
	ori	$13,$5,0
	shlqbyi	$14,$3,0
	ori	$12,$4,0
	brnz	$5,label_b0d0	# b0d0
	ceq	$2,$3,$4
	brnz	$2,label_b208	# b208
	cgti	$3,$6,0
	hbra	label_b0c4,label_b0b0
	nop	$127
	brz	$3,label_b208	# b208
	il	$3,0
	lnop
label_b0b0:
	ai	$6,$6,-1
	lqx	$4,$3,$12
	nop	$127
	stqx	$4,$3,$14
	ai	$3,$3,16
label_b0c4:
	brnz	$6,label_b0b0	# b0b0
	nop	$127
	br	label_b208	# b208
label_b0d0:
	ai	$11,$6,-1
	rotmai	$18,$5,-31
	cgti	$5,$11,0
	cgti	$16,$13,7
	nop	$127
	brz	$5,label_b168	# b168
	rotmai	$18,$13,-31
	hbra	label_b164,label_b118
	sfi	$10,$13,128	# 80
	shli	$9,$11,4
	cgti	$54,$10,7
	rotmi	$57,$18,-29
	cgti	$16,$13,7
	a	$56,$13,$57
	rotmai	$15,$56,-3
	shli	$55,$15,3
	sf	$17,$55,$13
	brnz	$54,label_b1a0	# b1a0
label_b118:
	rotmai	$30,$10,-31
	lqx	$26,$9,$12
	a	$31,$9,$12
	ceqi	$29,$16,0
	ai	$11,$11,-1
	lqd	$20,-16($31)
	rotmi	$28,$30,-29
	fsm	$25,$29
	cgti	$6,$11,0
	shlqby	$24,$26,$15
	a	$27,$10,$28
	andi	$23,$27,-8
	selb	$22,$24,$26,$25
	sf	$21,$10,$23
	shlqbi	$8,$22,$17
	rotqmbi	$19,$20,$21
	or	$7,$8,$19
	stqx	$7,$9,$14
	ai	$9,$9,-16
label_b164:
	brnz	$6,label_b118	# b118
label_b168:
	rotmi	$33,$18,-29
	hbra	label_b19c,label_b208
	ceqi	$34,$16,0
	lqd	$17,0($12)
	fsm	$15,$34
	a	$32,$13,$33
	rotmai	$16,$32,-3
	andi	$18,$32,-8
	sf	$11,$18,$13
	shlqby	$12,$17,$16
	selb	$10,$12,$17,$15
	shlqbi	$9,$10,$11
	stqd	$9,0($14)
label_b19c:
	br	label_b208	# b208
label_b1a0:
	rotmai	$52,$10,-31
	lqx	$48,$9,$12
	a	$53,$9,$12
	ceqi	$51,$16,0
	ai	$11,$11,-1
	lqd	$42,-16($53)
	rotmi	$50,$52,-29
	fsm	$47,$51
	cgti	$35,$11,0
	shlqby	$46,$48,$15
	a	$49,$10,$50
	rotmai	$44,$49,-3
	selb	$45,$46,$48,$47
	shlqbi	$37,$45,$17
	shli	$41,$44,3
	sfi	$43,$44,0
	rotqmby	$39,$42,$43
	sf	$40,$10,$41
	rotqmbi	$38,$39,$40
	or	$36,$37,$38
	nop	$127
	stqx	$36,$9,$14
	ai	$9,$9,-16
	brnz	$35,label_b1a0	# b1a0
	nop	$127
	br	label_b168	# b168
label_b208:
	nop	$127
	bi	$0
.global func_b210
func_b210:
	il	$8,-592
	stqd	$92,-208($1)
	ori	$92,$3,0
	stqd	$82,-48($1)
	a	$3,$7,$7
	stqd	$83,-64($1)
	ori	$82,$7,0
	stqd	$84,-80($1)
	cgti	$2,$3,0
	stqd	$86,-112($1)
	ori	$84,$5,0
	stqd	$93,-224($1)
	ori	$83,$6,0
	stqd	$80,-16($1)
	ori	$93,$4,0
	stqd	$81,-32($1)
	stqd	$85,-96($1)
	lnop
	stqd	$87,-128($1)
	stqd	$88,-144($1)
	stqd	$89,-160($1)
	stqd	$90,-176($1)
	stqd	$91,-192($1)
	stqd	$0,16($1)
	stqd	$1,-592($1)
	a	$1,$1,$8
	ai	$86,$1,160	# a0
	brz	$2,label_b2b0	# b2b0
	ori	$2,$3,0
	hbra	label_b2ac,label_b290
	il	$4,0
	shlqbyi	$3,$86,0
label_b290:
	ai	$2,$2,-1
	stqd	$4,0($3)
	ai	$3,$3,16
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_b2ac:
	brnz	$2,label_b290	# b290
label_b2b0:
	il	$2,0
	cgti	$90,$82,0
	ai	$91,$1,288	# 120
	stqd	$2,304($1)	# 130
	ori	$7,$2,0
	brz	$90,label_b318	# b318
	ai	$85,$1,304	# 130
	fsmbi	$81,0
	ori	$80,$82,0
	lnop
label_b2d8:
	a	$3,$81,$86
	hbra	label_b304,func_a858
	ori	$4,$85,0
	lqx	$5,$81,$84
	ori	$6,$83,0
	ilh	$8,3599	# e0f
	ilh	$9,3085	# c0d
	ai	$80,$80,-1
	ai	$81,$81,16
	nop	$127
	nop	$127
label_b304:
	brsl	$0,func_a858	# a858
	nop	$127
	lqd	$2,304($1)	# 130
	ori	$7,$2,0
	brnz	$80,label_b2d8	# b2d8
label_b318:
	shli	$89,$82,4
	stqd	$2,0($91)
	ai	$87,$1,32	# 20
	lqd	$4,288($1)	# 120
	il	$7,0
	fsmbi	$81,0
	a	$3,$89,$87
	stqd	$4,128($3)	# 80
	stqd	$7,320($1)	# 140
	brz	$90,label_b598	# b598
	ai	$85,$1,320	# 140
	fsmbi	$80,0
label_b348:
	a	$3,$80,$87
	hbra	label_b374,func_a858
	ori	$4,$85,0
	lqx	$5,$80,$84
	ori	$6,$83,0
	ilh	$8,2571	# a0b
	ilh	$9,2057	# 809
	ai	$81,$81,1
	ai	$80,$80,16
	nop	$127
	nop	$127
label_b374:
	brsl	$0,func_a858	# a858
	cgt	$5,$82,$81
	lqd	$3,320($1)	# 140
	ori	$7,$3,0
	brnz	$5,label_b348	# b348
label_b388:
	ai	$7,$89,32	# 20
	hbra	label_b3bc,func_b080
	ai	$88,$82,1
	stqd	$3,288($1)	# 120
	ai	$3,$1,32	# 20
	lqd	$9,288($1)	# 120
	il	$5,32	# 20
	shlqbyi	$6,$88,0
	ori	$4,$3,0
	fsmbi	$80,0
	il	$81,0
	stqx	$9,$7,$1
	nop	$127
label_b3bc:
	brsl	$0,func_b080	# b080
	ori	$3,$86,0
	shlqbyi	$4,$91,0
	ori	$7,$80,0
	shlqbyi	$5,$86,0
	ori	$8,$88,0
	lnop
	ai	$6,$1,32	# 20
	brsl	$0,func_9fc0	# 9fc0
	ori	$7,$80,0
	lnop
	ai	$87,$1,32	# 20
	stqd	$80,336($1)	# 150
	nop	$127
	brz	$90,label_b590	# b590
	ai	$85,$1,336	# 150
	fsmbi	$80,0
label_b400:
	a	$3,$80,$87
	hbra	label_b42c,func_a858
	ori	$4,$85,0
	lqx	$5,$80,$84
	ori	$6,$83,0
	ilh	$8,1543	# 607
	ilh	$9,1029	# 405
	ai	$81,$81,1
	ai	$80,$80,16
	nop	$127
	nop	$127
label_b42c:
	brsl	$0,func_a858	# a858
	cgt	$6,$82,$81
	lqd	$4,336($1)	# 150
	ori	$7,$4,0
	brnz	$6,label_b400	# b400
label_b440:
	ai	$3,$1,32	# 20
	hbra	label_b46c,func_b080
	ai	$10,$89,32	# 20
	stqd	$4,0($91)
	il	$5,64	# 40
	lqd	$11,288($1)	# 120
	ori	$4,$3,0
	shlqbyi	$6,$88,0
	il	$85,0
	fsmbi	$81,0
	stqx	$11,$10,$1
label_b46c:
	brsl	$0,func_b080	# b080
	ori	$3,$86,0
	shlqbyi	$4,$91,0
	ori	$7,$85,0
	shlqbyi	$5,$86,0
	ori	$8,$88,0
	lnop
	ai	$6,$1,32	# 20
	brsl	$0,func_9fc0	# 9fc0
	ori	$7,$85,0
	lnop
	ai	$87,$1,32	# 20
	stqd	$85,352($1)	# 160
	nop	$127
	brz	$90,label_b588	# b588
	ai	$85,$1,352	# 160
	fsmbi	$80,0
label_b4b0:
	a	$3,$80,$87
	hbra	label_b4dc,func_a858
	ori	$4,$85,0
	lqx	$5,$80,$84
	ori	$6,$83,0
	ilh	$8,515	# 203
	ila	$9,65537	# 10001
	ai	$81,$81,1
	ai	$80,$80,16
	nop	$127
	nop	$127
label_b4dc:
	brsl	$0,func_a858	# a858
	cgt	$12,$82,$81
	lqd	$4,352($1)	# 160
	ori	$7,$4,0
	brnz	$12,label_b4b0	# b4b0
label_b4f0:
	ai	$3,$1,32	# 20
	hbra	label_b51c,func_b080
	ai	$14,$89,32	# 20
	stqd	$4,0($91)
	il	$5,96	# 60
	lqd	$15,288($1)	# 120
	ori	$4,$3,0
	shlqbyi	$6,$88,0
	nop	$127
	nop	$127
	stqx	$15,$14,$1
label_b51c:
	brsl	$0,func_b080	# b080
	ori	$3,$86,0
	shlqbyi	$4,$91,0
	ori	$5,$86,0
	shlqbyi	$8,$88,0
	il	$7,0
	lnop
	ai	$6,$1,32	# 20
	brsl	$0,func_9fc0	# 9fc0
	ceq	$13,$92,$86
	brnz	$13,label_b5a0	# b5a0
	nop	$127
	brz	$90,label_b5a0	# b5a0
	ori	$7,$82,0
	hbra	label_b57c,label_b560
	il	$3,0
	lnop
label_b560:
	ai	$7,$7,-1
	lqx	$16,$3,$86
	nop	$127
	nop	$127
	nop	$127
	stqx	$16,$3,$92
	ai	$3,$3,16
label_b57c:
	brnz	$7,label_b560	# b560
	nop	$127
	br	label_b5a0	# b5a0
label_b588:
	lqd	$4,352($1)	# 160
	br	label_b4f0	# b4f0
label_b590:
	lqd	$4,336($1)	# 150
	br	label_b440	# b440
label_b598:
	lqd	$3,320($1)	# 140
	br	label_b388	# b388
label_b5a0:
	il	$17,592	# 250
	ai	$20,$1,32	# 20
	a	$1,$1,$17
	a	$19,$89,$20
	lqd	$0,16($1)
	lqd	$18,128($19)	# 80
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	hbr	label_b5fc,$0
	stqd	$18,0($93)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
	lqd	$93,-224($1)
	nop	$127
label_b5fc:
	bi	$0
.global func_b600
func_b600:
	il	$2,4
	hbra	label_b65c,label_b650
	nop	$127
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$82,-48($1)
	nop	$127
	stqd	$83,-64($1)
	ori	$83,$5,0
	stqd	$84,-80($1)
	ori	$84,$3,0
	stqd	$85,-96($1)
	il	$85,0
	stqd	$80,-16($1)
	stqd	$0,16($1)
	stqd	$1,-256($1)
	ai	$1,$1,-256
	ai	$82,$1,80	# 50
	ori	$3,$82,0
	lnop
label_b650:
	ai	$2,$2,-1
	stqd	$85,0($3)
	ai	$3,$3,16
label_b65c:
	brnz	$2,label_b650	# b650
	ai	$80,$1,144	# 90
	hbra	label_b684,func_b210
	ori	$3,$82,0
	hbra	label_b6a4,func_b210
	ori	$4,$80,0
	lqd	$6,0($83)
	ori	$5,$81,0
	il	$7,2
	nop	$127
label_b684:
	brsl	$0,func_b210	# b210
	ori	$5,$81,0
	lqd	$6,16($83)
	ori	$4,$80,0
	il	$7,2
	ai	$3,$1,32	# 20
	lqd	$8,144($1)	# 90
	stqd	$8,112($1)	# 70
label_b6a4:
	brsl	$0,func_b210	# b210
	ori	$4,$80,0
	hbra	label_b6d4,func_9fc0
	ori	$7,$85,0
	il	$8,3
	ai	$3,$1,96	# 60
	lqd	$9,144($1)	# 90
	ai	$6,$1,32	# 20
	ori	$5,$3,0
	nop	$127
	nop	$127
	stqd	$9,64($1)	# 40
label_b6d4:
	brsl	$0,func_9fc0	# 9fc0
	ceq	$2,$84,$82
	brnz	$2,label_b710	# b710
	il	$3,0
	hbra	label_b70c,label_b6f0
	il	$4,4
	lnop
label_b6f0:
	ai	$4,$4,-1
	lqx	$5,$3,$82
	nop	$127
	nop	$127
	nop	$127
	stqx	$5,$3,$84
	ai	$3,$3,16
label_b70c:
	brnz	$4,label_b6f0	# b6f0
label_b710:
	ai	$1,$1,256	# 100
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	nop	$127
	bi	$0
.global func_b738
func_b738:
	ori	$12,$5,0
	shlqbyi	$13,$3,0
	ori	$11,$4,0
	shlqbyi	$19,$6,0
	nop	$127
	brnz	$5,label_b790	# b790
	ceq	$2,$3,$4
	brnz	$2,label_b8d8	# b8d8
	cgti	$3,$6,0
	hbra	label_b784,label_b770
	nop	$127
	brz	$3,label_b8d8	# b8d8
	il	$3,0
	lnop
label_b770:
	ai	$6,$6,-1
	lqx	$4,$3,$11
	nop	$127
	stqx	$4,$3,$13
	ai	$3,$3,16
label_b784:
	brnz	$6,label_b770	# b770
	nop	$127
	br	label_b8d8	# b8d8
label_b790:
	ai	$16,$6,-1
	fsmbi	$14,0
	rotmai	$20,$5,-31
	cgti	$5,$16,0
	cgti	$15,$12,7
	brz	$5,label_b830	# b830
	rotmai	$20,$12,-31
	hbra	label_b82c,label_b7e0
	sfi	$10,$12,128	# 80
	fsmbi	$9,0
	cgti	$15,$12,7
	cgti	$55,$10,7
	rotmi	$59,$20,-29
	a	$58,$12,$59
	rotmai	$57,$58,-3
	shli	$56,$57,3
	sfi	$18,$57,0
	lnop
	sf	$17,$12,$56
	brnz	$55,label_b878	# b878
label_b7e0:
	rotmai	$32,$10,-31
	lqx	$28,$9,$11
	a	$33,$9,$11
	ceqi	$31,$15,0
	ai	$14,$14,1
	lqd	$22,16($33)
	rotmi	$30,$32,-29
	fsm	$27,$31
	cgt	$6,$16,$14
	rotqmby	$26,$28,$18
	a	$29,$10,$30
	andi	$25,$29,-8
	selb	$24,$26,$28,$27
	sf	$23,$25,$10
	rotqmbi	$8,$24,$17
	shlqbi	$21,$22,$23
	or	$7,$8,$21
	stqx	$7,$9,$13
	ai	$9,$9,16
label_b82c:
	brnz	$6,label_b7e0	# b7e0
label_b830:
	shli	$34,$19,4
	hbra	label_b874,label_b8d8
	rotmi	$36,$20,-29
	ceqi	$35,$15,0
	a	$20,$34,$11
	a	$19,$12,$36
	a	$9,$34,$13
	lqd	$15,-16($20)
	rotmai	$17,$19,-3
	andi	$18,$19,-8
	fsm	$14,$35
	sf	$13,$12,$18
	sfi	$16,$17,0
	rotqmby	$12,$15,$16
	selb	$11,$12,$15,$14
	rotqmbi	$10,$11,$13
	stqd	$10,-16($9)
label_b874:
	br	label_b8d8	# b8d8
label_b878:
	rotmai	$53,$10,-31
	lqx	$49,$9,$11
	a	$54,$9,$11
	ceqi	$52,$15,0
	ai	$14,$14,1
	lqd	$44,16($54)
	rotmi	$51,$53,-29
	fsm	$48,$52
	cgt	$37,$16,$14
	rotqmby	$47,$49,$18
	a	$50,$10,$51
	rotmai	$45,$50,-3
	selb	$46,$47,$49,$48
	rotqmbi	$39,$46,$17
	shli	$43,$45,3
	shlqby	$41,$44,$45
	sf	$42,$43,$10
	shlqbi	$40,$41,$42
	or	$38,$39,$40
	stqx	$38,$9,$13
	ai	$9,$9,16
	brnz	$37,label_b878	# b878
	nop	$127
	br	label_b830	# b830
label_b8d8:
	nop	$127
	bi	$0
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$83,-64($1)
	ori	$83,$3,0
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$0,16($1)
	stqd	$1,-144($1)
	ai	$1,$1,-144
	ai	$3,$1,32	# 20
	lnop
	ceq	$2,$3,$4
	shlqbyi	$6,$3,0
	nop	$127
	brnz	$2,label_b940	# b940
	il	$3,0
	il	$5,2
label_b928:
	ai	$5,$5,-1
	lqx	$7,$3,$4
	nop	$127
	stqx	$7,$3,$6
	ai	$3,$3,16
	brnz	$5,label_b928	# b928
label_b940:
	ai	$82,$1,32	# 20
	ai	$81,$1,64	# 40
	nop	$127
	br	label_b9a0	# b9a0
label_b950:
	nop	$127
	brnz	$7,label_b9a8	# b9a8
label_b958:
	il	$7,1
	hbra	label_b984,func_a050
	ai	$3,$1,32	# 20
	lqd	$5,32($1)	# 20
	ori	$4,$81,0
	lqd	$6,0($80)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_b984:
	brsl	$0,func_a050	# a050
	ori	$4,$81,0
	lqd	$6,16($80)
	ai	$3,$1,48	# 30
	lqd	$5,48($1)	# 30
	lqd	$7,64($1)	# 40
	brsl	$0,func_a050	# a050
label_b9a0:
	il	$6,1
	il	$5,16
label_b9a8:
	ai	$6,$6,-1
	hbra	label_b9e4,label_b950
	nop	$127
	lqx	$4,$5,$80
	cgti	$7,$6,-1
	lqx	$13,$5,$82
	ai	$5,$5,-16
	clgt	$12,$4,$13
	clgt	$11,$13,$4
	gb	$10,$12
	gb	$9,$11
	clgt	$8,$9,$10
	clgt	$4,$10,$9
	brnz	$8,label_b958	# b958
	nop	$127
label_b9e4:
	brz	$4,label_b950	# b950
	ai	$14,$1,32	# 20
	lnop
	ceq	$6,$83,$14
	shlqbyi	$5,$14,0
	nop	$127
	brnz	$6,label_ba20	# ba20
	il	$3,0
	il	$4,2
label_ba08:
	ai	$4,$4,-1
	lqx	$15,$3,$5
	nop	$127
	stqx	$15,$3,$83
	ai	$3,$3,16
	brnz	$4,label_ba08	# ba08
label_ba20:
	ai	$1,$1,144	# 90
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	nop	$127
	bi	$0
.global func_ba40
func_ba40:
	nop	$127
	stqd	$90,-176($1)
	ori	$90,$5,0
	stqd	$91,-192($1)
	ori	$91,$3,0
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$88,-144($1)
	stqd	$89,-160($1)
	stqd	$0,16($1)
	lnop
	stqd	$1,-432($1)
	ai	$1,$1,-432
	ai	$3,$1,32	# 20
	ceq	$2,$3,$4
	shlqbyi	$6,$3,0
	nop	$127
	brnz	$2,label_bad0	# bad0
	il	$3,0
	hbra	label_bacc,label_bab0
	il	$5,4
	lnop
label_bab0:
	ai	$5,$5,-1
	lqx	$7,$3,$4
	nop	$127
	nop	$127
	nop	$127
	stqx	$7,$3,$6
	ai	$3,$3,16
label_bacc:
	brnz	$5,label_bab0	# bab0
label_bad0:
	ai	$5,$1,128	# 80
	fsmbi	$6,0
	ai	$88,$1,96	# 60
	lnop
	ceq	$4,$5,$90
	stqd	$6,112($1)	# 70
	stqd	$6,96($1)	# 60
	brnz	$4,label_bb10	# bb10
	il	$3,0
	il	$4,2
label_baf8:
	ai	$4,$4,-1
	lqx	$8,$3,$90
	nop	$127
	stqx	$8,$3,$5
	ai	$3,$3,16
	brnz	$4,label_baf8	# baf8
label_bb10:
	ori	$3,$88,0
	shlqbyi	$4,$88,0
	il	$5,95	# 5f
	shlqbyi	$86,$88,0
	il	$6,4
	brsl	$0,func_b738	# b738
	il	$83,161	# a1
	shlqbyi	$85,$88,0
	ai	$87,$1,32	# 20
	ai	$89,$1,192	# c0
	ai	$84,$1,208	# d0
	lnop
label_bb40:
	il	$6,3
	il	$5,48	# 30
label_bb48:
	ai	$6,$6,-1
	hbra	label_bb8c,label_bb48
	nop	$127
	lqx	$14,$5,$87
	cgti	$7,$6,-1
	lqx	$15,$5,$86
	ai	$5,$5,-16
	clgt	$13,$15,$14
	clgt	$12,$14,$15
	gb	$11,$13
	gb	$10,$12
	clgt	$9,$10,$11
	clgt	$4,$11,$10
	brnz	$9,label_bb90	# bb90
	nop	$127
	brnz	$4,label_bbf0	# bbf0
	nop	$127
label_bb8c:
	brnz	$7,label_bb48	# bb48
label_bb90:
	il	$7,1
	fsmbi	$80,0
	ai	$82,$1,32	# 20
	lnop
	il	$81,4
	stqd	$7,208($1)	# d0
label_bba8:
	a	$3,$80,$82
	hbra	label_bbd4,func_a050
	ori	$4,$84,0
	lqx	$5,$80,$82
	ai	$81,$81,-1
	lqx	$6,$80,$85
	ai	$80,$80,16
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_bbd4:
	brsl	$0,func_a050	# a050
	nop	$127
	lqd	$2,208($1)	# d0
	ori	$7,$2,0
	brnz	$81,label_bba8	# bba8
	nop	$127
	stqd	$2,0($89)
label_bbf0:
	ai	$83,$83,-1
	hbra	label_bc1c,func_b738
	il	$5,1
	shlqbyi	$3,$88,0
	ori	$4,$88,0
	lnop
	il	$6,4
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_bc1c:
	brsl	$0,func_b738	# b738
	cgti	$5,$83,0
	brnz	$5,label_bb40	# bb40
	ai	$5,$1,32	# 20
	hbra	label_bc5c,label_bcb0
	ai	$80,$1,160	# a0
	fsmbi	$3,0
	il	$4,2
	lnop
label_bc40:
	ai	$4,$4,-1
	lqx	$16,$3,$5
	nop	$127
	stqx	$16,$3,$80
	ai	$3,$3,16
	brnz	$4,label_bc40	# bc40
	ai	$81,$1,224	# e0
label_bc5c:
	br	label_bcb0	# bcb0
label_bc60:
	nop	$127
	brnz	$7,label_bcb8	# bcb8
label_bc68:
	il	$7,1
	hbra	label_bc94,func_a050
	ori	$3,$80,0
	lqd	$5,160($1)	# a0
	ori	$4,$81,0
	lqd	$6,0($90)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_bc94:
	brsl	$0,func_a050	# a050
	ori	$4,$81,0
	lqd	$6,16($90)
	ai	$3,$1,176	# b0
	lqd	$5,176($1)	# b0
	lqd	$7,224($1)	# e0
	brsl	$0,func_a050	# a050
label_bcb0:
	il	$6,1
	il	$5,16
label_bcb8:
	ai	$6,$6,-1
	hbra	label_bcf4,label_bc60
	nop	$127
	lqx	$22,$5,$80
	cgti	$7,$6,-1
	lqx	$23,$5,$90
	ai	$5,$5,-16
	clgt	$21,$23,$22
	clgt	$20,$22,$23
	gb	$19,$21
	gb	$18,$20
	clgt	$17,$18,$19
	clgt	$4,$19,$18
	brnz	$17,label_bc68	# bc68
	nop	$127
label_bcf4:
	brz	$4,label_bc60	# bc60
	ceq	$24,$91,$80
	brnz	$24,label_bd20	# bd20
	il	$3,0
	il	$4,2
label_bd08:
	ai	$4,$4,-1
	lqx	$25,$3,$80
	nop	$127
	stqx	$25,$3,$91
	ai	$3,$3,16
	brnz	$4,label_bd08	# bd08
label_bd20:
	ai	$1,$1,432	# 1b0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_bd64,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	nop	$127
	nop	$127
label_bd64:
	bi	$0
.global func_bd68
func_bd68:
	il	$10,2
	stqd	$80,-16($1)
	il	$9,0
	stqd	$82,-48($1)
	ori	$80,$6,0
	stqd	$81,-32($1)
	ori	$82,$3,0
	stqd	$83,-64($1)
	il	$8,0
	stqd	$84,-80($1)
	ori	$6,$5,0
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$88,-144($1)
	stqd	$89,-160($1)
	stqd	$90,-176($1)
	lnop
	stqd	$91,-192($1)
	stqd	$0,16($1)
	stqd	$1,-448($1)
	ai	$1,$1,-448
label_bdc0:
	ai	$8,$8,1
	hbra	label_bdfc,label_bdc0
	lqd	$14,0($6)
	cgt	$7,$10,$8
	ai	$6,$6,16
	clgt	$13,$9,$14
	clgti	$12,$14,0
	gb	$3,$13
	gb	$11,$12
	ceq	$2,$11,$3
	nop	$127
	brz	$2,label_be00	# be00
	nop	$127
	brz	$7,label_c2d8	# c2d8
	nop	$127
label_bdfc:
	br	label_bdc0	# bdc0
label_be00:
	ai	$8,$1,32	# 20
	lnop
	ceq	$6,$8,$5
	shlqbyi	$7,$8,0
	nop	$127
	brnz	$6,label_be38	# be38
	il	$3,0
	il	$6,2
label_be20:
	ai	$6,$6,-1
	lqx	$9,$3,$5
	nop	$127
	stqx	$9,$3,$7
	ai	$3,$3,16
	brnz	$6,label_be20	# be20
label_be38:
	ai	$83,$1,64	# 40
	ceq	$5,$83,$80
	nop	$127
	brnz	$5,label_be68	# be68
	il	$3,0
	il	$5,2
label_be50:
	ai	$5,$5,-1
	lqx	$7,$3,$80
	nop	$127
	stqx	$7,$3,$83
	ai	$3,$3,16
	brnz	$5,label_be50	# be50
label_be68:
	ai	$81,$1,96	# 60
	ceq	$10,$81,$4
	nop	$127
	brnz	$10,label_be98	# be98
	il	$3,0
	il	$5,2
label_be80:
	ai	$5,$5,-1
	lqx	$15,$3,$4
	nop	$127
	stqx	$15,$3,$81
	ai	$3,$3,16
	brnz	$5,label_be80	# be80
label_be98:
	ai	$87,$1,64	# 40
	fsmbi	$4,0
	ai	$84,$1,128	# 80
	lnop
	ai	$85,$1,32	# 20
	stqd	$4,144($1)	# 90
	ori	$86,$87,0
	stqd	$4,128($1)	# 80
	ai	$88,$1,192	# c0
	ai	$89,$1,208	# d0
	ai	$90,$1,224	# e0
	ai	$91,$1,240	# f0
label_bec8:
	il	$6,1
	il	$5,16
label_bed0:
	ai	$6,$6,-1
	lqx	$21,$5,$85
	lqx	$22,$5,$86
	cgti	$7,$6,-1
	ai	$5,$5,-16
	clgt	$20,$22,$21
	clgt	$19,$21,$22
	gb	$18,$20
	gb	$17,$19
	clgt	$16,$17,$18
	clgt	$4,$18,$17
	brnz	$16,label_bf48	# bf48
	nop	$127
	brnz	$4,label_bf48	# bf48
	nop	$127
	brnz	$7,label_bed0	# bed0
	ceq	$58,$82,$81
	brnz	$58,label_c2d8	# c2d8
	il	$3,0
	hbra	label_bf44,label_c2d8
	il	$4,2
	lnop
label_bf28:
	ai	$4,$4,-1
	lqx	$59,$3,$81
	nop	$127
	stqx	$59,$3,$82
	ai	$3,$3,16
	brnz	$4,label_bf28	# bf28
	nop	$127
label_bf44:
	br	label_c2d8	# c2d8
label_bf48:
	lqd	$6,32($1)	# 20
	rotqbyi	$24,$6,12
	andi	$23,$24,1
	brz	$23,label_c0f8	# c0f8
	ai	$10,$1,32	# 20
	lqd	$9,64($1)	# 40
	il	$7,1
	il	$5,16
	rotqbyi	$26,$9,12
	andi	$25,$26,1
	nop	$127
	brz	$25,label_c130	# c130
label_bf78:
	ai	$7,$7,-1
	hbra	label_bfd0,func_a050
	nop	$127
	lqx	$32,$5,$10
	cgti	$8,$7,-1
	lqx	$33,$5,$87
	ai	$5,$5,-16
	clgt	$31,$33,$32
	clgt	$30,$32,$33
	gb	$29,$31
	gb	$28,$30
	clgt	$27,$28,$29
	clgt	$4,$29,$28
	brnz	$27,label_c180	# c180
	nop	$127
	brnz	$4,label_bfc0	# bfc0
	nop	$127
	brnz	$8,label_bf78	# bf78
label_bfc0:
	ori	$5,$9,0
	shlqbyi	$3,$83,0
	il	$7,1
	shlqbyi	$4,$90,0
label_bfd0:
	brsl	$0,func_a050	# a050
	ori	$4,$90,0
	ai	$3,$1,80	# 50
	lqd	$5,80($1)	# 50
	lqd	$6,48($1)	# 30
	lqd	$7,224($1)	# e0
	nop	$127
	brsl	$0,func_a050	# a050
	ori	$3,$83,0
	shlqbyi	$4,$83,0
	il	$5,1
	lnop
	il	$6,2
	brsl	$0,func_b738	# b738
	ai	$8,$1,160	# a0
	ceq	$46,$8,$84
	nop	$127
	brnz	$46,label_c038	# c038
	il	$3,0
	il	$4,2
label_c020:
	ai	$4,$4,-1
	lqx	$47,$3,$84
	nop	$127
	stqx	$47,$3,$8
	ai	$3,$3,16
	brnz	$4,label_c020	# c020
label_c038:
	il	$6,1
	il	$5,16
label_c040:
	ai	$6,$6,-1
	lqx	$53,$5,$8
	lqx	$54,$5,$81
	cgti	$7,$6,-1
	ai	$5,$5,-16
	clgt	$52,$54,$53
	clgt	$51,$53,$54
	gb	$50,$52
	gb	$49,$51
	clgt	$48,$49,$50
	clgt	$4,$50,$49
	brnz	$48,label_c080	# c080
	nop	$127
	brnz	$4,label_c2a8	# c2a8
	nop	$127
	brnz	$7,label_c040	# c040
label_c080:
	il	$7,1
	hbra	label_c0ac,func_a050
	ori	$3,$84,0
	lqd	$5,160($1)	# a0
	ori	$4,$91,0
	lqd	$6,0($81)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_c0ac:
	brsl	$0,func_a050	# a050
	ai	$3,$84,16
	lqd	$6,16($81)
	ori	$4,$91,0
	lqd	$5,176($1)	# b0
	lqd	$7,240($1)	# f0
	brsl	$0,func_a050	# a050
label_c0c8:
	lqd	$57,128($1)	# 80
	rotqbyi	$56,$57,12
	andi	$55,$56,1
	brnz	$55,label_c150	# c150
label_c0d8:
	ori	$3,$84,0
	shlqbyi	$4,$84,0
label_c0e0:
	il	$5,1
	lnop
	il	$6,2
	brsl	$0,func_b738	# b738
	nop	$127
	br	label_bec8	# bec8
label_c0f8:
	ai	$3,$1,32	# 20
	il	$5,1
	ori	$4,$3,0
	lnop
	il	$6,2
	brsl	$0,func_b738	# b738
label_c110:
	lqd	$45,96($1)	# 60
	rotqbyi	$44,$45,12
	andi	$43,$44,1
	brnz	$43,label_c168	# c168
label_c120:
	ori	$3,$81,0
	shlqbyi	$4,$81,0
	nop	$127
	br	label_c0e0	# c0e0
label_c130:
	ori	$3,$83,0
	shlqbyi	$4,$83,0
	il	$5,1
	lnop
	il	$6,2
	brsl	$0,func_b738	# b738
	nop	$127
	br	label_c0c8	# c0c8
label_c150:
	ori	$3,$84,0
	shlqbyi	$4,$84,0
	ori	$5,$80,0
	brsl	$0,func_9ec8	# 9ec8
	nop	$127
	br	label_c0d8	# c0d8
label_c168:
	ori	$3,$81,0
	shlqbyi	$4,$81,0
	ori	$5,$80,0
	brsl	$0,func_9ec8	# 9ec8
	nop	$127
	br	label_c120	# c120
label_c180:
	ori	$5,$6,0
	hbra	label_c1ac,func_a050
	ori	$6,$9,0
	shlqbyi	$4,$88,0
	il	$7,1
	lnop
	ai	$3,$1,32	# 20
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_c1ac:
	brsl	$0,func_a050	# a050
	ori	$4,$88,0
	lnop
	ai	$3,$1,48	# 30
	lqd	$5,48($1)	# 30
	lqd	$6,80($1)	# 50
	lqd	$7,192($1)	# c0
	brsl	$0,func_a050	# a050
	il	$6,2
	il	$5,1
	ai	$3,$1,32	# 20
	ori	$4,$3,0
	brsl	$0,func_b738	# b738
	ai	$6,$1,160	# a0
	ceq	$34,$6,$81
	nop	$127
	brnz	$34,label_c210	# c210
	il	$3,0
	il	$4,2
label_c1f8:
	ai	$4,$4,-1
	lqx	$35,$3,$81
	nop	$127
	stqx	$35,$3,$6
	ai	$3,$3,16
	brnz	$4,label_c1f8	# c1f8
label_c210:
	il	$5,1
	il	$7,16
label_c218:
	ai	$5,$5,-1
	lqx	$41,$7,$6
	lqx	$42,$7,$84
	cgti	$8,$5,-1
	ai	$7,$7,-16
	clgt	$40,$42,$41
	clgt	$39,$41,$42
	gb	$38,$40
	gb	$37,$39
	clgt	$36,$37,$38
	clgt	$4,$38,$37
	brnz	$36,label_c258	# c258
	nop	$127
	brnz	$4,label_c2c0	# c2c0
	nop	$127
	brnz	$8,label_c218	# c218
label_c258:
	ori	$3,$81,0
	hbra	label_c284,func_a050
	ori	$4,$89,0
	lqd	$6,0($84)
	il	$7,1
	lqd	$5,160($1)	# a0
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_c284:
	brsl	$0,func_a050	# a050
	ai	$3,$81,16
	lqd	$6,16($84)
	ori	$4,$89,0
	lqd	$5,176($1)	# b0
	lqd	$7,208($1)	# d0
	brsl	$0,func_a050	# a050
	nop	$127
	br	label_c110	# c110
label_c2a8:
	ori	$4,$8,0
	shlqbyi	$3,$8,0
	ori	$5,$80,0
	brsl	$0,func_9ec8	# 9ec8
	nop	$127
	br	label_c080	# c080
label_c2c0:
	ori	$4,$6,0
	shlqbyi	$3,$6,0
	ori	$5,$80,0
	brsl	$0,func_9ec8	# 9ec8
	nop	$127
	br	label_c258	# c258
label_c2d8:
	ai	$1,$1,448	# 1c0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_c31c,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	nop	$127
	nop	$127
label_c31c:
	bi	$0
.global func_c320
func_c320:
	ori	$6,$5,0
	hbra	label_c350,func_bd68
	ori	$5,$4,0
	lqa	$2,0x22b10
	il	$4,0
	stqd	$0,16($1)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	nop	$127
	stqd	$4,48($1)	# 30
	ai	$4,$1,32	# 20
	stqd	$2,32($1)	# 20
label_c350:
	brsl	$0,func_bd68	# bd68
	ai	$1,$1,64	# 40
	lqd	$0,16($1)
	bi	$0
	ori	$10,$3,0
	il	$9,1
	il	$11,2
	il	$12,1
label_c370:
	mpyh	$14,$10,$9
	mpyh	$15,$9,$10
	mpyu	$7,$10,$9
	shl	$6,$12,$11
	ai	$16,$11,-1
	ai	$11,$11,1
	shl	$4,$12,$16
	cgti	$8,$11,31	# 1f
	a	$13,$14,$15
	a	$3,$13,$7
	a	$5,$9,$4
	lnop
	heqi	$0,$6,0
	hbrr	label_c3ec,label_c3c8	# c3c8
	clz	$16,$6
	clz	$13,$3
	il	$14,1
	fsmbi	$7,0
	sf	$16,$13,$16
	ori	$18,$3,0
	shl	$14,$14,$16
	shl	$13,$6,$16
label_c3c8:
	or	$17,$7,$14
	rotqmbii	$14,$14,-1
	clgt	$15,$13,$18
	lnop
	sf	$16,$13,$18
	rotqmbii	$13,$13,-1
	selb	$7,$17,$7,$15
	lnop
	selb	$18,$16,$18,$15
label_c3ec:
	brnz	$14,label_c3c8	# c3c8
	clgt	$2,$18,$4
	lnop
	selb	$9,$9,$5,$2
	brz	$8,label_c370	# c370
	mpyh	$21,$10,$9
	hbr	label_c42c,$0
	mpyh	$22,$9,$10
	mpyu	$20,$10,$9
	ilhu	$17,32768	# 8000
	a	$11,$9,$17
	a	$19,$21,$22
	a	$12,$19,$20
	clgt	$10,$12,$17
	selb	$3,$9,$11,$10
	nop	$127
label_c42c:
	bi	$0
.global func_c430
func_c430:
	ori	$10,$3,0
	il	$9,1
	il	$11,2
	il	$12,1
label_c440:
	mpyh	$14,$10,$9
	mpyh	$15,$9,$10
	mpyu	$7,$10,$9
	shl	$6,$12,$11
	ai	$16,$11,-1
	ai	$11,$11,1
	shl	$4,$12,$16
	cgti	$8,$11,31	# 1f
	a	$13,$14,$15
	a	$3,$13,$7
	a	$5,$9,$4
	lnop
	heqi	$0,$6,0
	hbrr	label_c4bc,label_c498	# c498
	clz	$16,$6
	clz	$13,$3
	il	$14,1
	fsmbi	$7,0
	sf	$16,$13,$16
	ori	$18,$3,0
	shl	$14,$14,$16
	shl	$13,$6,$16
label_c498:
	or	$17,$7,$14
	rotqmbii	$14,$14,-1
	clgt	$15,$13,$18
	lnop
	sf	$16,$13,$18
	rotqmbii	$13,$13,-1
	selb	$7,$17,$7,$15
	lnop
	selb	$18,$16,$18,$15
label_c4bc:
	brnz	$14,label_c498	# c498
	clgt	$2,$18,$4
	lnop
	selb	$9,$9,$5,$2
	brz	$8,label_c440	# c440
	mpyh	$22,$10,$9
	hbr	label_c4fc,$0
	mpyh	$23,$9,$10
	mpyu	$21,$10,$9
	ilhu	$19,32768	# 8000
	a	$11,$9,$19
	a	$20,$22,$23
	a	$17,$20,$21
	clgt	$12,$17,$19
	selb	$10,$9,$11,$12
	sfi	$3,$10,0
label_c4fc:
	bi	$0
.global func_c500
func_c500:
	il	$2,0
	stqd	$89,-160($1)
	ori	$89,$3,0
	lqd	$3,0($5)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$81,$7,0
	stqd	$82,-48($1)
	il	$82,0
	stqd	$83,-64($1)
	ori	$83,$6,0
	stqd	$84,-80($1)
	ori	$84,$5,0
	stqd	$85,-96($1)
	ori	$85,$4,0
	stqd	$86,-112($1)
	ori	$4,$2,0
	cwd	$86,12($1)
	rotqbyi	$80,$3,12
	stqd	$87,-128($1)
	stqd	$88,-144($1)
	stqd	$0,16($1)
	stqd	$1,-304($1)
	ai	$1,$1,-304
	ai	$88,$1,64	# 40
	stqd	$2,32($1)	# 20
	ai	$87,$1,96	# 60
	stqd	$2,48($1)	# 30
label_c570:
	rotmai	$7,$82,-31
	rotqbyi	$69,$4,12
	il	$63,0
	hbra	label_c5fc,func_ac80
	ori	$4,$87,0
	shlqbyi	$5,$84,0
	ilh	$9,3599	# e0f
	shlqbyi	$3,$88,0
	rotmi	$10,$7,-30
	shlqbyi	$7,$83,0
	a	$8,$82,$10
	ilh	$10,3085	# c0d
	rotmai	$6,$8,-2
	shli	$2,$6,2
	shli	$12,$6,4
	sf	$79,$2,$82
	ai	$82,$82,1
	lqx	$76,$12,$85
	sfi	$78,$79,3
	shli	$77,$78,2
	nop	$127
	rotqby	$75,$76,$77
	mpyh	$73,$75,$80
	shufb	$6,$75,$63,$86
	mpyh	$74,$80,$75
	mpyu	$72,$75,$80
	a	$71,$73,$74
	a	$70,$71,$72
	a	$68,$69,$70
	mpyh	$66,$68,$81
	mpyh	$67,$81,$68
	mpyu	$65,$68,$81
	a	$64,$66,$67
	a	$62,$64,$65
	shufb	$8,$62,$63,$86
label_c5fc:
	brsl	$0,func_ac80	# ac80
	hbra	label_c71c,label_c570
	cgti	$12,$82,4
	lqd	$60,32($1)	# 20
	lqd	$61,64($1)	# 40
	lqd	$47,96($1)	# 60
	lqd	$43,48($1)	# 30
	lqd	$44,80($1)	# 50
	lqd	$19,112($1)	# 70
	cg	$57,$60,$61
	a	$58,$60,$61
	shlqbyi	$59,$57,4
	cg	$56,$58,$59
	a	$54,$58,$59
	lnop
	a	$53,$57,$56
	shlqbyi	$55,$56,4
	cg	$52,$54,$55
	a	$50,$54,$55
	a	$48,$53,$52
	shlqbyi	$51,$52,4
	a	$46,$50,$51
	cg	$49,$50,$51
	cg	$38,$46,$47
	a	$45,$48,$49
	a	$41,$46,$47
	shlqbyi	$42,$38,4
	rotqmbyi	$36,$45,-12
	cg	$39,$41,$42
	ori	$40,$36,0
	lnop
	a	$34,$41,$42
	shlqbyi	$35,$39,4
	cgx	$40,$43,$44
	addx	$36,$43,$44
	a	$31,$38,$39
	shlqbyi	$37,$40,4
	cg	$32,$34,$35
	a	$24,$34,$35
	a	$29,$31,$32
	shlqbyi	$25,$32,4
	cg	$33,$36,$37
	a	$27,$36,$37
	shlqbyi	$28,$33,4
	cg	$30,$24,$25
	a	$22,$24,$25
	a	$23,$29,$30
	cg	$26,$27,$28
	rotqmbyi	$7,$22,-4
	a	$20,$27,$28
	rotqmbyi	$15,$23,-12
	shlqbyi	$21,$26,4
	ori	$17,$15,0
	a	$18,$20,$21
	cgx	$17,$18,$19
	addx	$15,$18,$19
	shlqbyi	$16,$17,4
	cg	$14,$15,$16
	a	$11,$15,$16
	shlqbyi	$13,$14,4
	cg	$10,$11,$13
	a	$8,$11,$13
	shlqbyi	$9,$10,4
	a	$5,$8,$9
	shlqbyi	$6,$5,12
	rotqmbyi	$4,$5,-4
	or	$5,$7,$6
	nop	$127
	stqd	$4,48($1)	# 30
	ori	$4,$5,0
	stqd	$5,32($1)	# 20
	nop	$127
label_c71c:
	brz	$12,label_c570	# c570
	ai	$9,$1,32	# 20
	il	$7,1
	il	$6,16
	lnop
label_c730:
	ai	$7,$7,-1
	lqx	$86,$6,$9
	lqx	$87,$6,$83
	cgti	$8,$7,-1
	ai	$6,$6,-16
	clgt	$85,$87,$86
	clgt	$84,$86,$87
	gb	$82,$85
	gb	$81,$84
	clgt	$80,$81,$82
	clgt	$4,$82,$81
	brnz	$80,label_c770	# c770
	nop	$127
	brnz	$4,label_c7b8	# c7b8
	nop	$127
	brnz	$8,label_c730	# c730
label_c770:
	ai	$88,$1,128	# 80
	hbra	label_c79c,func_a050
	il	$7,1
	lqd	$6,0($83)
	ai	$3,$1,32	# 20
	shlqbyi	$4,$88,0
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_c79c:
	brsl	$0,func_a050	# a050
	ori	$4,$88,0
	lqd	$6,16($83)
	ai	$3,$1,48	# 30
	lqd	$5,48($1)	# 30
	lqd	$7,128($1)	# 80
	brsl	$0,func_a050	# a050
label_c7b8:
	ai	$3,$1,32	# 20
	lnop
	ceq	$83,$89,$3
	shlqbyi	$5,$3,0
	nop	$127
	brnz	$83,label_c7f0	# c7f0
	il	$3,0
	il	$4,2
label_c7d8:
	ai	$4,$4,-1
	lqx	$9,$3,$5
	nop	$127
	stqx	$9,$3,$89
	ai	$3,$3,16
	brnz	$4,label_c7d8	# c7d8
label_c7f0:
	ai	$1,$1,304	# 130
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_c834,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_c834:
	bi	$0
.global func_c838
func_c838:
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$6,0
	stqd	$82,-48($1)
	ori	$82,$5,0
	stqd	$85,-96($1)
	ori	$85,$3,0
	stqd	$81,-32($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$0,16($1)
	stqd	$1,-208($1)
	ai	$1,$1,-208
	ai	$3,$1,32	# 20
	ceq	$2,$3,$4
	shlqbyi	$6,$3,0
	nop	$127
	brnz	$2,label_c8a0	# c8a0
	il	$3,0
	il	$5,2
label_c888:
	ai	$5,$5,-1
	lqx	$7,$3,$4
	nop	$127
	stqx	$7,$3,$6
	ai	$3,$3,16
	brnz	$5,label_c888	# c888
label_c8a0:
	ai	$83,$1,64	# 40
	cwd	$84,12($1)
	il	$81,4
	lnop
label_c8b0:
	il	$8,0
	lqd	$14,32($1)	# 20
	ilh	$6,3599	# e0f
	hbra	label_c8ec,func_aa88
	ilh	$7,3085	# c0d
	shlqbyi	$3,$83,0
	ori	$4,$82,0
	ai	$81,$81,-1
	rotqbyi	$13,$14,12
	mpyh	$11,$13,$80
	mpyh	$12,$80,$13
	mpyu	$10,$13,$80
	a	$9,$11,$12
	a	$5,$9,$10
	shufb	$5,$5,$8,$84
label_c8ec:
	brsl	$0,func_aa88	# aa88
	ori	$5,$83,0
	ai	$3,$1,32	# 20
	ori	$4,$3,0
	brsl	$0,func_9f50	# 9f50
	il	$5,32	# 20
	il	$6,2
	ai	$3,$1,32	# 20
	lnop
	ori	$4,$3,0
	brsl	$0,func_b738	# b738
	cgti	$4,$81,-1
	brnz	$4,label_c8b0	# c8b0
	ai	$8,$1,32	# 20
	il	$6,1
	il	$5,16
	lnop
label_c930:
	ai	$6,$6,-1
	lqx	$20,$5,$8
	lqx	$21,$5,$82
	cgti	$7,$6,-1
	ai	$5,$5,-16
	clgt	$19,$21,$20
	clgt	$18,$20,$21
	gb	$17,$19
	gb	$16,$18
	clgt	$15,$16,$17
	clgt	$4,$17,$16
	brnz	$15,label_c970	# c970
	nop	$127
	brnz	$4,label_c9b8	# c9b8
	nop	$127
	brnz	$7,label_c930	# c930
label_c970:
	ai	$80,$1,96	# 60
	hbra	label_c99c,func_a050
	il	$7,1
	lqd	$5,32($1)	# 20
	ai	$3,$1,32	# 20
	lqd	$6,0($82)
	ori	$4,$80,0
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_c99c:
	brsl	$0,func_a050	# a050
	ori	$4,$80,0
	lqd	$6,16($82)
	ai	$3,$1,48	# 30
	lqd	$5,48($1)	# 30
	lqd	$7,96($1)	# 60
	brsl	$0,func_a050	# a050
label_c9b8:
	ai	$22,$1,32	# 20
	lnop
	ceq	$6,$85,$22
	shlqbyi	$5,$22,0
	nop	$127
	brnz	$6,label_c9f0	# c9f0
	il	$3,0
	il	$4,2
label_c9d8:
	ai	$4,$4,-1
	lqx	$23,$3,$5
	nop	$127
	stqx	$23,$3,$85
	ai	$3,$3,16
	brnz	$4,label_c9d8	# c9d8
label_c9f0:
	ai	$1,$1,208	# d0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	nop	$127
	bi	$0
.global func_ca18
func_ca18:
	nop	$127
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$88,-144($1)
	ori	$88,$3,0
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$0,16($1)
	stqd	$1,-256($1)
	ai	$1,$1,-256
	ai	$3,$1,32	# 20
	ceq	$2,$3,$4
	shlqbyi	$6,$3,0
	nop	$127
	brnz	$2,label_ca88	# ca88
	il	$3,0
	il	$5,2
label_ca70:
	ai	$5,$5,-1
	lqx	$7,$3,$4
	nop	$127
	stqx	$7,$3,$6
	ai	$3,$3,16
	brnz	$5,label_ca70	# ca70
label_ca88:
	ai	$81,$1,64	# 40
	fsmbi	$83,0
	ai	$4,$1,32	# 20
	ori	$87,$81,0
	ceq	$86,$81,$4
	shlqbyi	$85,$4,0
	ai	$82,$1,96	# 60
	ori	$84,$86,0
label_caa8:
	ai	$3,$1,32	# 20
	il	$5,1
	ori	$4,$3,0
	lnop
	il	$6,2
	brsl	$0,func_b080	# b080
	nop	$127
	brnz	$86,label_cb48	# cb48
	il	$3,0
	hbra	label_caf4,label_cb48
	il	$4,2
	lnop
label_cad8:
	ai	$4,$4,-1
	lqx	$5,$3,$85
	nop	$127
	stqx	$5,$3,$87
	ai	$3,$3,16
	brnz	$4,label_cad8	# cad8
	nop	$127
label_caf4:
	br	label_cb48	# cb48
label_caf8:
	nop	$127
	brnz	$7,label_cb50	# cb50
label_cb00:
	il	$7,1
	hbra	label_cb2c,func_a050
	ori	$3,$81,0
	lqd	$5,64($1)	# 40
	ori	$4,$82,0
	lqd	$6,0($80)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_cb2c:
	brsl	$0,func_a050	# a050
	ori	$4,$82,0
	lqd	$6,16($80)
	ai	$3,$1,80	# 50
	lqd	$5,80($1)	# 50
	lqd	$7,96($1)	# 60
	brsl	$0,func_a050	# a050
label_cb48:
	il	$6,1
	il	$5,16
label_cb50:
	ai	$6,$6,-1
	hbra	label_cb8c,label_caf8
	nop	$127
	lqx	$13,$5,$81
	cgti	$7,$6,-1
	lqx	$14,$5,$80
	ai	$5,$5,-16
	clgt	$12,$14,$13
	clgt	$11,$13,$14
	gb	$10,$12
	gb	$9,$11
	clgt	$8,$9,$10
	clgt	$4,$10,$9
	brnz	$8,label_cb00	# cb00
	nop	$127
label_cb8c:
	brz	$4,label_caf8	# caf8
	nop	$127
	brnz	$84,label_cbb8	# cbb8
	il	$3,0
	il	$4,2
label_cba0:
	ai	$4,$4,-1
	lqx	$6,$3,$81
	nop	$127
	stqx	$6,$3,$85
	ai	$3,$3,16
	brnz	$4,label_cba0	# cba0
label_cbb8:
	ai	$83,$83,1
	cgti	$15,$83,159	# 9f
	nop	$127
	brz	$15,label_caa8	# caa8
	ai	$17,$1,32	# 20
	lnop
	ceq	$16,$88,$17
	shlqbyi	$5,$17,0
	nop	$127
	brnz	$16,label_cc00	# cc00
	il	$3,0
	il	$4,2
label_cbe8:
	ai	$4,$4,-1
	lqx	$18,$3,$5
	nop	$127
	stqx	$18,$3,$88
	ai	$3,$3,16
	brnz	$4,label_cbe8	# cbe8
label_cc00:
	ai	$1,$1,256	# 100
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_cc44,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	nop	$127
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_cc44:
	bi	$0
.global func_cc48
func_cc48:
	il	$7,0
	hbra	label_cca4,label_cc98
	il	$2,4
	stqd	$83,-64($1)
	ori	$83,$4,0
	stqd	$84,-80($1)
	ori	$84,$5,0
	stqd	$87,-128($1)
	ori	$87,$3,0
	stqd	$88,-144($1)
	ori	$88,$6,0
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$0,16($1)
	stqd	$1,-400($1)
	ai	$1,$1,-400
	ai	$3,$1,32	# 20
label_cc98:
	ai	$2,$2,-1
	stqd	$7,0($3)
	ai	$3,$3,16
label_cca4:
	brnz	$2,label_cc98	# cc98
	ori	$85,$7,0
	hbra	label_ccd4,label_ccc0
	ai	$86,$1,32	# 20
	ai	$3,$1,176	# b0
	il	$2,4
	lnop
label_ccc0:
	ai	$2,$2,-1
	stqd	$85,0($3)
	ai	$3,$3,16
	nop	$127
	nop	$127
label_ccd4:
	brnz	$2,label_ccc0	# ccc0
	ai	$80,$1,240	# f0
	hbra	label_cd04,func_b210
	ai	$82,$1,176	# b0
	lqd	$6,0($84)
	ori	$4,$80,0
	shlqbyi	$5,$83,0
	ori	$3,$82,0
	lnop
	il	$7,2
	nop	$127
	nop	$127
label_cd04:
	brsl	$0,func_b210	# b210
	ori	$5,$83,0
	hbra	label_cd34,func_b210
	ori	$4,$80,0
	lqd	$6,16($84)
	il	$7,2
	lnop
	ai	$81,$1,128	# 80
	lqd	$8,240($1)	# f0
	ori	$3,$81,0
	stqd	$8,208($1)	# d0
	nop	$127
label_cd34:
	brsl	$0,func_b210	# b210
	ori	$4,$80,0
	hbra	label_cd60,func_9fc0
	ori	$6,$81,0
	shlqbyi	$7,$85,0
	il	$8,3
	lnop
	ai	$3,$1,192	# c0
	lqd	$9,240($1)	# f0
	ori	$5,$3,0
	stqd	$9,160($1)	# a0
label_cd60:
	brsl	$0,func_9fc0	# 9fc0
	ceq	$2,$86,$82
	nop	$127
	brnz	$2,label_cda0	# cda0
	il	$3,0
	hbra	label_cd9c,label_cd80
	il	$4,4
	lnop
label_cd80:
	ai	$4,$4,-1
	lqx	$5,$3,$82
	nop	$127
	nop	$127
	nop	$127
	stqx	$5,$3,$86
	ai	$3,$3,16
label_cd9c:
	brnz	$4,label_cd80	# cd80
label_cda0:
	ai	$80,$1,96	# 60
	shlqbyi	$5,$88,0
	ai	$4,$1,32	# 20
	lnop
	ori	$3,$80,0
	brsl	$0,func_ba40	# ba40
	ceq	$3,$87,$80
	brnz	$3,label_cde0	# cde0
	il	$3,0
	il	$4,2
label_cdc8:
	ai	$4,$4,-1
	lqx	$6,$3,$80
	nop	$127
	stqx	$6,$3,$87
	ai	$3,$3,16
	brnz	$4,label_cdc8	# cdc8
label_cde0:
	ai	$1,$1,400	# 190
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	hbr	label_ce24,$0
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	nop	$127
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	nop	$127
	nop	$127
	nop	$127
	nop	$127
label_ce24:
	bi	$0
.global func_ce28
func_ce28:
	hbra	label_ce40,func_ba40
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
label_ce40:
	brsl	$0,func_ba40	# ba40
	il	$4,0
	il	$7,2
	fsmbi	$6,0
label_ce50:
	ai	$4,$4,1
	hbra	label_ce8c,label_ce98
	lqd	$11,0($80)
	cgt	$5,$7,$4
	ai	$80,$80,16
	clgt	$10,$6,$11
	clgti	$9,$11,0
	gb	$3,$10
	gb	$8,$9
	ceq	$2,$8,$3
	nop	$127
	brz	$2,label_ce90	# ce90
	nop	$127
	brnz	$5,label_ce50	# ce50
	il	$3,1
label_ce8c:
	br	label_ce98	# ce98
label_ce90:
	il	$3,0
	lnop
label_ce98:
	ai	$1,$1,48	# 30
	lqd	$0,16($1)
	lqd	$80,-16($1)
	bi	$0
	ai	$24,$3,1
	lqd	$21,0($3)
	ai	$23,$3,2
	hbr	label_cf14,$0
	ai	$19,$3,14
	lqd	$18,0($24)
	ai	$22,$3,13
	lqd	$16,0($23)
	ai	$17,$3,15
	ai	$20,$3,3
	ai	$12,$3,16
	rotqby	$15,$21,$22
	lqd	$11,0($20)
	rotqby	$14,$18,$19
	rotqby	$13,$16,$17
	shli	$7,$15,24	# 18
	andi	$10,$14,255	# ff
	lnop
	andi	$9,$13,255	# ff
	rotqby	$8,$11,$12
	shli	$5,$10,16
	shli	$4,$9,8
	andi	$2,$8,255	# ff
	or	$3,$7,$5
	or	$6,$3,$4
	or	$3,$6,$2
	nop	$127
label_cf14:
	bi	$0
.global func_cf18
func_cf18:
	ai	$34,$4,1
	lqd	$31,0($4)
	ai	$39,$4,13
	cbd	$36,12($1)
	ai	$29,$4,2
	lqd	$22,0($34)
	ai	$65,$4,14
	fsmbi	$27,0
	ai	$28,$4,3
	lqd	$33,0($29)
	ai	$55,$4,15
	cbd	$37,13($1)
	ai	$13,$4,16
	rotqby	$38,$31,$39
	ai	$24,$4,4
	lqd	$26,0($28)
	ai	$15,$4,5
	rotqby	$25,$22,$65
	ai	$49,$4,17	# 11
	cbd	$35,14($1)
	ai	$23,$4,6
	shufb	$32,$38,$27,$36
	ai	$43,$4,18	# 12
	rotqby	$14,$33,$55
	ai	$12,$4,7
	cbd	$34,15($1)
	ai	$42,$4,19	# 13
	rotqby	$16,$26,$13
	ai	$2,$4,8
	shufb	$5,$25,$32,$37
	ai	$21,$4,20	# 14
	cbd	$19,0($1)
	ai	$9,$4,9
	cbd	$75,1($1)
	ai	$17,$4,21	# 15
	cbd	$70,2($1)
	ai	$78,$4,10
	shufb	$6,$14,$5,$35
	ai	$77,$4,22	# 16
	cbd	$62,3($1)
	ai	$72,$4,11
	cbd	$54,4($1)
	ai	$67,$4,23	# 17
	cbd	$48,5($1)
	ai	$71,$4,12
	shufb	$7,$16,$6,$34
	ai	$64,$4,24	# 18
	cbd	$30,6($1)
	ai	$59,$4,25	# 19
	cbd	$22,7($1)
	ai	$57,$4,26	# 1a
	cbd	$14,8($1)
	ai	$51,$4,27	# 1b
	stqd	$7,16($3)
	ai	$45,$4,28	# 1c
	lqd	$8,0($24)
	ai	$31,$4,30	# 1e
	lqd	$10,0($15)
	ai	$33,$4,31	# 1f
	lqd	$11,0($23)
	ai	$32,$4,32	# 20
	lqd	$20,0($12)
	lqd	$79,0($2)
	lqd	$76,0($9)
	rotqby	$18,$8,$49
	rotqby	$73,$10,$43
	rotqby	$68,$11,$42
	rotqby	$60,$20,$21
	shufb	$74,$18,$7,$19
	rotqby	$52,$79,$17
	lqd	$66,0($78)
	rotqby	$46,$76,$77
	shufb	$69,$73,$74,$75
	lqd	$63,0($72)
	lqd	$58,0($71)
	lqd	$56,0($39)
	shufb	$61,$68,$69,$70
	rotqby	$40,$66,$67
	lqd	$50,0($65)
	rotqby	$38,$63,$64
	shufb	$53,$60,$61,$62
	rotqby	$24,$58,$59
	cbd	$13,9($1)
	rotqby	$23,$56,$57
	shufb	$47,$52,$53,$54
	lqd	$44,0($55)
	rotqby	$12,$50,$51
	cbd	$2,10($1)
	shufb	$41,$46,$47,$48
	lqd	$29,16($4)
	cbd	$5,11($1)
	rotqby	$11,$44,$45
	shufb	$27,$40,$41,$30
	lqd	$28,0($49)
	lqd	$26,0($43)
	rotqby	$10,$29,$39
	shufb	$16,$38,$27,$22
	hbr	label_d0d4,$0
	lqd	$25,0($42)
	rotqby	$9,$28,$31
	shufb	$15,$24,$16,$14
	rotqby	$8,$26,$33
	shufb	$6,$23,$15,$13
	rotqby	$7,$25,$32
	shufb	$21,$12,$6,$2
	shufb	$20,$11,$21,$5
	shufb	$4,$10,$20,$36
	shufb	$19,$9,$4,$37
	shufb	$18,$8,$19,$35
	shufb	$17,$7,$18,$34
	stqd	$17,0($3)
label_d0d4:
	bi	$0
.global func_d0d8
func_d0d8:
	ai	$35,$4,1
	lqd	$41,0($4)
	ai	$45,$4,13
	cbd	$37,11($1)
	ai	$34,$4,2
	lqd	$39,0($35)
	ai	$71,$4,14
	fsmbi	$29,0
	ai	$40,$4,3
	lqd	$28,0($34)
	ai	$65,$4,15
	cbd	$38,12($1)
	ai	$30,$4,4
	rotqby	$31,$41,$45
	ai	$14,$4,16
	lqd	$27,0($40)
	ai	$50,$4,17	# 11
	rotqby	$26,$39,$71
	ai	$15,$4,5
	cbd	$36,13($1)
	ai	$24,$4,6
	shufb	$13,$31,$29,$37
	ai	$49,$4,18	# 12
	rotqby	$32,$28,$65
	ai	$23,$4,7
	lqd	$33,0($30)
	ai	$43,$4,19	# 13
	rotqby	$22,$27,$14
	ai	$12,$4,8
	shufb	$25,$26,$13,$38
	ai	$42,$4,20	# 14
	cbd	$35,14($1)
	ai	$2,$4,9
	cbd	$34,15($1)
	ai	$20,$4,21	# 15
	cbd	$18,0($1)
	ai	$21,$4,10
	shufb	$6,$32,$25,$36
	ai	$16,$4,22	# 16
	rotqby	$8,$33,$50
	ai	$78,$4,11
	cbd	$75,1($1)
	ai	$77,$4,23	# 17
	cbd	$70,2($1)
	ai	$72,$4,12
	shufb	$5,$22,$6,$35
	ai	$67,$4,24	# 18
	cbd	$62,3($1)
	ai	$64,$4,25	# 19
	cbd	$55,4($1)
	ai	$59,$4,26	# 1a
	cbd	$48,5($1)
	ai	$57,$4,27	# 1b
	shufb	$17,$8,$5,$34
	ai	$52,$4,28	# 1c
	cbd	$41,6($1)
	ai	$30,$4,30	# 1e
	cbd	$14,7($1)
	ai	$31,$4,31	# 1f
	cbd	$13,8($1)
	ai	$33,$4,32	# 20
	stqd	$17,16($3)
	ai	$32,$4,33	# 21
	lqd	$9,0($15)
	lqd	$10,0($24)
	lqd	$11,0($23)
	lqd	$19,0($12)
	lqd	$79,0($2)
	lqd	$76,0($21)
	rotqby	$7,$9,$49
	rotqby	$73,$10,$43
	rotqby	$68,$11,$42
	rotqby	$60,$19,$20
	shufb	$74,$7,$17,$18
	rotqby	$53,$79,$16
	lqd	$66,0($78)
	rotqby	$46,$76,$77
	shufb	$69,$73,$74,$75
	lqd	$63,0($72)
	lqd	$58,0($45)
	lqd	$56,0($71)
	shufb	$61,$68,$69,$70
	rotqby	$39,$66,$67
	lqd	$51,0($65)
	rotqby	$26,$63,$64
	shufb	$54,$60,$61,$62
	rotqby	$24,$58,$59
	cbd	$5,9($1)
	rotqby	$23,$56,$57
	shufb	$47,$53,$54,$55
	lqd	$44,16($4)
	rotqby	$12,$51,$52
	cbd	$2,10($1)
	shufb	$40,$46,$47,$48
	lqd	$29,0($50)
	lqd	$28,0($49)
	rotqby	$11,$44,$45
	shufb	$27,$39,$40,$41
	lqd	$25,0($43)
	hbr	label_d2a4,$0
	rotqby	$10,$29,$30
	shufb	$15,$26,$27,$14
	rotqby	$9,$28,$31
	lqd	$22,0($42)
	rotqby	$8,$25,$33
	shufb	$6,$24,$15,$13
	shufb	$21,$23,$6,$5
	rotqby	$7,$22,$32
	shufb	$20,$12,$21,$2
	shufb	$4,$11,$20,$37
	shufb	$19,$10,$4,$38
	shufb	$18,$9,$19,$36
	shufb	$17,$8,$18,$35
	shufb	$16,$7,$17,$34
	stqd	$16,0($3)
label_d2a4:
	bi	$0
.global func_d2a8
func_d2a8:
	il	$27,20	# 14
	lqd	$32,16($4)
	il	$18,12
	cwd	$26,16($3)
	il	$9,8
	lqx	$29,$3,$27
	il	$10,4
	cwx	$31,$3,$27
	cwx	$13,$3,$18
	cwx	$14,$3,$9
	rotqbyi	$30,$32,8
	rotqbyi	$25,$32,12
	cwx	$15,$3,$10
	hbr	label_d33c,$0
	shufb	$28,$30,$29,$31
	cwd	$16,0($3)
	stqx	$28,$3,$27
	lqd	$24,16($3)
	shufb	$23,$25,$24,$26
	stqd	$23,16($3)
	lqd	$20,0($4)
	lqx	$21,$3,$18
	ori	$22,$20,0
	rotqbyi	$17,$20,4
	rotqbyi	$7,$20,8
	shufb	$19,$22,$21,$13
	rotqbyi	$5,$20,12
	stqx	$19,$3,$18
	lqx	$12,$3,$9
	shufb	$11,$17,$12,$14
	stqx	$11,$3,$9
	lqx	$8,$3,$10
	shufb	$6,$7,$8,$15
	stqx	$6,$3,$10
	lqd	$4,0($3)
	shufb	$2,$5,$4,$16
	stqd	$2,0($3)
label_d33c:
	bi	$0
.global func_d340
func_d340:
	hbra	label_d364,func_9cd8
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	il	$4,2
	stqd	$0,16($1)
	ori	$81,$3,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
label_d364:
	brsl	$0,func_9cd8	# 9cd8
	ori	$4,$80,0
	lnop
	il	$5,2
	fsmbi	$6,0
	ceqi	$2,$3,1
	shlqbyi	$3,$81,0
	nop	$127
	brnz	$2,label_d398	# d398
	brsl	$0,func_9e20	# 9e20
	ceqi	$3,$3,-1
	andi	$6,$3,1
	lnop
label_d398:
	ai	$1,$1,64	# 40
	shlqbyi	$3,$6,0
	lqd	$0,16($1)
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_d3b0
func_d3b0:
	clgti	$2,$3,63	# 3f
	ceqi	$3,$2,0
	andi	$3,$3,1
	bi	$0
.global func_d3c0
func_d3c0:
	ori	$8,$3,0
	hbra	label_d41c,label_d3e0
	ori	$5,$4,0
	stqd	$0,16($1)
	il	$6,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	lnop
label_d3e0:
	ai	$12,$5,13
	lqd	$13,0($5)
	ai	$14,$1,32	# 20
	cbx	$10,$1,$6
	ai	$3,$1,32	# 20
	lnop
	ai	$5,$5,1
	lqx	$9,$14,$6
	rotqby	$11,$13,$12
	nor	$4,$11,$11
	shufb	$7,$4,$9,$10
	stqx	$7,$3,$6
	ai	$6,$6,1
	cgti	$2,$6,19	# 13
	nop	$127
label_d41c:
	brz	$2,label_d3e0	# d3e0
	ori	$3,$8,0
	lnop
	ai	$4,$1,32	# 20
	brsl	$0,func_cf18	# cf18
	ai	$1,$1,64	# 40
	lqd	$0,16($1)
	nop	$127
	bi	$0
.global func_d440
func_d440:
	ori	$8,$3,0
	hbra	label_d49c,label_d460
	ori	$5,$4,0
	stqd	$0,16($1)
	il	$6,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	lnop
label_d460:
	ai	$12,$5,13
	lqd	$13,0($5)
	ai	$14,$1,32	# 20
	cbx	$10,$1,$6
	ai	$3,$1,32	# 20
	lnop
	ai	$5,$5,1
	lqx	$9,$14,$6
	rotqby	$11,$13,$12
	nor	$4,$11,$11
	shufb	$7,$4,$9,$10
	stqx	$7,$3,$6
	ai	$6,$6,1
	cgti	$2,$6,20	# 14
	nop	$127
label_d49c:
	brz	$2,label_d460	# d460
	ori	$3,$8,0
	lnop
	ai	$4,$1,32	# 20
	brsl	$0,func_d0d8	# d0d8
	ai	$1,$1,64	# 40
	lqd	$0,16($1)
	nop	$127
	bi	$0
.global func_d4c0
func_d4c0:
	bi	$0
	lnop
.global func_d4c8
func_d4c8:
	hbr	label_d4f4,$0
	wrch	$ch16,$3
	wrch	$ch17,$4
	shlqbyi	$4,$4,4
	wrch	$ch18,$4
	wrch	$ch19,$5
	wrch	$ch20,$6
	shli	$2,$7,16
	or	$7,$2,$8
	wrch	$ch21,$7
	il	$3,0
label_d4f4:
	bi	$0
.global func_d4f8
func_d4f8:
	il	$2,0
	wrch	$ch23,$2
label_d500:
	rchcnt	$4,$ch23
	ceqi	$5,$4,1
	brz	$5,label_d500	# d500
	hbr	label_d530,$0
	rdch	$2,$ch24
	shl	$4,$4,$3
	wrch	$ch22,$4
	il	$7,0
	wrch	$ch23,$7
	rdch	$6,$ch24
	ceq	$3,$6,$4
	sfi	$3,$3,0
label_d530:
	bi	$0
	lnop
.global func_d538
func_d538:
	br	func_d538
	lnop
.global func_d540
func_d540:
	br	func_d540
	lnop
.global func_d548
func_d548:
	il	$3,0
	bi	$0
.global func_d550
func_d550:
	il	$5,48	# 30
	lqr	$15,data_31ee0
	il	$3,176	# b0
	lqr	$13,data_31ef0
	hbrr	label_d5a8,func_1a398	# 1a398
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$0,16($1)
	rotqbyi	$14,$15,13
	rotqbyi	$12,$13,13
	stqd	$1,-64($1)
	ai	$1,$1,-64
	ceqbi	$11,$14,0
	ceqbi	$10,$12,0
	xsbh	$9,$11
	xsbh	$8,$10
	ceqhi	$7,$9,0
	ceqhi	$6,$8,0
	fsm	$2,$7
	fsm	$4,$6
	selb	$80,$5,$3,$2
	andi	$81,$4,64	# 40
label_d5a8:
	brsl	$0,func_1a398	# 1a398
	or	$80,$80,$81
	ori	$4,$80,0
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$4,$80,0
	lqd	$81,-32($1)
	lqd	$80,-16($1)
	br	func_1a7c8	# 1a7c8
	lnop
.global func_d5d8
func_d5d8:
	il	$5,8
	lqr	$15,data_31ee0
	il	$3,136	# 88
	lqr	$13,data_31ef0
	hbrr	label_d630,func_1a398	# 1a398
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$0,16($1)
	rotqbyi	$14,$15,13
	rotqbyi	$12,$13,13
	stqd	$1,-64($1)
	ai	$1,$1,-64
	ceqbi	$11,$14,0
	ceqbi	$10,$12,0
	xsbh	$9,$11
	xsbh	$8,$10
	ceqhi	$7,$9,0
	ceqhi	$6,$8,0
	fsm	$2,$7
	fsm	$4,$6
	selb	$80,$5,$3,$2
	andi	$81,$4,64	# 40
label_d630:
	brsl	$0,func_1a398	# 1a398
	or	$80,$80,$81
	ori	$4,$80,0
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$4,$80,0
	lqd	$81,-32($1)
	lqd	$80,-16($1)
	br	func_1a7c8	# 1a7c8
	lnop
.global func_d660
func_d660:
	ceqbi	$13,$4,0
	hbrr	label_d6bc,func_1a398	# 1a398
	ceqbi	$12,$3,0
	shlqbyi	$10,$4,3
	xsbh	$11,$13
	shlqbyi	$9,$3,3
	xsbh	$8,$12
	stqd	$80,-16($1)
	ceqhi	$7,$11,0
	stqd	$81,-32($1)
	ceqhi	$6,$8,0
	stqd	$0,16($1)
	il	$2,135	# 87
	fsm	$4,$7
	il	$3,7
	fsm	$5,$6
	stqr	$10,data_31ef0
	stqr	$9,data_31ee0
	andi	$81,$4,64	# 40
	stqd	$1,-64($1)
	selb	$80,$3,$2,$5
	ai	$1,$1,-64
	or	$80,$80,$81
label_d6bc:
	brsl	$0,func_1a398	# 1a398
	ori	$4,$80,0
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$4,$80,0
	lqd	$81,-32($1)
	lqd	$80,-16($1)
	br	func_1a7c8	# 1a7c8
	lnop
.global func_d6e8
func_d6e8:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_1a398	# 1a398
	il	$4,6
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	lqd	$0,48($1)	# 30
	il	$4,6
	ai	$1,$1,32	# 20
	br	func_1a7c8	# 1a7c8
	lnop
.global func_d718
func_d718:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_1a398	# 1a398
	il	$4,5
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	lqd	$0,48($1)	# 30
	il	$4,5
	ai	$1,$1,32	# 20
	br	func_1a7c8	# 1a7c8
	lnop
.global func_d748
func_d748:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_1a398	# 1a398
	il	$4,3
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	lqd	$0,48($1)	# 30
	il	$4,3
	ai	$1,$1,32	# 20
	br	func_1a7c8	# 1a7c8
	lnop
.global func_d778
func_d778:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_1a398	# 1a398
	il	$4,2
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	lqd	$0,48($1)	# 30
	il	$4,2
	ai	$1,$1,32	# 20
	br	func_1a7c8	# 1a7c8
	lnop
.global func_d7a8
func_d7a8:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_1a398	# 1a398
	il	$4,1
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	lqd	$0,48($1)	# 30
	il	$4,1
	ai	$1,$1,32	# 20
	br	func_1a7c8	# 1a7c8
	lnop
.global func_d7d8
func_d7d8:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_1a398	# 1a398
	il	$4,-86
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	lqd	$0,48($1)	# 30
	il	$4,-86
	ai	$1,$1,32	# 20
	br	func_1a7c8	# 1a7c8
	lnop
.global func_d808
func_d808:
	il	$6,51	# 33
	lqr	$16,data_31ee0
	il	$3,179	# b3
	lqr	$14,data_31ef0
	hbrr	label_d860,func_1a398	# 1a398
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$0,16($1)
	rotqbyi	$15,$16,13
	rotqbyi	$13,$14,13
	stqd	$1,-64($1)
	ai	$1,$1,-64
	ceqbi	$12,$15,0
	ceqbi	$11,$13,0
	xsbh	$10,$12
	xsbh	$9,$11
	ceqhi	$8,$10,0
	ceqhi	$7,$9,0
	fsm	$2,$8
	fsm	$5,$7
	selb	$80,$6,$3,$2
	andi	$81,$5,64	# 40
label_d860:
	brsl	$0,func_1a398	# 1a398
	or	$80,$80,$81
	ori	$4,$80,0
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	ori	$4,$80,0
	brsl	$0,func_1a7c8	# 1a7c8
	lqd	$0,80($1)	# 50
	ilhu	$4,45056	# b000
	ai	$1,$1,64	# 40
	ila	$3,150912	# 24d80
	ori	$4,$4,4
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	br	func_1df60	# 1df60
	lnop
.global func_d8a0
func_d8a0:
	il	$6,49	# 31
	lqr	$16,data_31ee0
	il	$3,177	# b1
	lqr	$14,data_31ef0
	hbrr	label_d8f8,func_1a398	# 1a398
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$0,16($1)
	rotqbyi	$15,$16,13
	rotqbyi	$13,$14,13
	stqd	$1,-64($1)
	ai	$1,$1,-64
	ceqbi	$12,$15,0
	ceqbi	$11,$13,0
	xsbh	$10,$12
	xsbh	$9,$11
	ceqhi	$8,$10,0
	ceqhi	$7,$9,0
	fsm	$2,$8
	fsm	$5,$7
	selb	$80,$6,$3,$2
	andi	$81,$5,64	# 40
label_d8f8:
	brsl	$0,func_1a398	# 1a398
	or	$80,$80,$81
	ori	$4,$80,0
	brsl	$0,func_1a5a8	# 1a5a8
	brsl	$0,func_1aa90	# 1aa90
	ori	$4,$80,0
	brsl	$0,func_1a7c8	# 1a7c8
	lqd	$0,80($1)	# 50
	ilhu	$4,45056	# b000
	ai	$1,$1,64	# 40
	ila	$3,150944	# 24da0
	ori	$4,$4,4
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	br	func_1df60	# 1df60
	lnop
.global func_d938
func_d938:
	ori	$3,$4,0
	br	func_1df60	# 1df60
.global func_d940
func_d940:
	il	$5,1
	hbrr	label_d984,func_1d448	# 1d448
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	lqr	$12,data_297b0	# 297b0
	lqr	$7,data_297c0	# 297c0
	lqd	$11,32($1)	# 20
	ai	$6,$1,32	# 20
	cbd	$8,0($1)
	rotqbyi	$2,$12,8
	rotqbyi	$4,$12,12
	shufb	$9,$3,$11,$8
	rotqbyi	$7,$7,4
	ori	$3,$2,0
	ai	$4,$4,14
	stqd	$9,32($1)	# 20
label_d984:
	brsl	$0,func_1d448	# 1d448
	il	$7,14
	brnz	$3,label_d9b0	# d9b0
	lqr	$17,data_297c0	# 297c0
	lqd	$16,32($1)	# 20
	rotqbyi	$13,$17,8
	rotqbyi	$15,$16,13
	lqx	$14,$13,$7
	cbd	$6,14($13)
	shufb	$5,$15,$14,$6
	stqx	$5,$13,$7
label_d9b0:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	bi	$0
	lnop
.global func_d9c0
func_d9c0:
	il	$5,1
	hbrr	label_da04,func_1d448	# 1d448
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	lqr	$12,data_297b0	# 297b0
	lqr	$7,data_297c0	# 297c0
	lqd	$11,32($1)	# 20
	ai	$6,$1,32	# 20
	cbd	$8,0($1)
	rotqbyi	$2,$12,8
	rotqbyi	$4,$12,12
	shufb	$9,$3,$11,$8
	rotqbyi	$7,$7,4
	ori	$3,$2,0
	ai	$4,$4,13
	stqd	$9,32($1)	# 20
label_da04:
	brsl	$0,func_1d448	# 1d448
	il	$7,13
	brnz	$3,label_da30	# da30
	lqr	$17,data_297c0	# 297c0
	lqd	$16,32($1)	# 20
	rotqbyi	$13,$17,8
	rotqbyi	$15,$16,13
	lqx	$14,$13,$7
	cbd	$6,13($13)
	shufb	$5,$15,$14,$6
	stqx	$5,$13,$7
label_da30:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	bi	$0
	lnop
.global func_da40
func_da40:
	il	$5,1
	hbrr	label_da84,func_1d448	# 1d448
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	lqr	$12,data_297b0	# 297b0
	lqr	$7,data_297c0	# 297c0
	lqd	$11,32($1)	# 20
	ai	$6,$1,32	# 20
	cbd	$8,0($1)
	rotqbyi	$2,$12,8
	rotqbyi	$4,$12,12
	shufb	$9,$3,$11,$8
	rotqbyi	$7,$7,4
	ori	$3,$2,0
	ai	$4,$4,12
	stqd	$9,32($1)	# 20
label_da84:
	brsl	$0,func_1d448	# 1d448
	il	$7,12
	brnz	$3,label_dab0	# dab0
	lqr	$17,data_297c0	# 297c0
	lqd	$16,32($1)	# 20
	rotqbyi	$13,$17,8
	rotqbyi	$15,$16,13
	lqx	$14,$13,$7
	cbd	$6,12($13)
	shufb	$5,$15,$14,$6
	stqx	$5,$13,$7
label_dab0:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	bi	$0
	lnop
.global func_dac0
func_dac0:
	il	$5,4
	hbrr	label_dafc,func_1d448	# 1d448
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	lqr	$9,data_297a0	# 297a0
	lqr	$2,data_29790	# 29790
	lqd	$10,32($1)	# 20
	ai	$6,$1,32	# 20
	cwd	$7,0($1)
	ai	$4,$9,8
	shufb	$8,$3,$10,$7
	rotqbyi	$7,$9,8
	rotqbyi	$3,$2,12
	stqd	$8,32($1)	# 20
label_dafc:
	brsl	$0,func_1d448	# 1d448
	il	$7,8
	brnz	$3,label_db24	# db24
	lqr	$14,data_297a0	# 297a0
	lqd	$6,32($1)	# 20
	rotqbyi	$11,$14,12
	lqx	$13,$11,$7
	cwd	$5,8($11)
	shufb	$12,$6,$13,$5
	stqx	$12,$11,$7
label_db24:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	bi	$0
.global func_db30
func_db30:
	il	$5,4
	hbrr	label_db6c,func_1d448	# 1d448
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	lqr	$9,data_297a0	# 297a0
	lqr	$2,data_29790	# 29790
	lqd	$10,32($1)	# 20
	ai	$6,$1,32	# 20
	cwd	$7,0($1)
	ai	$4,$9,4
	shufb	$8,$3,$10,$7
	rotqbyi	$7,$9,8
	rotqbyi	$3,$2,12
	stqd	$8,32($1)	# 20
label_db6c:
	brsl	$0,func_1d448	# 1d448
	il	$7,4
	brnz	$3,label_db94	# db94
	lqr	$14,data_297a0	# 297a0
	lqd	$6,32($1)	# 20
	rotqbyi	$11,$14,12
	lqx	$13,$11,$7
	cwd	$5,4($11)
	shufb	$12,$6,$13,$5
	stqx	$12,$11,$7
label_db94:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	bi	$0
.global func_dba0
func_dba0:
	ilhu	$6,45056	# b000
	hbrr	label_dbe0,func_1cf38	# 1cf38
	stqd	$80,-16($1)
	ori	$4,$6,1
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	ceq	$2,$80,$4
	cwd	$5,0($1)
	ai	$3,$1,32	# 20
	brnz	$2,label_dbfc	# dbfc
	il	$9,0
	lqd	$8,32($1)	# 20
	shufb	$7,$9,$8,$5
	stqd	$7,32($1)	# 20
label_dbe0:
	brsl	$0,func_1cf38	# 1cf38
	lqd	$3,32($1)	# 20
	brsl	$0,func_dac0	# dac0
	shli	$5,$80,24	# 18
	fsmbi	$3,30583	# 7777
	or	$3,$5,$3
	brsl	$0,func_db30	# db30
label_dbfc:
	il	$3,820	# 334
	brsl	$0,func_1d000	# 1d000
	il	$3,0
	il	$4,0
	il	$5,3
	brsl	$0,func_1d2b0	# 1d2b0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_dc28
func_dc28:
	stqd	$80,-16($1)
	ori	$80,$3,0
	il	$3,3
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1d588	# 1d588
	cbd	$6,0($80)
	brnz	$3,label_dc70	# dc70
	lqr	$11,data_297e0	# 297e0
	lqd	$7,0($80)
	rotqbyi	$10,$11,4
	ai	$9,$10,2
	ai	$4,$10,15
	lqd	$8,0($9)
	rotqby	$2,$8,$4
	shufb	$5,$2,$7,$6
	stqd	$5,0($80)
label_dc70:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
.global func_dc80
func_dc80:
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ai	$3,$1,32	# 20
	brsl	$0,func_dc28	# dc28
	ori	$6,$3,0
	brz	$3,label_dcb0	# dcb0
	ilhu	$3,45056	# b000
	ila	$4,150992	# 24dd0
	ori	$3,$3,1
	ori	$5,$3,0
	brsl	$0,func_1da98	# 1da98
label_dcb0:
	lqd	$8,32($1)	# 20
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	rotqbyi	$7,$8,13
	ceqbi	$6,$7,-1
	fsm	$5,$6
	sfi	$4,$5,0
	xori	$2,$4,1
	andi	$3,$2,255	# ff
	bi	$0
.global func_dcd8
func_dcd8:
	stqd	$80,-16($1)
	ori	$80,$3,0
	il	$3,2
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1d588	# 1d588
	cbd	$6,0($80)
	brnz	$3,label_dd20	# dd20
	lqr	$11,data_297c0	# 297c0
	lqd	$7,0($80)
	rotqbyi	$10,$11,8
	ai	$9,$10,17	# 11
	ai	$4,$10,30	# 1e
	lqd	$8,0($9)
	rotqby	$2,$8,$4
	shufb	$5,$2,$7,$6
	stqd	$5,0($80)
label_dd20:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
.global func_dd30
func_dd30:
	stqd	$80,-16($1)
	ori	$80,$3,0
	il	$3,2
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1d588	# 1d588
	cbd	$6,0($80)
	brnz	$3,label_dd78	# dd78
	lqr	$11,data_297c0	# 297c0
	lqd	$7,0($80)
	rotqbyi	$10,$11,8
	ai	$9,$10,14
	ai	$4,$10,27	# 1b
	lqd	$8,0($9)
	rotqby	$2,$8,$4
	shufb	$5,$2,$7,$6
	stqd	$5,0($80)
label_dd78:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
.global func_dd88
func_dd88:
	stqd	$80,-16($1)
	ori	$80,$3,0
	il	$3,2
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1d588	# 1d588
	cbd	$6,0($80)
	brnz	$3,label_ddd0	# ddd0
	lqr	$11,data_297c0	# 297c0
	lqd	$7,0($80)
	rotqbyi	$10,$11,8
	ai	$9,$10,13
	ai	$4,$10,26	# 1a
	lqd	$8,0($9)
	rotqby	$2,$8,$4
	shufb	$5,$2,$7,$6
	stqd	$5,0($80)
label_ddd0:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
.global func_dde0
func_dde0:
	stqd	$80,-16($1)
	ori	$80,$3,0
	il	$3,2
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1d588	# 1d588
	cbd	$6,0($80)
	brnz	$3,label_de28	# de28
	lqr	$11,data_297c0	# 297c0
	lqd	$7,0($80)
	rotqbyi	$10,$11,8
	ai	$9,$10,12
	ai	$4,$10,25	# 19
	lqd	$8,0($9)
	rotqby	$2,$8,$4
	shufb	$5,$2,$7,$6
	stqd	$5,0($80)
label_de28:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
.global func_de38
func_de38:
	hbrr	label_de5c,func_dde0	# dde0
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
	ai	$3,$1,32	# 20
label_de5c:
	brsl	$0,func_dde0	# dde0
	ori	$6,$3,0
	brz	$3,label_de7c	# de7c
	ilhu	$3,45056	# b000
	ila	$4,151056	# 24e10
	ori	$3,$3,1
	ori	$5,$3,0
	brsl	$0,func_1da98	# 1da98
label_de7c:
	hbrr	label_debc,label_def0	# def0
	lqd	$5,32($1)	# 20
	rotqbyi	$4,$5,13
	andi	$4,$4,255	# ff
	andi	$2,$4,1
	brnz	$2,label_dec0	# dec0
	lqd	$8,0($80)
	rotmi	$11,$4,-1
	cbd	$10,0($80)
	il	$6,1
	cbd	$5,0($81)
	il	$3,-1
	andi	$9,$11,1
	shufb	$7,$9,$8,$10
	stqd	$7,0($80)
	lqd	$2,0($81)
label_debc:
	br	label_def0	# def0
label_dec0:
	andi	$12,$4,4
	fsmbi	$6,0
	brnz	$12,label_def8	# def8
	lqd	$14,0($80)
	rotmi	$16,$4,-3
	cbd	$15,0($80)
	il	$6,1
	cbd	$5,0($81)
	andi	$3,$16,1
	shufb	$13,$3,$14,$15
	stqd	$13,0($80)
	lqd	$2,0($81)
label_def0:
	shufb	$17,$3,$2,$5
	stqd	$17,0($81)
label_def8:
	ori	$3,$6,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_df10
func_df10:
	stqd	$80,-16($1)
	ori	$80,$3,0
	il	$3,2
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1d588	# 1d588
	cbd	$6,0($80)
	brnz	$3,label_df58	# df58
	lqr	$11,data_297c0	# 297c0
	lqd	$7,0($80)
	rotqbyi	$10,$11,8
	ai	$9,$10,9
	ai	$4,$10,22	# 16
	lqd	$8,0($9)
	rotqby	$2,$8,$4
	shufb	$5,$2,$7,$6
	stqd	$5,0($80)
label_df58:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
.global func_df68
func_df68:
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ai	$3,$1,32	# 20
	brsl	$0,func_df10	# df10
	ori	$6,$3,0
	brz	$3,label_df98	# df98
	ilhu	$3,45056	# b000
	ila	$4,151120	# 24e50
	ori	$3,$3,1
	ori	$5,$3,0
	brsl	$0,func_1da98	# 1da98
label_df98:
	lqd	$0,64($1)	# 40
	lqd	$4,32($1)	# 20
	ai	$1,$1,48	# 30
	rotqbyi	$2,$4,13
	andi	$3,$2,255	# ff
	bi	$0
.global func_dfb0
func_dfb0:
	stqd	$80,-16($1)
	ori	$80,$3,0
	il	$3,2
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1d588	# 1d588
	cbd	$6,0($80)
	brnz	$3,label_dff8	# dff8
	lqr	$11,data_297c0	# 297c0
	lqd	$7,0($80)
	rotqbyi	$10,$11,8
	ai	$9,$10,5
	ai	$4,$10,18	# 12
	lqd	$8,0($9)
	rotqby	$2,$8,$4
	shufb	$5,$2,$7,$6
	stqd	$5,0($80)
label_dff8:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
.global func_e008
func_e008:
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ai	$3,$1,32	# 20
	brsl	$0,func_dfb0	# dfb0
	ori	$6,$3,0
	brz	$3,label_e038	# e038
	ilhu	$3,45056	# b000
	ila	$4,151168	# 24e80
	ori	$3,$3,1
	ori	$5,$3,0
	brsl	$0,func_1da98	# 1da98
label_e038:
	lqd	$8,32($1)	# 20
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	rotqbyi	$7,$8,13
	ceqbi	$6,$7,-1
	fsm	$5,$6
	sfi	$4,$5,0
	xori	$2,$4,1
	andi	$3,$2,255	# ff
	bi	$0
.global func_e060
func_e060:
	stqd	$80,-16($1)
	ori	$80,$3,0
	il	$3,2
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_1d588	# 1d588
	cbd	$6,0($80)
	brnz	$3,label_e0a8	# e0a8
	lqr	$11,data_297c0	# 297c0
	lqd	$7,0($80)
	rotqbyi	$10,$11,8
	ai	$9,$10,2
	ai	$4,$10,15
	lqd	$8,0($9)
	rotqby	$2,$8,$4
	shufb	$5,$2,$7,$6
	stqd	$5,0($80)
label_e0a8:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
.global func_e0b8
func_e0b8:
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ai	$3,$1,32	# 20
	brsl	$0,func_e060	# e060
	ori	$6,$3,0
	brz	$3,label_e0e8	# e0e8
	ilhu	$3,45056	# b000
	ila	$4,151216	# 24eb0
	ori	$3,$3,1
	ori	$5,$3,0
	brsl	$0,func_1da98	# 1da98
label_e0e8:
	ila	$4,151280	# 24ef0
	lqd	$0,64($1)	# 40
	ila	$7,151296	# 24f00
	lqd	$16,32($1)	# 20
	ila	$2,151312	# 24f10
	ai	$1,$1,48	# 30
	hbr	label_e134,$0
	rotqbyi	$15,$16,13
	ceqbi	$14,$15,3
	lnop
	ceqbi	$13,$15,1
	xsbh	$12,$14
	xsbh	$11,$13
	ceqhi	$10,$12,0
	ceqhi	$9,$11,0
	fsm	$8,$10
	fsm	$5,$9
	selb	$6,$4,$7,$8
	selb	$3,$2,$6,$5
label_e134:
	bi	$0
.global func_e138
func_e138:
	il	$31,1
	hbrr	label_e16c,func_1ced0	# 1ced0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$1,-96($1)
	ai	$1,$1,-96
	lqd	$30,32($1)	# 20
	cbd	$32,0($1)
	cbd	$29,1($1)
	shufb	$28,$31,$30,$32
	shufb	$3,$3,$28,$29
	stqd	$3,32($1)	# 20
label_e16c:
	brsl	$0,func_1ced0	# 1ced0
	ai	$5,$1,32	# 20
	fsmbi	$10,0
	ai	$7,$1,48	# 30
	ai	$9,$1,64	# 40
	il	$4,24	# 18
	il	$6,2
	il	$8,4
	brsl	$0,func_1cc70	# 1cc70
	ilhu	$6,65534	# fffe
	lqd	$26,48($1)	# 30
	il	$10,-10002
	lqd	$12,0($80)
	iohl	$6,31073	# 7961
	chd	$14,0($80)
	ceqi	$5,$3,0
	rotqbyi	$22,$26,15
	andi	$18,$26,255	# ff
	rotqbyi	$24,$26,13
	shlhi	$17,$22,8
	ceqbi	$23,$24,1
	ceqbi	$21,$24,0
	xsbh	$20,$23
	or	$13,$17,$18
	xsbh	$19,$21
	ceqhi	$16,$20,0
	shufb	$7,$13,$12,$14
	ceqhi	$15,$19,0
	fsm	$4,$16
	fsm	$9,$15
	stqd	$7,0($80)
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	selb	$8,$10,$6,$4
	lqd	$80,-16($1)
	selb	$2,$3,$8,$9
	selb	$3,$3,$2,$5
	bi	$0
	lnop
.global func_e208
func_e208:
	il	$25,0
	stqd	$0,16($1)
	il	$21,16
	stqd	$1,-80($1)
	ai	$1,$1,-80
	hbrr	label_e240,func_1ced0	# 1ced0
	lqd	$24,48($1)	# 30
	chd	$26,0($1)
	cbd	$23,0($1)
	cbd	$20,1($1)
	shufb	$22,$25,$24,$26
	shufb	$19,$21,$22,$23
	shufb	$3,$3,$19,$20
	stqd	$3,48($1)	# 30
label_e240:
	brsl	$0,func_1ced0	# 1ced0
	ai	$5,$1,48	# 30
	ai	$7,$1,32	# 20
	fsmbi	$10,0
	ai	$9,$1,64	# 40
	il	$4,27	# 1b
	il	$6,2
	il	$8,1
	brsl	$0,func_1cc70	# 1cc70
	lqd	$0,96($1)	# 60
	ilhu	$5,65534	# fffe
	lqd	$17,32($1)	# 20
	il	$8,-10008
	iohl	$5,31073	# 7961
	ceqi	$7,$3,0
	ai	$1,$1,80	# 50
	hbr	label_e2b4,$0
	rotqbyi	$16,$17,13
	ceqbi	$15,$16,1
	ceqbi	$14,$16,0
	xsbh	$13,$15
	xsbh	$12,$14
	ceqhi	$11,$13,0
	ceqhi	$10,$12,0
	fsm	$9,$11
	fsm	$6,$10
	selb	$4,$8,$5,$9
	selb	$2,$3,$4,$6
	selb	$3,$3,$2,$7
label_e2b4:
	bi	$0
.global func_e2b8
func_e2b8:
	il	$3,27	# 1b
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ai	$4,$1,32	# 20
	brsl	$0,func_e138	# e138
	ori	$4,$3,0
	brz	$3,label_e2e0	# e2e0
	ila	$3,151328	# 24f20
	br	label_e320	# e320
label_e2e0:
	hbrr	label_e304,func_1dc30	# 1dc30
	lqd	$8,32($1)	# 20
	ila	$4,65535	# ffff
	il	$5,256	# 100
	rotqbyi	$7,$8,14
	clgthi	$6,$7,255	# ff
	and	$4,$4,$7
	brhnz	$6,label_e30c	# e30c
	ila	$3,151376	# 24f50
label_e304:
	brsl	$0,func_1dc30	# 1dc30
	br	label_e324	# e324
label_e30c:
	brsl	$0,func_e208	# e208
	il	$2,1
	ori	$4,$3,0
	brz	$3,label_e328	# e328
	ila	$3,151440	# 24f90
label_e320:
	brsl	$0,func_1dc30	# 1dc30
label_e324:
	il	$2,0
label_e328:
	ori	$3,$2,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	bi	$0
.global func_e338
func_e338:
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ai	$3,$1,32	# 20
	brsl	$0,func_1bd18	# 1bd18
	lqd	$0,64($1)	# 40
	ceqi	$4,$3,0
	lqd	$6,32($1)	# 20
	il	$3,0
	ai	$1,$1,48	# 30
	ceqi	$5,$6,0
	sfi	$2,$5,0
	selb	$3,$3,$2,$4
	bi	$0
.global func_e370
func_e370:
	ori	$12,$4,0
	lqr	$9,data_31f00
	il	$11,0
	stqd	$0,16($1)
	il	$5,0
	stqd	$1,-96($1)
	ai	$1,$1,-96
	lqr	$4,data_254b0	# 254b0
	ai	$6,$1,48	# 30
	cwd	$15,0($1)
	rotqbyi	$8,$9,13
	cwd	$16,4($1)
	cdd	$17,0($1)
	cwd	$13,8($1)
	ceqbi	$7,$8,0
	cwd	$14,12($1)
	ori	$8,$3,0
	xsbh	$2,$7
	ai	$3,$1,32	# 20
	brhz	$2,label_e420	# e420
	il	$28,2
	lqd	$27,64($1)	# 40
	il	$19,1
	lqd	$26,80($1)	# 50
	lqd	$25,48($1)	# 30
	hbrr	label_e414,func_1ba08	# 1ba08
	shufb	$24,$28,$27,$15
	shufb	$23,$11,$26,$15
	shufb	$22,$8,$25,$17
	il	$17,4
	shufb	$21,$11,$24,$16
	shufb	$20,$11,$23,$16
	shufb	$18,$12,$22,$13
	shufb	$16,$11,$21,$13
	shufb	$15,$19,$20,$13
	shufb	$13,$17,$18,$14
	shufb	$12,$11,$16,$14
	shufb	$10,$11,$15,$14
	stqd	$13,48($1)	# 30
	stqd	$12,64($1)	# 40
	stqd	$10,80($1)	# 50
label_e414:
	brsl	$0,func_1ba08	# 1ba08
	ilhu	$3,256	# 100
	stqr	$3,data_31f00
label_e420:
	il	$3,0
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	bi	$0
.global func_e430
func_e430:
	hbrr	label_e45c,func_18038	# 18038
	lqr	$5,data_27d00	# 27d00
	stqd	$80,-16($1)
	il	$80,-1
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ceq	$4,$5,$80
	gb	$3,$4
	cgti	$2,$3,11
	brnz	$2,label_e46c	# e46c
label_e45c:
	brsl	$0,func_18038	# 18038
	lqr	$4,data_27d00	# 27d00
	brsl	$0,func_18608	# 18608
	stqr	$80,data_27d00	# 27d00
label_e46c:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_e480
func_e480:
	hbrr	label_e4ac,func_15a8	# 15a8
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$4,0
	stqd	$82,-48($1)
	ori	$81,$5,0
	stqd	$1,-80($1)
	ori	$82,$3,0
	ai	$1,$1,-80
	and	$80,$80,$81
label_e4ac:
	brsl	$0,func_15a8	# 15a8
	hbrr	label_e4d4,func_1040	# 1040
	lqd	$0,96($1)	# 60
	andc	$4,$3,$81
	shlqbyi	$3,$82,0
	ai	$1,$1,80	# 50
	or	$4,$4,$80
	lqd	$81,-32($1)
	lqd	$80,-16($1)
	lqd	$82,-48($1)
label_e4d4:
	br	func_1040	# 1040
.global func_e4d8
func_e4d8:
	lqr	$3,data_254c0	# 254c0
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_15a8	# 15a8
	lqd	$0,48($1)	# 30
	ilhu	$5,32512	# 7f00
	ilhu	$2,512	# 200
	and	$4,$3,$5
	ai	$1,$1,32	# 20
	ceq	$3,$4,$2
	sfi	$3,$3,0
	bi	$0
	lnop
.global func_e510
func_e510:
	lqr	$3,data_254c0	# 254c0
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_15a8	# 15a8
	lqd	$0,48($1)	# 30
	ilhu	$5,32512	# 7f00
	ilhu	$2,256	# 100
	and	$4,$3,$5
	ai	$1,$1,32	# 20
	ceq	$3,$4,$2
	sfi	$3,$3,0
	bi	$0
	lnop
.global func_e548
func_e548:
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$4,0
	stqd	$0,16($1)
	ori	$81,$3,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_e510	# e510
	ori	$4,$80,0
	hbrr	label_e5a4,func_1040	# 1040
	ceqbi	$7,$3,0
	lqr	$6,data_254d0	# 254d0
	lqr	$2,data_22810	# 22810
	xsbh	$3,$7
	cg	$5,$81,$6
	shufb	$2,$5,$5,$2
	brhnz	$3,label_e5a8	# e5a8
	lqd	$0,80($1)	# 50
	ori	$3,$2,0
	ai	$1,$1,64	# 40
	addx	$3,$81,$6
	lqd	$80,-16($1)
	lqd	$81,-32($1)
label_e5a4:
	br	func_1040	# 1040
label_e5a8:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_e5c0
func_e5c0:
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$4,0
	stqd	$0,16($1)
	ori	$81,$3,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_e510	# e510
	ori	$4,$80,0
	hbrr	label_e61c,func_1040	# 1040
	ceqbi	$7,$3,0
	lqr	$6,data_254e0	# 254e0
	lqr	$2,data_22810	# 22810
	xsbh	$3,$7
	cg	$5,$81,$6
	shufb	$2,$5,$5,$2
	brhnz	$3,label_e620	# e620
	lqd	$0,80($1)	# 50
	ori	$3,$2,0
	ai	$1,$1,64	# 40
	addx	$3,$81,$6
	lqd	$80,-16($1)
	lqd	$81,-32($1)
label_e61c:
	br	func_1040	# 1040
label_e620:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_e638
func_e638:
	il	$6,-1
	hbrr	label_e690,label_e84c	# e84c
	stqd	$80,-16($1)
	ori	$80,$5,0
	lqr	$5,data_27d00	# 27d00
	stqd	$86,-112($1)
	ori	$86,$4,0
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$0,16($1)
	stqd	$81,-32($1)
	stqd	$83,-64($1)
	ceq	$4,$5,$6
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	gb	$3,$4
	stqd	$87,-128($1)
	stqd	$88,-144($1)
	stqd	$89,-160($1)
	cgti	$2,$3,11
	stqd	$1,-256($1)
	ai	$1,$1,-256
label_e690:
	brz	$2,label_e84c	# e84c
	brsl	$0,func_18038	# 18038
	il	$7,3
	hbrr	label_e6d8,func_188f0	# 188f0
	il	$8,3
	shlqbyi	$6,$80,4
	il	$9,1
	fsmbi	$4,0
	il	$10,3
	shlqbyi	$5,$86,0
	il	$11,1
	fsmbi	$81,0
	il	$84,1
	cwd	$87,4($1)
	ai	$88,$1,48	# 30
	cdd	$89,0($1)
	cwd	$83,8($1)
	cwd	$85,12($1)
label_e6d8:
	brsl	$0,func_188f0	# 188f0
	lqd	$26,64($1)	# 40
	il	$14,2
	lqd	$23,80($1)	# 50
	il	$5,0
	cwd	$24,0($1)
	ori	$6,$88,0
	lqd	$22,48($1)	# 30
	hbrr	label_e748,func_1ba08	# 1ba08
	rotqmbyi	$25,$3,-4
	ai	$3,$1,32	# 20
	shufb	$20,$14,$26,$24
	shufb	$19,$81,$23,$24
	lqr	$4,data_254b0	# 254b0
	xswd	$21,$25
	shufb	$18,$82,$22,$89
	shufb	$17,$84,$20,$87
	shufb	$16,$81,$19,$87
	stqr	$21,data_27d00	# 27d00
	shufb	$15,$81,$18,$83
	shufb	$13,$81,$17,$83
	shufb	$12,$84,$16,$83
	shufb	$9,$14,$15,$85
	shufb	$11,$81,$13,$85
	shufb	$10,$81,$12,$85
	stqd	$9,48($1)	# 30
	stqd	$11,64($1)	# 40
	stqd	$10,80($1)	# 50
label_e748:
	brsl	$0,func_1ba08	# 1ba08
	brsl	$0,func_191a8	# 191a8
	ori	$4,$82,0
	brsl	$0,func_18ce0	# 18ce0
	brsl	$0,func_e510	# e510
	ceqbi	$8,$3,0
	xsbh	$7,$8
	brhnz	$7,label_e814	# e814
	ila	$4,139264	# 22000
	lqr	$3,data_254f0	# 254f0
	fsmbi	$82,4112	# 1010
	brsl	$0,func_1040	# 1040
	andbi	$80,$82,2
	lqd	$39,48($1)	# 30
	il	$34,3
	hbrr	label_e7c8,func_1ba08	# 1ba08
	il	$31,63	# 3f
	lqd	$38,64($1)	# 40
	ai	$3,$1,32	# 20
	lqd	$37,80($1)	# 50
	ori	$6,$88,0
	lqr	$4,data_254b0	# 254b0
	il	$5,7
	shufb	$36,$80,$39,$89
	shufb	$35,$81,$38,$87
	shufb	$33,$84,$37,$83
	shufb	$32,$81,$36,$83
	shufb	$30,$34,$35,$83
	stqd	$33,80($1)	# 50
	shufb	$29,$31,$32,$85
	stqd	$30,64($1)	# 40
	stqd	$29,48($1)	# 30
label_e7c8:
	brsl	$0,func_1ba08	# 1ba08
	lqr	$3,data_254b0	# 254b0
	il	$4,20480	# 5000
	brsl	$0,func_e5c0	# e5c0
	ilhu	$28,32768	# 8000
	lqr	$3,data_254b0	# 254b0
	ori	$4,$28,3
	brsl	$0,func_e548	# e548
	ila	$3,108152	# 1a678
	brsl	$0,func_191f0	# 191f0
	brsl	$0,func_1ab30	# 1ab30
	fsmbi	$27,4112	# 1010
	ori	$5,$86,0
	lqr	$6,data_27d00	# 27d00
	ori	$8,$80,0
	lqr	$4,data_25500	# 25500
	andbi	$7,$27,5
	brsl	$0,func_1ab80	# 1ab80
	br	label_e84c	# e84c
label_e814:
	ila	$3,110744	# 1b098
	brsl	$0,func_191f0	# 191f0
	brsl	$0,func_1af28	# 1af28
	ori	$6,$86,0
	hbrr	label_e848,func_1af90	# 1af90
	lqr	$40,data_25510	# 25510
	lqr	$43,data_22810	# 22810
	lqr	$41,data_27d00	# 27d00
	lqr	$4,data_25500	# 25500
	cg	$42,$82,$40
	shufb	$5,$42,$42,$43
	rotqbyi	$7,$41,4
	addx	$5,$82,$40
label_e848:
	brsl	$0,func_1af90	# 1af90
label_e84c:
	lqd	$0,272($1)	# 110
	ai	$1,$1,256	# 100
	fsmbi	$3,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	hbr	label_e884,$0
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
label_e884:
	bi	$0
.global func_e888
func_e888:
	hbrr	label_e8bc,func_1040	# 1040
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$0,16($1)
	ceqbi	$3,$3,0
	stqd	$80,-16($1)
	stqd	$1,-64($1)
	xsbh	$2,$3
	ai	$1,$1,-64
	brhnz	$2,label_e988	# e988
	ilhu	$4,20223	# 4eff
	lqr	$3,data_25520	# 25520
	iohl	$4,65534	# fffe
label_e8bc:
	brsl	$0,func_1040	# 1040
	ilhu	$4,4095	# fff
	lqr	$3,data_25530	# 25530
	iohl	$4,65280	# ff00
	brsl	$0,func_1040	# 1040
	ilhu	$4,4095	# fff
	lqr	$3,data_25540	# 25540
	iohl	$4,65280	# ff00
	brsl	$0,func_1040	# 1040
	ilhu	$4,4095	# fff
	lqr	$3,data_25550	# 25550
	iohl	$4,65280	# ff00
	brsl	$0,func_1040	# 1040
	ilhu	$4,4095	# fff
	lqr	$3,data_25560	# 25560
	iohl	$4,65280	# ff00
	brsl	$0,func_1040	# 1040
	ilhu	$4,4095	# fff
	lqr	$3,data_25570	# 25570
	iohl	$4,65280	# ff00
	brsl	$0,func_1040	# 1040
	ilhu	$4,4095	# fff
	lqr	$3,data_25580	# 25580
	iohl	$4,65280	# ff00
	brsl	$0,func_1040	# 1040
	ilhu	$4,4095	# fff
	lqr	$3,data_25590	# 25590
	iohl	$4,65280	# ff00
	brsl	$0,func_1040	# 1040
	ilhu	$4,4095	# fff
	lqr	$3,data_255a0	# 255a0
	iohl	$4,65280	# ff00
	brsl	$0,func_1040	# 1040
	ilhu	$4,4095	# fff
	lqr	$3,data_255b0	# 255b0
	brsl	$0,func_1040	# 1040
	lqr	$3,data_255c0	# 255c0
	ila	$4,65536	# 10000
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqr	$3,data_255d0	# 255d0
	brsl	$0,func_1040	# 1040
	lqr	$3,data_255e0	# 255e0
	il	$4,1
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqr	$3,data_255f0	# 255f0
	brsl	$0,func_1040	# 1040
	lqr	$3,data_25600	# 25600
	il	$4,1
	br	label_ea2c	# ea2c
label_e988:
	il	$4,0
	lqr	$3,data_25520	# 25520
	brsl	$0,func_1040	# 1040
	lqr	$3,data_25530	# 25530
	il	$4,0
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqr	$3,data_25540	# 25540
	brsl	$0,func_1040	# 1040
	lqr	$3,data_25550	# 25550
	il	$4,0
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqr	$3,data_25560	# 25560
	brsl	$0,func_1040	# 1040
	lqr	$3,data_25570	# 25570
	il	$4,0
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqr	$3,data_25580	# 25580
	brsl	$0,func_1040	# 1040
	lqr	$3,data_25590	# 25590
	il	$4,0
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqr	$3,data_255a0	# 255a0
	brsl	$0,func_1040	# 1040
	lqr	$3,data_255c0	# 255c0
	il	$4,0
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqr	$3,data_255d0	# 255d0
	brsl	$0,func_1040	# 1040
	lqr	$3,data_255e0	# 255e0
	il	$4,0
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqr	$3,data_255f0	# 255f0
	brsl	$0,func_1040	# 1040
	lqr	$3,data_25600	# 25600
	il	$4,0
label_ea2c:
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqr	$3,data_25610	# 25610
	brsl	$0,func_1040	# 1040
	brsl	$0,func_e510	# e510
	hbrr	label_ea64,func_15a8	# 15a8
	ceqbi	$9,$3,0
	il	$5,4
	lqr	$3,data_25620	# 25620
	xsbh	$8,$9
	il	$4,6
	ceqhi	$7,$8,0
	fsm	$6,$7
	selb	$80,$5,$4,$6
label_ea64:
	brsl	$0,func_15a8	# 15a8
	or	$4,$3,$80
	lqr	$3,data_25620	# 25620
	brsl	$0,func_1040	# 1040
	lqr	$3,data_25630	# 25630
	brsl	$0,func_15a8	# 15a8
	or	$4,$3,$80
	lqr	$3,data_25630	# 25630
	brsl	$0,func_1040	# 1040
label_ea88:
	lqr	$3,data_25630	# 25630
	brsl	$0,func_15a8	# 15a8
	and	$11,$3,$80
	ceq	$10,$11,$80
	brz	$10,label_ea88	# ea88
	ceqbi	$13,$81,0
	xsbh	$12,$13
	brhnz	$12,label_eb1c	# eb1c
	il	$4,112	# 70
	lqr	$3,data_25640	# 25640
	il	$5,112	# 70
	brsl	$0,func_e480	# e480
	brsl	$0,func_e510	# e510
	ceqbi	$15,$3,0
	xsbh	$14,$15
	brhz	$14,label_ead8	# ead8
	brsl	$0,func_e4d8	# e4d8
	ceqbi	$17,$3,0
	xsbh	$16,$17
	brhnz	$16,label_eae8	# eae8
label_ead8:
	il	$4,96	# 60
	lqr	$3,data_25650	# 25650
	il	$5,112	# 70
	brsl	$0,func_e480	# e480
label_eae8:
	brsl	$0,func_e510	# e510
	hbrr	label_eb18,func_e480	# e480
	ceqbi	$19,$3,0
	xsbh	$18,$19
	brhnz	$18,label_eb84	# eb84
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqr	$3,data_25660	# 25660
	il	$4,96	# 60
	il	$5,112	# 70
	lqd	$80,-16($1)
	lqd	$81,-32($1)
label_eb18:
	br	func_e480	# e480
label_eb1c:
	lqr	$3,data_25640	# 25640
	il	$4,0
	brsl	$0,func_1040	# 1040
	brsl	$0,func_e510	# e510
	ceqbi	$21,$3,0
	xsbh	$20,$21
	brhz	$20,label_eb48	# eb48
	brsl	$0,func_e4d8	# e4d8
	ceqbi	$23,$3,0
	xsbh	$22,$23
	brhnz	$22,label_eb54	# eb54
label_eb48:
	il	$4,0
	lqr	$3,data_25650	# 25650
	brsl	$0,func_1040	# 1040
label_eb54:
	brsl	$0,func_e510	# e510
	hbrr	label_eb80,func_1040	# 1040
	ceqbi	$25,$3,0
	xsbh	$24,$25
	brhnz	$24,label_eb84	# eb84
	il	$4,0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqr	$3,data_25660	# 25660
	lqd	$80,-16($1)
	lqd	$81,-32($1)
label_eb80:
	br	func_1040	# 1040
label_eb84:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_eb98
func_eb98:
	ori	$6,$3,0
	fsmbi	$18,257	# 101
	il	$2,32	# 20
	lqr	$14,data_22820	# 22820
	lqr	$16,data_22810	# 22810
	hbrr	label_ec00,func_730	# 730
	andbi	$17,$18,15
	shlqbyi	$7,$3,4
	and	$13,$3,$17
	il	$3,2
	cg	$15,$13,$14
	shufb	$12,$15,$15,$16
	addx	$12,$13,$14
	shlqbyi	$9,$12,4
	ori	$11,$9,0
	lqd	$10,0($9)
	cdd	$8,0($9)
	wrch	$ch16,$11
	wrch	$ch17,$6
	wrch	$ch18,$7
	shufb	$5,$4,$10,$8
	il	$4,8
	wrch	$ch19,$4
	wrch	$ch20,$3
	stqd	$5,0($9)
	wrch	$ch21,$2
label_ec00:
	br	func_730	# 730
	lnop
.global func_ec08
func_ec08:
	lqr	$3,data_22930	# 22930
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_15a8	# 15a8
	hbrr	label_ec50,label_ec88	# ec88
	il	$7,-1
	lqr	$6,data_27d20	# 27d20
	ori	$4,$3,0
	ceq	$5,$6,$7
	gb	$3,$5
	cgti	$2,$3,11
	brz	$2,label_ec94	# ec94
	il	$3,0
label_ec40:
	il	$10,128	# 80
	sfi	$11,$3,0
	rotma	$9,$10,$11
	and	$8,$4,$9
label_ec50:
	brz	$8,label_ec88	# ec88
	rotqmbyi	$17,$3,-4
	hbrr	label_ec7c,func_780	# 780
	lqr	$13,data_22920	# 22920
	lqr	$4,data_22810	# 22810
	rotqbyi	$16,$17,8
	shlqbyi	$15,$16,9
	shlqbii	$12,$15,5
	cg	$14,$12,$13
	shufb	$3,$14,$14,$4
	addx	$3,$12,$13
label_ec7c:
	brsl	$0,func_780	# 780
	stqr	$3,data_27d20	# 27d20
	br	label_ec94	# ec94
label_ec88:
	ai	$3,$3,1
	ceqi	$18,$3,8
	brz	$18,label_ec40	# ec40
label_ec94:
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	lqr	$3,data_27d20	# 27d20
	bi	$0
	lnop
.global func_eca8
func_eca8:
	hbrr	label_ecd8,func_eb98	# eb98
	stqd	$82,-48($1)
	ori	$82,$3,0
	lqr	$3,data_25670	# 25670
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$83,-64($1)
	ori	$81,$4,0
	stqd	$1,-96($1)
	il	$4,0
	ai	$1,$1,-96
label_ecd8:
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25680	# 25680
	il	$4,-1
	brsl	$0,func_eb98	# eb98
	il	$4,0
	lqr	$3,data_25690	# 25690
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_256a0	# 256a0
	il	$4,-1
	brsl	$0,func_eb98	# eb98
	ceqbi	$2,$82,0
	hbrr	label_ed28,func_eb98	# eb98
	xsbh	$80,$2
	brhnz	$80,label_ee50	# ee50
	ceqbi	$4,$81,0
	xsbh	$3,$4
	brhnz	$3,label_edb8	# edb8
	fsmbi	$7,32896	# 8080
	lqr	$3,data_256b0	# 256b0
	andbi	$4,$7,44	# 2c
label_ed28:
	brsl	$0,func_eb98	# eb98
	fsmbi	$6,32896	# 8080
	lqr	$3,data_256c0	# 256c0
	andbi	$4,$6,-64
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_256d0	# 256d0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_256e0	# 256e0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_256f0	# 256f0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_25700	# 25700
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25710	# 25710
	fsmbi	$4,257	# 101
	brsl	$0,func_eb98	# eb98
	il	$4,0
	lqr	$3,data_25720	# 25720
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25730	# 25730
	il	$4,-1
	brsl	$0,func_eb98	# eb98
	fsmbi	$5,257	# 101
	lqr	$3,data_25740	# 25740
	andbi	$4,$5,64	# 40
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_25750	# 25750
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25760	# 25760
	lqr	$4,data_25770	# 25770
	br	label_ef4c	# ef4c
label_edb8:
	lqr	$4,data_25780	# 25780
	lqr	$3,data_256b0	# 256b0
	brsl	$0,func_eb98	# eb98
	fsmbi	$9,32896	# 8080
	lqr	$3,data_256c0	# 256c0
	andbi	$4,$9,-64
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_256d0	# 256d0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_256e0	# 256e0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_256f0	# 256f0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_25700	# 25700
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25710	# 25710
	fsmbi	$4,257	# 101
	brsl	$0,func_eb98	# eb98
	il	$4,0
	lqr	$3,data_25720	# 25720
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25730	# 25730
	il	$4,-1
	brsl	$0,func_eb98	# eb98
	fsmbi	$8,257	# 101
	lqr	$3,data_25740	# 25740
	andbi	$4,$8,64	# 40
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_25750	# 25750
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25760	# 25760
	lqr	$4,data_25790	# 25790
	br	label_ef4c	# ef4c
label_ee50:
	il	$4,0
	lqr	$3,data_256b0	# 256b0
	brsl	$0,func_eb98	# eb98
	fsmbi	$13,32896	# 8080
	lqr	$3,data_256c0	# 256c0
	andbi	$4,$13,-64
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_256d0	# 256d0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_256e0	# 256e0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_256f0	# 256f0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_25700	# 25700
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25710	# 25710
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,0
	lqr	$3,data_25720	# 25720
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25730	# 25730
	il	$4,-1
	brsl	$0,func_eb98	# eb98
	fsmbi	$12,257	# 101
	lqr	$3,data_25740	# 25740
	andbi	$4,$12,64	# 40
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_25750	# 25750
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25760	# 25760
	il	$4,0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_257a0	# 257a0
	brsl	$0,func_780	# 780
	fsmbi	$11,257	# 101
	andbi	$10,$11,4
	or	$4,$3,$10
	lqr	$3,data_257a0	# 257a0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_257b0	# 257b0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,0
	lqr	$3,data_257c0	# 257c0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_257d0	# 257d0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_257e0	# 257e0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_257f0	# 257f0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,0
	lqr	$3,data_25800	# 25800
	br	label_f054	# f054
label_ef4c:
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_257a0	# 257a0
	brsl	$0,func_780	# 780
	fsmbi	$20,257	# 101
	andbi	$19,$20,4
	or	$4,$3,$19
	lqr	$3,data_257a0	# 257a0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_257b0	# 257b0
	lqr	$4,data_25810	# 25810
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_257c0	# 257c0
	lqr	$4,data_25820	# 25820
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_257d0	# 257d0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$3,data_257e0	# 257e0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_257f0	# 257f0
	il	$4,0
	brsl	$0,func_eb98	# eb98
	brsl	$0,func_ec08	# ec08
	hbrr	label_efdc,label_f01c	# f01c
	fsmbi	$18,514	# 202
	andhi	$17,$18,257	# 101
	ceq	$16,$3,$17
	gb	$15,$16
	cgti	$14,$15,11
	brnz	$14,label_efe0	# efe0
	fsmbi	$25,514	# 202
	andbi	$24,$25,2
	ceq	$23,$3,$24
	gb	$22,$23
	cgti	$21,$22,11
label_efdc:
	brz	$21,label_f01c	# f01c
label_efe0:
	ceqbi	$27,$81,0
	xsbh	$26,$27
	brhnz	$26,label_eff8	# eff8
	lqr	$3,data_25800	# 25800
	lqr	$4,data_25830	# 25830
	br	label_f000	# f000
label_eff8:
	lqr	$3,data_25800	# 25800
	lqr	$4,data_25840	# 25840
label_f000:
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25850	# 25850
	lqr	$4,data_25860	# 25860
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25870	# 25870
	lqr	$4,data_25860	# 25860
	br	label_f054	# f054
label_f01c:
	ceqbi	$29,$81,0
	xsbh	$28,$29
	brhnz	$28,label_f034	# f034
	lqr	$3,data_25800	# 25800
	lqr	$4,data_25880	# 25880
	br	label_f03c	# f03c
label_f034:
	lqr	$3,data_25800	# 25800
	lqr	$4,data_25890	# 25890
label_f03c:
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25850	# 25850
	lqr	$4,data_258a0	# 258a0
	brsl	$0,func_eb98	# eb98
	lqr	$3,data_25870	# 25870
	lqr	$4,data_258a0	# 258a0
label_f054:
	brsl	$0,func_eb98	# eb98
	il	$82,0
	lqr	$3,data_22930	# 22930
	brsl	$0,func_15a8	# 15a8
	lqr	$80,data_258b0	# 258b0
	ori	$83,$3,0
label_f06c:
	hbrr	label_f098,label_f11c	# f11c
	il	$33,128	# 80
	lqr	$32,data_258c0	# 258c0
	sfi	$34,$82,0
	lqr	$81,data_22810	# 22810
	il	$4,0
	rotma	$31,$33,$34
	cg	$35,$80,$32
	and	$30,$83,$31
	shufb	$3,$35,$35,$81
	addx	$3,$80,$32
label_f098:
	brz	$30,label_f11c	# f11c
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$45,data_22a20	# 22a20
	cg	$46,$80,$45
	shufb	$3,$46,$46,$81
	addx	$3,$80,$45
	brsl	$0,func_eb98	# eb98
	il	$4,0
	lqr	$43,data_258d0	# 258d0
	cg	$44,$80,$43
	shufb	$3,$44,$44,$81
	addx	$3,$80,$43
	brsl	$0,func_eb98	# eb98
	il	$4,-1
	lqr	$41,data_258e0	# 258e0
	cg	$42,$80,$41
	shufb	$3,$42,$42,$81
	addx	$3,$80,$41
	brsl	$0,func_eb98	# eb98
	brsl	$0,func_ec08	# ec08
	hbrr	label_f118,func_eb98	# eb98
	fsmbi	$40,514	# 202
	lqr	$4,data_258f0	# 258f0
	andhi	$39,$40,257	# 101
	ceq	$38,$3,$39
	ori	$3,$80,0
	gb	$37,$38
	cgti	$36,$37,11
	brnz	$36,label_f118	# f118
	ori	$3,$80,0
	lqr	$4,data_25900	# 25900
label_f118:
	brsl	$0,func_eb98	# eb98
label_f11c:
	hbrr	label_f144,label_f06c	# f06c
	ai	$82,$82,1
	fsmbi	$52,514	# 202
	lqr	$51,data_22810	# 22810
	ceqi	$47,$82,8
	andbi	$49,$52,32	# 20
	cg	$50,$80,$49
	shufb	$48,$50,$50,$51
	addx	$48,$80,$49
	ori	$80,$48,0
label_f144:
	brz	$47,label_f06c	# f06c
	il	$4,304	# 130
	lqr	$3,data_25910	# 25910
	brsl	$0,func_1040	# 1040
	hbrr	label_f178,func_1040	# 1040
	il	$4,-4
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqr	$3,data_25920	# 25920
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
label_f178:
	br	func_1040	# 1040
	lnop
.global func_f180
func_f180:
	il	$5,0
	hbrr	label_f1bc,func_1b7c8	# 1b7c8
	lqr	$9,data_31f20
	stqd	$80,-16($1)
	lqr	$80,data_254b0	# 254b0
	stqd	$0,16($1)
	stqd	$1,-112($1)
	ai	$1,$1,-112
	rotqbyi	$8,$9,13
	ai	$3,$1,32	# 20
	ori	$4,$80,0
	ai	$6,$1,48	# 30
	ceqbi	$7,$8,0
	xsbh	$2,$7
	brhz	$2,label_f1f8	# f1f8
label_f1bc:
	brsl	$0,func_1b7c8	# 1b7c8
	lqd	$5,48($1)	# 30
	lqr	$10,data_22810	# 22810
	cg	$3,$80,$5
	shufb	$3,$3,$3,$10
	addx	$3,$80,$5
	brsl	$0,func_1a348	# 1a348
	fsmbi	$4,65528	# fff8
	ori	$5,$3,0
	ila	$3,151488	# 24fc0
	stqr	$5,data_31f10
	andhi	$6,$4,257	# 101
	ila	$4,154304	# 25ac0
	stqr	$6,data_31f20
	brsl	$0,func_1ddc8	# 1ddc8
label_f1f8:
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	lqr	$3,data_31f10
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_f210
func_f210:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_f180	# f180
	ceqi	$3,$3,256	# 100
	brnz	$3,label_f268	# f268
	brsl	$0,func_f180	# f180
	ceqi	$2,$3,272	# 110
	brnz	$2,label_f268	# f268
	brsl	$0,func_f180	# f180
	ceqi	$4,$3,273	# 111
	brnz	$4,label_f268	# f268
	brsl	$0,func_f180	# f180
	ceqi	$5,$3,288	# 120
	brnz	$5,label_f268	# f268
	brsl	$0,func_f180	# f180
	ceqi	$6,$3,400	# 190
	brnz	$6,label_f268	# f268
	brsl	$0,func_f180	# f180
	ceqi	$7,$3,416	# 1a0
	sfi	$3,$7,0
	br	label_f26c	# f26c
label_f268:
	il	$3,1
label_f26c:
	lqd	$0,48($1)	# 30
	andi	$3,$3,1
	ai	$1,$1,32	# 20
	bi	$0
	lnop
.global func_f280
func_f280:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_f180	# f180
	ceqi	$3,$3,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	sfi	$3,$3,0
	bi	$0
	lnop
.global func_f2a8
func_f2a8:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_f210	# f210
	ceqbi	$2,$3,0
	xsbh	$3,$2
	brhnz	$3,label_f32c	# f32c
	lqr	$4,data_31ed0
	ilhu	$7,18758	# 4946
	iohl	$7,18688	# 4900
	ceq	$5,$4,$7
	brz	$5,label_f31c	# f31c
	rotqbyi	$6,$4,4
	ceqi	$8,$6,1
	brz	$8,label_f300	# f300
	rotqbyi	$9,$4,8
	ceqi	$4,$9,2
	brz	$4,label_f300	# f300
	ila	$3,151520	# 24fe0
	brsl	$0,func_1ddc8	# 1ddc8
	il	$3,3
	br	label_f338	# f338
label_f300:
	ilhu	$11,45056	# b000
	lqr	$10,data_31ed0
	ila	$4,151552	# 25000
	ori	$3,$11,4
	ori	$5,$3,0
	rotqbyi	$7,$10,8
	brsl	$0,func_1da98	# 1da98
label_f31c:
	ila	$3,151632	# 25050
	brsl	$0,func_1ddc8	# 1ddc8
	il	$3,2
	br	label_f338	# f338
label_f32c:
	ila	$3,151664	# 25070
	brsl	$0,func_1ddc8	# 1ddc8
	il	$3,1
label_f338:
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
	lnop
.global func_f348
func_f348:
	stqd	$80,-16($1)
	stqd	$0,16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_f2a8	# f2a8
	lqr	$4,data_25930	# 25930
	ceqi	$2,$3,1
	ori	$3,$80,0
	brnz	$2,label_f3a0	# f3a0
	brsl	$0,func_f2a8	# f2a8
	lqr	$4,data_25940	# 25940
	ceqi	$5,$3,2
	shlqbyi	$3,$80,0
	brnz	$5,label_f3a0	# f3a0
	brsl	$0,func_f2a8	# f2a8
	lqr	$4,data_25950	# 25950
	ceqi	$8,$3,3
	lqr	$6,data_25960	# 25960
	ceqi	$7,$8,0
	fsm	$3,$7
	selb	$4,$4,$6,$3
label_f3a0:
	ori	$3,$4,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_f3b8
func_f3b8:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_1ced0	# 1ced0
	brsl	$0,func_1c070	# 1c070
	lqd	$0,48($1)	# 30
	ceqi	$3,$3,1
	ai	$1,$1,32	# 20
	andi	$3,$3,1
	bi	$0
.global func_f3e0
func_f3e0:
	hbrr	label_f408,func_f280	# f280
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$0,16($1)
	stqd	$81,-32($1)
	stqd	$83,-64($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
label_f408:
	brsl	$0,func_f280	# f280
	hbrr	label_f448,func_1df60	# 1df60
	ceqbi	$7,$3,0
	lqr	$2,data_25970	# 25970
	xsbh	$3,$7
	clgt	$4,$82,$2
	ceq	$5,$82,$2
	xswd	$6,$4
	selb	$2,$4,$6,$5
	shlqbyi	$4,$82,0
	brhnz	$3,label_f570	# f570
	ilhu	$4,45056	# b000
	ila	$3,151696	# 25090
	brnz	$2,label_f450	# f450
	ori	$4,$4,99	# 63
	ila	$5,154336	# 25ae0
label_f448:
	brsl	$0,func_1df60	# 1df60
	br	label_f4a8	# f4a8
label_f450:
	ilhu	$14,45056	# b000
	hbrr	label_f4a4,func_1df60	# 1df60
	lqr	$8,data_27d10	# 27d10
	fsmbi	$17,1799	# 707
	ori	$4,$14,4
	lqr	$10,data_25980	# 25980
	lqr	$9,data_25990	# 25990
	rotqmbyi	$5,$80,-4
	lqr	$83,data_22810	# 22810
	clgt	$11,$8,$17
	ceq	$12,$8,$17
	shlqbyi	$6,$8,0
	xswd	$16,$11
	cg	$18,$5,$10
	cg	$15,$82,$9
	selb	$13,$11,$16,$12
	shufb	$7,$18,$18,$83
	shufb	$80,$15,$15,$83
	brz	$13,label_f4b0	# f4b0
	ila	$3,151760	# 250d0
	ila	$5,154336	# 25ae0
label_f4a4:
	brsl	$0,func_1df60	# 1df60
label_f4a8:
	il	$4,-1
	br	label_f570	# f570
label_f4b0:
	addx	$7,$5,$10
	hbrr	label_f4f0,func_194c8	# 194c8
	addx	$80,$82,$9
	lqr	$22,data_259a0	# 259a0
	lqr	$19,data_27d00	# 27d00
	rotqmbii	$10,$80,-1
	and	$21,$7,$22
	rotqmbyi	$80,$10,-1
	cg	$20,$8,$19
	rotqmbii	$81,$21,-1
	shufb	$9,$20,$20,$83
	shlqbyi	$4,$80,4
	rotqmbyi	$81,$81,-1
	addx	$9,$8,$19
	shlqbyi	$3,$9,4
	shlqbyi	$5,$81,4
label_f4f0:
	brsl	$0,func_194c8	# 194c8
	hbrr	label_f51c,func_1df60	# 1df60
	rotqbyi	$8,$80,8
	shlqbyi	$80,$8,9
	shlqbii	$80,$80,1
	brz	$3,label_f524	# f524
	ilhu	$23,45056	# b000
	shlqbyi	$6,$3,0
	ila	$5,154336	# 25ae0
	ori	$4,$23,6
	ila	$3,151824	# 25110
label_f51c:
	brsl	$0,func_1df60	# 1df60
	br	label_f4a8	# f4a8
label_f524:
	lqr	$31,data_27d10	# 27d10
	rotqbyi	$36,$81,8
	lqr	$29,data_22830	# 22830
	lqr	$25,data_259b0	# 259b0
	shlqbyi	$35,$36,9
	cg	$34,$31,$82
	shufb	$27,$34,$34,$83
	shlqbii	$32,$35,1
	addx	$27,$31,$82
	cg	$33,$31,$32
	bg	$28,$80,$27
	shufb	$30,$33,$33,$83
	shufb	$24,$28,$28,$29
	addx	$30,$31,$32
	sfx	$24,$80,$27
	stqr	$30,data_27d10	# 27d10
	cg	$26,$24,$25
	shufb	$4,$26,$26,$83
	addx	$4,$24,$25
label_f570:
	ori	$3,$4,0
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
.global func_f590
func_f590:
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	ori	$81,$5,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_e430	# e430
	il	$4,0
	lqr	$3,data_259c0	# 259c0
	brsl	$0,func_eb98	# eb98
	brsl	$0,func_18038	# 18038
	brsl	$0,func_18560	# 18560
	ceqbi	$2,$80,0
	xsbh	$80,$2
	brhnz	$80,label_f600	# f600
	ilhu	$3,45056	# b000
	ceqi	$4,$81,-5
	ori	$3,$3,9
	brnz	$4,label_f5f8	# f5f8
	ilhu	$6,45056	# b000
	ceqi	$5,$81,-1
	ori	$3,$6,99	# 63
	brz	$5,label_f5f8	# f5f8
	ilhu	$7,45056	# b000
	ori	$3,$7,4
label_f5f8:
	ila	$4,156736	# 26440
	brsl	$0,func_1da98	# 1da98
label_f600:
	brsl	$0,func_e0b8	# e0b8
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$4,$3,0
	ila	$3,151872	# 25140
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	br	func_1df60	# 1df60
.global func_f620
func_f620:
	ai	$12,$3,168	# a8
	hbrr	label_f660,func_1bfb8	# 1bfb8
	ori	$5,$4,0
	lqd	$11,0($12)
	rotqby	$10,$11,$12
	ai	$9,$10,6
	ai	$4,$10,19	# 13
	lqd	$8,0($9)
	rotqby	$7,$8,$4
	ceqbi	$6,$7,-1
	clgtbi	$3,$7,1
	xsbh	$2,$6
	xsbh	$4,$3
	bihnz	$2,$0
	ori	$3,$5,0
	bihz	$4,$0
label_f660:
	br	func_1bfb8	# 1bfb8
	lnop
.global func_f668
func_f668:
	ai	$12,$3,168	# a8
	hbrr	label_f6a8,func_1bfb8	# 1bfb8
	ori	$5,$4,0
	lqd	$11,0($12)
	rotqby	$10,$11,$12
	ai	$9,$10,6
	ai	$4,$10,19	# 13
	lqd	$8,0($9)
	rotqby	$7,$8,$4
	ceqbi	$6,$7,-1
	ceqbi	$3,$7,0
	xsbh	$2,$6
	xsbh	$4,$3
	bihnz	$2,$0
	ori	$3,$5,0
	bihnz	$4,$0
label_f6a8:
	br	func_1bfb8	# 1bfb8
	lnop
.global func_f6b0
func_f6b0:
	il	$5,168	# a8
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	stqd	$0,16($1)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_1f8a0	# 1f8a0
	il	$17,168	# a8
	cwd	$13,8($80)
	ai	$16,$80,109	# 6d
	chd	$8,0($80)
	ai	$15,$80,122	# 7a
	lqx	$19,$80,$17
	ai	$6,$80,136	# 88
	hbrr	label_f738,label_f874	# f874
	ai	$7,$80,20	# 14
	shufb	$18,$80,$19,$13
	stqx	$18,$80,$17
	lqd	$14,0($16)
	lqd	$10,176($80)	# b0
	rotqby	$12,$14,$15
	andi	$11,$12,255	# ff
	shufb	$9,$11,$10,$8
	stqd	$9,176($80)	# b0
	lqd	$5,0($6)
	lqd	$3,0($7)
	rotqby	$4,$5,$6
	rotqby	$81,$3,$7
	ceqi	$2,$4,11
	brnz	$2,label_f77c	# f77c
	ceqi	$20,$4,12
	brnz	$20,label_f740	# f740
	ceqi	$13,$4,7
label_f738:
	brz	$13,label_f874	# f874
	br	label_f7f8	# f7f8
label_f740:
	il	$6,174	# ae
	hbrr	label_f778,label_f7b0	# f7b0
	il	$8,200	# c8
	chd	$23,14($80)
	il	$22,0
	lqx	$21,$80,$6
	il	$9,180	# b4
	lqx	$7,$80,$8
	il	$11,184	# b8
	chd	$12,4($80)
	ai	$3,$80,188	# bc
	cbd	$10,8($80)
	ila	$4,154400	# 25b20
	shufb	$5,$22,$21,$23
label_f778:
	br	label_f7b0	# f7b0
label_f77c:
	il	$6,174	# ae
	il	$8,200	# c8
	chd	$26,14($80)
	il	$25,0
	lqx	$24,$80,$6
	il	$9,180	# b4
	lqx	$7,$80,$8
	il	$11,184	# b8
	chd	$12,4($80)
	ai	$3,$80,188	# bc
	cbd	$10,8($80)
	ila	$4,154384	# 25b10
	shufb	$5,$25,$24,$26
label_f7b0:
	il	$34,1
	stqx	$5,$80,$6
	il	$32,256	# 100
	lqx	$31,$80,$9
	il	$29,0
	hbrr	label_f7e8,func_1f8a0	# 1f8a0
	il	$5,12
	shufb	$33,$34,$7,$10
	shufb	$30,$32,$31,$12
	stqx	$33,$80,$8
	stqx	$30,$80,$9
	lqx	$28,$80,$11
	shufb	$27,$29,$28,$13
	stqx	$27,$80,$11
label_f7e8:
	brsl	$0,func_1f8a0	# 1f8a0
	il	$2,252	# fc
	il	$6,6
	br	label_f898	# f898
label_f7f8:
	il	$50,174	# ae
	chd	$53,14($80)
	il	$45,200	# c8
	cbd	$49,8($80)
	il	$40,180	# b4
	lqx	$52,$80,$50
	il	$48,0
	lqx	$47,$80,$45
	il	$43,64	# 40
	chd	$44,4($80)
	il	$35,184	# b8
	hbrr	label_f864,func_1f8a0	# 1f8a0
	il	$38,1
	cwd	$39,8($80)
	ai	$3,$80,188	# bc
	shufb	$51,$4,$52,$53
	il	$5,12
	shufb	$46,$48,$47,$49
	ila	$4,154368	# 25b00
	stqx	$51,$80,$50
	lqx	$42,$80,$40
	stqx	$46,$80,$45
	shufb	$41,$43,$42,$44
	stqx	$41,$80,$40
	lqx	$37,$80,$35
	shufb	$36,$38,$37,$39
	stqx	$36,$80,$35
label_f864:
	brsl	$0,func_1f8a0	# 1f8a0
	il	$2,255	# ff
	il	$6,8
	br	label_f898	# f898
label_f874:
	ila	$4,151920	# 25170
	ori	$3,$80,0
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,151952	# 25190
	brsl	$0,func_f668	# f668
	ilhu	$9,45056	# b000
	iohl	$9,8213	# 2015
	br	label_fc48	# fc48
label_f898:
	ai	$70,$80,14
	lqd	$69,176($80)	# b0
	andi	$68,$2,255	# ff
	chd	$64,12($80)
	il	$60,172	# ac
	hbrr	label_f8f8,label_f920	# f920
	andi	$67,$6,14
	chd	$10,2($80)
	ai	$59,$80,174	# ae
	lqx	$62,$80,$60
	il	$11,178	# b2
	rotqby	$56,$69,$70
	ai	$58,$80,188	# bc
	and	$66,$68,$56
	shl	$65,$66,$67
	ori	$63,$65,57	# 39
	shufb	$61,$63,$62,$64
	stqx	$61,$80,$60
	lqd	$57,0($59)
	lqx	$54,$80,$11
	rotqby	$55,$57,$58
	sfh	$4,$55,$56
	shufb	$5,$4,$54,$10
	stqx	$5,$80,$11
label_f8f8:
	brhnz	$4,label_f920	# f920
	ila	$4,152000	# 251c0
	ori	$3,$80,0
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,151952	# 25190
	brsl	$0,func_f668	# f668
	ilhu	$9,45056	# b000
	iohl	$9,8214	# 2016
	br	label_fc48	# fc48
label_f920:
	ai	$73,$80,184	# b8
	lqd	$72,0($73)
	rotqby	$71,$72,$73
	brz	$71,label_f94c	# f94c
	ai	$79,$80,180	# b4
	ai	$78,$80,194	# c2
	lqd	$77,0($79)
	rotqby	$76,$77,$78
	sfh	$75,$4,$76
	shufb	$74,$75,$5,$10
	stqx	$74,$80,$11
label_f94c:
	ai	$17,$80,180	# b4
	ai	$16,$80,178	# b2
	hbrr	label_f9a0,label_fa2c	# fa2c
	ai	$15,$80,194	# c2
	lqd	$14,0($17)
	ai	$6,$80,192	# c0
	lqd	$8,0($16)
	rotmi	$7,$81,-24
	lqx	$5,$80,$11
	andi	$16,$7,63	# 3f
	rotqby	$12,$14,$15
	rotqby	$4,$8,$6
	ceqi	$2,$16,8
	ahi	$9,$12,-1
	and	$3,$4,$9
	shufb	$81,$3,$5,$10
	stqx	$81,$80,$11
	brnz	$2,label_f9d8	# f9d8
	clgti	$10,$16,8
	brnz	$10,label_f9a8	# f9a8
	ceqi	$11,$16,4
label_f9a0:
	brz	$11,label_fa2c	# fa2c
	br	label_f9bc	# f9bc
label_f9a8:
	ceqi	$18,$16,16
	brnz	$18,label_f9f4	# f9f4
	ceqi	$19,$16,32	# 20
	brz	$19,label_fa2c	# fa2c
	br	label_fa10	# fa10
label_f9bc:
	ai	$13,$80,168	# a8
	il	$4,2
	lqd	$20,0($13)
	rotqby	$2,$20,$13
	lqd	$3,144($2)	# 90
	chd	$5,0($2)
	br	label_fa50	# fa50
label_f9d8:
	ai	$22,$80,168	# a8
	il	$4,3
	lqd	$21,0($22)
	rotqby	$2,$21,$22
	lqd	$3,144($2)	# 90
	chd	$5,0($2)
	br	label_fa50	# fa50
label_f9f4:
	ai	$24,$80,168	# a8
	il	$4,4
	lqd	$23,0($24)
	rotqby	$2,$23,$24
	lqd	$3,144($2)	# 90
	chd	$5,0($2)
	br	label_fa50	# fa50
label_fa10:
	ai	$26,$80,168	# a8
	il	$4,5
	lqd	$25,0($26)
	rotqby	$2,$25,$26
	lqd	$3,144($2)	# 90
	chd	$5,0($2)
	br	label_fa50	# fa50
label_fa2c:
	ila	$4,152048	# 251f0
	ori	$3,$80,0
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,151952	# 25190
	brsl	$0,func_f668	# f668
	ilhu	$9,45056	# b000
	iohl	$9,8215	# 2017
	br	label_fc48	# fc48
label_fa50:
	ai	$58,$80,168	# a8
	shufb	$59,$4,$3,$5
	il	$48,148	# 94
	il	$37,152	# 98
	il	$32,156	# 9c
	stqd	$59,144($2)	# 90
	lqd	$57,0($58)
	rotqby	$15,$57,$58
	ai	$56,$15,3
	lqx	$50,$15,$48
	ai	$55,$15,16
	cwd	$51,4($15)
	ai	$47,$15,2
	lqd	$54,0($56)
	ai	$46,$15,15
	cwd	$41,8($15)
	ai	$31,$15,5
	cwd	$36,12($15)
	ai	$30,$15,18	# 12
	rotqby	$53,$54,$55
	andi	$52,$53,255	# ff
	a	$42,$52,$52
	shufb	$49,$42,$50,$51
	stqx	$49,$15,$48
	lqd	$45,0($47)
	lqx	$39,$15,$37
	rotqby	$44,$45,$46
	andi	$43,$44,255	# ff
	heqi	$0,$16,0
	hbrr	label_fb0c,label_fae8	# fae8
	clz	$18,$16
	clz	$7,$43
	il	$8,1
	fsmbi	$40,0
	sf	$18,$7,$18
	ori	$5,$43,0
	shl	$8,$8,$18
	shl	$7,$16,$18
label_fae8:
	or	$19,$40,$8
	rotqmbii	$8,$8,-1
	clgt	$17,$7,$5
	lnop
	sf	$18,$7,$5
	rotqmbii	$7,$7,-1
	selb	$40,$19,$40,$17
	lnop
	selb	$5,$18,$5,$17
label_fb0c:
	brnz	$8,label_fae8	# fae8
	heqi	$0,$40,0
	hbrr	label_fb5c,label_fb38	# fb38
	clz	$17,$40
	clz	$7,$42
	il	$8,1
	fsmbi	$35,0
	sf	$17,$7,$17
	ori	$5,$42,0
	shl	$8,$8,$17
	shl	$7,$40,$17
label_fb38:
	or	$18,$35,$8
	rotqmbii	$8,$8,-1
	clgt	$16,$7,$5
	lnop
	sf	$17,$7,$5
	rotqmbii	$7,$7,-1
	selb	$35,$18,$35,$16
	lnop
	selb	$5,$17,$5,$16
label_fb5c:
	brnz	$8,label_fb38	# fb38
	shufb	$38,$40,$39,$41
	hbrr	label_fb88,label_fbd0	# fbd0
	stqx	$38,$15,$37
	lqx	$34,$15,$32
	shufb	$33,$35,$34,$36
	stqx	$33,$15,$32
	lqd	$29,0($31)
	rotqby	$28,$29,$30
	ceqbi	$27,$28,1
	xsbh	$12,$27
label_fb88:
	brhz	$12,label_fbd0	# fbd0
	lqd	$69,160($15)	# a0
	il	$66,0
	cbd	$70,0($15)
	il	$63,161	# a1
	hbrr	label_fbcc,label_fc08	# fc08
	il	$7,162	# a2
	cbd	$67,1($15)
	il	$61,1
	cbd	$62,2($15)
	shufb	$68,$66,$69,$70
	stqd	$68,160($15)	# a0
	lqx	$65,$15,$63
	shufb	$64,$66,$65,$67
	stqx	$64,$15,$63
	lqx	$60,$15,$7
	shufb	$2,$61,$60,$62
label_fbcc:
	br	label_fc08	# fc08
label_fbd0:
	il	$76,1
	lqd	$79,160($15)	# a0
	il	$73,161	# a1
	cbd	$2,0($15)
	il	$7,162	# a2
	cbd	$77,1($15)
	cbd	$72,2($15)
	shufb	$78,$76,$79,$2
	stqd	$78,160($15)	# a0
	lqx	$75,$15,$73
	shufb	$74,$76,$75,$77
	stqx	$74,$15,$73
	lqx	$71,$15,$7
	shufb	$2,$12,$71,$72
label_fc08:
	ai	$17,$80,168	# a8
	stqx	$2,$15,$7
	il	$6,163	# a3
	fsmbi	$7,0
	il	$80,164	# a4
	lqd	$3,0($17)
	il	$9,0
	rotqby	$81,$3,$17
	lqx	$14,$81,$6
	cbd	$16,3($81)
	cbd	$5,4($81)
	shufb	$12,$7,$14,$16
	stqx	$12,$81,$6
	lqx	$8,$81,$80
	shufb	$4,$7,$8,$5
	stqx	$4,$81,$80
label_fc48:
	ori	$3,$9,0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_fc60
func_fc60:
	il	$79,-2480
	hbrr	label_fc90,func_14880	# 14880
	ori	$2,$1,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	a	$1,$1,$79
	ai	$81,$1,272	# 110
	stqd	$2,0($1)
	ai	$80,$1,80	# 50
	ori	$3,$81,0
label_fc90:
	brsl	$0,func_14880	# 14880
	ori	$3,$80,0
	brsl	$0,func_10360	# 10360
	ori	$3,$80,0
	ai	$80,$1,96	# 60
	ori	$4,$80,0
	brsl	$0,func_10608	# 10608
	brz	$3,label_fcbc	# fcbc
	ilhu	$3,45056	# b000
	ila	$4,152112	# 25230
	br	label_fe94	# fe94
label_fcbc:
	ai	$82,$1,64	# 40
	ai	$4,$1,32	# 20
	ori	$3,$82,0
	brsl	$0,func_de38	# de38
	hbrr	label_fcfc,func_f6b0	# f6b0
	ceqbi	$13,$3,0
	lqd	$12,96($1)	# 60
	ori	$4,$80,0
	cbd	$8,7($1)
	xsbh	$5,$13
	shlqbyi	$3,$81,0
	ceqhi	$7,$5,0
	rotqbyi	$11,$12,4
	selb	$10,$11,$5,$7
	shufb	$6,$10,$12,$8
	stqd	$6,96($1)	# 60
label_fcfc:
	brsl	$0,func_f6b0	# f6b0
	ori	$5,$3,0
	brz	$3,label_fd10	# fd10
	ila	$4,152192	# 25280
label_fd0c:
	brsl	$0,func_1da98	# 1da98
label_fd10:
	ori	$3,$81,0
	brsl	$0,func_14620	# 14620
	ori	$80,$3,0
	brz	$3,label_fdb0	# fdb0
	ori	$4,$3,0
	ila	$3,152272	# 252d0
	brsl	$0,func_1df60	# 1df60
	ori	$3,$81,0
	il	$4,0
	brsl	$0,func_12b88	# 12b88
	ori	$3,$81,0
	il	$4,1
	brsl	$0,func_12b88	# 12b88
	ori	$3,$81,0
	brsl	$0,func_178c0	# 178c0
	ori	$3,$81,0
	brsl	$0,func_178f8	# 178f8
	ori	$3,$81,0
	il	$4,2
	brsl	$0,func_12b88	# 12b88
	ai	$3,$1,48	# 30
	brsl	$0,func_dd30	# dd30
	hbrr	label_fd9c,func_d940	# d940
	lqd	$15,48($1)	# 30
	rotqbyi	$4,$15,13
	ceqbi	$14,$4,0
	xsbh	$3,$14
	brhnz	$3,label_fd94	# fd94
	ahi	$18,$4,-1
	lqd	$17,48($1)	# 30
	cbd	$19,0($1)
	shufb	$16,$18,$17,$19
	stqd	$16,48($1)	# 30
label_fd94:
	lqd	$20,48($1)	# 30
	rotqbyi	$3,$20,13
label_fd9c:
	brsl	$0,func_d940	# d940
	ori	$3,$80,0
	shlqbyi	$5,$80,0
	ila	$4,152272	# 252d0
	br	label_fd0c	# fd0c
label_fdb0:
	ila	$3,152336	# 25310
	brsl	$0,func_1ddc8	# 1ddc8
	ori	$3,$82,0
	ai	$4,$1,32	# 20
	brsl	$0,func_de38	# de38
	ceqbi	$22,$3,0
	xsbh	$21,$22
	brhnz	$21,label_ff94	# ff94
	brsl	$0,func_10790	# 10790
	hbrr	label_fdf8,func_1df60	# 1df60
	ori	$81,$3,0
	lqd	$28,64($1)	# 40
	ila	$3,152384	# 25340
	lqd	$26,32($1)	# 20
	rotqbyi	$27,$28,13
	rotqbyi	$25,$26,13
	andi	$4,$27,255	# ff
	andi	$5,$25,255	# ff
label_fdf8:
	brsl	$0,func_1df60	# 1df60
	lqd	$24,64($1)	# 40
	ori	$3,$81,0
	fsmbi	$4,0
	il	$5,0
	rotqbyi	$6,$24,13
	brsl	$0,func_108f8	# 108f8
	ceqbi	$23,$3,0
	xsbh	$80,$23
	brhz	$80,label_fe30	# fe30
	ilhu	$29,45056	# b000
	ila	$3,152432	# 25370
	ori	$4,$29,7
	brsl	$0,func_1df60	# 1df60
label_fe30:
	hbrr	label_fe54,func_dd88	# dd88
	lqd	$33,32($1)	# 20
	rotqbyi	$32,$33,13
	ceqbi	$31,$32,-1
	xsbh	$30,$31
	brhz	$30,label_ff18	# ff18
	ai	$81,$1,48	# 30
	brhz	$80,label_fe9c	# fe9c
	ori	$3,$81,0
label_fe54:
	brsl	$0,func_dd88	# dd88
	lqd	$43,48($1)	# 30
	cbd	$41,0($1)
	rotqbyi	$42,$43,13
	andi	$40,$42,-2
	ori	$3,$40,0
	shufb	$38,$40,$43,$41
	stqd	$38,48($1)	# 30
	brsl	$0,func_d9c0	# d9c0
	lqd	$37,64($1)	# 40
	rotqbyi	$36,$37,13
	ceqbi	$35,$36,1
	xsbh	$34,$35
	brhz	$34,label_fee8	# fee8
	ilhu	$3,45056	# b000
	ila	$4,152480	# 253a0
label_fe94:
	ori	$5,$3,0
	br	label_fd0c	# fd0c
label_fe9c:
	ori	$3,$81,0
	brsl	$0,func_dd88	# dd88
	lqd	$53,48($1)	# 30
	cbd	$82,0($1)
	rotqbyi	$52,$53,13
	ori	$51,$52,1
	shufb	$49,$51,$53,$82
	ori	$3,$51,0
	stqd	$49,48($1)	# 30
	brsl	$0,func_d9c0	# d9c0
	ori	$3,$81,0
	brsl	$0,func_dde0	# dde0
	lqd	$48,48($1)	# 30
	rotqbyi	$47,$48,13
	ori	$46,$47,1
	ori	$3,$46,0
	shufb	$44,$46,$48,$82
	stqd	$44,48($1)	# 30
	brsl	$0,func_da40	# da40
label_fee8:
	il	$55,1
	lqd	$60,64($1)	# 40
	il	$3,0
	hbrr	label_ff14,label_ff90	# ff90
	il	$4,0
	rotqbyi	$59,$60,13
	ceqbi	$58,$59,1
	xsbh	$57,$58
	ceqhi	$56,$57,0
	fsm	$54,$56
	andc	$5,$55,$54
label_ff14:
	br	label_ff90	# ff90
label_ff18:
	ai	$3,$1,48	# 30
	brsl	$0,func_dd88	# dd88
	lqd	$61,48($1)	# 30
	rotqbyi	$4,$61,13
	andi	$3,$4,-9
	brhz	$80,label_ff3c	# ff3c
	andi	$4,$4,-13
	lqd	$2,48($1)	# 30
	br	label_ff44	# ff44
label_ff3c:
	lqd	$2,48($1)	# 30
	ori	$4,$3,4
label_ff44:
	cbd	$70,0($1)
	shufb	$69,$4,$2,$70
	stqd	$69,48($1)	# 30
	lqd	$68,48($1)	# 30
	rotqbyi	$3,$68,13
	brsl	$0,func_d9c0	# d9c0
	ai	$3,$1,48	# 30
	brsl	$0,func_dde0	# dde0
	lqd	$67,48($1)	# 30
	cbd	$65,0($1)
	rotqbyi	$66,$67,13
	ori	$64,$66,4
	shufb	$62,$64,$67,$65
	ori	$3,$64,0
	stqd	$62,48($1)	# 30
	brsl	$0,func_da40	# da40
	il	$3,0
	il	$4,0
	il	$5,1
label_ff90:
	brsl	$0,func_1d2b0	# 1d2b0
label_ff94:
	brsl	$0,func_18038	# 18038
	il	$6,1024	# 400
	fsmbi	$73,8224	# 2020
	il	$8,4096	# 1000
	lqr	$5,data_259d0	# 259d0
	lqr	$7,data_259e0	# 259e0
	andbi	$4,$73,2
	brsl	$0,func_18738	# 18738
	lqr	$3,data_259c0	# 259c0
	lqr	$4,data_259f0	# 259f0
	brsl	$0,func_eb98	# eb98
	brsl	$0,func_f280	# f280
	ceqbi	$72,$3,0
	xsbh	$71,$72
	brhnz	$71,label_ffe8	# ffe8
	fsmbi	$75,3084	# c0c
	fsmbi	$74,2056	# 808
	lqr	$3,data_25960	# 25960
	andhi	$4,$75,257	# 101
	andhi	$5,$74,257	# 101
	brsl	$0,func_e638	# e638
label_ffe8:
	brsl	$0,func_f210	# f210
	ceqbi	$77,$3,0
	xsbh	$76,$77
	brhnz	$76,label_10014	# 10014
	il	$4,4
	lqr	$3,data_25a00	# 25a00
	brsl	$0,func_e370	# e370
	lqr	$3,data_25940	# 25940
	ila	$4,204496	# 31ed0
	il	$5,16
	brsl	$0,func_970	# 970
label_10014:
	lqd	$0,2496($1)	# 9c0
	il	$78,2480	# 9b0
	lqd	$10,224($1)	# e0
	a	$1,$1,$78
	lqd	$81,-32($1)
	hbr	label_1004c,$0
	rotqbyi	$9,$10,13
	lqd	$82,-48($1)
	ceqbi	$6,$9,0
	fsm	$2,$6
	sfi	$79,$2,0
	xori	$80,$79,1
	andi	$3,$80,255	# ff
	lqd	$80,-16($1)
label_1004c:
	bi	$0
.global func_10050
func_10050:
	lqr	$4,data_25a10	# 25a10
	lqr	$3,data_25a20	# 25a20
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
	brsl	$0,func_eb98	# eb98
	lqr	$4,data_25a30	# 25a30
	lqr	$3,data_25a40	# 25a40
	brsl	$0,func_eb98	# eb98
	fsmbi	$2,32896	# 8080
	lqr	$3,data_25a50	# 25a50
	andbi	$4,$2,4
	brsl	$0,func_eb98	# eb98
	fsmbi	$4,32896	# 8080
	lqr	$3,data_25a60	# 25a60
	andbi	$4,$4,4
	brsl	$0,func_eb98	# eb98
	lqr	$4,data_25a70	# 25a70
	lqr	$3,data_25a80	# 25a80
	brsl	$0,func_eb98	# eb98
	brsl	$0,func_1a398	# 1a398
	il	$5,-256
	lqr	$4,data_254b0	# 254b0
	il	$6,-96
	brsl	$0,func_1a5e0	# 1a5e0
	brsl	$0,func_196f8	# 196f8
	lqr	$4,data_254b0	# 254b0
	il	$7,0
	fsmbi	$8,0
	il	$9,0
	fsmbi	$6,0
	il	$5,23	# 17
	brsl	$0,func_198a0	# 198a0
	ila	$4,105072	# 19a70
	il	$3,1
	brsl	$0,func_1d990	# 1d990
	ila	$3,56224	# dba0
	brsl	$0,func_1d9e8	# 1d9e8
	brsl	$0,func_1ced0	# 1ced0
	il	$4,0
	brsl	$0,func_1c080	# 1c080
	brsl	$0,func_1ced0	# 1ced0
	lqr	$4,data_254b0	# 254b0
	il	$6,1
	il	$5,1
	brsl	$0,func_1cab0	# 1cab0
	ila	$4,114616	# 1bfb8
	il	$3,0
	brsl	$0,func_1d990	# 1d990
	ila	$4,114616	# 1bfb8
	il	$3,2
	brsl	$0,func_1d990	# 1d990
	ai	$3,$1,32	# 20
	brsl	$0,func_dcd8	# dcd8
	ori	$6,$3,0
	brz	$3,label_10148	# 10148
	ilhu	$3,45056	# b000
	ila	$4,152528	# 253d0
	ori	$3,$3,1
	ori	$5,$3,0
	br	label_102c8	# 102c8
label_10148:
	hbrr	label_10178,label_10190	# 10190
	lqd	$7,32($1)	# 20
	rotqbyi	$4,$7,13
	ceqbi	$6,$4,2
	xsbh	$5,$6
	brhnz	$5,label_1017c	# 1017c
	ceqbi	$9,$4,3
	xsbh	$8,$9
	brhnz	$8,label_10184	# 10184
	ceqbi	$11,$4,0
	xsbh	$10,$11
	brhz	$10,label_1018c	# 1018c
label_10178:
	br	label_10190	# 10190
label_1017c:
	il	$3,2
	br	label_10190	# 10190
label_10184:
	il	$3,3
	br	label_10190	# 10190
label_1018c:
	il	$3,1
label_10190:
	brsl	$0,func_1d9c8	# 1d9c8
	ai	$3,$1,48	# 30
	il	$4,1
	brsl	$0,func_1bc00	# 1bc00
	brz	$3,label_101b8	# 101b8
	ilhu	$12,45056	# b000
	ila	$4,152592	# 25410
	ori	$3,$12,1
	ori	$5,$3,0
	brsl	$0,func_1da98	# 1da98
label_101b8:
	ilhu	$28,22361	# 5759
	lqd	$26,48($1)	# 30
	ilhu	$27,13778	# 35d2
	hbrr	label_10210,label_1023c	# 1023c
	iohl	$28,13778	# 35d2
	iohl	$27,22361	# 5759
	mpyu	$25,$26,$28
	mpyhhu	$24,$26,$28
	mpyu	$22,$26,$27
	mpyhhu	$20,$26,$27
	shli	$23,$25,16
	rotmi	$21,$25,-16
	shli	$19,$24,16
	rotmi	$17,$24,-16
	cg	$16,$22,$23
	a	$18,$22,$23
	addx	$16,$20,$21
	cg	$15,$18,$19
	addx	$15,$16,$17
	rotmi	$14,$15,-24
	clgti	$13,$14,255	# ff
	rotqmbyi	$80,$14,-4
label_10210:
	brz	$13,label_1023c	# 1023c
	brsl	$0,func_1a398	# 1a398
	il	$4,-104
	brsl	$0,func_1a5a8	# 1a5a8
	ilhu	$29,45056	# b000
	lqd	$6,48($1)	# 30
	ori	$7,$80,0
	ori	$3,$29,1
	ila	$4,152640	# 25440
	ori	$5,$3,0
	brsl	$0,func_1da98	# 1da98
label_1023c:
	shlqbyi	$37,$80,4
	ila	$38,154416	# 25b30
	hbrr	label_10264,func_eb98	# eb98
	lqr	$3,data_25a90	# 25a90
	lqx	$34,$38,$37
	a	$36,$37,$38
	ai	$35,$36,13
	rotqby	$33,$34,$35
	andi	$32,$33,255	# ff
	rotqmbyi	$4,$32,-4
label_10264:
	brsl	$0,func_eb98	# eb98
	ilhu	$3,32767	# 7fff
	iohl	$3,65535	# ffff
	brsl	$0,func_196f0	# 196f0
	brsl	$0,func_1ced0	# 1ced0
	il	$4,1
	brsl	$0,func_1c080	# 1c080
	brsl	$0,func_e510	# e510
	ceqbi	$31,$3,0
	xsbh	$30,$31
	brhnz	$30,label_102a0	# 102a0
	brsl	$0,func_1aa90	# 1aa90
	lqr	$4,data_254b0	# 254b0
	il	$5,1
	brsl	$0,func_1a940	# 1a940
label_102a0:
	brsl	$0,func_1ced0	# 1ced0
	brsl	$0,func_1c070	# 1c070
	brnz	$3,label_102cc	# 102cc
	brsl	$0,func_1ced0	# 1ced0
	brsl	$0,func_1c070	# 1c070
	ilhu	$39,45056	# b000
	ori	$6,$3,0
	ori	$5,$39,1
	ila	$4,152704	# 25480
	ori	$3,$5,0
label_102c8:
	brsl	$0,func_1da98	# 1da98
label_102cc:
	brsl	$0,func_e2b8	# e2b8
	ori	$80,$3,0
	brsl	$0,func_df68	# df68
	andi	$42,$3,1
	ceqbi	$41,$42,0
	xsbh	$40,$41
	brhnz	$40,label_102f4	# 102f4
	ori	$4,$80,0
	il	$3,1
	br	label_102fc	# 102fc
label_102f4:
	ori	$4,$80,0
	il	$3,0
label_102fc:
	brsl	$0,func_eca8	# eca8
	brsl	$0,func_df68	# df68
	andi	$43,$3,2
	brz	$43,label_10314	# 10314
	il	$3,1
	br	label_10318	# 10318
label_10314:
	il	$3,0
label_10318:
	brsl	$0,func_e888	# e888
	brsl	$0,func_df68	# df68
	brsl	$0,func_e338	# e338
	ceqbi	$45,$3,0
	xsbh	$44,$45
	brhnz	$44,label_1033c	# 1033c
	lqr	$3,data_25aa0	# 25aa0
	lqr	$4,data_25ab0	# 25ab0
	br	label_10348	# 10348
label_1033c:
	fsmbi	$46,514	# 202
	lqr	$3,data_25aa0	# 25aa0
	andbi	$4,$46,8
label_10348:
	brsl	$0,func_eb98	# eb98
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_10360
func_10360:
	bi	$0
	lnop
.global func_10368
func_10368:
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$4,0
	stqd	$0,16($1)
	ori	$81,$5,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_1720	# 1720
	il	$4,4097	# 1001
	hbrr	label_103c0,label_103e0	# 103e0
	cgt	$2,$3,$4
	brnz	$2,label_103c8	# 103c8
	il	$6,4095	# fff
	cgt	$5,$3,$6
	brnz	$5,label_1042c	# 1042c
	ceqi	$7,$3,256	# 100
	brnz	$7,label_103e8	# 103e8
	cgti	$10,$3,255	# ff
	ai	$11,$3,-512
	nor	$9,$10,$10
	clgti	$3,$11,2
	or	$8,$9,$3
label_103c0:
	brnz	$8,label_103e0	# 103e0
	br	label_10400	# 10400
label_103c8:
	il	$13,8192	# 2000
	ceq	$12,$3,$13
	brnz	$12,label_10444	# 10444
	il	$15,8448	# 2100
	ceq	$14,$3,$15
	brnz	$14,label_1046c	# 1046c
label_103e0:
	il	$6,-1
	br	label_10498	# 10498
label_103e8:
	il	$6,0
	lqd	$3,0($80)
	il	$2,7
	cwd	$4,0($80)
	cwd	$5,0($81)
	br	label_10480	# 10480
label_10400:
	il	$18,7
	hbrr	label_10428,label_10490	# 10490
	il	$6,0
	lqd	$17,0($80)
	il	$3,3
	cwd	$19,0($80)
	cwd	$5,0($81)
	shufb	$16,$18,$17,$19
	stqd	$16,0($80)
	lqd	$2,0($81)
label_10428:
	br	label_10490	# 10490
label_1042c:
	lqd	$3,0($80)
	il	$6,0
	cwd	$4,0($80)
	il	$2,11
	cwd	$5,0($81)
	br	label_10458	# 10458
label_10444:
	lqd	$3,0($80)
	il	$6,0
	cwd	$4,0($80)
	il	$2,12
	cwd	$5,0($81)
label_10458:
	shufb	$20,$2,$3,$4
	il	$3,1
	stqd	$20,0($80)
	lqd	$2,0($81)
	br	label_10490	# 10490
label_1046c:
	lqd	$3,0($80)
	il	$6,0
	cwd	$4,0($80)
	il	$2,12
	cwd	$5,0($81)
label_10480:
	shufb	$21,$2,$3,$4
	il	$3,2
	stqd	$21,0($80)
	lqd	$2,0($81)
label_10490:
	shufb	$22,$3,$2,$5
	stqd	$22,0($81)
label_10498:
	ori	$3,$6,0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_104b0
func_104b0:
	il	$2,0
	hbrr	label_104f8,func_1d0c0	# 1d0c0
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$4,0
	stqd	$0,16($1)
	stqd	$1,-160($1)
	lqd	$10,0($4)
	ai	$1,$1,-160
	cbd	$81,0($4)
	ai	$5,$1,80	# 50
	ai	$6,$1,64	# 40
	ai	$7,$1,48	# 30
	shufb	$9,$2,$10,$81
	ai	$8,$1,112	# 70
	ai	$4,$1,96	# 60
	ai	$3,$1,32	# 20
	stqd	$9,0($80)
label_104f8:
	brsl	$0,func_1d0c0	# 1d0c0
	brz	$3,label_10510	# 10510
	ila	$3,154672	# 25c30
	brsl	$0,func_1df60	# 1df60
	il	$5,-1
	br	label_105f0	# 105f0
label_10510:
	ila	$3,154720	# 25c60
	brsl	$0,func_1ddc8	# 1ddc8
	ila	$3,154784	# 25ca0
	lqd	$28,32($1)	# 20
	rotqbyi	$27,$28,13
	andi	$4,$27,255	# ff
	brsl	$0,func_1ddc8	# 1ddc8
	lqd	$26,96($1)	# 60
	ila	$3,154832	# 25cd0
	rotqbyi	$25,$26,13
	andi	$4,$25,255	# ff
	brsl	$0,func_1ddc8	# 1ddc8
	ila	$3,154880	# 25d00
	lqd	$24,80($1)	# 50
	rotqbyi	$23,$24,13
	andi	$4,$23,255	# ff
	brsl	$0,func_1ddc8	# 1ddc8
	lqd	$22,64($1)	# 40
	ila	$3,154928	# 25d30
	rotqbyi	$21,$22,13
	andi	$4,$21,255	# ff
	brsl	$0,func_1ddc8	# 1ddc8
	ila	$3,154976	# 25d60
	lqd	$6,48($1)	# 30
	rotqbyi	$5,$6,13
	andi	$4,$5,255	# ff
	brsl	$0,func_1ddc8	# 1ddc8
	lqd	$4,112($1)	# 70
	ila	$3,155024	# 25d90
	brsl	$0,func_1ddc8	# 1ddc8
	il	$5,0
	lqd	$20,32($1)	# 20
	lqd	$19,96($1)	# 60
	hbrr	label_105c8,label_105dc	# 105dc
	cbd	$6,0($80)
	rotqbyi	$18,$20,13
	rotqbyi	$17,$19,13
	ceqbi	$16,$18,1
	ceqbi	$15,$17,1
	xsbh	$14,$16
	xsbh	$13,$15
	ceqhi	$12,$14,0
	ceqhi	$11,$13,0
	xshw	$8,$12
	xshw	$7,$11
	or	$4,$8,$7
label_105c8:
	brhnz	$4,label_105dc	# 105dc
	lqd	$29,0($80)
	il	$30,1
	shufb	$2,$30,$29,$81
	br	label_105ec	# 105ec
label_105dc:
	lqd	$31,0($80)
	il	$32,0
	fsmbi	$5,0
	shufb	$2,$32,$31,$6
label_105ec:
	stqd	$2,0($80)
label_105f0:
	ori	$3,$5,0
	lqd	$0,176($1)	# b0
	ai	$1,$1,160	# a0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_10608
func_10608:
	hbrr	label_10634,func_1bc10	# 1bc10
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$83,-64($1)
	ori	$83,$3,0
	stqd	$0,16($1)
	ori	$3,$4,0
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
label_10634:
	brsl	$0,func_1bc10	# 1bc10
	ai	$4,$80,128	# 80
	ori	$2,$3,0
	ori	$3,$83,0
	brz	$2,label_10654	# 10654
	ori	$4,$2,0
	ila	$3,155072	# 25dc0
	br	label_10670	# 10670
label_10654:
	brsl	$0,func_104b0	# 104b0
	ai	$82,$80,140	# 8c
	ori	$4,$3,0
	ai	$2,$80,13
	ila	$3,155200	# 25e40
	brz	$4,label_1067c	# 1067c
	ila	$3,155136	# 25e00
label_10670:
	brsl	$0,func_1df60	# 1df60
	il	$3,-1
	br	label_106f4	# 106f4
label_1067c:
	lqd	$5,128($80)	# 80
	ai	$81,$80,136	# 88
	rotqby	$4,$5,$2
	andi	$4,$4,255	# ff
	brsl	$0,func_1ddc8	# 1ddc8
	il	$7,132	# 84
	hbrr	label_106b8,func_10368	# 10368
	ila	$10,65536	# 10000
	cwd	$8,4($80)
	ori	$4,$81,0
	lqx	$9,$80,$7
	ori	$3,$83,0
	shlqbyi	$5,$82,0
	shufb	$6,$10,$9,$8
	stqx	$6,$80,$7
label_106b8:
	brsl	$0,func_10368	# 10368
	ori	$2,$3,0
	ila	$3,155296	# 25ea0
	ori	$4,$2,0
	brz	$2,label_106d4	# 106d4
	ila	$3,155232	# 25e60
	br	label_10670	# 10670
label_106d4:
	lqd	$12,0($81)
	rotqby	$4,$12,$81
	brsl	$0,func_1ddc8	# 1ddc8
	ila	$3,155344	# 25ed0
	lqd	$11,0($82)
	rotqby	$4,$11,$82
	brsl	$0,func_1ddc8	# 1ddc8
	il	$3,0
label_106f4:
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
.global func_10710
func_10710:
	hbrr	label_10734,func_eb98	# eb98
	rotqbyi	$8,$3,8
	lqr	$5,data_25f10	# 25f10
	lqr	$2,data_22810	# 22810
	shlqbyi	$7,$8,9
	shlqbii	$6,$7,5
	cg	$3,$6,$5
	shufb	$3,$3,$3,$2
	addx	$3,$6,$5
label_10734:
	br	func_eb98	# eb98
.global func_10738
func_10738:
	hbrr	label_1075c,func_1040	# 1040
	rotqbyi	$8,$3,8
	lqr	$5,data_25f20	# 25f20
	lqr	$2,data_22810	# 22810
	shlqbyi	$7,$8,10
	shlqbii	$6,$7,3
	cg	$3,$6,$5
	shufb	$3,$3,$3,$2
	addx	$3,$6,$5
label_1075c:
	br	func_1040	# 1040
.global func_10760
func_10760:
	rotqbyi	$7,$3,8
	hbrr	label_10788,func_1040	# 1040
	lqr	$5,data_25f30	# 25f30
	lqr	$2,data_22810	# 22810
	shlqbyi	$4,$7,10
	shlqbii	$6,$4,3
	il	$4,1
	cg	$3,$6,$5
	shufb	$3,$3,$3,$2
	addx	$3,$6,$5
label_10788:
	br	func_1040	# 1040
	lnop
.global func_10790
func_10790:
	lqr	$3,data_25f40	# 25f40
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_780	# 780
	ori	$80,$3,0
	lqr	$3,data_25f50	# 25f50
	brsl	$0,func_780	# 780
	rotqmbii	$22,$80,-6
	rotqmbii	$21,$3,-6
	fsmbi	$20,257	# 101
	lqr	$7,data_22810	# 22810
	rotqmbyi	$19,$22,-6
	rotqmbyi	$16,$21,-6
	lqd	$0,64($1)	# 40
	andbi	$10,$20,32	# 20
	rotqbyi	$18,$19,8
	ai	$1,$1,48	# 30
	rotqbyi	$15,$16,8
	lqd	$80,-16($1)
	shlqbyi	$17,$18,8
	shlqbyi	$14,$15,8
	hbr	label_10828,$0
	shlqbii	$11,$17,5
	shlqbii	$9,$14,5
	cg	$13,$11,$10
	cg	$12,$9,$10
	shufb	$4,$13,$13,$7
	shufb	$8,$12,$12,$7
	addx	$4,$11,$10
	addx	$8,$9,$10
	cg	$6,$4,$8
	shufb	$5,$6,$6,$7
	addx	$5,$4,$8
	rotqbyi	$2,$5,8
	shlqbyi	$3,$2,10
	shlqbii	$3,$3,4
label_10828:
	bi	$0
	lnop
.global func_10830
func_10830:
	hbrr	label_10854,func_15a8	# 15a8
	rotqbyi	$7,$3,8
	lqr	$4,data_25f60	# 25f60
	lqr	$2,data_22810	# 22810
	shlqbyi	$6,$7,10
	shlqbii	$5,$6,3
	cg	$3,$5,$4
	shufb	$3,$3,$3,$2
	addx	$3,$5,$4
label_10854:
	br	func_15a8	# 15a8
.global func_10858
func_10858:
	hbrr	label_1087c,label_1089c	# 1089c
	ila	$6,253952	# 3e000
	ori	$9,$3,0
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$0,16($1)
	il	$5,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
label_1087c:
	br	label_1089c	# 1089c
label_10880:
	hbrr	label_108a8,0
	lqx	$11,$5,$4
	lqx	$10,$5,$6
	rotqby	$2,$11,$7
	shufb	$3,$2,$10,$8
	stqx	$3,$5,$6
	ai	$5,$5,4
label_1089c:
	clgt	$12,$80,$5
	a	$7,$5,$4
	cwx	$8,$5,$6
label_108a8:
	brnz	$12,label_10880	# 10880
	hbrr	label_108e0,func_730	# 730
	ori	$8,$9,0
	shlqbyi	$7,$9,4
	ila	$9,253952	# 3e000
	shlqbyi	$6,$80,0
	il	$5,2
	wrch	$ch16,$9
	il	$4,32	# 20
	wrch	$ch17,$8
	wrch	$ch18,$7
	wrch	$ch19,$6
	wrch	$ch20,$5
	wrch	$ch21,$4
label_108e0:
	brsl	$0,func_730	# 730
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	shlqbyi	$3,$80,0
	lqd	$80,-16($1)
	bi	$0
.global func_108f8
func_108f8:
	il	$32,-1504
	hbrr	label_10970,func_1f718	# 1f718
	il	$4,0
	stqd	$80,-16($1)
	il	$5,48	# 30
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	ori	$82,$6,0
	stqd	$87,-128($1)
	ori	$87,$3,0
	stqd	$90,-176($1)
	andi	$80,$82,255	# ff
	stqd	$0,16($1)
	il	$90,0
	stqd	$84,-80($1)
	il	$82,0
	stqd	$85,-96($1)
	stqd	$86,-112($1)
label_10944:
	hbrp
	stqd	$88,-144($1)
	stqd	$89,-160($1)
	stqd	$91,-192($1)
	stqd	$92,-208($1)
	stqd	$1,-1504($1)
	a	$1,$1,$32
	ai	$31,$1,159	# 9f
	ai	$83,$1,256	# 100
	andi	$81,$31,-128
	ori	$3,$81,0
label_10970:
	brsl	$0,func_1f718	# 1f718
	il	$26,12
	il	$29,16384	# 4000
	cwd	$30,12($81)
	il	$21,20	# 14
	lqx	$28,$81,$26
	il	$24,1
	cwd	$25,4($81)
	il	$17,24	# 18
	cwd	$20,8($81)
	il	$13,-1
	cdd	$7,0($1)
	cdd	$8,8($1)
	shufb	$27,$29,$28,$30
	stqx	$27,$81,$26
	lqx	$23,$81,$21
	shufb	$22,$24,$23,$25
	stqx	$22,$81,$21
	lqx	$19,$81,$17
	shufb	$18,$80,$19,$20
	stqx	$18,$81,$17
	lqd	$16,256($1)	# 100
	lqd	$15,272($1)	# 110
	lqd	$14,288($1)	# 120
	lqd	$12,304($1)	# 130
	shufb	$11,$13,$16,$7
	shufb	$10,$13,$15,$7
	shufb	$9,$13,$14,$7
	shufb	$6,$13,$12,$7
	shufb	$2,$13,$11,$8
	shufb	$3,$13,$10,$8
	shufb	$5,$13,$9,$8
	shufb	$4,$13,$6,$8
	stqd	$2,256($1)	# 100
	stqd	$3,272($1)	# 110
	stqd	$5,288($1)	# 120
	stqd	$4,304($1)	# 130
label_10a04:
	ori	$3,$82,0
	lqr	$80,data_22810	# 22810
	brsl	$0,func_1630	# 1630
	ceqbi	$34,$3,0
	shlqbyi	$3,$82,0
	xsbh	$33,$34
	brhnz	$33,label_10a50	# 10a50
	brsl	$0,func_10830	# 10830
	cdd	$4,0($83)
	andi	$37,$3,1
	ceqbi	$36,$37,0
	xsbh	$35,$36
	brhz	$35,label_10a50	# 10a50
	ai	$90,$90,1
	hbrr	label_10a7c,label_10a04	# 10a04
	lqd	$39,0($83)
	shufb	$38,$82,$39,$4
	stqd	$38,0($83)
	ai	$83,$83,8
label_10a50:
	fsmbi	$48,257	# 101
	fsmbi	$47,257	# 101
	andhi	$45,$48,257	# 101
	andbi	$43,$47,8
	cg	$46,$82,$45
	shufb	$44,$46,$46,$80
	addx	$44,$82,$45
	ori	$82,$44,0
	ceq	$42,$82,$43
	gb	$41,$42
	cgti	$40,$41,11
label_10a7c:
	brz	$40,label_10a04	# 10a04
	brnz	$90,label_10aac	# 10aac
	ilhu	$49,45056	# b000
	ila	$3,155520	# 25f80
	ori	$4,$49,9
	br	label_10aa0	# 10aa0
label_10a94:
	ilhu	$50,45056	# b000
	ila	$3,155568	# 25fb0
	ori	$4,$50,4
label_10aa0:
	brsl	$0,func_1df60	# 1df60
	il	$3,0
	br	label_10ef0	# 10ef0
label_10aac:
	rotqmbyi	$56,$90,-4
	ori	$3,$87,0
	fsmbi	$91,0
	il	$89,0
	xswd	$4,$56
	brsl	$0,func_21148	# 21148
	lqr	$54,data_25f70	# 25f70
	il	$51,-32768
	cg	$55,$3,$54
	shufb	$53,$55,$55,$80
	addx	$53,$3,$54
	shlqbyi	$52,$53,4
	and	$92,$52,$51
	br	label_10d40	# 10d40
label_10ae4:
	ai	$63,$1,256	# 100
	fsmbi	$62,257	# 101
	lqx	$60,$89,$63
	a	$61,$89,$63
	andbi	$4,$62,33	# 21
	rotqby	$84,$60,$61
	ori	$3,$84,0
	brsl	$0,func_10710	# 10710
	hbrr	label_10b3c,label_10c00	# 10c00
	ilhu	$59,32581	# 7f45
	lqr	$58,data_29880	# 29880
	iohl	$59,19526	# 4c46
	ceq	$57,$58,$59
	brz	$57,label_10a94	# 10a94
	lqr	$66,data_29890	# 29890
	rotqbyi	$65,$66,14
	ceqhi	$64,$65,2
	brhz	$64,label_10a94	# 10a94
	rotqbyi	$67,$84,8
	il	$85,0
	shlqbyi	$86,$67,10
	shlqbii	$86,$86,3
label_10b3c:
	br	label_10c00	# 10c00
label_10b40:
	shli	$72,$85,5
	lqr	$74,data_29890	# 29890
	ila	$88,170112	# 29880
	hbrr	label_10b68,label_10bfc	# 10bfc
	rotqbyi	$73,$74,12
	a	$71,$73,$88
	a	$82,$72,$71
	lqx	$70,$72,$71
	rotqby	$69,$70,$82
	ceqi	$68,$69,1
label_10b68:
	brz	$68,label_10bfc	# 10bfc
	lqd	$75,16($82)
	il	$83,0
	rotqby	$80,$75,$82
	br	label_10be4	# 10be4
label_10b7c:
	lqd	$17,0($5)
	andbi	$13,$8,2
	hbrr	label_10be0,func_10858	# 10858
	cg	$6,$86,$10
	lqd	$15,0($9)
	il	$7,8192	# 2000
	shufb	$77,$6,$6,$11
	clgt	$16,$80,$7
	rotqby	$3,$17,$5
	selb	$12,$80,$7,$16
	addx	$77,$86,$10
	ai	$5,$12,15
	rotqby	$14,$15,$9
	sf	$80,$12,$80
	rotqmbyi	$79,$3,-4
	andi	$5,$5,-16
	a	$4,$88,$14
	cg	$2,$79,$13
	a	$4,$83,$4
	a	$83,$83,$12
	shufb	$76,$2,$2,$11
	addx	$76,$79,$13
	cg	$78,$76,$77
	shufb	$3,$78,$78,$11
	addx	$3,$76,$77
label_10be0:
	brsl	$0,func_10858	# 10858
label_10be4:
	lqr	$11,data_22810	# 22810
	ai	$5,$82,8
	fsmbi	$8,8224	# 2020
	ai	$9,$82,4
	rotqmbyi	$10,$83,-4
	brnz	$80,label_10b7c	# 10b7c
label_10bfc:
	ai	$85,$85,1
label_10c00:
	ila	$9,65535	# ffff
	lqr	$10,data_298a0	# 298a0
	rotqbyi	$8,$10,10
	and	$88,$8,$9
	clgt	$83,$88,$85
	brnz	$83,label_10b40	# 10b40
	ori	$3,$84,0
	il	$4,1024	# 400
	ai	$91,$91,1
	brsl	$0,func_10738	# 10738
	il	$41,8
	lqd	$60,0($81)
	ai	$40,$81,12
	shlqbyi	$57,$84,4
	ai	$37,$81,20	# 14
	lqr	$84,data_22830	# 22830
	ai	$35,$81,24	# 18
	rotqmbyi	$49,$92,-4
	ai	$33,$81,28	# 1c
	lqd	$56,32($81)	# 20
	ai	$31,$81,44	# 2c
	lqx	$43,$81,$41
	ori	$11,$57,0
	rotqby	$55,$60,$81
	ila	$3,155616	# 25fe0
	hbrr	label_10ce8,func_1df60	# 1df60
	ai	$89,$89,8
	cwd	$58,0($81)
	cwd	$45,8($81)
	bg	$59,$55,$87
	ori	$4,$55,0
	lqr	$82,data_22810	# 22810
	shufb	$47,$59,$59,$84
	shufb	$54,$57,$56,$58
	sfx	$47,$55,$87
	stqd	$54,32($81)	# 20
	clgt	$53,$47,$49
	ceq	$51,$47,$49
	xswd	$52,$53
	selb	$50,$53,$52,$51
	fsm	$48,$50
	selb	$46,$47,$49,$48
	shlqbyi	$44,$46,4
	shufb	$42,$44,$43,$45
	ori	$5,$44,0
	stqx	$42,$81,$41
	lqd	$39,0($40)
	lqd	$38,16($81)
	lqd	$36,0($37)
	lqd	$34,0($35)
	lqd	$32,0($33)
	lqd	$30,0($31)
	rotqby	$6,$39,$40
	rotqby	$7,$38,$81
	rotqby	$8,$36,$37
	rotqby	$9,$34,$35
	rotqby	$10,$32,$33
	rotqby	$12,$30,$31
label_10ce8:
	brsl	$0,func_1df60	# 1df60
	fsmbi	$29,8224	# 2020
	ori	$4,$81,0
	il	$5,48	# 30
	andbi	$27,$29,2
	cg	$28,$86,$27
	shufb	$3,$28,$28,$82
	addx	$3,$86,$27
	brsl	$0,func_10858	# 10858
	ai	$25,$81,8
	lqd	$26,0($81)
	lqd	$24,0($25)
	hbrr	label_10d44,label_10ae4	# 10ae4
	cdd	$19,0($81)
	rotqby	$20,$26,$81
	rotqby	$23,$24,$25
	rotqmbyi	$21,$23,-4
	cg	$22,$20,$21
	shufb	$18,$22,$22,$82
	addx	$18,$20,$21
	shufb	$85,$18,$26,$19
	stqd	$85,0($81)
label_10d40:
	cgt	$61,$90,$91
label_10d44:
	brnz	$61,label_10ae4	# 10ae4
	il	$81,0
	fsmbi	$80,0
	br	label_10d64	# 10d64
label_10d54:
	lqx	$87,$80,$3
	ai	$80,$80,8
	rotqby	$3,$87,$4
	brsl	$0,func_10760	# 10760
label_10d64:
	ai	$3,$1,256	# 100
	cgt	$89,$90,$81
	a	$4,$80,$3
	ai	$81,$81,1
	brnz	$89,label_10d54	# 10d54
	il	$87,0
label_10d7c:
	il	$86,0
	il	$85,0
	fsmbi	$82,0
	br	label_10ec4	# 10ec4
label_10d8c:
	lqx	$65,$82,$83
	hbrr	label_10db4,func_10830	# 10830
	rotqby	$81,$65,$3
	ceq	$64,$81,$92
	shlqbyi	$3,$81,0
	gb	$63,$64
	cgti	$62,$63,11
	brnz	$62,label_10eb4	# 10eb4
	rotqbyi	$80,$81,8
	ai	$84,$1,320	# 140
label_10db4:
	brsl	$0,func_10830	# 10830
	ori	$4,$91,0
	hbrr	label_10de8,func_970	# 970
	il	$5,48	# 30
	fsmbi	$73,8224	# 2020
	ori	$88,$3,0
	shlqbyi	$74,$80,10
	andbi	$71,$73,2
	shlqbii	$70,$74,3
	cg	$72,$70,$71
	shufb	$80,$72,$72,$89
	addx	$80,$70,$71
	ori	$3,$80,0
label_10de8:
	brsl	$0,func_970	# 970
	hbrr	label_10e10,label_10e70	# 10e70
	il	$5,976	# 3d0
	lqd	$68,240($1)	# f0
	ori	$4,$84,0
	fsmbi	$69,257	# 101
	andbi	$6,$69,48	# 30
	rotqbyi	$66,$68,12
	cg	$67,$80,$6
	shufb	$2,$67,$67,$89
label_10e10:
	brz	$66,label_10e70	# 10e70
	ori	$3,$2,0
	addx	$3,$80,$6
	brsl	$0,func_970	# 970
	hbrr	label_10e44,func_1df60	# 1df60
	lqd	$79,1280($1)	# 500
	il	$13,0
	cbd	$12,15($1)
	ori	$5,$84,0
	shlqbyi	$4,$81,0
	ila	$3,155760	# 26070
	shufb	$78,$13,$79,$12
	stqd	$78,1280($1)	# 500
label_10e44:
	brsl	$0,func_1df60	# 1df60
	hbrr	label_10e6c,func_10858	# 10858
	lqd	$75,240($1)	# f0
	il	$76,0
	cwd	$77,12($1)
	ori	$4,$91,0
	shlqbyi	$3,$80,0
	il	$5,48	# 30
	shufb	$91,$76,$75,$77
	stqd	$91,240($1)	# f0
label_10e6c:
	brsl	$0,func_10858	# 10858
label_10e70:
	andi	$5,$88,2
	shlqbyi	$4,$81,0
	ila	$3,155776	# 26080
	brz	$5,label_10eb8	# 10eb8
	lqd	$7,240($1)	# f0
	rotqbyi	$5,$7,8
	brsl	$0,func_1df60	# 1df60
	hbrr	label_10eb0,label_10eb8	# 10eb8
	lqx	$14,$82,$83
	cdx	$15,$82,$83
	shufb	$4,$92,$14,$15
	stqx	$4,$82,$83
	lqd	$2,240($1)	# f0
	rotqbyi	$92,$2,8
	brz	$92,label_10eb8	# 10eb8
	ai	$87,$87,1
label_10eb0:
	br	label_10eb8	# 10eb8
label_10eb4:
	ai	$86,$86,1
label_10eb8:
	hbrr	label_10edc,label_10d8c	# 10d8c
	ai	$85,$85,1
	ai	$82,$82,8
label_10ec4:
	lqr	$89,data_22810	# 22810
	ai	$83,$1,256	# 100
	fsmbi	$92,65535	# ffff
	cgt	$16,$90,$85
	a	$3,$82,$83
	ai	$91,$1,208	# d0
label_10edc:
	brnz	$16,label_10d8c	# 10d8c
	ceq	$3,$86,$90
	brz	$3,label_10d7c	# 10d7c
	ceqi	$90,$87,0
	sfi	$3,$90,0
label_10ef0:
	il	$86,1504	# 5e0
	lqd	$0,1520($1)	# 5f0
	a	$1,$1,$86
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	hbr	label_10f34,$0
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
label_10f34:
	bi	$0
.global func_10f38
func_10f38:
	andi	$25,$5,240	# f0
	lqr	$24,data_260c0	# 260c0
	andi	$17,$5,15
	stqd	$1,-64($1)
	ai	$1,$1,-64
	lqr	$23,data_260b0	# 260b0
	rotmi	$18,$25,-4
	lqd	$14,0($4)
	ai	$16,$1,32	# 20
	lqd	$20,48($1)	# 30
	il	$12,1
	cbd	$22,0($1)
	ai	$10,$17,13
	rotqbyi	$21,$24,13
	ai	$9,$18,13
	hbr	label_10fb4,$0
	stqd	$23,32($1)	# 20
	cbd	$11,0($4)
	shufb	$19,$21,$20,$22
	cbd	$13,1($4)
	stqd	$19,48($1)	# 30
	lqx	$15,$16,$18
	ai	$1,$1,64	# 40
	lqx	$6,$16,$17
	rotqby	$7,$15,$9
	rotqby	$3,$6,$10
	shufb	$8,$7,$14,$11
	stqd	$8,0($4)
	lqx	$5,$4,$12
	shufb	$2,$3,$5,$13
	stqx	$2,$4,$12
label_10fb4:
	bi	$0
.global func_10fb8
func_10fb8:
	ilhu	$8,52429	# cccd
	hbrr	label_11028,label_110bc	# 110bc
	ilhu	$3,52428	# cccc
	stqd	$1,-48($1)
	iohl	$8,52428	# cccc
	shlqbyi	$12,$4,0
	iohl	$3,52429	# cccd
	cbd	$4,0($4)
	mpyu	$9,$5,$8
	mpyu	$14,$5,$3
	mpyhhu	$15,$5,$3
	cbd	$3,1($12)
	mpyhhu	$11,$5,$8
	ai	$1,$1,-48
	clgti	$2,$5,99	# 63
	cdd	$18,0($1)
	il	$6,120	# 78
	chd	$20,8($1)
	il	$7,1
	cbd	$21,10($1)
	il	$19,1
	brz	$2,label_1102c	# 1102c
	lqd	$10,0($12)
	shufb	$9,$6,$10,$4
	stqd	$9,0($12)
	lqx	$5,$12,$7
	shufb	$4,$6,$5,$3
	stqx	$4,$12,$7
label_11028:
	br	label_110bc	# 110bc
label_1102c:
	lqr	$40,data_260d0	# 260d0
	shli	$41,$9,16
	lqd	$42,32($1)	# 20
	shli	$38,$11,16
	lqd	$22,0($12)
	rotmi	$39,$9,-16
	rotmi	$34,$11,-16
	cg	$33,$14,$41
	rotqbyi	$35,$40,6
	a	$37,$14,$41
	shufb	$36,$40,$42,$18
	addx	$33,$15,$39
	rotqbyi	$30,$40,7
	cg	$32,$37,$38
	ai	$28,$1,32	# 20
	addx	$32,$33,$34
	shufb	$31,$35,$36,$20
	ai	$16,$1,32	# 20
	rotmi	$27,$32,-3
	shufb	$29,$30,$31,$21
	shli	$26,$27,3
	ai	$24,$27,13
	stqd	$29,32($1)	# 20
	a	$25,$27,$27
	lqx	$23,$28,$27
	a	$21,$25,$26
	sf	$18,$21,$5
	ai	$14,$18,13
	rotqby	$20,$23,$24
	lqx	$13,$16,$18
	shufb	$15,$20,$22,$4
	rotqby	$11,$13,$14
	stqd	$15,0($12)
	lqx	$7,$12,$19
	shufb	$6,$11,$7,$3
	stqx	$6,$12,$19
label_110bc:
	ai	$1,$1,48	# 30
	bi	$0
	lnop
.global func_110c8
func_110c8:
	ori	$6,$4,0
	il	$4,42	# 2a
	br	label_110e4	# 110e4
label_110d4:
	lqd	$7,0($6)
	shufb	$2,$4,$7,$3
	stqd	$2,0($6)
	ai	$6,$6,1
label_110e4:
	cgti	$8,$5,0
	ai	$5,$5,-1
	cbd	$3,0($6)
	brnz	$8,label_110d4	# 110d4
	lqd	$9,0($6)
	ori	$4,$3,0
	fsmbi	$3,0
	shufb	$5,$3,$9,$4
	stqd	$5,0($6)
	bi	$0
	lnop
.global func_11110
func_11110:
	ai	$10,$3,168	# a8
	shlqbyi	$5,$4,0
	hbrr	label_1114c,label_11404	# 11404
	lqd	$9,0($10)
	rotqby	$8,$9,$10
	ai	$4,$8,20	# 14
	lqd	$7,0($4)
	rotqby	$6,$7,$4
	rotmi	$3,$6,-24
	andi	$3,$3,63	# 3f
	ceqi	$2,$3,8
	brnz	$2,label_11184	# 11184
	clgti	$11,$3,8
	brnz	$11,label_11154	# 11154
	ceqi	$12,$3,4
label_1114c:
	brz	$12,label_11404	# 11404
	br	label_11194	# 11194
label_11154:
	ceqi	$13,$3,16
	brnz	$13,label_11174	# 11174
	ceqi	$14,$3,32	# 20
	ori	$10,$5,0
	fsmbi	$12,0
	il	$11,0
	brnz	$14,label_111e4	# 111e4
	br	label_11404	# 11404
label_11174:
	ori	$10,$5,0
	il	$12,0
	fsmbi	$11,0
	br	label_1127c	# 1127c
label_11184:
	ori	$10,$5,0
	il	$12,0
	fsmbi	$11,0
	br	label_11314	# 11314
label_11194:
	ori	$10,$5,0
	il	$12,0
	fsmbi	$11,0
	br	label_113ac	# 113ac
label_111a4:
	hbrr	label_111d4,0
	ai	$20,$8,14
	lqd	$19,0($8)
	ai	$9,$9,1
	lqd	$17,0($7)
	ai	$8,$8,2
	chd	$5,0($7)
	ceqi	$15,$9,36	# 24
	rotqby	$18,$19,$20
	shufb	$16,$18,$17,$5
	stqd	$16,0($7)
	ai	$7,$7,2
label_111d4:
	brz	$15,label_111a4	# 111a4
	ai	$11,$11,36	# 24
	ai	$12,$12,1
	ai	$10,$10,72	# 48
label_111e4:
	a	$34,$11,$11
	ila	$35,163120	# 27d30
	hbrr	label_11238,label_111a4	# 111a4
	cgti	$33,$12,63	# 3f
	lqx	$30,$34,$35
	a	$5,$34,$35
	nor	$32,$33,$33
	ai	$31,$5,14
	sfi	$25,$32,0
	rotqby	$29,$30,$31
	ceqhi	$28,$29,-1
	nor	$27,$28,$28
	xshw	$26,$27
	sfi	$24,$26,0
	and	$23,$24,$25
	ceqbi	$22,$23,0
	xsbh	$21,$22
	brhnz	$21,label_11408	# 11408
	ori	$8,$5,0
	ori	$7,$10,0
	fsmbi	$9,0
label_11238:
	br	label_111a4	# 111a4
label_1123c:
	hbrr	label_1126c,0
	ai	$42,$8,14
	lqd	$41,0($8)
	ai	$9,$9,1
	lqd	$38,0($7)
	ai	$8,$8,2
	chd	$40,0($7)
	ceqi	$36,$9,36	# 24
	rotqby	$39,$41,$42
	shufb	$37,$39,$38,$40
	stqd	$37,0($7)
	ai	$7,$7,2
label_1126c:
	brz	$36,label_1123c	# 1123c
	ai	$11,$11,36	# 24
	ai	$12,$12,1
	ai	$10,$10,72	# 48
label_1127c:
	a	$56,$11,$11
	ila	$57,163120	# 27d30
	hbrr	label_112d0,label_1123c	# 1123c
	cgti	$55,$12,63	# 3f
	lqx	$52,$56,$57
	a	$5,$56,$57
	nor	$54,$55,$55
	ai	$53,$5,14
	sfi	$47,$54,0
	rotqby	$51,$52,$53
	ceqhi	$50,$51,-1
	nor	$49,$50,$50
	xshw	$48,$49
	sfi	$46,$48,0
	and	$45,$46,$47
	ceqbi	$44,$45,0
	xsbh	$43,$44
	brhnz	$43,label_11408	# 11408
	ori	$8,$5,0
	ori	$7,$10,0
	fsmbi	$9,0
label_112d0:
	br	label_1123c	# 1123c
label_112d4:
	hbrr	label_11304,0
	ai	$64,$8,14
	lqd	$63,0($8)
	ai	$9,$9,1
	lqd	$60,0($7)
	ai	$8,$8,2
	chd	$62,0($7)
	ceqi	$58,$9,36	# 24
	rotqby	$61,$63,$64
	shufb	$59,$61,$60,$62
	stqd	$59,0($7)
	ai	$7,$7,2
label_11304:
	brz	$58,label_112d4	# 112d4
	ai	$11,$11,36	# 24
	ai	$12,$12,1
	ai	$10,$10,72	# 48
label_11314:
	a	$78,$11,$11
	ila	$79,163120	# 27d30
	hbrr	label_11368,label_112d4	# 112d4
	cgti	$77,$12,63	# 3f
	lqx	$74,$78,$79
	a	$5,$78,$79
	nor	$76,$77,$77
	ai	$75,$5,14
	sfi	$69,$76,0
	rotqby	$73,$74,$75
	ceqhi	$72,$73,-1
	nor	$71,$72,$72
	xshw	$70,$71
	sfi	$68,$70,0
	and	$67,$68,$69
	ceqbi	$66,$67,0
	xsbh	$65,$66
	brhnz	$65,label_11408	# 11408
	ori	$8,$5,0
	ori	$7,$10,0
	fsmbi	$9,0
label_11368:
	br	label_112d4	# 112d4
label_1136c:
	hbrr	label_1139c,0
	ai	$4,$8,14
	lqd	$15,0($8)
	ai	$9,$9,1
	lqd	$13,0($7)
	ai	$8,$8,2
	chd	$14,0($7)
	ceqi	$6,$9,36	# 24
	rotqby	$2,$15,$4
	shufb	$3,$2,$13,$14
	stqd	$3,0($7)
	ai	$7,$7,2
label_1139c:
	brz	$6,label_1136c	# 1136c
	ai	$11,$11,36	# 24
	ai	$12,$12,1
	ai	$10,$10,72	# 48
label_113ac:
	a	$5,$11,$11
	ila	$26,163120	# 27d30
	hbrr	label_11400,label_1136c	# 1136c
	cgti	$25,$12,63	# 3f
	lqx	$22,$5,$26
	a	$5,$5,$26
	nor	$24,$25,$25
	ai	$23,$5,14
	sfi	$17,$24,0
	rotqby	$21,$22,$23
	ceqhi	$20,$21,-1
	nor	$19,$20,$20
	xshw	$18,$19
	sfi	$16,$18,0
	and	$9,$16,$17
	ceqbi	$8,$9,0
	xsbh	$7,$8
	brhnz	$7,label_11408	# 11408
	ori	$8,$5,0
	ori	$7,$10,0
	fsmbi	$9,0
label_11400:
	br	label_1136c	# 1136c
label_11404:
	il	$12,0
label_11408:
	ori	$3,$12,0
	bi	$0
.global func_11410
func_11410:
	hbrr	label_1143c,func_1f8a0	# 1f8a0
	stqd	$80,-16($1)
	ori	$80,$5,0
	stqd	$81,-32($1)
	il	$5,64	# 40
	stqd	$0,16($1)
	ori	$81,$4,0
	stqd	$1,-224($1)
	ai	$1,$1,-224
	ila	$4,157056	# 26580
	ai	$3,$1,128	# 80
label_1143c:
	brsl	$0,func_1f8a0	# 1f8a0
	ceqi	$2,$80,32	# 20
	brz	$2,label_11464	# 11464
	a	$6,$81,$81
	ai	$7,$1,32	# 20
	a	$5,$6,$7
	lqd	$3,96($5)	# 60
	ai	$4,$5,14
	rotqby	$3,$3,$4
	br	label_116e4	# 116e4
label_11464:
	ceqi	$8,$80,16
	brz	$8,label_11538	# 11538
	lqd	$53,32($1)	# 20
	il	$54,3840	# f00
	lqd	$50,48($1)	# 30
	il	$51,0
	chd	$52,0($1)
	il	$48,1792	# 700
	chd	$47,2($1)
	il	$45,2048	# 800
	chd	$42,4($1)
	il	$43,2816	# b00
	chd	$37,6($1)
	il	$40,1024	# 400
	shufb	$49,$54,$53,$52
	il	$38,768	# 300
	shufb	$46,$51,$50,$52
	il	$35,3072	# c00
	chd	$32,8($1)
	il	$33,3328	# d00
	chd	$27,10($1)
	il	$30,512	# 200
	shufb	$44,$48,$49,$47
	il	$28,1280	# 500
	shufb	$41,$45,$46,$47
	il	$25,2560	# a00
	chd	$22,12($1)
	il	$23,2304	# 900
	hbrr	label_11534,label_116e0	# 116e0
	il	$20,1536	# 600
	shufb	$39,$43,$44,$42
	il	$18,256	# 100
	shufb	$36,$40,$41,$42
	il	$16,3584	# e00
	chd	$11,14($1)
	a	$13,$81,$81
	shufb	$34,$38,$39,$37
	ai	$10,$13,32	# 20
	shufb	$31,$35,$36,$37
	ai	$12,$13,14
	shufb	$29,$33,$34,$32
	shufb	$26,$30,$31,$32
	shufb	$24,$28,$29,$27
	shufb	$21,$25,$26,$27
	shufb	$19,$23,$24,$22
	shufb	$17,$20,$21,$22
	shufb	$15,$18,$19,$11
	shufb	$14,$16,$17,$11
	stqd	$15,32($1)	# 20
	stqd	$14,48($1)	# 30
	lqx	$9,$10,$1
	rotqby	$2,$9,$12
label_11534:
	br	label_116e0	# 116e0
label_11538:
	ceqi	$55,$80,8
	brz	$55,label_1160c	# 1160c
	il	$20,1793	# 701
	lqd	$19,64($1)	# 40
	il	$11,0
	lqd	$17,80($1)	# 50
	il	$15,1792	# 700
	chd	$18,0($1)
	il	$10,1
	chd	$14,2($1)
	il	$6,769	# 301
	chd	$7,4($1)
	il	$5,1024	# 400
	chd	$8,6($1)
	a	$79,$81,$81
	shufb	$16,$20,$19,$18
	il	$4,768	# 300
	shufb	$13,$11,$17,$18
	il	$81,1025	# 401
	chd	$76,8($1)
	il	$77,1281	# 501
	chd	$71,10($1)
	il	$74,512	# 200
	shufb	$12,$15,$16,$14
	il	$72,1280	# 500
	shufb	$9,$10,$13,$14
	il	$69,513	# 201
	hbrr	label_11608,label_116dc	# 116dc
	il	$67,257	# 101
	chd	$66,12($1)
	il	$64,1536	# 600
	shufb	$2,$6,$12,$7
	il	$62,256	# 100
	shufb	$3,$5,$9,$7
	il	$59,1537	# 601
	chd	$61,14($1)
	ai	$80,$1,32	# 20
	shufb	$78,$4,$2,$8
	a	$56,$79,$80
	shufb	$75,$81,$3,$8
	ai	$7,$56,14
	shufb	$73,$77,$78,$76
	shufb	$70,$74,$75,$76
	shufb	$68,$72,$73,$71
	shufb	$65,$69,$70,$71
	shufb	$63,$67,$68,$66
	shufb	$60,$64,$65,$66
	shufb	$58,$62,$63,$61
	shufb	$57,$59,$60,$61
	stqd	$58,64($1)	# 40
	stqd	$57,80($1)	# 50
	lqd	$2,32($56)	# 20
label_11608:
	br	label_116dc	# 116dc
label_1160c:
	ceqi	$21,$80,4
	il	$3,0
	brz	$21,label_116ec	# 116ec
	il	$66,771	# 303
	lqd	$65,96($1)	# 60
	il	$63,0
	lqd	$62,112($1)	# 70
	il	$60,769	# 301
	chd	$64,0($1)
	il	$57,2
	chd	$59,2($1)
	il	$55,770	# 302
	chd	$54,4($1)
	il	$52,1
	chd	$49,6($1)
	il	$50,768	# 300
	shufb	$61,$66,$65,$64
	il	$47,3
	shufb	$58,$63,$62,$64
	il	$43,259	# 103
	chd	$42,8($1)
	il	$40,512	# 200
	chd	$37,10($1)
	il	$38,257	# 101
	shufb	$56,$60,$61,$59
	il	$35,514	# 202
	shufb	$53,$57,$58,$59
	il	$33,258	# 102
	chd	$32,12($1)
	il	$30,513	# 201
	chd	$27,14($1)
	il	$28,256	# 100
	shufb	$51,$55,$56,$54
	il	$25,515	# 203
	shufb	$48,$52,$53,$54
	a	$45,$81,$81
	ai	$46,$1,32	# 20
	shufb	$44,$50,$51,$49
	shufb	$41,$47,$48,$49
	a	$22,$45,$46
	shufb	$39,$43,$44,$42
	ai	$7,$22,14
	shufb	$36,$40,$41,$42
	shufb	$34,$38,$39,$37
	shufb	$31,$35,$36,$37
	shufb	$29,$33,$34,$32
	shufb	$26,$30,$31,$32
	shufb	$24,$28,$29,$27
	shufb	$23,$25,$26,$27
	stqd	$24,96($1)	# 60
	stqd	$23,112($1)	# 70
	lqd	$2,64($22)	# 40
label_116dc:
	rotqby	$2,$2,$7
label_116e0:
	ori	$3,$2,0
label_116e4:
	ila	$67,65535	# ffff
	and	$3,$3,$67
label_116ec:
	lqd	$0,240($1)	# f0
	ai	$1,$1,224	# e0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_11700
func_11700:
	ai	$19,$3,168	# a8
	stqd	$1,-64($1)
	ori	$9,$6,0
	shlqbyi	$11,$5,0
	ori	$10,$4,0
	lqd	$18,0($19)
	ai	$1,$1,-64
	hbrr	label_11778,label_11a28	# 11a28
	rotqby	$17,$18,$19
	lqd	$16,112($17)	# 70
	ai	$15,$17,13
	lqd	$14,0($17)
	ai	$6,$17,20	# 14
	ai	$7,$17,136	# 88
	lqd	$13,0($6)
	lqd	$5,0($7)
	rotqby	$8,$16,$15
	rotqby	$12,$14,$15
	andi	$8,$8,255	# ff
	rotqby	$4,$13,$6
	rotqby	$3,$5,$7
	ceqi	$2,$8,32	# 20
	brnz	$2,label_118b4	# 118b4
	cgti	$20,$8,32	# 20
	brnz	$20,label_1177c	# 1177c
	ceqi	$21,$8,4
	brnz	$21,label_11814	# 11814
	ceqi	$22,$8,7
	brnz	$22,label_11848	# 11848
	brz	$8,label_119a0	# 119a0
label_11778:
	br	label_11a28	# 11a28
label_1177c:
	ceqi	$23,$8,41	# 29
	brnz	$23,label_1191c	# 1191c
	ceqi	$24,$8,45	# 2d
	brnz	$24,label_11798	# 11798
	ceqi	$25,$8,33	# 21
	brz	$25,label_11a28	# 11a28
	br	label_118e8	# 118e8
label_11798:
	a	$50,$10,$11
	hbrr	label_11810,label_11ca4	# 11ca4
	cgti	$49,$10,1
	cgti	$48,$11,0
	shli	$43,$50,5
	sfi	$46,$49,0
	sfi	$47,$48,0
	ila	$45,167808	# 28f80
	or	$42,$46,$47
	ila	$44,167744	# 28f40
	a	$39,$43,$45
	a	$41,$43,$44
	ceqbi	$40,$42,0
	lqx	$31,$39,$9
	a	$37,$41,$9
	lqx	$33,$41,$9
	xsbh	$38,$40
	a	$36,$39,$9
	ceqhi	$35,$38,0
	ai	$34,$37,13
	ai	$32,$36,13
	xshw	$30,$35
	cgti	$29,$9,31	# 1f
	rotqby	$10,$33,$34
	il	$11,99	# 63
	rotqby	$27,$31,$32
	or	$28,$30,$29
	ceqhi	$26,$28,0
	selb	$7,$11,$27,$26
	selb	$6,$11,$10,$26
label_11810:
	br	label_11ca4	# 11ca4
label_11814:
	hbrr	label_11844,label_11874	# 11874
	shli	$56,$10,2
	cgti	$57,$10,1
	cgti	$55,$11,3
	sfi	$52,$57,0
	a	$54,$56,$11
	sfi	$53,$55,0
	shli	$3,$54,3
	ila	$51,167936	# 29000
	or	$5,$52,$53
	ila	$2,167872	# 28fc0
	a	$4,$3,$51
label_11844:
	br	label_11874	# 11874
label_11848:
	shli	$63,$10,2
	cgti	$64,$10,1
	cgti	$62,$11,3
	sfi	$59,$64,0
	a	$61,$63,$11
	sfi	$60,$62,0
	shli	$3,$61,3
	ila	$58,168064	# 29080
	or	$5,$59,$60
	ila	$2,168000	# 29040
	a	$4,$3,$58
label_11874:
	hbrr	label_118b0,label_11a04	# 11a04
	a	$74,$3,$2
	lqx	$65,$4,$9
	ceqbi	$73,$5,0
	lqx	$67,$74,$9
	a	$71,$74,$9
	a	$70,$4,$9
	xsbh	$72,$73
	ai	$68,$71,13
	ai	$66,$70,13
	ceqhi	$69,$72,0
	cgti	$3,$9,7
	rotqby	$2,$67,$68
	xshw	$7,$69
	rotqby	$6,$65,$66
label_118b0:
	br	label_11a04	# 11a04
label_118b4:
	hbrr	label_118e4,label_119cc	# 119cc
	a	$3,$10,$10
	cgti	$79,$10,1
	a	$2,$3,$11
	cgti	$78,$11,1
	shli	$3,$2,4
	sfi	$76,$79,0
	sfi	$77,$78,0
	ila	$75,168192	# 29100
	or	$5,$76,$77
	a	$4,$3,$75
	ila	$2,168128	# 290c0
label_118e4:
	br	label_119cc	# 119cc
label_118e8:
	a	$15,$10,$10
	hbrr	label_11918,label_119cc	# 119cc
	cgti	$12,$10,1
	a	$14,$15,$11
	cgti	$6,$11,1
	shli	$3,$14,4
	sfi	$5,$12,0
	sfi	$13,$6,0
	ila	$4,168320	# 29180
	or	$5,$5,$13
	a	$4,$3,$4
	ila	$2,168256	# 29140
label_11918:
	br	label_119cc	# 119cc
label_1191c:
	shli	$39,$10,2
	cgti	$40,$10,1
	hbrr	label_1199c,label_11a1c	# 11a1c
	cgti	$38,$11,4
	sfi	$34,$40,0
	a	$37,$39,$10
	sfi	$35,$38,0
	a	$36,$37,$11
	or	$31,$34,$35
	shli	$32,$36,3
	ila	$33,168464	# 29210
	ila	$30,168384	# 291c0
	ceqbi	$10,$31,0
	a	$27,$32,$33
	a	$29,$32,$30
	xsbh	$28,$10
	lqx	$22,$27,$9
	cgti	$21,$9,7
	lqx	$24,$29,$9
	a	$26,$29,$9
	a	$11,$27,$9
	ceqhi	$9,$28,0
	ai	$23,$11,13
	xshw	$20,$9
	ai	$25,$26,13
	or	$19,$20,$21
	rotqby	$17,$22,$23
	il	$18,99	# 63
	rotqby	$8,$24,$25
	ceqhi	$16,$19,0
	ori	$5,$16,0
	selb	$7,$18,$17,$16
label_1199c:
	br	label_11a1c	# 11a1c
label_119a0:
	a	$47,$10,$10
	cgti	$45,$10,1
	a	$46,$47,$11
	cgti	$44,$11,1
	shli	$3,$46,4
	sfi	$42,$45,0
	sfi	$43,$44,0
	ila	$41,168608	# 292a0
	or	$5,$42,$43
	a	$4,$3,$41
	ila	$2,168544	# 29260
label_119cc:
	a	$57,$3,$2
	ceqbi	$56,$5,0
	lqx	$48,$4,$9
	a	$54,$57,$9
	lqx	$50,$57,$9
	a	$53,$4,$9
	xsbh	$55,$56
	ai	$51,$54,13
	ai	$49,$53,13
	ceqhi	$52,$55,0
	rotqby	$2,$50,$51
	cgti	$3,$9,15
	rotqby	$6,$48,$49
	xshw	$7,$52
label_11a04:
	or	$60,$7,$3
	il	$59,99	# 63
	shlqbyi	$8,$2,0
	ceqhi	$58,$60,0
	ori	$5,$58,0
	selb	$7,$59,$6,$58
label_11a1c:
	il	$62,99	# 63
	selb	$6,$62,$8,$5
	br	label_11ca4	# 11ca4
label_11a28:
	rotmi	$64,$4,-24
	hbrr	label_11a50,label_11c9c	# 11c9c
	ceqi	$65,$3,11
	sfi	$6,$65,0
	andi	$3,$64,63	# 3f
	ceqi	$63,$3,8
	brnz	$63,label_11ad0	# 11ad0
	ceqi	$66,$3,16
	brnz	$66,label_11a58	# 11a58
	ceqi	$67,$3,4
label_11a50:
	brz	$67,label_11c9c	# 11c9c
	br	label_11c1c	# 11c1c
label_11a58:
	cgti	$78,$10,1
	hbrr	label_11a88,label_11c9c	# 11c9c
	cgti	$77,$11,1
	sfi	$75,$78,0
	sfi	$76,$77,0
	cgti	$70,$9,15
	or	$74,$75,$76
	ceqbi	$73,$74,0
	xsbh	$72,$73
	ceqhi	$71,$72,0
	xshw	$69,$71
	or	$68,$69,$70
label_11a88:
	brhnz	$68,label_11c9c	# 11c9c
	hbrr	label_11ab4,label_11b78	# 11b78
	ceqbi	$2,$6,0
	a	$3,$10,$10
	xsbh	$79,$2
	brhnz	$79,label_11ab8	# 11ab8
	a	$4,$3,$11
	ila	$3,169184	# 294e0
	shli	$2,$4,4
	ila	$4,169120	# 294a0
	a	$3,$2,$3
label_11ab4:
	br	label_11b78	# 11b78
label_11ab8:
	a	$13,$3,$11
	ila	$5,169760	# 29720
	shli	$2,$13,4
	ila	$4,169696	# 296e0
	a	$3,$2,$5
	br	label_11b78	# 11b78
label_11ad0:
	ceqbi	$15,$12,4
	xsbh	$14,$15
	brhnz	$14,label_11ba4	# 11ba4
	cgti	$33,$10,1
	cgti	$30,$11,4
	hbrr	label_11b2c,label_11c9c	# 11c9c
	sfi	$31,$33,0
	sfi	$32,$30,0
	cgti	$22,$9,7
	or	$29,$31,$32
	ceqbi	$27,$12,5
	ceqbi	$28,$29,0
	xsbh	$26,$27
	xsbh	$25,$28
	ceqhi	$24,$26,0
	ceqhi	$23,$25,0
	xshw	$18,$24
	xshw	$20,$23
	or	$8,$20,$22
	ceqhi	$19,$8,0
	nor	$17,$19,$19
	xshw	$16,$17
	or	$12,$18,$16
label_11b2c:
	brhnz	$12,label_11c9c	# 11c9c
	ceqbi	$21,$6,0
	hbrr	label_11b5c,label_11b78	# 11b78
	shli	$4,$10,2
	xsbh	$6,$21
	brhnz	$6,label_11b60	# 11b60
	a	$34,$4,$10
	ila	$4,168832	# 29380
	a	$10,$34,$11
	ila	$11,168912	# 293d0
	shli	$2,$10,3
	a	$3,$2,$11
label_11b5c:
	br	label_11b78	# 11b78
label_11b60:
	a	$37,$4,$10
	ila	$35,169488	# 29610
	a	$36,$37,$11
	ila	$4,169408	# 295c0
	shli	$2,$36,3
	a	$3,$2,$35
label_11b78:
	a	$43,$2,$4
	hbrr	label_11ba0,label_11ca4	# 11ca4
	a	$41,$3,$9
	lqx	$38,$3,$9
	a	$42,$43,$9
	lqx	$39,$43,$9
	ai	$9,$41,13
	ai	$40,$42,13
	rotqby	$7,$38,$9
	rotqby	$6,$39,$40
label_11ba0:
	br	label_11ca4	# 11ca4
label_11ba4:
	hbrr	label_11bd4,label_11c9c	# 11c9c
	cgti	$54,$10,1
	cgti	$53,$11,3
	sfi	$51,$54,0
	sfi	$52,$53,0
	cgti	$46,$9,7
	or	$50,$51,$52
	ceqbi	$49,$50,0
	xsbh	$48,$49
	ceqhi	$47,$48,0
	xshw	$45,$47
	or	$44,$45,$46
label_11bd4:
	brhnz	$44,label_11c9c	# 11c9c
	ceqbi	$56,$6,0
	hbrr	label_11c00,label_11b78	# 11b78
	shli	$4,$10,2
	xsbh	$55,$56
	brhnz	$55,label_11c04	# 11c04
	a	$58,$4,$11
	ila	$57,169056	# 29460
	shli	$2,$58,3
	ila	$4,168992	# 29420
	a	$3,$2,$57
label_11c00:
	br	label_11b78	# 11b78
label_11c04:
	a	$60,$4,$11
	ila	$59,169632	# 296a0
	shli	$2,$60,3
	ila	$4,169568	# 29660
	a	$3,$2,$59
	br	label_11b78	# 11b78
label_11c1c:
	hbrr	label_11c4c,label_11c9c	# 11c9c
	cgti	$71,$10,1
	cgti	$70,$11,8
	sfi	$68,$71,0
	sfi	$69,$70,0
	cgti	$63,$9,3
	or	$67,$68,$69
	ceqbi	$66,$67,0
	xsbh	$65,$66
	ceqhi	$64,$65,0
	xshw	$62,$64
	or	$61,$62,$63
label_11c4c:
	brhnz	$61,label_11c9c	# 11c9c
	ceqbi	$73,$6,0
	hbrr	label_11c7c,label_11b78	# 11b78
	shli	$3,$10,3
	xsbh	$72,$73
	brhnz	$72,label_11c80	# 11c80
	a	$76,$3,$10
	ila	$74,168752	# 29330
	a	$75,$76,$11
	ila	$4,168672	# 292e0
	shli	$2,$75,2
	a	$3,$2,$74
label_11c7c:
	br	label_11b78	# 11b78
label_11c80:
	a	$79,$3,$10
	ila	$77,169328	# 29570
	a	$78,$79,$11
	ila	$4,169248	# 29520
	shli	$2,$78,2
	a	$3,$2,$77
	br	label_11b78	# 11b78
label_11c9c:
	il	$7,99	# 63
	il	$6,99	# 63
label_11ca4:
	hbr	label_11cc8,$0
	lqd	$13,32($1)	# 20
	cbd	$14,1($1)
	cbd	$4,0($1)
	ai	$1,$1,64	# 40
	shufb	$5,$7,$13,$14
	shufb	$3,$6,$5,$4
	rotqbyi	$2,$3,14
	shli	$3,$2,16
label_11cc8:
	bi	$0
	lnop
.global func_11cd0
func_11cd0:
	il	$43,15
	stqd	$1,-64($1)
	ai	$1,$1,-64
	hbrr	label_11de8,label_11da0	# 11da0
	il	$40,13
	fsmbi	$5,0
	il	$37,11
	lqd	$42,32($1)	# 20
	il	$34,9
	lqd	$39,48($1)	# 30
	il	$13,5
	chd	$41,0($1)
	il	$32,7
	chd	$36,2($1)
	il	$8,3
	chd	$31,4($1)
	il	$14,1
	chd	$9,6($1)
	il	$27,14
	shufb	$38,$43,$42,$41
	il	$24,12
	shufb	$35,$40,$39,$41
	il	$22,10
	chd	$26,8($1)
	il	$19,8
	chd	$21,10($1)
	il	$17,6
	shufb	$33,$37,$38,$36
	il	$11,4
	shufb	$30,$34,$35,$36
	il	$6,2
	chd	$7,12($1)
	chd	$12,14($1)
	shufb	$29,$32,$33,$31
	shufb	$15,$13,$30,$31
	ila	$13,65535	# ffff
	shufb	$28,$8,$29,$9
	shufb	$25,$14,$15,$9
	and	$14,$4,$13
	fsmbi	$8,0
	il	$9,0
	shufb	$23,$27,$28,$26
	ila	$15,32768	# 8000
	shufb	$20,$24,$25,$26
	shufb	$18,$22,$23,$21
	shufb	$16,$19,$20,$21
	shufb	$10,$17,$18,$7
	shufb	$4,$11,$16,$7
	shufb	$3,$6,$10,$12
	shufb	$2,$5,$4,$12
	stqd	$3,32($1)	# 20
	stqd	$2,48($1)	# 30
label_11da0:
	a	$57,$8,$8
	sfi	$59,$8,0
	ai	$58,$57,32	# 20
	ai	$55,$57,14
	rotma	$56,$15,$59
	lqx	$54,$58,$1
	ai	$8,$8,1
	ceqi	$44,$8,16
	or	$46,$9,$56
	rotqby	$53,$54,$55
	and	$52,$13,$53
	sfi	$51,$52,0
	rotma	$50,$14,$51
	andi	$49,$50,1
	ceqbi	$48,$49,0
	xsbh	$47,$48
	ceqhi	$45,$47,0
	selb	$9,$9,$46,$45
label_11de8:
	brz	$44,label_11da0	# 11da0
	and	$3,$13,$9
	ai	$1,$1,64	# 40
	bi	$0
.global func_11df8
func_11df8:
	andi	$19,$5,2
	hbr	label_11e48,$0
	ceqi	$18,$4,8
	fsmbi	$14,0
	andi	$17,$5,6
	rotmi	$15,$19,-1
	ceqi	$16,$4,4
	ceqi	$13,$18,0
	rotmi	$12,$17,-1
	ceqi	$11,$16,0
	selb	$10,$15,$14,$13
	andi	$8,$5,62	# 3e
	andi	$7,$5,1
	selb	$9,$12,$10,$11
	shli	$4,$7,6
	andi	$6,$9,3
	shli	$2,$8,7
	shli	$3,$6,13
	or	$5,$4,$2
	or	$3,$3,$5
label_11e48:
	bi	$0
	lnop
.global func_11e50
func_11e50:
	shli	$2,$4,6
	hbrr	label_11f84,label_11e74	# 11e74
	ori	$22,$6,0
	fsmbi	$21,0
	shli	$6,$4,3
	a	$3,$6,$2
	a	$4,$3,$3
	a	$24,$5,$4
	ai	$20,$24,16
label_11e74:
	lqd	$72,0($20)
	a	$7,$22,$21
	cwx	$42,$21,$22
	il	$67,8
	ai	$27,$20,14
	ai	$66,$20,-4
	lqx	$69,$7,$67
	ai	$65,$20,-2
	cbd	$71,8($7)
	ai	$64,$20,-6
	rotqby	$70,$72,$27
	ai	$62,$20,10
	cwd	$19,4($7)
	ai	$63,$20,-8
	ai	$59,$20,12
	ai	$56,$20,8
	shufb	$68,$70,$69,$71
	ai	$53,$20,6
	ai	$38,$20,-12
	ai	$37,$20,-10
	stqx	$68,$7,$67
	ai	$36,$20,-14
	lqd	$61,0($66)
	ai	$35,$20,2
	lqd	$58,0($65)
	ai	$32,$20,4
	lqd	$55,0($64)
	il	$10,4
	lqd	$52,0($63)
	lqx	$40,$21,$22
	rotqby	$60,$61,$62
	rotqby	$57,$58,$59
	rotqby	$51,$55,$56
	rotqby	$50,$52,$53
	andi	$54,$60,255	# ff
	shli	$47,$57,24	# 18
	shli	$48,$54,16
	andi	$49,$51,255	# ff
	andi	$46,$50,255	# ff
	shli	$43,$49,8
	or	$45,$47,$48
	or	$44,$45,$46
	or	$41,$43,$44
	shufb	$39,$41,$40,$42
	stqx	$39,$21,$22
	ai	$21,$21,12
	lqd	$34,0($38)
	lqd	$31,0($37)
	lqd	$29,0($36)
	ceqi	$8,$21,48	# 30
	lqd	$26,-16($20)
	lqx	$11,$7,$10
	rotqby	$33,$34,$35
	rotqby	$30,$31,$32
	rotqby	$25,$29,$20
	ai	$20,$20,18	# 12
	rotqby	$23,$26,$27
	andi	$28,$33,255	# ff
	shli	$16,$30,24	# 18
	shli	$18,$28,16
	andi	$17,$25,255	# ff
	andi	$15,$23,255	# ff
	shli	$12,$17,8
	or	$14,$16,$18
	or	$13,$14,$15
	or	$9,$12,$13
	shufb	$5,$9,$11,$19
	stqx	$5,$7,$10
label_11f84:
	brz	$8,label_11e74	# 11e74
	ai	$19,$24,16
	hbrr	label_120b4,label_11f9c	# 11f9c
	ori	$20,$22,0
	il	$23,4
	ila	$21,65280	# ff00
label_11f9c:
	lqd	$64,0($19)
	ai	$16,$19,14
	cbd	$61,8($20)
	il	$57,56	# 38
	cwd	$32,0($20)
	ai	$56,$19,-2
	cwd	$78,4($20)
	ai	$55,$19,-4
	lqx	$59,$20,$57
	ai	$54,$19,-8
	rotqby	$63,$64,$16
	ai	$52,$19,12
	ai	$53,$19,-6
	ai	$49,$19,10
	and	$62,$21,$63
	ai	$46,$19,6
	rotmai	$60,$62,-8
	ai	$43,$19,8
	ai	$28,$19,-10
	ai	$27,$19,-12
	shufb	$58,$60,$59,$61
	ai	$15,$19,4
	ai	$26,$19,-14
	ai	$25,$19,2
	stqx	$58,$20,$57
	il	$74,52	# 34
	lqd	$51,0($56)
	ai	$23,$23,1
	lqd	$48,0($55)
	lqd	$45,0($54)
	lqd	$42,0($53)
	ceqi	$73,$23,8
	lqd	$30,48($20)	# 30
	rotqby	$50,$51,$52
	rotqby	$47,$48,$49
	rotqby	$44,$45,$46
	rotqby	$38,$42,$43
	and	$41,$21,$50
	and	$39,$21,$47
	and	$40,$21,$44
	shli	$37,$41,16
	rotmai	$36,$40,-8
	shli	$35,$39,8
	selb	$33,$37,$38,$21
	or	$34,$35,$36
	or	$31,$33,$34
	shufb	$29,$31,$30,$32
	stqd	$29,48($20)	# 30
	lqd	$12,-16($19)
	lqd	$17,0($28)
	lqd	$18,0($27)
	lqd	$7,0($26)
	lqx	$76,$20,$74
	rotqby	$9,$12,$16
	rotqby	$14,$17,$15
	rotqby	$13,$18,$25
	rotqby	$8,$7,$19
	and	$5,$21,$9
	and	$11,$21,$14
	and	$10,$21,$13
	shli	$2,$11,16
	rotmai	$4,$5,-8
	shli	$6,$10,8
	ai	$19,$19,18	# 12
	selb	$79,$2,$8,$21
	or	$3,$6,$4
	or	$77,$79,$3
	shufb	$75,$77,$76,$78
	stqx	$75,$20,$74
	ai	$20,$20,12
label_120b4:
	brz	$73,label_11f9c	# 11f9c
	ai	$19,$24,88	# 58
	hbrr	label_121d4,label_120c4	# 120c4
	ori	$20,$22,0
label_120c4:
	lqd	$53,0($19)
	il	$48,104	# 68
	cbd	$52,8($20)
	ai	$16,$19,14
	cwd	$14,0($20)
	ai	$47,$19,-4
	lqx	$50,$20,$48
	ai	$46,$19,-2
	cwd	$69,4($20)
	ai	$45,$19,-6
	rotqby	$51,$53,$16
	ai	$43,$19,10
	ai	$44,$19,-8
	ai	$41,$19,12
	shufb	$49,$51,$50,$52
	ai	$37,$19,8
	ai	$34,$19,6
	ai	$18,$19,-12
	stqx	$49,$20,$48
	ai	$13,$19,-10
	lqd	$42,0($47)
	ai	$7,$19,-14
	lqd	$40,0($46)
	ai	$11,$19,2
	lqd	$36,0($45)
	ai	$8,$19,4
	lqd	$33,0($44)
	il	$65,100	# 64
	lqd	$25,96($20)	# 60
	ai	$23,$23,1
	rotqby	$38,$42,$43
	ceqi	$21,$23,12
	rotqby	$39,$40,$41
	rotqby	$32,$36,$37
	rotqby	$31,$33,$34
	andi	$35,$38,255	# ff
	shli	$28,$39,24	# 18
	shli	$29,$35,16
	andi	$30,$32,255	# ff
	andi	$27,$31,255	# ff
	shli	$17,$30,8
	or	$26,$28,$29
	or	$15,$26,$27
	or	$12,$17,$15
	shufb	$9,$12,$25,$14
	stqd	$9,96($20)	# 60
	lqd	$5,0($18)
	lqd	$10,0($13)
	lqd	$3,0($7)
	lqd	$79,-16($19)
	lqx	$67,$20,$65
	rotqby	$4,$5,$11
	rotqby	$2,$10,$8
	rotqby	$78,$3,$19
	rotqby	$77,$79,$16
	andi	$6,$4,255	# ff
	shli	$74,$2,24	# 18
	shli	$75,$6,16
	andi	$76,$78,255	# ff
	andi	$73,$77,255	# ff
	shli	$71,$76,8
	or	$72,$74,$75
	ai	$19,$19,18	# 12
	or	$70,$72,$73
	or	$68,$71,$70
	shufb	$66,$68,$67,$69
	stqx	$66,$20,$65
	ai	$20,$20,12
label_121d4:
	brz	$21,label_120c4	# 120c4
	ai	$19,$24,88	# 58
	hbrr	label_12300,label_121e8	# 121e8
	ori	$20,$22,0
	ila	$21,65280	# ff00
label_121e8:
	ai	$71,$19,14
	lqd	$43,0($19)
	il	$36,152	# 98
	cbd	$41,8($20)
	ai	$35,$19,-2
	cwd	$18,0($20)
	ai	$34,$19,-4
	lqx	$39,$20,$36
	ai	$33,$19,-8
	cwd	$57,4($20)
	ai	$31,$19,12
	rotqby	$42,$43,$71
	ai	$32,$19,-6
	ai	$28,$19,10
	ai	$15,$19,6
	and	$38,$21,$42
	ai	$12,$19,8
	rotmai	$40,$38,-8
	ai	$79,$19,-10
	ai	$78,$19,-12
	ai	$76,$19,4
	shufb	$37,$40,$39,$41
	ai	$77,$19,-14
	ai	$73,$19,2
	il	$24,148	# 94
	stqx	$37,$20,$36
	ai	$23,$23,1
	lqd	$30,0($35)
	lqd	$27,0($34)
	lqd	$17,0($33)
	ceqi	$22,$23,16
	lqd	$14,0($32)
	lqd	$10,144($20)	# 90
	rotqby	$29,$30,$31
	rotqby	$26,$27,$28
	rotqby	$9,$17,$15
	rotqby	$8,$14,$12
	and	$25,$21,$29
	and	$7,$21,$26
	and	$13,$21,$9
	shli	$11,$25,16
	rotmai	$4,$13,-8
	shli	$5,$7,8
	selb	$2,$11,$8,$21
	or	$3,$5,$4
	or	$6,$2,$3
	shufb	$16,$6,$10,$18
	stqd	$16,144($20)	# 90
	lqd	$69,-16($19)
	lqd	$75,0($79)
	lqd	$72,0($78)
	lqd	$67,0($77)
	lqx	$55,$20,$24
	rotqby	$68,$69,$71
	rotqby	$74,$75,$76
	rotqby	$70,$72,$73
	rotqby	$63,$67,$19
	and	$65,$21,$68
	and	$66,$21,$74
	and	$64,$21,$70
	shli	$62,$66,16
	rotmai	$61,$65,-8
	shli	$60,$64,8
	ai	$19,$19,18	# 12
	selb	$58,$62,$63,$21
	or	$59,$60,$61
	or	$56,$58,$59
	shufb	$54,$56,$55,$57
	stqx	$54,$20,$24
	ai	$20,$20,12
label_12300:
	brz	$22,label_121e8	# 121e8
	il	$3,0
	bi	$0
	lnop
.global func_12310
func_12310:
	hbrr	label_12338,func_eb98	# eb98
	rotqmbyi	$8,$5,-4
	rotqmbyi	$2,$4,-4
	rotqmbyi	$4,$6,-4
	fsmbi	$7,8224	# 2020
	rotqbyi	$6,$8,8
	andbi	$3,$7,2
	shlqbyi	$5,$6,12
	or	$3,$2,$3
	or	$4,$5,$4
label_12338:
	br	func_eb98	# eb98
	lnop
.global func_12340
func_12340:
	ilhu	$2,1024	# 400
	hbrr	label_1238c,func_12310	# 12310
	ilhu	$6,1025	# 401
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$80,-16($1)
	andi	$4,$4,64	# 40
	stqd	$82,-48($1)
	ai	$82,$3,226	# e2
	stqd	$0,16($1)
	ceqi	$5,$4,0
	stqd	$1,-80($1)
	ilhu	$4,80	# 50
	shlqbyi	$3,$82,0
	selb	$80,$6,$2,$5
	fsmbi	$6,0
	iohl	$4,41240	# a118
	ai	$1,$1,-80
	ori	$5,$80,0
label_1238c:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	shlqbyi	$5,$80,0
	ori	$3,$82,0
	fsmbi	$6,0
	iohl	$4,41304	# a158
	fsmbi	$80,0
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$82,0
	fsmbi	$5,0
	iohl	$4,41056	# a060
	andi	$6,$81,-128
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$82,0
	fsmbi	$5,0
	iohl	$4,41064	# a068
	fsmbi	$6,0
	brsl	$0,func_12310	# 12310
label_123dc:
	ai	$80,$80,1
	ilhu	$4,80	# 50
	shlqbyi	$3,$82,0
	il	$5,0
	fsmbi	$6,0
	iohl	$4,41072	# a070
	brsl	$0,func_12310	# 12310
	ceqi	$3,$80,16
	brz	$3,label_123dc	# 123dc
	il	$3,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_12420
func_12420:
	hbrr	label_12444,func_12310	# 12310
	ilhu	$4,80	# 50
	ai	$3,$3,226	# e2
	stqd	$0,16($1)
	iohl	$4,41480	# a208
	stqd	$1,-32($1)
	ai	$1,$1,-32
	fsmbi	$6,0
	ilhu	$5,24576	# 6000
label_12444:
	brsl	$0,func_12310	# 12310
	il	$3,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_12458
func_12458:
	shli	$8,$4,2
	hbrr	label_12480,func_12310	# 12310
	ila	$7,157120	# 265c0
	shli	$5,$5,8
	andi	$6,$6,255	# ff
	lqx	$4,$8,$7
	a	$2,$8,$7
	or	$5,$5,$6
	il	$6,0
	rotqby	$4,$4,$2
label_12480:
	br	func_12310	# 12310
	lnop
.global func_12488
func_12488:
	shli	$11,$4,2
	hbrr	label_124bc,func_12310	# 12310
	ila	$8,65535	# ffff
	ila	$12,157040	# 26570
	and	$9,$5,$8
	il	$10,4095	# fff
	a	$2,$11,$12
	lqx	$4,$11,$12
	and	$7,$9,$10
	shli	$5,$7,16
	rotqby	$4,$4,$2
	selb	$5,$5,$6,$8
	il	$6,0
label_124bc:
	br	func_12310	# 12310
.global func_124c0
func_124c0:
	hbrr	label_12500,label_12798	# 12798
	stqd	$87,-128($1)
	il	$87,0
	stqd	$88,-144($1)
	ori	$88,$3,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$89,-160($1)
	stqd	$1,-192($1)
	ai	$1,$1,-192
label_12500:
	br	label_12798	# 12798
label_12504:
	ai	$80,$88,168	# a8
	shlhi	$5,$86,2
	lqd	$3,0($84)
	ai	$82,$88,226	# e2
	lqd	$37,0($80)
	ori	$4,$87,0
	ai	$86,$86,4
	or	$81,$89,$5
	rotqby	$31,$3,$84
	ori	$5,$81,6
	rotqby	$36,$37,$80
	ori	$3,$82,0
	ai	$35,$36,4
	ai	$34,$36,17	# 11
	lqd	$33,0($35)
	rotqby	$32,$33,$34
	andi	$30,$32,255	# ff
	heqi	$0,$30,0
	hbrr	label_12594,label_12570	# 12570
	clz	$12,$30
	clz	$9,$31
	il	$10,1
	fsmbi	$6,0
	sf	$12,$9,$12
	ori	$8,$31,0
	shl	$10,$10,$12
	shl	$9,$30,$12
label_12570:
	or	$13,$6,$10
	rotqmbii	$10,$10,-1
	clgt	$11,$9,$8
	lnop
	sf	$12,$9,$8
	rotqmbii	$9,$9,-1
	selb	$6,$13,$6,$11
	lnop
	selb	$8,$12,$8,$11
label_12594:
	brnz	$10,label_12570	# 12570
	brsl	$0,func_12488	# 12488
	lqd	$29,0($80)
	ori	$3,$82,0
	lqd	$28,0($83)
	ori	$4,$87,0
	ori	$5,$81,7
	rotqby	$27,$29,$80
	rotqby	$22,$28,$83
	ai	$26,$27,4
	ai	$25,$27,17	# 11
	lqd	$24,0($26)
	rotqby	$23,$24,$25
	andi	$21,$23,255	# ff
	lnop
	heqi	$0,$21,0
	hbrr	label_1261c,label_125f8	# 125f8
	clz	$11,$21
	clz	$8,$22
	il	$9,1
	fsmbi	$6,0
	sf	$11,$8,$11
	ori	$14,$22,0
	shl	$9,$9,$11
	shl	$8,$21,$11
label_125f8:
	or	$12,$6,$9
	rotqmbii	$9,$9,-1
	clgt	$10,$8,$14
	lnop
	sf	$11,$8,$14
	rotqmbii	$8,$8,-1
	selb	$6,$12,$6,$10
	lnop
	selb	$14,$11,$14,$10
label_1261c:
	brnz	$9,label_125f8	# 125f8
	nop	$127
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	lqd	$20,0($80)
	ori	$5,$81,5
	lqd	$14,0($83)
	ori	$4,$87,0
	lqd	$19,0($84)
	rotqby	$18,$20,$80
	rotqby	$17,$14,$83
	ai	$83,$83,4
	rotqby	$8,$19,$84
	ai	$84,$84,4
	ai	$12,$18,4
	ai	$11,$18,17	# 11
	lqd	$10,0($12)
	rotqby	$9,$10,$11
	andi	$16,$9,255	# ff
	heqi	$0,$16,0
	hbrr	label_126b4,label_12690	# 12690
	clz	$11,$16
	clz	$14,$17
	il	$9,1
	fsmbi	$13,0
	sf	$11,$14,$11
	ori	$6,$17,0
	shl	$9,$9,$11
	shl	$14,$16,$11
label_12690:
	or	$12,$13,$9
	rotqmbii	$9,$9,-1
	clgt	$10,$14,$6
	lnop
	sf	$11,$14,$6
	rotqmbii	$14,$14,-1
	selb	$13,$12,$13,$10
	lnop
	selb	$6,$11,$6,$10
label_126b4:
	brnz	$9,label_12690	# 12690
	ori	$7,$13,0
	lnop
	heqi	$0,$16,0
	hbrr	label_1270c,label_126e8	# 126e8
	clz	$11,$16
	clz	$14,$8
	il	$9,1
	fsmbi	$15,0
	sf	$11,$14,$11
	ori	$13,$8,0
	shl	$9,$9,$11
	shl	$14,$16,$11
label_126e8:
	or	$12,$15,$9
	rotqmbii	$9,$9,-1
	clgt	$10,$14,$13
	lnop
	sf	$11,$14,$13
	rotqmbii	$14,$14,-1
	selb	$15,$12,$15,$10
	lnop
	selb	$13,$11,$13,$10
label_1270c:
	brnz	$9,label_126e8	# 126e8
	a	$6,$15,$7
	rotmi	$6,$6,-1
	brsl	$0,func_12488	# 12488
	ceqi	$2,$86,36	# 24
	brz	$2,label_12504	# 12504
	ai	$85,$85,1
	ceqi	$4,$85,4
	brz	$4,label_12740	# 12740
	ai	$87,$87,1
	ceqi	$38,$87,2
	brnz	$38,label_127a0	# 127a0
	br	label_12798	# 12798
label_12740:
	nop	$127
	hbrr	label_12794,label_12504	# 12504
	shli	$52,$85,2
	fsmbi	$86,0
	shli	$53,$85,5
	shli	$50,$87,4
	shli	$51,$87,7
	il	$47,800	# 320
	a	$48,$52,$53
	il	$46,512	# 200
	a	$49,$50,$51
	shlhi	$42,$85,8
	a	$45,$48,$49
	il	$41,2048	# 800
	a	$44,$45,$47
	a	$43,$45,$46
	a	$39,$88,$44
	a	$40,$88,$43
	ah	$89,$42,$41
	ai	$84,$40,4
	ai	$83,$39,4
label_12794:
	br	label_12504	# 12504
label_12798:
	il	$85,0
	br	label_12740	# 12740
label_127a0:
	lqd	$0,208($1)	# d0
	ai	$1,$1,192	# c0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	hbr	label_127d4,$0
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
label_127d4:
	bi	$0
.global func_127d8
func_127d8:
	hbrr	label_12818,label_12ab0	# 12ab0
	stqd	$87,-128($1)
	il	$87,0
	stqd	$88,-144($1)
	ori	$88,$3,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$89,-160($1)
	stqd	$1,-192($1)
	ai	$1,$1,-192
label_12818:
	br	label_12ab0	# 12ab0
label_1281c:
	ai	$80,$88,168	# a8
	shlhi	$5,$86,2
	lqd	$3,0($84)
	ai	$82,$88,226	# e2
	lqd	$37,0($80)
	ori	$4,$87,0
	ai	$86,$86,4
	or	$81,$89,$5
	rotqby	$31,$3,$84
	ori	$5,$81,2
	rotqby	$36,$37,$80
	ori	$3,$82,0
	ai	$35,$36,4
	ai	$34,$36,17	# 11
	lqd	$33,0($35)
	rotqby	$32,$33,$34
	andi	$30,$32,255	# ff
	heqi	$0,$30,0
	hbrr	label_128ac,label_12888	# 12888
	clz	$12,$30
	clz	$9,$31
	il	$10,1
	fsmbi	$6,0
	sf	$12,$9,$12
	ori	$8,$31,0
	shl	$10,$10,$12
	shl	$9,$30,$12
label_12888:
	or	$13,$6,$10
	rotqmbii	$10,$10,-1
	clgt	$11,$9,$8
	lnop
	sf	$12,$9,$8
	rotqmbii	$9,$9,-1
	selb	$6,$13,$6,$11
	lnop
	selb	$8,$12,$8,$11
label_128ac:
	brnz	$10,label_12888	# 12888
	brsl	$0,func_12488	# 12488
	lqd	$29,0($80)
	ori	$3,$82,0
	lqd	$28,0($83)
	ori	$4,$87,0
	ori	$5,$81,3
	rotqby	$27,$29,$80
	rotqby	$22,$28,$83
	ai	$26,$27,4
	ai	$25,$27,17	# 11
	lqd	$24,0($26)
	rotqby	$23,$24,$25
	andi	$21,$23,255	# ff
	lnop
	heqi	$0,$21,0
	hbrr	label_12934,label_12910	# 12910
	clz	$11,$21
	clz	$8,$22
	il	$9,1
	fsmbi	$6,0
	sf	$11,$8,$11
	ori	$14,$22,0
	shl	$9,$9,$11
	shl	$8,$21,$11
label_12910:
	or	$12,$6,$9
	rotqmbii	$9,$9,-1
	clgt	$10,$8,$14
	lnop
	sf	$11,$8,$14
	rotqmbii	$8,$8,-1
	selb	$6,$12,$6,$10
	lnop
	selb	$14,$11,$14,$10
label_12934:
	brnz	$9,label_12910	# 12910
	nop	$127
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	lqd	$20,0($80)
	ori	$5,$81,1
	lqd	$14,0($83)
	ori	$4,$87,0
	lqd	$19,0($84)
	rotqby	$18,$20,$80
	rotqby	$17,$14,$83
	ai	$83,$83,4
	rotqby	$8,$19,$84
	ai	$84,$84,4
	ai	$12,$18,4
	ai	$11,$18,17	# 11
	lqd	$10,0($12)
	rotqby	$9,$10,$11
	andi	$16,$9,255	# ff
	heqi	$0,$16,0
	hbrr	label_129cc,label_129a8	# 129a8
	clz	$11,$16
	clz	$14,$17
	il	$9,1
	fsmbi	$13,0
	sf	$11,$14,$11
	ori	$6,$17,0
	shl	$9,$9,$11
	shl	$14,$16,$11
label_129a8:
	or	$12,$13,$9
	rotqmbii	$9,$9,-1
	clgt	$10,$14,$6
	lnop
	sf	$11,$14,$6
	rotqmbii	$14,$14,-1
	selb	$13,$12,$13,$10
	lnop
	selb	$6,$11,$6,$10
label_129cc:
	brnz	$9,label_129a8	# 129a8
	ori	$7,$13,0
	lnop
	heqi	$0,$16,0
	hbrr	label_12a24,label_12a00	# 12a00
	clz	$11,$16
	clz	$14,$8
	il	$9,1
	fsmbi	$15,0
	sf	$11,$14,$11
	ori	$13,$8,0
	shl	$9,$9,$11
	shl	$14,$16,$11
label_12a00:
	or	$12,$15,$9
	rotqmbii	$9,$9,-1
	clgt	$10,$14,$13
	lnop
	sf	$11,$14,$13
	rotqmbii	$14,$14,-1
	selb	$15,$12,$15,$10
	lnop
	selb	$13,$11,$13,$10
label_12a24:
	brnz	$9,label_12a00	# 12a00
	a	$6,$15,$7
	rotmi	$6,$6,-1
	brsl	$0,func_12488	# 12488
	ceqi	$2,$86,36	# 24
	brz	$2,label_1281c	# 1281c
	ai	$85,$85,1
	ceqi	$4,$85,4
	brz	$4,label_12a58	# 12a58
	ai	$87,$87,1
	ceqi	$38,$87,2
	brnz	$38,label_12ab8	# 12ab8
	br	label_12ab0	# 12ab0
label_12a58:
	nop	$127
	hbrr	label_12aac,label_1281c	# 1281c
	shli	$52,$85,2
	fsmbi	$86,0
	shli	$53,$85,5
	shli	$50,$87,4
	shli	$51,$87,7
	il	$47,1664	# 680
	a	$48,$52,$53
	il	$46,1376	# 560
	a	$49,$50,$51
	shlhi	$42,$85,8
	a	$45,$48,$49
	il	$41,2048	# 800
	a	$44,$45,$47
	a	$43,$45,$46
	a	$39,$88,$44
	a	$40,$88,$43
	ah	$89,$42,$41
	ai	$84,$40,4
	ai	$83,$39,4
label_12aac:
	br	label_1281c	# 1281c
label_12ab0:
	il	$85,0
	br	label_12a58	# 12a58
label_12ab8:
	lqd	$0,208($1)	# d0
	ai	$1,$1,192	# c0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	hbr	label_12aec,$0
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
label_12aec:
	bi	$0
.global func_12af0
func_12af0:
	fsmbi	$2,8224	# 2020
	rotqmbyi	$4,$4,-4
	andbi	$3,$2,2
	or	$3,$4,$3
	br	func_780	# 780
	lnop
.global func_12b08
func_12b08:
	shli	$8,$4,2
	hbrr	label_12b5c,func_12310	# 12310
	ila	$9,157040	# 26570
	stqd	$82,-48($1)
	ila	$82,65535	# ffff
	stqd	$80,-16($1)
	il	$2,4095	# fff
	stqd	$0,16($1)
	and	$6,$5,$82
	lqx	$7,$8,$9
	a	$4,$8,$9
	stqd	$81,-32($1)
	and	$5,$6,$2
	stqd	$1,-80($1)
	ori	$81,$3,0
	fsmbi	$6,0
	iohl	$5,4096	# 1000
	ai	$1,$1,-80
	shli	$5,$5,16
	rotqby	$80,$7,$4
	ori	$4,$80,0
label_12b5c:
	brsl	$0,func_12310	# 12310
	ori	$4,$80,0
	shlqbyi	$3,$81,0
	brsl	$0,func_12af0	# 12af0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	and	$3,$82,$3
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_12b88
func_12b88:
	ceqi	$2,$4,1
	hbrr	label_12bcc,label_12f30	# 12f30
	stqd	$86,-112($1)
	stqd	$0,16($1)
	ori	$86,$3,0
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$1,-144($1)
	ai	$1,$1,-144
	brnz	$2,label_12e40	# 12e40
	ceqi	$3,$4,2
	brnz	$3,label_12bd0	# 12bd0
	brz	$4,label_12bd8	# 12bd8
label_12bcc:
	br	label_12f30	# 12f30
label_12bd0:
	ila	$3,155872	# 260e0
	br	label_12e78	# 12e78
label_12bd8:
	ila	$3,155888	# 260f0
	brsl	$0,func_19ad0	# 19ad0
	ori	$84,$86,0
	br	label_12f70	# 12f70
label_12be8:
	ai	$81,$86,168	# a8
	a	$48,$84,$82
	il	$47,1380	# 564
	lqd	$46,0($81)
	a	$85,$48,$83
	ila	$3,155904	# 26100
	a	$43,$85,$47
	lqx	$42,$85,$47
	ai	$82,$82,4
	rotqby	$45,$46,$81
	rotqby	$38,$42,$43
	ai	$44,$45,4
	ai	$41,$45,17	# 11
	lqd	$40,0($44)
	rotqby	$39,$40,$41
	andi	$37,$39,255	# ff
	heqi	$0,$37,0
	hbrr	label_12c74,label_12c50	# 12c50
	clz	$10,$37
	clz	$7,$38
	il	$8,1
	fsmbi	$4,0
	sf	$10,$7,$10
	ori	$6,$38,0
	shl	$8,$8,$10
	shl	$7,$37,$10
label_12c50:
	or	$11,$4,$8
	rotqmbii	$8,$8,-1
	clgt	$9,$7,$6
	lnop
	sf	$10,$7,$6
	rotqmbii	$7,$7,-1
	selb	$4,$11,$4,$9
	lnop
	selb	$6,$10,$6,$9
label_12c74:
	brnz	$8,label_12c50	# 12c50
	brsl	$0,func_19ad0	# 19ad0
	lqd	$35,0($81)
	il	$36,1668	# 684
	ila	$3,155904	# 26100
	a	$32,$85,$36
	lqx	$31,$85,$36
	rotqby	$34,$35,$81
	rotqby	$27,$31,$32
	ai	$33,$34,4
	ai	$30,$34,17	# 11
	lqd	$29,0($33)
	rotqby	$28,$29,$30
	andi	$26,$28,255	# ff
	lnop
	heqi	$0,$26,0
	hbrr	label_12cfc,label_12cd8	# 12cd8
	clz	$10,$26
	clz	$7,$27
	il	$8,1
	fsmbi	$4,0
	sf	$10,$7,$10
	ori	$6,$27,0
	shl	$8,$8,$10
	shl	$7,$26,$10
label_12cd8:
	or	$11,$4,$8
	rotqmbii	$8,$8,-1
	clgt	$9,$7,$6
	lnop
	sf	$10,$7,$6
	rotqmbii	$7,$7,-1
	selb	$4,$11,$4,$9
	lnop
	selb	$6,$10,$6,$9
label_12cfc:
	brnz	$8,label_12cd8	# 12cd8
	nop	$127
	brsl	$0,func_19ad0	# 19ad0
	il	$25,516	# 204
	lqd	$24,0($81)
	ila	$3,155904	# 26100
	lqx	$20,$85,$25
	a	$21,$85,$25
	rotqby	$23,$24,$81
	rotqby	$16,$20,$21
	ai	$22,$23,4
	ai	$19,$23,17	# 11
	lqd	$18,0($22)
	rotqby	$17,$18,$19
	andi	$15,$17,255	# ff
	heqi	$0,$15,0
	hbrr	label_12d84,label_12d60	# 12d60
	clz	$10,$15
	clz	$7,$16
	il	$8,1
	fsmbi	$4,0
	sf	$10,$7,$10
	ori	$6,$16,0
	shl	$8,$8,$10
	shl	$7,$15,$10
label_12d60:
	or	$11,$4,$8
	rotqmbii	$8,$8,-1
	clgt	$9,$7,$6
	lnop
	sf	$10,$7,$6
	rotqmbii	$7,$7,-1
	selb	$4,$11,$4,$9
	lnop
	selb	$6,$10,$6,$9
label_12d84:
	brnz	$8,label_12d60	# 12d60
	brsl	$0,func_19ad0	# 19ad0
	lqd	$13,0($81)
	il	$14,804	# 324
	ila	$3,155904	# 26100
	a	$80,$85,$14
	lqx	$9,$85,$14
	rotqby	$11,$13,$81
	rotqby	$5,$9,$80
	ai	$10,$11,4
	ai	$8,$11,17	# 11
	lqd	$7,0($10)
	rotqby	$6,$7,$8
	andi	$12,$6,255	# ff
	lnop
	heqi	$0,$12,0
	hbrr	label_12e0c,label_12de8	# 12de8
	clz	$10,$12
	clz	$7,$5
	il	$8,1
	fsmbi	$4,0
	sf	$10,$7,$10
	ori	$6,$5,0
	shl	$8,$8,$10
	shl	$7,$12,$10
label_12de8:
	or	$11,$4,$8
	rotqmbii	$8,$8,-1
	clgt	$9,$7,$6
	lnop
	sf	$10,$7,$6
	rotqmbii	$7,$7,-1
	selb	$4,$11,$4,$9
	lnop
	selb	$6,$10,$6,$9
label_12e0c:
	brnz	$8,label_12de8	# 12de8
	brsl	$0,func_19ad0	# 19ad0
	ceqi	$4,$82,36	# 24
	brz	$4,label_12be8	# 12be8
	ai	$83,$83,36	# 24
	ceqi	$49,$83,144	# 90
	brz	$49,label_12f68	# 12f68
	ai	$84,$84,144	# 90
	ai	$51,$86,288	# 120
	ceq	$50,$84,$51
	brnz	$50,label_12f38	# 12f38
	nop	$127
	br	label_12f70	# 12f70
label_12e40:
	ai	$60,$3,168	# a8
	hbrr	label_12e70,label_12f34	# 12f34
	lqd	$59,0($60)
	rotqby	$58,$59,$60
	ai	$57,$58,7
	ai	$56,$58,20	# 14
	lqd	$55,0($57)
	rotqby	$54,$55,$56
	ceqbi	$53,$54,1
	xsbh	$52,$53
	brhnz	$52,label_12e74	# 12e74
	ila	$3,155920	# 26110
label_12e70:
	br	label_12f34	# 12f34
label_12e74:
	ila	$3,155952	# 26130
label_12e78:
	il	$84,0
	brsl	$0,func_19ad0	# 19ad0
	br	label_12f80	# 12f80
label_12e84:
	shlhi	$62,$83,4
	ai	$81,$86,226	# e2
	shlqbyi	$4,$84,0
	ila	$82,65535	# ffff
	ori	$3,$81,0
	or	$80,$85,$62
	ai	$83,$83,1
	ori	$5,$80,2
	brsl	$0,func_12b08	# 12b08
	and	$4,$3,$82
	ila	$3,155904	# 26100
	brsl	$0,func_19ad0	# 19ad0
	ori	$5,$80,3
	ori	$4,$84,0
	shlqbyi	$3,$81,0
	brsl	$0,func_12b08	# 12b08
	and	$4,$3,$82
	ila	$3,155904	# 26100
	brsl	$0,func_19ad0	# 19ad0
	ori	$5,$80,6
	shlqbyi	$4,$84,0
	ori	$3,$81,0
	brsl	$0,func_12b08	# 12b08
	and	$4,$3,$82
	ila	$3,155904	# 26100
	brsl	$0,func_19ad0	# 19ad0
	ori	$4,$84,0
	ori	$5,$80,7
	shlqbyi	$3,$81,0
	brsl	$0,func_12b08	# 12b08
	and	$4,$3,$82
	ila	$3,155904	# 26100
	brsl	$0,func_19ad0	# 19ad0
	ceqi	$61,$83,9
	brz	$61,label_12e84	# 12e84
	ahi	$85,$85,256	# 100
	il	$64,3072	# c00
	ceqh	$63,$85,$64
	brhz	$63,label_12f78	# 12f78
	ai	$84,$84,1
	ceqi	$65,$84,2
	brnz	$65,label_12f38	# 12f38
	br	label_12f80	# 12f80
label_12f30:
	ila	$3,155968	# 26140
label_12f34:
	brsl	$0,func_19ad0	# 19ad0
label_12f38:
	ila	$3,152320	# 25300
	hbrr	label_12f64,func_19ad0	# 19ad0
	lqd	$0,160($1)	# a0
	ai	$1,$1,144	# 90
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
label_12f64:
	br	func_19ad0	# 19ad0
label_12f68:
	il	$82,0
	br	label_12be8	# 12be8
label_12f70:
	il	$83,0
	br	label_12f68	# 12f68
label_12f78:
	il	$83,0
	br	label_12e84	# 12e84
label_12f80:
	il	$85,2048	# 800
	br	label_12f78	# 12f78
.global func_12f88
func_12f88:
	a	$37,$4,$4
	stqd	$83,-64($1)
	il	$19,0
	stqd	$88,-144($1)
	a	$36,$37,$4
	stqd	$0,16($1)
	il	$28,210	# d2
	stqd	$80,-16($1)
	shli	$35,$36,2
	stqd	$81,-32($1)
	il	$24,212	# d4
	stqd	$82,-48($1)
	il	$16,100	# 64
	stqd	$84,-80($1)
	il	$20,202	# ca
	stqd	$85,-96($1)
	a	$17,$35,$3
label_12fcc:
	hbrp
	il	$13,204	# cc
	stqd	$86,-112($1)
	il	$14,206	# ce
	stqd	$87,-128($1)
	ai	$15,$3,168	# a8
	stqd	$89,-160($1)
	ori	$88,$3,0
	stqd	$90,-176($1)
	ori	$83,$4,0
	stqd	$1,-208($1)
	ai	$1,$1,-208
	lqd	$33,208($17)	# d0
	chd	$34,0($17)
	chd	$31,2($17)
	chd	$27,4($17)
	chd	$23,10($17)
	chd	$11,12($17)
	shufb	$32,$19,$33,$34
	chd	$18,14($17)
	hbrr	label_13098,label_130b8	# 130b8
	stqd	$32,208($17)	# d0
	lqx	$30,$17,$28
	shufb	$29,$19,$30,$31
	stqx	$29,$17,$28
	lqx	$26,$17,$24
	shufb	$25,$16,$26,$27
	stqx	$25,$17,$24
	lqx	$22,$17,$20
	shufb	$21,$19,$22,$23
	stqx	$21,$17,$20
	lqx	$12,$17,$13
	shufb	$10,$19,$12,$11
	stqx	$10,$17,$13
	lqx	$9,$17,$14
	shufb	$8,$16,$9,$18
	stqx	$8,$17,$14
	lqd	$7,0($15)
	rotqby	$6,$7,$15
	ai	$5,$6,13
	lqd	$3,0($6)
	rotqby	$3,$3,$5
	ceqbi	$4,$3,1
	xsbh	$2,$4
	brhnz	$2,label_130b4	# 130b4
	ceqbi	$39,$3,2
	xsbh	$38,$39
	brhnz	$38,label_130b4	# 130b4
	ceqbi	$41,$3,4
	il	$90,9
	xsbh	$40,$41
label_13098:
	brhz	$40,label_130b8	# 130b8
	br	label_130b4	# 130b4
label_130a0:
	ilhu	$3,45056	# b000
	iohl	$3,8199	# 2007
	br	label_13304	# 13304
label_130ac:
	il	$3,0
	br	label_13304	# 13304
label_130b4:
	il	$90,8
label_130b8:
	il	$85,0
	fsmbi	$89,0
	br	label_132e0	# 132e0
label_130c4:
	hbrr	label_130f8,func_12b08	# 12b08
	ila	$81,65535	# ffff
	shlqbyi	$4,$83,0
	il	$86,2048	# 800
	and	$2,$89,$81
	and	$87,$85,$81
	shli	$84,$2,8
	shli	$79,$87,4
	ai	$82,$88,226	# e2
	ah	$78,$84,$86
	shlqbyi	$3,$82,0
	or	$80,$78,$79
	ori	$5,$80,2
label_130f8:
	brsl	$0,func_12b08	# 12b08
	ori	$4,$83,0
	ori	$86,$3,0
	shlqbyi	$3,$82,0
	ori	$5,$80,3
	brsl	$0,func_12b08	# 12b08
	ori	$4,$83,0
	ori	$84,$3,0
	ori	$5,$80,6
	shlqbyi	$3,$82,0
	brsl	$0,func_12b08	# 12b08
	ori	$4,$83,0
	ori	$87,$3,0
	shlqbyi	$3,$82,0
	ori	$5,$80,7
	brsl	$0,func_12b08	# 12b08
	and	$77,$86,$81
	fsmbi	$53,0
	and	$76,$84,$81
	shlqbyi	$11,$3,0
	a	$70,$83,$83
	fsmbi	$45,0
	ila	$73,65535	# ffff
	sf	$74,$77,$76
	il	$75,100	# 64
	a	$67,$70,$83
	mpyui	$66,$74,100	# 64
	mpyh	$65,$74,$75
	and	$72,$87,$73
	and	$71,$11,$73
	shli	$64,$67,2
	sf	$68,$72,$71
	il	$69,100	# 64
	mpyui	$60,$68,100	# 64
	mpyh	$59,$68,$69
	a	$9,$64,$88
	a	$81,$65,$66
	ai	$61,$9,212	# d4
	ai	$62,$81,127	# 7f
	cgti	$63,$81,-1
	clgth	$57,$86,$84
	lqd	$48,0($61)
	a	$56,$59,$60
	selb	$58,$62,$81,$63
	ai	$54,$56,127	# 7f
	rotmi	$52,$58,-7
	cgti	$55,$56,-1
	ai	$49,$9,226	# e2
	ceqhi	$51,$57,0
	selb	$50,$54,$56,$55
	selb	$8,$53,$52,$51
	rotqby	$47,$48,$49
	rotmi	$44,$50,-7
	clgth	$46,$87,$3
	clgth	$42,$47,$8
	ceqhi	$43,$46,0
	selb	$10,$45,$44,$43
	brhz	$42,label_13218	# 13218
	il	$5,210	# d2
	lqd	$18,208($9)	# d0
	il	$6,212	# d4
	chd	$13,0($9)
	chd	$17,2($9)
	chd	$7,4($9)
	shufb	$16,$89,$18,$13
	stqd	$16,208($9)	# d0
	lqx	$14,$9,$5
	shufb	$15,$85,$14,$17
	stqx	$15,$9,$5
	lqx	$3,$9,$6
	shufb	$4,$8,$3,$7
	stqx	$4,$9,$6
label_13218:
	ai	$21,$9,206	# ce
	ai	$20,$9,220	# dc
	lqd	$19,0($21)
	rotqby	$12,$19,$20
	clgth	$8,$12,$10
	brhz	$8,label_1326c	# 1326c
	il	$30,202	# ca
	chd	$33,10($9)
	il	$26,204	# cc
	chd	$29,12($9)
	il	$22,206	# ce
	lqx	$32,$9,$30
	chd	$25,14($9)
	shufb	$31,$89,$32,$33
	stqx	$31,$9,$30
	lqx	$28,$9,$26
	shufb	$27,$85,$28,$29
	stqx	$27,$9,$26
	lqx	$24,$9,$22
	shufb	$23,$10,$24,$25
	stqx	$23,$9,$22
label_1326c:
	ai	$44,$88,168	# a8
	ila	$7,65535	# ffff
	lqd	$43,0($44)
	and	$45,$84,$7
	and	$46,$86,$7
	il	$8,100	# 64
	sf	$40,$46,$45
	mpyui	$36,$40,100	# 64
	rotqby	$42,$43,$44
	mpyh	$35,$40,$8
	ai	$41,$42,110	# 6e
	ai	$39,$42,123	# 7b
	lqd	$38,0($41)
	a	$10,$35,$36
	rotqby	$37,$38,$39
	andi	$34,$37,255	# ff
	shli	$5,$34,7
	cgt	$9,$5,$10
	brnz	$9,label_132fc	# 132fc
	and	$51,$11,$7
	hbrr	label_132f8,label_132e0	# 132e0
	and	$52,$87,$7
	sf	$50,$52,$51
	mpyh	$48,$50,$8
	mpyui	$49,$50,100	# 64
	a	$47,$48,$49
	cgt	$11,$5,$47
	brnz	$11,label_130a0	# 130a0
	ahi	$85,$85,1
label_132e0:
	clgth	$53,$90,$85
	brhnz	$53,label_130c4	# 130c4
	ahi	$89,$89,1
	clgthi	$85,$89,3
	brhnz	$85,label_130ac	# 130ac
	il	$85,0
label_132f8:
	br	label_132e0	# 132e0
label_132fc:
	ilhu	$3,45056	# b000
	iohl	$3,8198	# 2006
label_13304:
	lqd	$0,224($1)	# e0
	ai	$1,$1,208	# d0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	hbr	label_1333c,$0
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
label_1333c:
	bi	$0
.global func_13340
func_13340:
	hbrr	label_13388,label_134cc	# 134cc
	stqd	$89,-160($1)
	il	$89,0
	stqd	$90,-176($1)
	ori	$90,$3,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$88,-144($1)
	stqd	$91,-192($1)
	stqd	$1,-224($1)
	ai	$1,$1,-224
label_13388:
	br	label_134cc	# 134cc
label_1338c:
	hbrr	label_133b8,func_12b08	# 12b08
	shlhi	$20,$87,2
	lqd	$19,0($86)
	ai	$82,$90,226	# e2
	shlqbyi	$4,$89,0
	ila	$83,65535	# ffff
	ori	$3,$82,0
	or	$81,$91,$20
	ai	$87,$87,4
	ori	$5,$81,6
	rotqby	$80,$19,$86
label_133b8:
	brsl	$0,func_12b08	# 12b08
	hbrr	label_133f0,func_12b08	# 12b08
	and	$18,$3,$83
	lqd	$15,0($86)
	ori	$5,$81,7
	cwd	$17,0($86)
	a	$16,$80,$18
	shlqbyi	$4,$89,0
	ori	$3,$82,0
	shufb	$14,$16,$15,$17
	stqd	$14,0($86)
	lqd	$13,0($85)
	ai	$86,$86,4
	rotqby	$80,$13,$85
label_133f0:
	brsl	$0,func_12b08	# 12b08
	hbrr	label_13428,func_12b08	# 12b08
	and	$12,$3,$83
	lqd	$9,0($85)
	ori	$5,$81,5
	cwd	$11,0($85)
	a	$10,$80,$12
	shlqbyi	$4,$89,0
	ori	$3,$82,0
	shufb	$8,$10,$9,$11
	stqd	$8,0($85)
	lqd	$7,0($84)
	ai	$85,$85,4
	rotqby	$81,$7,$84
label_13428:
	brsl	$0,func_12b08	# 12b08
	hbrr	label_13450,label_1338c	# 1338c
	and	$3,$3,$83
	lqd	$6,0($84)
	ceqi	$5,$87,36	# 24
	cwd	$4,0($84)
	a	$80,$81,$3
	shufb	$2,$80,$6,$4
	stqd	$2,0($84)
	ai	$84,$84,4
label_13450:
	brz	$5,label_1338c	# 1338c
	ai	$88,$88,1
	ceqi	$21,$88,4
	brz	$21,label_13470	# 13470
	ai	$89,$89,1
	ceqi	$22,$89,2
	brnz	$22,label_134d4	# 134d4
	br	label_134cc	# 134cc
label_13470:
	shli	$37,$88,2
	hbrr	label_134c8,label_1338c	# 1338c
	shli	$38,$88,5
	fsmbi	$87,0
	shli	$35,$89,4
	shli	$36,$89,7
	il	$32,512	# 200
	a	$33,$37,$38
	il	$31,800	# 320
	a	$34,$35,$36
	shlhi	$27,$88,8
	a	$28,$33,$34
	il	$26,2048	# 800
	a	$30,$28,$32
	a	$29,$28,$31
	a	$25,$90,$30
	a	$24,$90,$29
	a	$23,$28,$90
	ah	$91,$27,$26
	ai	$86,$25,4
	ai	$85,$24,4
	ai	$84,$23,228	# e4
label_134c8:
	br	label_1338c	# 1338c
label_134cc:
	il	$88,0
	br	label_13470	# 13470
label_134d4:
	lqd	$0,240($1)	# f0
	ai	$1,$1,224	# e0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	hbr	label_13510,$0
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
label_13510:
	bi	$0
	lnop
.global func_13518
func_13518:
	hbrr	label_13560,label_136ac	# 136ac
	stqd	$89,-160($1)
	il	$89,0
	stqd	$90,-176($1)
	ori	$90,$3,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$88,-144($1)
	stqd	$91,-192($1)
	stqd	$1,-224($1)
	ai	$1,$1,-224
label_13560:
	br	label_136ac	# 136ac
label_13564:
	hbrr	label_13590,func_12b08	# 12b08
	shlhi	$20,$87,2
	lqd	$19,0($86)
	ai	$82,$90,226	# e2
	shlqbyi	$4,$89,0
	ila	$83,65535	# ffff
	ori	$3,$82,0
	or	$81,$91,$20
	ai	$87,$87,4
	ori	$5,$81,2
	rotqby	$80,$19,$86
label_13590:
	brsl	$0,func_12b08	# 12b08
	hbrr	label_135c8,func_12b08	# 12b08
	and	$18,$3,$83
	lqd	$15,0($86)
	ori	$5,$81,3
	cwd	$17,0($86)
	a	$16,$80,$18
	shlqbyi	$4,$89,0
	ori	$3,$82,0
	shufb	$14,$16,$15,$17
	stqd	$14,0($86)
	lqd	$13,0($85)
	ai	$86,$86,4
	rotqby	$80,$13,$85
label_135c8:
	brsl	$0,func_12b08	# 12b08
	hbrr	label_13600,func_12b08	# 12b08
	and	$12,$3,$83
	lqd	$9,0($85)
	ori	$5,$81,1
	cwd	$11,0($85)
	a	$10,$80,$12
	shlqbyi	$4,$89,0
	ori	$3,$82,0
	shufb	$8,$10,$9,$11
	stqd	$8,0($85)
	lqd	$7,0($84)
	ai	$85,$85,4
	rotqby	$81,$7,$84
label_13600:
	brsl	$0,func_12b08	# 12b08
	hbrr	label_13628,label_13564	# 13564
	and	$3,$3,$83
	lqd	$6,0($84)
	ceqi	$5,$87,36	# 24
	cwd	$4,0($84)
	a	$80,$81,$3
	shufb	$2,$80,$6,$4
	stqd	$2,0($84)
	ai	$84,$84,4
label_13628:
	brz	$5,label_13564	# 13564
	ai	$88,$88,1
	ceqi	$21,$88,4
	brz	$21,label_13648	# 13648
	ai	$89,$89,1
	ceqi	$22,$89,2
	brnz	$22,label_136b4	# 136b4
	br	label_136ac	# 136ac
label_13648:
	shli	$39,$88,2
	hbrr	label_136a8,label_13564	# 13564
	shli	$40,$88,5
	fsmbi	$87,0
	shli	$37,$89,4
	shli	$38,$89,7
	il	$27,1664	# 680
	a	$35,$39,$40
	il	$34,1088	# 440
	a	$36,$37,$38
	il	$33,1376	# 560
	a	$32,$35,$36
	shlhi	$26,$88,8
	a	$29,$32,$34
	a	$31,$32,$33
	a	$30,$32,$27
	a	$28,$90,$31
	a	$24,$90,$30
	a	$23,$90,$29
	ahi	$25,$27,384	# 180
	ai	$86,$28,4
	ah	$91,$26,$25
	ai	$85,$24,4
	ai	$84,$23,4
label_136a8:
	br	label_13564	# 13564
label_136ac:
	il	$88,0
	br	label_13648	# 13648
label_136b4:
	lqd	$0,240($1)	# f0
	ai	$1,$1,224	# e0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	hbr	label_136f0,$0
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
label_136f0:
	bi	$0
	lnop
.global func_136f8
func_136f8:
	il	$5,2
	hbrr	label_13748,func_110c8	# 110c8
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	ila	$81,65535	# ffff
	stqd	$82,-48($1)
	ai	$82,$80,168	# a8
	stqd	$83,-64($1)
	ai	$83,$80,14
	stqd	$84,-80($1)
	ai	$84,$80,220	# dc
	stqd	$85,-96($1)
	ai	$85,$80,218	# da
	stqd	$86,-112($1)
	ai	$86,$80,216	# d8
	stqd	$1,-160($1)
	ai	$1,$1,-160
	ai	$4,$1,32	# 20
label_13748:
	brsl	$0,func_110c8	# 110c8
	ori	$3,$80,0
	ila	$4,156000	# 26160
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156032	# 26180
	brsl	$0,func_f620	# f620
	ai	$28,$80,212	# d4
	ai	$27,$80,226	# e2
	shlqbyi	$3,$80,0
	ai	$4,$1,32	# 20
	lqd	$26,0($28)
	rotqby	$25,$26,$27
	and	$5,$81,$25
	brsl	$0,func_10fb8	# 10fb8
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156064	# 261a0
	brsl	$0,func_f620	# f620
	lqd	$24,208($80)	# d0
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	rotqby	$23,$24,$83
	and	$5,$81,$23
	brsl	$0,func_10f38	# 10f38
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156080	# 261b0
	brsl	$0,func_f620	# f620
	ai	$22,$80,210	# d2
	ai	$21,$80,224	# e0
	shlqbyi	$3,$80,0
	ai	$4,$1,32	# 20
	lqd	$20,0($22)
	rotqby	$19,$20,$21
	and	$5,$81,$19
	brsl	$0,func_10f38	# 10f38
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,152416	# 25360
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156096	# 261c0
	brsl	$0,func_f620	# f620
	ai	$18,$80,206	# ce
	shlqbyi	$3,$80,0
	ai	$4,$1,32	# 20
	lqd	$17,0($18)
	rotqby	$16,$17,$84
	and	$5,$81,$16
	brsl	$0,func_10fb8	# 10fb8
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156064	# 261a0
	brsl	$0,func_f620	# f620
	ai	$15,$80,202	# ca
	ori	$3,$80,0
	lqd	$14,0($15)
	ai	$4,$1,32	# 20
	rotqby	$13,$14,$86
	and	$5,$81,$13
	brsl	$0,func_10f38	# 10f38
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156080	# 261b0
	brsl	$0,func_f620	# f620
	ai	$12,$80,204	# cc
	shlqbyi	$3,$80,0
	ai	$4,$1,32	# 20
	lqd	$11,0($12)
	rotqby	$10,$11,$85
	and	$5,$81,$10
	brsl	$0,func_10f38	# 10f38
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,152416	# 25360
	brsl	$0,func_f620	# f620
	hbrr	label_138d0,label_138e0	# 138e0
	lqd	$9,0($82)
	rotqby	$8,$9,$82
	ai	$7,$8,163	# a3
	ai	$6,$8,176	# b0
	lqd	$5,0($7)
	rotqby	$4,$5,$6
	ceqbi	$3,$4,0
	xsbh	$2,$3
label_138d0:
	brhz	$2,label_138e0	# 138e0
	ori	$3,$80,0
	ila	$4,156128	# 261e0
	brsl	$0,func_f620	# f620
label_138e0:
	ila	$4,156192	# 26220
	shlqbyi	$3,$80,0
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156032	# 26180
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	lqd	$55,224($80)	# e0
	ai	$4,$1,32	# 20
	rotqby	$54,$55,$83
	and	$5,$81,$54
	brsl	$0,func_10fb8	# 10fb8
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156064	# 261a0
	brsl	$0,func_f620	# f620
	ai	$53,$80,234	# ea
	lqd	$52,0($84)
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	rotqby	$51,$52,$53
	and	$5,$81,$51
	brsl	$0,func_10f38	# 10f38
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156080	# 261b0
	brsl	$0,func_f620	# f620
	ai	$50,$80,222	# de
	ai	$49,$80,236	# ec
	shlqbyi	$3,$80,0
	ai	$4,$1,32	# 20
	lqd	$48,0($50)
	rotqby	$47,$48,$49
	and	$5,$81,$47
	brsl	$0,func_10f38	# 10f38
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,152416	# 25360
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156096	# 261c0
	brsl	$0,func_f620	# f620
	ai	$46,$80,232	# e8
	lqd	$45,0($85)
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	rotqby	$44,$45,$46
	and	$5,$81,$44
	brsl	$0,func_10fb8	# 10fb8
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156064	# 261a0
	brsl	$0,func_f620	# f620
	ai	$43,$80,214	# d6
	ai	$42,$80,228	# e4
	shlqbyi	$3,$80,0
	ai	$4,$1,32	# 20
	lqd	$41,0($43)
	rotqby	$40,$41,$42
	and	$5,$81,$40
	brsl	$0,func_10f38	# 10f38
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,156080	# 261b0
	brsl	$0,func_f620	# f620
	lqd	$38,0($86)
	ai	$39,$80,230	# e6
	shlqbyi	$3,$80,0
	ai	$4,$1,32	# 20
	rotqby	$37,$38,$39
	and	$5,$81,$37
	brsl	$0,func_10f38	# 10f38
	ori	$3,$80,0
	ai	$4,$1,32	# 20
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	ila	$4,152416	# 25360
	brsl	$0,func_f620	# f620
	lqd	$36,0($82)
	hbrr	label_13a70,func_f620	# f620
	rotqby	$35,$36,$82
	ai	$34,$35,164	# a4
	ai	$33,$35,177	# b1
	lqd	$32,0($34)
	rotqby	$31,$32,$33
	ceqbi	$30,$31,0
	xsbh	$29,$30
	brhz	$29,label_13a74	# 13a74
	ori	$3,$80,0
	ila	$4,156128	# 261e0
label_13a70:
	brsl	$0,func_f620	# f620
label_13a74:
	il	$3,0
	lqd	$0,176($1)	# b0
	hbr	label_13aa0,$0
	ai	$1,$1,160	# a0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
label_13aa0:
	bi	$0
	lnop
.global func_13aa8
func_13aa8:
	il	$4,0
	stqd	$80,-16($1)
	ai	$80,$3,168	# a8
	hbrr	label_13aec,label_13afc	# 13afc
	stqd	$81,-32($1)
	lqd	$11,0($80)
	ori	$81,$3,0
	stqd	$0,16($1)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	rotqby	$10,$11,$80
	ai	$9,$10,163	# a3
	ai	$8,$10,176	# b0
	lqd	$7,0($9)
	rotqby	$6,$7,$8
	ceqbi	$2,$6,0
	xsbh	$5,$2
label_13aec:
	brhnz	$5,label_13afc	# 13afc
	brsl	$0,func_12f88	# 12f88
	hbrr	label_13b28,func_12f88	# 12f88
	brnz	$3,label_13b48	# 13b48
label_13afc:
	lqd	$19,0($80)
	il	$4,1
	shlqbyi	$3,$81,0
	rotqby	$18,$19,$80
	ai	$17,$18,164	# a4
	ai	$16,$18,177	# b1
	lqd	$15,0($17)
	rotqby	$14,$15,$16
	ceqbi	$13,$14,0
	xsbh	$12,$13
	brhnz	$12,label_13b30	# 13b30
label_13b28:
	brsl	$0,func_12f88	# 12f88
	brnz	$3,label_13b48	# 13b48
label_13b30:
	ori	$3,$81,0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	br	func_136f8	# 136f8
label_13b48:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_13b60
func_13b60:
	ila	$4,156288	# 26280
	stqd	$80,-16($1)
	ai	$80,$3,168	# a8
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$0,16($1)
	lqd	$19,0($80)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	hbrr	label_13bd4,func_f620	# f620
	rotqby	$18,$19,$80
	ai	$17,$18,1
	ai	$16,$18,14
	lqd	$15,0($17)
	rotqby	$8,$15,$16
	ceqbi	$14,$8,4
	clgtbi	$13,$8,2
	xsbh	$12,$14
	xsbh	$11,$13
	ceqhi	$10,$12,0
	ceqhi	$9,$11,0
	clgtbi	$7,$8,0
	xshw	$2,$10
	xshw	$6,$9
	xsbh	$5,$7
	andc	$2,$2,$6
	brhz	$5,label_13c10	# 13c10
	brhnz	$2,label_13c10	# 13c10
	ila	$4,156224	# 26240
label_13bd4:
	brsl	$0,func_f620	# f620
	ori	$3,$81,0
	lqd	$28,0($80)
	ila	$4,156352	# 262c0
	hbrr	label_13c08,label_13c24	# 13c24
	rotqby	$27,$28,$80
	ai	$26,$27,110	# 6e
	ai	$25,$27,123	# 7b
	lqd	$24,0($26)
	rotqby	$23,$24,$25
	ahi	$22,$23,-1
	clgtbi	$21,$22,98	# 62
	xsbh	$20,$21
label_13c08:
	brhz	$20,label_13c24	# 13c24
	br	label_13c30	# 13c30
label_13c10:
	ori	$3,$81,0
	brsl	$0,func_f668	# f668
	ilhu	$3,45056	# b000
	iohl	$3,8203	# 200b
	br	label_13c44	# 13c44
label_13c24:
	brsl	$0,func_f620	# f620
	il	$3,0
	br	label_13c44	# 13c44
label_13c30:
	ori	$3,$81,0
	ila	$4,156416	# 26300
	brsl	$0,func_f668	# f668
	ilhu	$3,45056	# b000
	iohl	$3,8207	# 200f
label_13c44:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_13c58
func_13c58:
	br	func_13b60	# 13b60
	lnop
.global func_13c60
func_13c60:
	ila	$4,156480	# 26340
	hbrr	label_13c90,func_f620	# f620
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$81,-32($1)
	ai	$81,$82,226	# e2
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ilhu	$80,45056	# b000
	stqd	$1,-80($1)
	ai	$1,$1,-80
	iohl	$80,8204	# 200c
label_13c90:
	brsl	$0,func_f620	# f620
	ori	$3,$82,0
	ila	$4,156528	# 26370
	brsl	$0,func_f620	# f620
	il	$4,0
	shlqbyi	$3,$81,0
	il	$5,513	# 201
	il	$6,2
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,1
	il	$5,513	# 201
	il	$6,2
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	ila	$4,156576	# 263a0
	brsl	$0,func_f620	# f620
	il	$4,1
	il	$3,1
	brsl	$0,func_1bed8	# 1bed8
	ila	$4,156624	# 263d0
	brnz	$3,label_13d1c	# 13d1c
	ori	$3,$82,0
	brsl	$0,func_f620	# f620
	ori	$3,$81,0
	fsmbi	$4,0
	il	$5,513	# 201
	fsmbi	$6,0
	il	$80,0
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	fsmbi	$6,0
	il	$4,1
	il	$5,513	# 201
	brsl	$0,func_12488	# 12488
label_13d1c:
	ori	$3,$82,0
	ila	$4,156656	# 263f0
	brsl	$0,func_f620	# f620
	ori	$3,$80,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_13d48
func_13d48:
	ori	$3,$4,0
	br	func_195b0	# 195b0
.global func_13d50
func_13d50:
	hbrr	label_13db4,func_12af0	# 12af0
	stqd	$84,-80($1)
	ori	$84,$4,0
	rotqmbyi	$10,$5,-4
	rotqmbyi	$4,$7,-4
	stqd	$80,-16($1)
	ori	$80,$9,0
	stqd	$83,-64($1)
	ori	$83,$3,0
	rotqbyi	$9,$10,8
	rotqbyi	$3,$4,8
	rotqmbyi	$6,$6,-4
	rotqmbyi	$8,$8,-4
	shlqbyi	$5,$9,12
	shlqbyi	$2,$3,12
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	or	$81,$5,$6
	or	$7,$2,$8
	stqd	$0,16($1)
	stqd	$1,-112($1)
	and	$82,$7,$81
	ai	$1,$1,-112
label_13dac:
	ori	$4,$84,0
	ori	$3,$83,0
label_13db4:
	brsl	$0,func_12af0	# 12af0
	ai	$80,$80,-1
	and	$14,$3,$81
	il	$4,1
	shlqbyi	$3,$83,0
	ceq	$13,$14,$82
	gb	$12,$13
	cgti	$11,$12,11
	brz	$11,label_13de0	# 13de0
	il	$3,1
	br	label_13dec	# 13dec
label_13de0:
	brsl	$0,func_13d48	# 13d48
	brnz	$80,label_13dac	# 13dac
	il	$3,0
label_13dec:
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
	lnop
.global func_13e10
func_13e10:
	ila	$4,204592	# 31f30
	hbrr	label_13e84,func_11110	# 11110
	stqd	$87,-128($1)
	ori	$87,$3,0
	stqd	$80,-16($1)
	ai	$80,$87,168	# a8
	stqd	$0,16($1)
	stqd	$88,-144($1)
	ai	$88,$87,226	# e2
	stqd	$92,-208($1)
	il	$92,0
	stqd	$94,-240($1)
	stqd	$95,-256($1)
	stqd	$96,-272($1)
	stqd	$97,-288($1)
	stqd	$98,-304($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
label_13e68:
	hbrp
	stqd	$89,-160($1)
	stqd	$90,-176($1)
	stqd	$91,-192($1)
	stqd	$93,-224($1)
	stqd	$1,-384($1)
	ai	$1,$1,-384
label_13e84:
	brsl	$0,func_11110	# 11110
	ilhu	$29,20	# 14
	lqd	$28,0($80)
	ori	$3,$88,0
	hbrr	label_13eb4,func_12458	# 12458
	ori	$5,$29,2
	fsmbi	$4,0
	rotqby	$27,$28,$80
	lqd	$25,144($27)	# 90
	ai	$26,$27,14
	rotqby	$24,$25,$26
	ori	$6,$24,16
label_13eb4:
	brsl	$0,func_12458	# 12458
	ilhu	$23,20	# 14
	lqd	$22,0($80)
	ori	$3,$88,0
	hbrr	label_13ee4,func_12458	# 12458
	ori	$5,$23,2
	il	$4,1
	rotqby	$21,$22,$80
	lqd	$19,144($21)	# 90
	ai	$20,$21,14
	rotqby	$18,$19,$20
	ori	$6,$18,16
label_13ee4:
	brsl	$0,func_12458	# 12458
	lqd	$17,0($80)
	hbrr	label_13f3c,label_14190	# 14190
	rotqby	$16,$17,$80
	ai	$9,$16,20	# 14
	ai	$10,$16,152	# 98
	lqd	$14,0($16)
	ai	$11,$16,156	# 9c
	lqd	$13,0($9)
	ai	$15,$16,13
	lqd	$8,0($10)
	ai	$2,$16,15
	lqd	$7,0($11)
	rotqby	$4,$14,$15
	rotqby	$5,$13,$9
	rotqby	$6,$14,$2
	rotqby	$95,$8,$10
	andi	$98,$4,255	# ff
	rotqby	$96,$7,$11
	rotmi	$3,$5,-24
	andi	$97,$6,255	# ff
	andi	$94,$3,63	# 3f
label_13f3c:
	br	label_14190	# 14190
label_13f40:
	ori	$4,$91,0
	shlqbyi	$5,$94,0
	ori	$3,$87,0
	chd	$84,0($1)
	ila	$85,65280	# ff00
	brsl	$0,func_11410	# 11410
	ori	$5,$89,0
	hbrr	label_13f80,func_11700	# 11700
	ori	$83,$3,0
	fsmbi	$4,0
	ori	$3,$87,0
	and	$71,$85,$83
	ila	$86,65535	# ffff
	rotmai	$82,$71,-8
	ai	$91,$91,1
	ori	$6,$82,0
label_13f80:
	brsl	$0,func_11700	# 11700
	hbrr	label_13fb4,func_11700	# 11700
	rotmai	$69,$3,-16
	lqd	$68,64($1)	# 40
	ori	$6,$82,0
	lqd	$70,32($1)	# 20
	ori	$5,$89,0
	shlqbyi	$3,$87,0
	il	$4,1
	shufb	$80,$69,$68,$84
	shufb	$81,$69,$70,$84
	stqd	$80,64($1)	# 40
	stqd	$81,32($1)	# 20
label_13fb4:
	brsl	$0,func_11700	# 11700
	andi	$67,$83,255	# ff
	lqd	$62,48($1)	# 30
	rotmai	$63,$3,-16
	rotqbyi	$66,$81,13
	andi	$64,$92,1
	rotqbyi	$53,$81,14
	a	$65,$67,$67
	hbrr	label_14064,func_11cd0	# 11cd0
	ila	$40,204592	# 31f30
	shlqbyi	$3,$87,0
	ah	$61,$64,$65
	shufb	$60,$63,$80,$84
	andi	$56,$66,255	# ff
	shufb	$57,$63,$62,$84
	ah	$59,$93,$61
	shli	$55,$56,3
	mpyui	$49,$59,36	# 24
	stqd	$60,64($1)	# 40
	andi	$47,$53,255	# ff
	rotqbyi	$58,$57,13
	rotqbyi	$54,$57,14
	a	$50,$55,$56
	stqd	$57,48($1)	# 30
	andi	$52,$58,255	# ff
	andi	$45,$54,255	# ff
	shli	$51,$52,3
	a	$46,$50,$49
	a	$43,$46,$47
	a	$48,$51,$52
	a	$39,$43,$43
	a	$44,$48,$49
	lqx	$32,$39,$40
	a	$42,$44,$45
	a	$37,$39,$40
	a	$41,$42,$42
	ai	$33,$37,14
	a	$38,$41,$40
	lqx	$35,$41,$40
	rotqby	$31,$32,$33
	ai	$36,$38,14
	and	$4,$31,$86
	rotqby	$34,$35,$36
	and	$83,$34,$86
label_14064:
	brsl	$0,func_11cd0	# 11cd0
	ori	$4,$83,0
	shlqbyi	$82,$3,0
	ori	$3,$87,0
	brsl	$0,func_11cd0	# 11cd0
	il	$4,0
	shlqbyi	$5,$90,0
	ori	$81,$3,0
	shlqbyi	$3,$88,0
	and	$30,$85,$82
	and	$85,$85,$81
	rotmi	$6,$30,-8
	brsl	$0,func_12458	# 12458
	rotmi	$6,$85,-8
	shlqbyi	$5,$90,0
	ori	$3,$88,0
	il	$4,1
	brsl	$0,func_12458	# 12458
	ori	$3,$88,0
	ori	$5,$90,0
	fsmbi	$4,0
	andi	$6,$82,255	# ff
	brsl	$0,func_12458	# 12458
	ori	$3,$88,0
	shlqbyi	$5,$90,0
	andi	$6,$81,255	# ff
	il	$4,1
	brsl	$0,func_12458	# 12458
label_140d4:
	ceq	$72,$91,$97
	brz	$72,label_13f40	# 13f40
	ai	$89,$89,1
label_140e0:
	ceq	$73,$89,$98
	brnz	$73,label_140f8	# 140f8
	shli	$74,$89,8
	fsmbi	$91,0
	orhi	$90,$74,4
	br	label_140d4	# 140d4
label_140f8:
	ilhu	$4,80	# 50
	shlqbyi	$3,$88,0
	il	$81,0
	iohl	$4,41232	# a110
	brsl	$0,func_12af0	# 12af0
	ilhu	$4,80	# 50
	ori	$3,$88,0
	iohl	$4,41296	# a150
	brsl	$0,func_12af0	# 12af0
	br	label_1415c	# 1415c
label_14120:
	ai	$90,$87,168	# a8
	brsl	$0,func_11df8	# 11df8
	hbrr	label_1414c,func_12340	# 12340
	lqd	$79,0($90)
	rotqby	$78,$79,$90
	ai	$77,$78,132	# 84
	lqd	$76,0($77)
	rotqby	$75,$76,$77
	or	$89,$3,$75
	shlqbyi	$3,$87,0
	ori	$4,$89,0
label_1414c:
	brsl	$0,func_12340	# 12340
	ori	$3,$87,0
	ai	$4,$89,128	# 80
	brsl	$0,func_12340	# 12340
label_1415c:
	hbrr	label_14188,label_14120	# 14120
	ah	$11,$81,$81
	shlqbyi	$4,$94,0
	andi	$7,$92,1
	ila	$6,65535	# ffff
	ah	$3,$7,$11
	ceq	$91,$81,$95
	ah	$5,$93,$3
	shlqbyi	$3,$87,0
	ai	$81,$81,1
	and	$5,$6,$5
label_14188:
	brz	$91,label_14120	# 14120
	ai	$92,$92,1
label_14190:
	ceq	$93,$92,$96
	brnz	$93,label_141a8	# 141a8
	andi	$4,$92,62	# 3e
	fsmbi	$89,0
	mpy	$93,$95,$4
	br	label_140e0	# 140e0
label_141a8:
	il	$5,1024	# 400
	hbrr	label_141d0,func_13d50	# 13d50
	ilhu	$4,80	# 50
	fsmbi	$6,0
	ori	$7,$5,0
	fsmbi	$8,0
	iohl	$4,41232	# a110
	shlqbyi	$3,$88,0
	il	$9,10000	# 2710
	ai	$98,$87,168	# a8
label_141d0:
	brsl	$0,func_13d50	# 13d50
	hbrr	label_141fc,func_13d50	# 13d50
	il	$7,1024	# 400
	shlqbyi	$3,$88,0
	ilhu	$4,80	# 50
	fsmbi	$8,0
	ori	$5,$7,0
	fsmbi	$6,0
	il	$9,10000	# 2710
	iohl	$4,41296	# a150
	ilhu	$96,20	# 14
label_141fc:
	brsl	$0,func_13d50	# 13d50
	ilhu	$2,20	# 14
	lqd	$12,0($98)
	ori	$3,$88,0
	hbrr	label_14228,func_12458	# 12458
	ori	$5,$2,2
	fsmbi	$4,0
	rotqby	$10,$12,$98
	lqd	$95,144($10)	# 90
	ai	$8,$10,14
	rotqby	$6,$95,$8
label_14228:
	brsl	$0,func_12458	# 12458
	hbrr	label_14250,func_12458	# 12458
	il	$4,1
	lqd	$97,0($98)
	ori	$5,$96,2
	shlqbyi	$3,$88,0
	rotqby	$94,$97,$98
	lqd	$87,144($94)	# 90
	ai	$92,$94,14
	rotqby	$6,$87,$92
label_14250:
	brsl	$0,func_12458	# 12458
	ilhu	$4,80	# 50
	ori	$3,$88,0
	iohl	$4,41232	# a110
	brsl	$0,func_12af0	# 12af0
	ilhu	$4,80	# 50
	ori	$3,$88,0
	iohl	$4,41296	# a150
	brsl	$0,func_12af0	# 12af0
	lqd	$0,400($1)	# 190
	ai	$1,$1,384	# 180
	fsmbi	$3,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	hbr	label_142d0,$0
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
	lqd	$93,-224($1)
	lqd	$94,-240($1)
	lqd	$95,-256($1)
	lqd	$96,-272($1)
	lqd	$97,-288($1)
	lqd	$98,-304($1)
label_142d0:
	bi	$0
	lnop
.global func_142d8
func_142d8:
	ori	$3,$4,0
	br	func_19618	# 19618
.global func_142e0
func_142e0:
	ai	$12,$3,168	# a8
	hbrr	label_1435c,func_12310	# 12310
	il	$6,0
	stqd	$88,-144($1)
	ori	$88,$4,0
	lqd	$11,0($12)
	ilhu	$4,80	# 50
	stqd	$81,-32($1)
	ai	$81,$3,226	# e2
	stqd	$0,16($1)
	iohl	$4,41240	# a118
	stqd	$80,-16($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	ori	$83,$3,0
	rotqby	$10,$11,$12
	ori	$3,$81,0
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	ai	$7,$10,20	# 14
	stqd	$87,-128($1)
	ori	$87,$5,0
	stqd	$1,-176($1)
	ilhu	$5,320	# 140
	lqd	$9,0($7)
	ai	$1,$1,-176
	fsmbi	$85,0
	rotqby	$8,$9,$7
	rotmi	$2,$8,-24
	andi	$86,$2,63	# 3f
label_1435c:
	brsl	$0,func_12310	# 12310
	il	$4,100	# 64
	shlqbyi	$3,$81,0
	brsl	$0,func_142d8	# 142d8
	ilhu	$4,80	# 50
	ori	$3,$81,0
	fsmbi	$6,0
	iohl	$4,41304	# a158
	ilhu	$5,320	# 140
	brsl	$0,func_12310	# 12310
	ori	$3,$81,0
	il	$4,100	# 64
	brsl	$0,func_142d8	# 142d8
	br	label_14598	# 14598
label_14394:
	il	$3,1956	# 7a4
	ori	$5,$87,0
	shlqbyi	$4,$85,0
	a	$6,$83,$3
	shlqbyi	$3,$83,0
	ori	$80,$83,0
	fsmbi	$82,0
	brsl	$0,func_11e50	# 11e50
	ori	$4,$86,0
	a	$5,$85,$85
	shlqbyi	$3,$83,0
	brsl	$0,func_11df8	# 11df8
	ai	$17,$83,168	# a8
	ilhu	$4,80	# 50
	hbrr	label_143f8,func_12310	# 12310
	il	$5,0
	lqd	$16,0($17)
	iohl	$4,41056	# a060
	rotqby	$15,$16,$17
	ai	$6,$15,132	# 84
	lqd	$14,0($6)
	rotqby	$13,$14,$6
	or	$84,$3,$13
	ori	$3,$81,0
	ori	$6,$84,0
label_143f8:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$81,0
	fsmbi	$5,0
	iohl	$4,41064	# a068
	ilhu	$6,32768	# 8000
	brsl	$0,func_12310	# 12310
label_14414:
	hbrr	label_14448,func_12310	# 12310
	il	$21,1964	# 7ac
	shlqbyi	$3,$81,0
	ilhu	$4,80	# 50
	fsmbi	$6,0
	a	$20,$80,$21
	lqx	$18,$80,$21
	ai	$82,$82,1
	ai	$19,$20,13
	iohl	$4,41072	# a070
	ai	$80,$80,12
	rotqby	$5,$18,$19
	shli	$5,$5,24	# 18
label_14448:
	brsl	$0,func_12310	# 12310
	ceqi	$4,$82,16
	brz	$4,label_14414	# 14414
	ilhu	$4,80	# 50
	ori	$3,$81,0
	fsmbi	$5,0
	iohl	$4,41064	# a068
	fsmbi	$6,0
	ori	$80,$83,0
	fsmbi	$82,0
	brsl	$0,func_12310	# 12310
	hbrr	label_144ac,func_12310	# 12310
label_14478:
	il	$28,1956	# 7a4
	shlqbyi	$3,$81,0
	il	$27,1960	# 7a8
	lqx	$25,$80,$28
	a	$26,$80,$28
	lqx	$23,$80,$27
	a	$24,$80,$27
	ai	$82,$82,1
	ilhu	$4,80	# 50
	ai	$80,$80,12
	iohl	$4,41072	# a070
	rotqby	$5,$25,$26
	rotqby	$6,$23,$24
label_144ac:
	brsl	$0,func_12310	# 12310
	ceqi	$22,$82,16
	brz	$22,label_14478	# 14478
	ilhu	$4,80	# 50
	fsmbi	$5,0
	ai	$6,$84,128	# 80
	shlqbyi	$3,$81,0
	iohl	$4,41056	# a060
	shlqbyi	$80,$83,0
	il	$82,0
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	shlqbyi	$3,$81,0
	il	$5,0
	iohl	$4,41064	# a068
	ilhu	$6,32768	# 8000
	brsl	$0,func_12310	# 12310
	hbrr	label_14524,func_12310	# 12310
label_144f4:
	il	$34,1964	# 7ac
	ai	$82,$82,1
	shlqbyi	$3,$81,0
	a	$33,$80,$34
	lqx	$31,$80,$34
	ilhu	$4,80	# 50
	fsmbi	$6,0
	ai	$32,$33,13
	iohl	$4,41072	# a070
	ai	$80,$80,12
	rotqby	$30,$31,$32
	shli	$5,$30,24	# 18
label_14524:
	brsl	$0,func_12310	# 12310
	ceqi	$29,$82,16
	brz	$29,label_144f4	# 144f4
	ilhu	$4,80	# 50
	shlqbyi	$3,$81,0
	il	$5,0
	fsmbi	$6,0
	iohl	$4,41064	# a068
	shlqbyi	$80,$83,0
	il	$82,0
	brsl	$0,func_12310	# 12310
	hbrr	label_14588,func_12310	# 12310
label_14554:
	il	$41,1956	# 7a4
	il	$40,1960	# 7a8
	shlqbyi	$3,$81,0
	a	$39,$80,$41
	lqx	$38,$80,$41
	a	$37,$80,$40
	lqx	$36,$80,$40
	ai	$82,$82,1
	ilhu	$4,80	# 50
	ai	$80,$80,12
	iohl	$4,41072	# a070
	rotqby	$5,$38,$39
	rotqby	$6,$36,$37
label_14588:
	brsl	$0,func_12310	# 12310
	ceqi	$35,$82,16
	brz	$35,label_14554	# 14554
	ai	$85,$85,1
label_14598:
	ceq	$42,$85,$88
	brz	$42,label_14394	# 14394
	lqd	$0,192($1)	# c0
	ai	$1,$1,176	# b0
	lqd	$80,-16($1)
	hbr	label_145d0,$0
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
label_145d0:
	bi	$0
	lnop
.global func_145d8
func_145d8:
	ai	$10,$3,168	# a8
	hbrr	label_1460c,func_142e0	# 142e0
	ila	$5,204592	# 31f30
	stqd	$0,16($1)
	lqd	$9,0($10)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqby	$8,$9,$10
	ai	$7,$8,3
	ai	$2,$8,16
	lqd	$6,0($7)
	rotqby	$4,$6,$2
	andi	$4,$4,255	# ff
label_1460c:
	brsl	$0,func_142e0	# 142e0
	il	$3,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_14620
func_14620:
	stqd	$80,-16($1)
	ai	$80,$3,168	# a8
	hbrr	label_14664,func_13c60	# 13c60
	lqd	$9,0($80)
	stqd	$82,-48($1)
	stqd	$0,16($1)
	ori	$82,$3,0
	stqd	$81,-32($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
	rotqby	$8,$9,$80
	lqd	$6,128($8)	# 80
	ai	$7,$8,13
	rotqby	$5,$6,$7
	ceqbi	$2,$5,0
	xsbh	$4,$2
	brhnz	$4,label_14670	# 14670
label_14664:
	brsl	$0,func_13c60	# 13c60
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
label_14670:
	ori	$3,$82,0
	brsl	$0,func_13c58	# 13c58
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
	ori	$3,$82,0
	brsl	$0,func_14940	# 14940
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
	ori	$3,$82,0
	brsl	$0,func_151d8	# 151d8
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
	ori	$3,$82,0
	brsl	$0,func_15e40	# 15e40
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
	ori	$3,$82,0
	brsl	$0,func_13e10	# 13e10
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
	ori	$3,$82,0
	brsl	$0,func_145d8	# 145d8
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
	ori	$3,$82,0
	ila	$4,156704	# 26420
	brsl	$0,func_f668	# f668
	ori	$3,$82,0
	ila	$4,156752	# 26450
	brsl	$0,func_f668	# f668
	brsl	$0,func_d7a8	# d7a8
	brsl	$0,func_d778	# d778
	ori	$3,$82,0
	brsl	$0,func_162c8	# 162c8
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
	ori	$3,$82,0
	ila	$4,156800	# 26480
	brsl	$0,func_f668	# f668
	brsl	$0,func_d748	# d748
	brsl	$0,func_d718	# d718
	ori	$3,$82,0
	brsl	$0,func_16660	# 16660
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
	ori	$3,$82,0
	ila	$4,156848	# 264b0
	brsl	$0,func_f668	# f668
	ori	$3,$82,0
	brsl	$0,func_13aa8	# 13aa8
	hbrr	label_14764,label_14798	# 14798
	ori	$81,$3,0
	brnz	$3,label_14850	# 14850
	lqd	$16,0($80)
	rotqby	$15,$16,$80
	ai	$14,$15,7
	ai	$13,$15,20	# 14
	lqd	$12,0($14)
	rotqby	$11,$12,$13
	ceqbi	$10,$11,1
	xsbh	$3,$10
label_14764:
	brhz	$3,label_14798	# 14798
	ori	$3,$82,0
	ila	$4,156880	# 264d0
	brsl	$0,func_f668	# f668
	ori	$3,$82,0
	brsl	$0,func_16cb8	# 16cb8
	brnz	$3,label_1484c	# 1484c
	ori	$3,$82,0
	brsl	$0,func_16df8	# 16df8
	brnz	$3,label_1484c	# 1484c
	ori	$3,$82,0
	brsl	$0,func_16f38	# 16f38
	brnz	$3,label_1484c	# 1484c
label_14798:
	ai	$25,$82,168	# a8
	hbrr	label_147c0,label_147e0	# 147e0
	lqd	$24,0($25)
	rotqby	$23,$24,$25
	ai	$22,$23,107	# 6b
	ai	$21,$23,120	# 78
	lqd	$20,0($22)
	rotqby	$19,$20,$21
	ceqbi	$18,$19,1
	xsbh	$17,$18
label_147c0:
	brhz	$17,label_147e0	# 147e0
	ori	$3,$82,0
	ila	$4,156912	# 264f0
	brsl	$0,func_f668	# f668
	ori	$3,$82,0
	brsl	$0,func_12420	# 12420
	hbrr	label_1480c,func_d660	# d660
	brnz	$3,label_1484c	# 1484c
label_147e0:
	ai	$80,$82,168	# a8
	lqd	$40,0($80)
	rotqby	$37,$40,$80
	ai	$39,$37,163	# a3
	ai	$38,$37,164	# a4
	lqd	$35,0($39)
	ai	$34,$37,177	# b1
	lqd	$33,0($38)
	ai	$36,$37,176	# b0
	rotqby	$3,$35,$36
	rotqby	$4,$33,$34
label_1480c:
	brsl	$0,func_d660	# d660
	lqd	$32,0($80)
	rotqby	$31,$32,$80
	ai	$30,$31,13
	lqd	$29,128($31)	# 80
	rotqby	$28,$29,$30
	ceqbi	$27,$28,0
	xsbh	$26,$27
	brhnz	$26,label_1483c	# 1483c
	ori	$3,$82,0
	ila	$4,156944	# 26510
	brsl	$0,func_f668	# f668
label_1483c:
	ori	$3,$82,0
	ila	$4,156976	# 26530
	brsl	$0,func_f668	# f668
	br	label_14860	# 14860
label_1484c:
	ori	$81,$3,0
label_14850:
	ori	$3,$82,0
	ila	$4,157008	# 26550
	brsl	$0,func_f668	# f668
	brsl	$0,func_d6e8	# d6e8
label_14860:
	ori	$3,$81,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_14880
func_14880:
	il	$9,168	# a8
	hbrr	label_148b8,func_1f718	# 1f718
	il	$12,0
	stqd	$0,16($1)
	il	$4,0
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	il	$5,168	# a8
	lqx	$11,$3,$9
	ai	$1,$1,-48
	cwd	$8,8($3)
	shufb	$10,$12,$11,$8
	stqx	$10,$3,$9
label_148b8:
	brsl	$0,func_1f718	# 1f718
	il	$4,0
	il	$5,288	# 120
	ai	$3,$80,228	# e4
	brsl	$0,func_1f718	# 1f718
	il	$7,516	# 204
	il	$4,0
	a	$3,$80,$7
	il	$5,288	# 120
	brsl	$0,func_1f718	# 1f718
	il	$6,804	# 324
	fsmbi	$4,0
	il	$5,288	# 120
	a	$3,$80,$6
	brsl	$0,func_1f718	# 1f718
	il	$5,1092	# 444
	il	$4,0
	a	$3,$80,$5
	il	$5,288	# 120
	brsl	$0,func_1f718	# 1f718
	il	$2,1380	# 564
	fsmbi	$4,0
	il	$5,288	# 120
	a	$3,$80,$2
	brsl	$0,func_1f718	# 1f718
	lqd	$0,64($1)	# 40
	il	$3,1668	# 684
	fsmbi	$4,0
	ai	$1,$1,48	# 30
	a	$3,$80,$3
	il	$5,288	# 120
	lqd	$80,-16($1)
	br	func_1f718	# 1f718
	lnop
.global func_14940
func_14940:
	ilhu	$77,49536	# c180
	stqd	$82,-48($1)
	ai	$82,$3,168	# a8
	hbrr	label_149a0,func_12310	# 12310
	ilhu	$4,80	# 50
	stqd	$81,-32($1)
	il	$6,0
	lqd	$2,0($82)
	iohl	$4,41496	# a218
	stqd	$83,-64($1)
	ai	$83,$3,226	# e2
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$3,$83,0
	ila	$80,65535	# ffff
	stqd	$1,-96($1)
	ai	$1,$1,-96
	rotqby	$5,$2,$82
	ai	$8,$5,44	# 2c
	ai	$81,$5,58	# 3a
	lqd	$79,0($8)
	rotqby	$78,$79,$81
	shli	$76,$78,16
	or	$5,$76,$77
label_149a0:
	brsl	$0,func_12310	# 12310
	lqd	$75,0($82)
	ilhu	$4,80	# 50
	hbrr	label_149cc,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41152	# a0c0
	rotqby	$74,$75,$82
	ai	$73,$74,20	# 14
	lqd	$72,0($73)
	rotqby	$5,$72,$73
label_149cc:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	lqd	$71,0($82)
	ori	$3,$83,0
	hbrr	label_149f8,func_12310	# 12310
	iohl	$4,41344	# a180
	fsmbi	$6,0
	rotqby	$70,$71,$82
	ai	$69,$70,20	# 14
	lqd	$68,0($69)
	rotqby	$5,$68,$69
label_149f8:
	brsl	$0,func_12310	# 12310
	lqd	$67,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14a24,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41192	# a0e8
	rotqby	$66,$67,$82
	ai	$65,$66,40	# 28
	lqd	$64,0($65)
	rotqby	$5,$64,$65
label_14a24:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	lqd	$63,0($82)
	ori	$3,$83,0
	hbrr	label_14a50,func_12310	# 12310
	iohl	$4,41384	# a1a8
	fsmbi	$6,0
	rotqby	$62,$63,$82
	ai	$61,$62,40	# 28
	lqd	$60,0($61)
	rotqby	$5,$60,$61
label_14a50:
	brsl	$0,func_12310	# 12310
	lqd	$59,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14a84,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41160	# a0c8
	rotqby	$58,$59,$82
	ai	$57,$58,24	# 18
	ai	$56,$58,38	# 26
	lqd	$55,0($57)
	rotqby	$54,$55,$56
	shli	$5,$54,16
label_14a84:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	lqd	$53,0($82)
	ori	$3,$83,0
	hbrr	label_14ab8,func_12310	# 12310
	iohl	$4,41352	# a188
	fsmbi	$6,0
	rotqby	$52,$53,$82
	ai	$51,$52,24	# 18
	ai	$50,$52,38	# 26
	lqd	$49,0($51)
	rotqby	$48,$49,$50
	shli	$5,$48,16
label_14ab8:
	brsl	$0,func_12310	# 12310
	lqd	$47,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14b10,func_12310	# 12310
	ori	$3,$83,0
	iohl	$4,41184	# a0e0
	rotqby	$44,$47,$82
	ai	$46,$44,34	# 22
	ai	$45,$44,38	# 26
	lqd	$42,0($46)
	ai	$41,$44,36	# 24
	lqd	$38,0($45)
	ai	$43,$44,48	# 30
	lqd	$35,0($41)
	ai	$39,$44,52	# 34
	ai	$36,$44,50	# 32
	rotqby	$40,$42,$43
	rotqby	$37,$38,$39
	rotqby	$34,$35,$36
	shli	$33,$40,16
	shli	$6,$37,16
	selb	$5,$33,$34,$80
label_14b10:
	brsl	$0,func_12310	# 12310
	lqd	$32,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14b68,func_12310	# 12310
	ori	$3,$83,0
	iohl	$4,41376	# a1a0
	rotqby	$28,$32,$82
	ai	$31,$28,34	# 22
	ai	$30,$28,38	# 26
	lqd	$26,0($31)
	ai	$29,$28,36	# 24
	lqd	$23,0($30)
	ai	$27,$28,48	# 30
	lqd	$20,0($29)
	ai	$24,$28,52	# 34
	ai	$21,$28,50	# 32
	rotqby	$25,$26,$27
	rotqby	$22,$23,$24
	rotqby	$19,$20,$21
	shli	$18,$25,16
	shli	$6,$22,16
	selb	$5,$18,$19,$80
label_14b68:
	brsl	$0,func_12310	# 12310
	lqd	$17,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14b98,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41176	# a0d8
	rotqby	$16,$17,$82
	ai	$15,$16,14
	lqd	$14,32($16)	# 20
	rotqby	$13,$14,$15
	shli	$5,$13,16
label_14b98:
	brsl	$0,func_12310	# 12310
	lqd	$12,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14bc8,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41368	# a198
	rotqby	$11,$12,$82
	ai	$10,$11,14
	lqd	$9,32($11)	# 20
	rotqby	$7,$9,$10
	shli	$5,$7,16
label_14bc8:
	brsl	$0,func_12310	# 12310
	lqd	$2,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14c20,func_12310	# 12310
	ori	$3,$83,0
	iohl	$4,41168	# a0d0
	rotqby	$81,$2,$82
	ai	$5,$81,26	# 1a
	ai	$8,$81,30	# 1e
	lqd	$78,0($5)
	ai	$6,$81,28	# 1c
	lqd	$75,0($8)
	ai	$79,$81,40	# 28
	lqd	$72,0($6)
	ai	$76,$81,44	# 2c
	ai	$73,$81,42	# 2a
	rotqby	$77,$78,$79
	rotqby	$74,$75,$76
	rotqby	$71,$72,$73
	shli	$70,$77,16
	shli	$6,$74,16
	selb	$5,$70,$71,$80
label_14c20:
	brsl	$0,func_12310	# 12310
	lqd	$69,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14c78,func_12310	# 12310
	ori	$3,$83,0
	iohl	$4,41360	# a190
	rotqby	$65,$69,$82
	ai	$68,$65,26	# 1a
	ai	$67,$65,30	# 1e
	lqd	$63,0($68)
	ai	$66,$65,28	# 1c
	lqd	$60,0($67)
	ai	$64,$65,40	# 28
	lqd	$57,0($66)
	ai	$61,$65,44	# 2c
	ai	$58,$65,42	# 2a
	rotqby	$62,$63,$64
	rotqby	$59,$60,$61
	rotqby	$56,$57,$58
	shli	$55,$62,16
	shli	$6,$59,16
	selb	$5,$55,$56,$80
label_14c78:
	brsl	$0,func_12310	# 12310
	lqd	$54,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14cac,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41488	# a210
	rotqby	$53,$54,$82
	ai	$52,$53,18	# 12
	ai	$51,$53,32	# 20
	lqd	$50,0($52)
	rotqby	$49,$50,$51
	shli	$5,$49,16
label_14cac:
	brsl	$0,func_12310	# 12310
	ori	$3,$83,0
	il	$4,50	# 32
	brsl	$0,func_142d8	# 142d8
	lqd	$48,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14cf8,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41472	# a200
	rotqby	$47,$48,$82
	ai	$46,$47,14
	lqd	$45,16($47)
	ai	$44,$47,28	# 1c
	lqd	$43,0($46)
	rotqby	$41,$45,$46
	rotqby	$42,$43,$44
	shli	$40,$42,16
	selb	$5,$40,$41,$80
label_14cf8:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41520	# a230
	ila	$5,64832	# fd40
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41528	# a238
	il	$5,640	# 280
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$83,0
	fsmbi	$5,0
	iohl	$4,41480	# a208
	fsmbi	$6,0
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$83,0
	fsmbi	$5,0
	iohl	$4,41040	# a050
	fsmbi	$6,0
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$83,0
	il	$5,15
	iohl	$4,41048	# a058
	il	$6,-128
	brsl	$0,func_12310	# 12310
	lqd	$39,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14da4,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41088	# a080
	rotqby	$38,$39,$82
	ai	$37,$38,8
	ai	$36,$38,22	# 16
	lqd	$35,0($37)
	rotqby	$34,$35,$36
	shli	$5,$34,16
label_14da4:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	lqd	$33,0($82)
	ori	$3,$83,0
	hbrr	label_14dd8,func_12310	# 12310
	iohl	$4,41408	# a1c0
	fsmbi	$6,0
	rotqby	$32,$33,$82
	ai	$31,$32,8
	ai	$30,$32,22	# 16
	lqd	$29,0($31)
	rotqby	$28,$29,$30
	shli	$5,$28,16
label_14dd8:
	brsl	$0,func_12310	# 12310
	lqd	$27,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14e0c,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41024	# a040
	rotqby	$26,$27,$82
	ai	$25,$26,12
	ai	$24,$26,26	# 1a
	lqd	$23,0($25)
	rotqby	$22,$23,$24
	shli	$5,$22,16
label_14e0c:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	lqd	$21,0($82)
	ori	$3,$83,0
	hbrr	label_14e40,func_12310	# 12310
	iohl	$4,41136	# a0b0
	fsmbi	$6,0
	rotqby	$20,$21,$82
	ai	$19,$20,10
	ai	$18,$20,24	# 18
	lqd	$17,0($19)
	rotqby	$16,$17,$18
	shli	$5,$16,16
label_14e40:
	brsl	$0,func_12310	# 12310
	lqd	$15,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14e74,func_12310	# 12310
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41456	# a1f0
	rotqby	$14,$15,$82
	ai	$13,$14,10
	ai	$12,$14,24	# 18
	lqd	$11,0($13)
	rotqby	$10,$11,$12
	shli	$5,$10,16
label_14e74:
	brsl	$0,func_12310	# 12310
	hbrr	label_14e9c,label_150c0	# 150c0
	lqd	$9,0($82)
	rotqby	$7,$9,$82
	ai	$8,$7,7
	ai	$6,$7,20	# 14
	lqd	$5,0($8)
	rotqby	$4,$5,$6
	ceqbi	$3,$4,1
	xsbh	$2,$3
label_14e9c:
	brhz	$2,label_150c0	# 150c0
	ai	$18,$7,72	# 48
	hbrr	label_14ed8,func_12310	# 12310
	ai	$16,$7,132	# 84
	shlqbyi	$3,$83,0
	ilhu	$4,80	# 50
	lqd	$17,0($18)
	il	$6,0
	lqd	$15,0($16)
	iohl	$4,41264	# a130
	rotqby	$14,$17,$18
	rotqby	$13,$15,$16
	a	$12,$13,$14
	rotmi	$81,$12,-4
	ori	$5,$81,0
label_14ed8:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41328	# a170
	shlqbyi	$5,$81,0
	brsl	$0,func_12310	# 12310
	hbrr	label_14f18,label_14f8c	# 14f8c
	lqd	$11,0($82)
	rotqby	$4,$11,$82
	ai	$10,$4,107	# 6b
	ai	$9,$4,120	# 78
	lqd	$7,0($10)
	rotqby	$6,$7,$9
	ceqbi	$80,$6,1
	xsbh	$3,$80
label_14f18:
	brhz	$3,label_14f8c	# 14f8c
	hbrr	label_14f50,func_12310	# 12310
	ai	$30,$4,132	# 84
	shlqbyi	$3,$83,0
	ila	$80,36864	# 9000
	lqd	$29,0($30)
	ilhu	$81,32768	# 8000
	ilhu	$4,80	# 50
	iohl	$4,41120	# a0a0
	rotqby	$28,$29,$30
	rotmi	$26,$28,-5
	a	$27,$28,$80
	rotmi	$6,$27,-1
	or	$5,$26,$81
label_14f50:
	brsl	$0,func_12310	# 12310
	lqd	$25,0($82)
	ilhu	$4,80	# 50
	hbrr	label_14f88,func_12310	# 12310
	ori	$3,$83,0
	iohl	$4,41440	# a1e0
	rotqby	$24,$25,$82
	ai	$23,$24,132	# 84
	lqd	$22,0($23)
	rotqby	$21,$22,$23
	rotmi	$19,$21,-5
	a	$20,$21,$80
	rotmi	$6,$20,-1
	or	$5,$19,$81
label_14f88:
	brsl	$0,func_12310	# 12310
label_14f8c:
	ilhu	$4,80	# 50
	ori	$3,$83,0
	iohl	$4,41496	# a218
	brsl	$0,func_12af0	# 12af0
	hbrr	label_14fc4,func_12310	# 12310
	ilhu	$4,80	# 50
	fsmbi	$56,514	# 202
	il	$6,0
	rotqmbyi	$54,$3,-4
	iohl	$4,41496	# a218
	shlqbyi	$3,$83,0
	andbi	$55,$56,-64
	or	$53,$54,$55
	shlqbyi	$5,$53,4
label_14fc4:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	lqd	$52,0($82)
	ori	$3,$83,0
	hbrr	label_14ff4,func_12310	# 12310
	iohl	$4,41200	# a0f0
	rotqby	$51,$52,$82
	ai	$49,$51,68	# 44
	lqd	$50,64($51)	# 40
	lqd	$48,0($49)
	rotqby	$5,$50,$51
	rotqby	$6,$48,$49
label_14ff4:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	lqd	$47,0($82)
	ori	$3,$83,0
	hbrr	label_15024,func_12310	# 12310
	iohl	$4,41392	# a1b0
	rotqby	$46,$47,$82
	ai	$41,$46,68	# 44
	lqd	$45,64($46)	# 40
	lqd	$44,0($41)
	rotqby	$5,$45,$46
	rotqby	$6,$44,$41
label_15024:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	shlqbyi	$3,$83,0
	iohl	$4,41496	# a218
	brsl	$0,func_12af0	# 12af0
	ilhu	$43,65535	# ffff
	fsmbi	$6,0
	ilhu	$4,80	# 50
	iohl	$43,16383	# 3fff
	iohl	$4,41496	# a218
	and	$5,$3,$43
	ori	$3,$83,0
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	lqd	$42,0($82)
	ori	$3,$83,0
	hbrr	label_15088,func_12310	# 12310
	iohl	$4,41200	# a0f0
	rotqby	$40,$42,$82
	ai	$39,$40,60	# 3c
	ai	$37,$40,56	# 38
	lqd	$38,0($39)
	lqd	$36,0($37)
	rotqby	$6,$38,$39
	rotqby	$5,$36,$37
label_15088:
	brsl	$0,func_12310	# 12310
	lqd	$35,0($82)
	ilhu	$4,80	# 50
	hbrr	label_150bc,func_12310	# 12310
	ori	$3,$83,0
	iohl	$4,41392	# a1b0
	rotqby	$34,$35,$82
	ai	$33,$34,60	# 3c
	ai	$31,$34,56	# 38
	lqd	$32,0($33)
	lqd	$82,0($31)
	rotqby	$6,$32,$33
	rotqby	$5,$82,$31
label_150bc:
	brsl	$0,func_12310	# 12310
label_150c0:
	hbrr	label_150e4,func_13d50	# 13d50
	ilhu	$4,80	# 50
	ori	$3,$83,0
	fsmbi	$6,0
	iohl	$4,41232	# a110
	fsmbi	$7,0
	il	$5,4096	# 1000
	fsmbi	$8,0
	il	$9,10000	# 2710
label_150e4:
	brsl	$0,func_13d50	# 13d50
	il	$3,0
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
.global func_15108
func_15108:
	shli	$10,$4,2
	hbrr	label_1516c,func_12310	# 12310
	ila	$9,157216	# 26620
	stqd	$84,-80($1)
	ori	$84,$6,0
	stqd	$82,-48($1)
	il	$6,4095	# fff
	stqd	$80,-16($1)
	a	$4,$10,$9
	lqx	$2,$10,$9
	and	$5,$5,$6
	stqd	$81,-32($1)
	ori	$80,$8,0
	stqd	$83,-64($1)
	iohl	$5,4096	# 1000
	stqd	$0,16($1)
	ori	$83,$7,0
	stqd	$1,-112($1)
	shli	$5,$5,16
label_15154:
	hbrp
	ai	$1,$1,-112
	rotqby	$82,$2,$4
	ori	$81,$3,0
	fsmbi	$6,0
	ori	$4,$82,0
label_1516c:
	brsl	$0,func_12310	# 12310
label_15170:
	ori	$4,$82,0
	shlqbyi	$3,$81,0
	brsl	$0,func_12af0	# 12af0
	hbrr	label_151a0,label_151ac	# 151ac
	ila	$13,65535	# ffff
	ai	$80,$80,-1
	and	$12,$13,$84
	and	$11,$83,$13
	and	$8,$12,$3
	shlqbyi	$3,$81,0
	il	$4,1
	ceq	$7,$8,$11
label_151a0:
	brz	$7,label_151ac	# 151ac
	il	$3,1
	br	label_151b8	# 151b8
label_151ac:
	brsl	$0,func_13d48	# 13d48
	brnz	$80,label_15170	# 15170
	il	$3,0
label_151b8:
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
.global func_151d8
func_151d8:
	il	$4,0
	stqd	$83,-64($1)
	ai	$83,$3,168	# a8
	hbrr	label_1522c,func_12488	# 12488
	il	$5,521	# 209
	stqd	$82,-48($1)
	ai	$82,$3,226	# e2
	lqd	$16,0($83)
	stqd	$0,16($1)
	stqd	$84,-80($1)
	ori	$84,$3,0
	stqd	$80,-16($1)
	ori	$3,$82,0
	stqd	$81,-32($1)
	stqd	$1,-144($1)
	rotqby	$15,$16,$83
	ai	$1,$1,-144
	ai	$14,$15,76	# 4c
	ai	$13,$15,90	# 5a
	lqd	$12,0($14)
	rotqby	$6,$12,$13
label_1522c:
	brsl	$0,func_12488	# 12488
	il	$4,1
	lqd	$11,0($83)
	ori	$3,$82,0
	hbrr	label_15258,func_12488	# 12488
	il	$5,521	# 209
	rotqby	$10,$11,$83
	ai	$9,$10,76	# 4c
	ai	$8,$10,90	# 5a
	lqd	$7,0($9)
	rotqby	$6,$7,$8
label_15258:
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,0
	il	$5,6
	il	$6,12
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,10
	brsl	$0,func_13d48	# 13d48
	ori	$3,$82,0
	il	$4,0
	il	$5,6
	il	$6,15
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,10
	brsl	$0,func_13d48	# 13d48
	ori	$3,$82,0
	il	$4,1
	il	$5,6
	il	$6,12
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,10
	brsl	$0,func_13d48	# 13d48
	ori	$3,$82,0
	il	$4,1
	il	$5,6
	il	$6,15
	brsl	$0,func_12488	# 12488
	ilhu	$8,152	# 98
	fsmbi	$4,0
	il	$5,0
	shlqbyi	$3,$82,0
	iohl	$8,38528	# 9680
	il	$6,2
	il	$7,2
	brsl	$0,func_15108	# 15108
	ilhu	$8,152	# 98
	fsmbi	$5,0
	il	$4,1
	shlqbyi	$3,$82,0
	il	$6,2
	iohl	$8,38528	# 9680
	il	$7,2
	brsl	$0,func_15108	# 15108
	ori	$3,$82,0
	fsmbi	$4,0
	il	$5,7
	il	$6,15
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	il	$5,7
	il	$6,15
	brsl	$0,func_12488	# 12488
	ilhu	$8,152	# 98
	fsmbi	$4,0
	il	$5,0
	shlqbyi	$3,$82,0
	iohl	$8,38528	# 9680
	il	$6,6
	il	$7,6
	brsl	$0,func_15108	# 15108
	ilhu	$8,152	# 98
	fsmbi	$5,0
	il	$6,6
	shlqbyi	$3,$82,0
	il	$4,1
	iohl	$8,38528	# 9680
	il	$7,6
	brsl	$0,func_15108	# 15108
	il	$4,0
	shlqbyi	$3,$82,0
	il	$5,3069	# bfd
	brsl	$0,func_12b08	# 12b08
	ai	$6,$84,172	# ac
	ai	$4,$84,186	# ba
	lqd	$5,0($6)
	rotqby	$2,$5,$4
	ceqh	$3,$3,$2
	brhnz	$3,label_153b8	# 153b8
	ori	$3,$84,0
	ila	$4,157136	# 265d0
	brsl	$0,func_f620	# f620
	ilhu	$3,45056	# b000
	iohl	$3,8205	# 200d
	br	label_15e20	# 15e20
label_153b8:
	ai	$81,$84,188	# bc
	fsmbi	$4,0
	il	$5,1013	# 3f5
	shlqbyi	$3,$82,0
	il	$6,-32768
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	il	$5,1013	# 3f5
	il	$6,-32768
	ai	$80,$84,202	# ca
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	lqd	$24,0($81)
	il	$4,0
	il	$5,1012	# 3f4
	rotqby	$6,$24,$80
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	lqd	$23,0($81)
	il	$4,1
	il	$5,1012	# 3f4
	rotqby	$6,$23,$80
	brsl	$0,func_12488	# 12488
	lqd	$22,0($83)
	hbrr	label_15448,func_12488	# 12488
	rotqby	$21,$22,$83
	lqd	$20,112($21)	# 70
	rotqby	$19,$20,$21
	shli	$18,$19,8
	rotmi	$6,$18,-16
	ceqhi	$17,$6,-1
	brhnz	$17,label_15554	# 15554
	ori	$3,$82,0
	il	$4,0
	il	$5,1020	# 3fc
label_15448:
	brsl	$0,func_12488	# 12488
	lqd	$34,0($83)
	ori	$3,$82,0
	hbrr	label_15474,func_12488	# 12488
	il	$4,1
	il	$5,1020	# 3fc
	rotqby	$33,$34,$83
	lqd	$32,112($33)	# 70
	rotqby	$31,$32,$33
	shli	$30,$31,8
	rotmi	$6,$30,-16
label_15474:
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,10
	brsl	$0,func_13d48	# 13d48
	lqd	$29,0($83)
	ilhu	$8,152	# 98
	hbrr	label_154b8,func_15108	# 15108
	ori	$3,$82,0
	fsmbi	$4,0
	iohl	$8,38528	# 9680
	fsmbi	$6,65535	# ffff
	il	$5,3068	# bfc
	rotqby	$28,$29,$83
	lqd	$27,112($28)	# 70
	rotqby	$26,$27,$28
	shli	$25,$26,8
	rotmi	$7,$25,-16
label_154b8:
	brsl	$0,func_15108	# 15108
	br	label_15554	# 15554
label_154c0:
	hbrr	label_154ec,label_154fc	# 154fc
	lqd	$38,0($9)
	lqd	$37,0($8)
	rotqby	$36,$38,$7
	rotqby	$35,$37,$8
	ahi	$5,$36,1
	ahi	$4,$36,-1
	brnz	$35,label_154f0	# 154f0
	lqx	$40,$84,$13
	shufb	$39,$5,$40,$11
	stqx	$39,$84,$13
label_154ec:
	br	label_154fc	# 154fc
label_154f0:
	lqx	$42,$84,$12
	shufb	$41,$4,$42,$10
	stqx	$41,$84,$12
label_154fc:
	ai	$52,$84,180	# b4
	ai	$51,$84,174	# ae
	hbrr	label_1553c,func_12488	# 12488
	ai	$50,$84,194	# c2
	lqd	$49,0($52)
	ai	$48,$84,188	# bc
	lqd	$47,0($51)
	il	$4,0
	shlqbyi	$3,$82,0
	il	$5,1011	# 3f3
	rotqby	$43,$49,$50
	rotqby	$46,$47,$48
	ahi	$45,$43,-1
	and	$44,$45,$46
	or	$83,$43,$44
	ori	$6,$83,0
label_1553c:
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	shlqbyi	$6,$83,0
	il	$4,1
	il	$5,1011	# 3f3
	brsl	$0,func_12488	# 12488
label_15554:
	hbrr	label_1559c,label_154c0	# 154c0
	ai	$62,$84,178	# b2
	chd	$58,2($84)
	ai	$61,$84,192	# c0
	chd	$11,14($84)
	il	$54,178	# b2
	lqd	$60,0($62)
	ai	$8,$84,184	# b8
	ai	$9,$84,174	# ae
	ori	$10,$11,0
	il	$13,174	# ae
	il	$12,174	# ae
	rotqby	$59,$60,$61
	ai	$7,$84,188	# bc
	ahi	$57,$59,-1
	ceqhi	$53,$57,-1
	shufb	$55,$57,$60,$58
	stqx	$55,$84,$54
label_1559c:
	brhz	$53,label_154c0	# 154c0
	il	$4,0
	shlqbyi	$3,$82,0
	il	$5,1013	# 3f5
	fsmbi	$6,0
	il	$81,0
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	fsmbi	$6,0
	il	$4,1
	il	$5,1013	# 3f5
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,500	# 1f4
	brsl	$0,func_142d8	# 142d8
	ori	$3,$82,0
	fsmbi	$4,0
	il	$5,1013	# 3f5
	il	$6,-32768
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	il	$5,1013	# 3f5
	il	$6,-32768
	brsl	$0,func_12488	# 12488
	ai	$68,$84,200	# c8
	ai	$67,$84,213	# d5
	lqd	$66,0($68)
	rotqby	$65,$66,$67
	ceqbi	$64,$65,0
	xsbh	$63,$64
	brhz	$63,label_15dd0	# 15dd0
	br	label_15dd8	# 15dd8
label_15620:
	ori	$4,$81,0
	shlqbyi	$3,$82,0
	ahi	$5,$80,1
	brsl	$0,func_12b08	# 12b08
	ai	$2,$84,168	# a8
	ori	$5,$3,0
	ceqhi	$6,$81,1
	lqd	$3,0($2)
	xshw	$4,$6
	sfi	$73,$4,0
	rotqby	$79,$3,$2
	lqd	$77,0($79)
	ai	$78,$79,13
	rotqby	$76,$77,$78
	ceqbi	$75,$76,9
	fsm	$74,$75
	sfi	$72,$74,0
	and	$71,$72,$73
	ceqbi	$70,$71,0
	xsbh	$69,$70
	brhnz	$69,label_156e4	# 156e4
	il	$8,-27649
	clgth	$7,$5,$8
	brhnz	$7,label_156d0	# 156d0
	il	$11,27840	# 6cc0
	ah	$10,$5,$11
	clgthi	$9,$10,191	# bf
	brhz	$9,label_15714	# 15714
	il	$14,28096	# 6dc0
	ah	$13,$5,$14
	clgthi	$12,$13,255	# ff
	brhz	$12,label_15738	# 15738
	il	$17,28352	# 6ec0
	ah	$16,$5,$17
	clgthi	$15,$16,255	# ff
	brhz	$15,label_1575c	# 1575c
	il	$20,28608	# 6fc0
	ah	$19,$5,$20
	clgthi	$18,$19,255	# ff
	brhz	$18,label_15780	# 15780
	il	$22,28672	# 7000
	ah	$21,$5,$22
	clgthi	$5,$21,63	# 3f
	brhnz	$5,label_15714	# 15714
label_156d0:
	ori	$3,$82,0
	shlqbyi	$4,$81,0
	ori	$5,$80,0
	il	$6,-15047
	br	label_157a4	# 157a4
label_156e4:
	hbrr	label_15710,label_15728	# 15728
	il	$24,-27649
	clgth	$23,$5,$24
	brhnz	$23,label_15780	# 15780
	il	$27,27712	# 6c40
	ah	$26,$5,$27
	clgthi	$25,$26,63	# 3f
	brhz	$25,label_15794	# 15794
	il	$30,27968	# 6d40
	ah	$29,$5,$30
	clgthi	$28,$29,255	# ff
label_15710:
	brhnz	$28,label_15728	# 15728
label_15714:
	ori	$3,$82,0
	ori	$4,$81,0
	shlqbyi	$5,$80,0
	il	$6,-15303
	br	label_157a4	# 157a4
label_15728:
	il	$33,28224	# 6e40
	ah	$32,$5,$33
	clgthi	$31,$32,255	# ff
	brhnz	$31,label_1574c	# 1574c
label_15738:
	ori	$3,$82,0
	shlqbyi	$4,$81,0
	ori	$5,$80,0
	il	$6,-15243
	br	label_157a4	# 157a4
label_1574c:
	il	$36,28480	# 6f40
	ah	$35,$5,$36
	clgthi	$34,$35,255	# ff
	brhnz	$34,label_15770	# 15770
label_1575c:
	ori	$3,$82,0
	ori	$4,$81,0
	shlqbyi	$5,$80,0
	il	$6,-15183
	br	label_157a4	# 157a4
label_15770:
	il	$39,28672	# 7000
	ah	$38,$5,$39
	clgthi	$37,$38,191	# bf
	brhnz	$37,label_15794	# 15794
label_15780:
	ori	$3,$82,0
	shlqbyi	$4,$81,0
	ori	$5,$80,0
	il	$6,-15091
	br	label_157a4	# 157a4
label_15794:
	ori	$3,$82,0
	ori	$4,$81,0
	shlqbyi	$5,$80,0
	il	$6,-15347
label_157a4:
	brsl	$0,func_12488	# 12488
	ahi	$80,$80,256	# 100
	il	$41,3316	# cf4
	ceqh	$40,$80,$41
	brhz	$40,label_15620	# 15620
	ai	$81,$81,1
	ceqi	$80,$81,2
	brnz	$80,label_15a38	# 15a38
	br	label_15dd0	# 15dd0
label_157c8:
	ori	$5,$83,0
	shlqbyi	$4,$81,0
	ori	$3,$82,0
	brsl	$0,func_12b08	# 12b08
	ai	$53,$84,168	# a8
	lqd	$58,0($80)
	ceqhi	$60,$81,1
	chd	$56,0($80)
	ahi	$55,$3,-128
	hbrr	label_15848,label_157c8	# 157c8
	xshw	$59,$60
	ahi	$83,$83,256	# 100
	sfi	$46,$59,0
	shufb	$54,$3,$58,$56
	il	$57,3317	# cf5
	ceqh	$8,$83,$57
	stqd	$54,0($80)
	lqd	$52,0($53)
	shufb	$4,$55,$54,$56
	rotqby	$11,$52,$53
	ai	$51,$11,13
	lqd	$50,0($11)
	rotqby	$49,$50,$51
	ceqbi	$48,$49,9
	fsm	$47,$48
	sfi	$45,$47,0
	and	$44,$45,$46
	ceqbi	$43,$44,0
	xsbh	$42,$43
	brhnz	$42,label_15844	# 15844
	stqd	$4,0($80)
label_15844:
	ai	$80,$80,2
label_15848:
	brhz	$8,label_157c8	# 157c8
	ai	$81,$81,1
	ceqi	$83,$81,2
	brnz	$83,label_15df0	# 15df0
	br	label_15ddc	# 15ddc
label_1585c:
	hbrr	label_15880,label_1585c
	ai	$63,$4,14
	lqd	$62,0($4)
	ahi	$5,$5,1
	ai	$4,$4,2
	ceqhi	$7,$5,4
	rotqby	$61,$62,$63
	cgthi	$81,$61,-1
	brhnz	$81,label_159a4	# 159a4
label_15880:
	brhz	$7,label_1585c	# 1585c
	ai	$6,$6,4
	ceqi	$64,$6,8
	brz	$64,label_15df4	# 15df4
	ilhu	$15,65535	# ffff
	fsmbi	$8,0
	il	$13,3
	iohl	$15,28544	# 6f80
	il	$19,28544	# 6f80
	il	$18,767	# 2ff
	ai	$9,$1,48	# 30
	il	$17,3
	ila	$16,65535	# ffff
label_158b4:
	ai	$71,$8,32	# 20
	ai	$69,$8,14
	chx	$10,$8,$9
	clgti	$70,$13,6
	lqx	$68,$71,$1
	ai	$12,$11,13
	nor	$14,$70,$70
	rotqby	$5,$68,$69
	and	$67,$16,$5
	ah	$66,$5,$19
	a	$4,$67,$15
	clgth	$65,$66,$18
	ai	$7,$4,255	# ff
	cgti	$6,$4,-1
	brhz	$65,label_15974	# 15974
	rothmi	$27,$5,-7
	lqd	$26,0($11)
	ori	$7,$10,0
	hbrr	label_15954,label_15964	# 15964
	ori	$6,$10,0
	il	$74,3
	clgthi	$25,$27,287	# 11f
	ceqhi	$24,$27,295	# 127
	nor	$23,$25,$25
	rotqby	$20,$26,$12
	xshw	$22,$24
	xshw	$21,$23
	sfi	$12,$22,0
	ceqbi	$4,$20,9
	sfi	$10,$21,0
	xsbh	$3,$4
	or	$2,$10,$12
	ceqhi	$78,$3,0
	ceqbi	$79,$2,0
	xshw	$73,$78
	xsbh	$77,$79
	il	$76,4
	ceqhi	$75,$77,0
	or	$72,$73,$14
	selb	$4,$74,$76,$75
label_15954:
	brhnz	$72,label_15964	# 15964
	lqx	$6,$8,$9
	shufb	$2,$17,$6,$7
	br	label_1596c	# 1596c
label_15964:
	lqx	$7,$8,$9
	shufb	$2,$4,$7,$6
label_1596c:
	stqx	$2,$8,$9
	br	label_15990	# 15990
label_15974:
	hbrr	label_159a0,label_158b4	# 158b4
	selb	$32,$7,$4,$6
	lqx	$29,$8,$9
	rotmai	$31,$32,-8
	sfhi	$30,$31,2
	shufb	$28,$30,$29,$10
	stqx	$28,$8,$9
label_15990:
	ai	$8,$8,2
	ai	$13,$13,1
	ceqi	$33,$8,16
	brnz	$33,label_15e08	# 15e08
label_159a0:
	br	label_158b4	# 158b4
label_159a4:
	ilhu	$3,45056	# b000
	iohl	$3,8211	# 2013
	br	label_15e20	# 15e20
label_159b0:
	il	$4,0
	shlqbyi	$3,$82,0
	il	$5,1010	# 3f2
	il	$6,1
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	il	$5,1010	# 3f2
	il	$6,1
	br	label_15dc4	# 15dc4
label_159d8:
	ai	$37,$80,14
	lqd	$36,0($80)
	ila	$35,65535	# ffff
	hbrr	label_15a1c,func_12488	# 12488
	ori	$5,$81,0
	shlqbyi	$3,$82,0
	ahi	$81,$81,256	# 100
	shlqbyi	$4,$83,0
	ai	$80,$80,2
	rotqby	$34,$36,$37
	and	$19,$34,$35
	a	$18,$19,$19
	a	$17,$18,$84
	ai	$16,$17,188	# bc
	ai	$15,$17,202	# ca
	lqd	$13,0($16)
	rotqby	$6,$13,$15
label_15a1c:
	brsl	$0,func_12488	# 12488
	il	$9,3316	# cf4
	ceqh	$8,$81,$9
	brhz	$8,label_159d8	# 159d8
	ai	$83,$83,1
	ceqi	$38,$83,2
	brz	$38,label_15e0c	# 15e0c
label_15a38:
	ilhu	$8,152	# 98
	fsmbi	$4,0
	il	$5,0
	shlqbyi	$3,$82,0
	iohl	$8,38528	# 9680
	il	$6,7
	il	$7,7
	brsl	$0,func_15108	# 15108
	ilhu	$8,152	# 98
	fsmbi	$5,0
	il	$4,1
	shlqbyi	$3,$82,0
	il	$6,7
	iohl	$8,38528	# 9680
	il	$7,7
	brsl	$0,func_15108	# 15108
	ori	$3,$82,0
	fsmbi	$4,0
	il	$5,514	# 202
	il	$6,9
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	il	$5,514	# 202
	il	$6,9
	brsl	$0,func_12488	# 12488
	ilhu	$8,152	# 98
	fsmbi	$4,0
	il	$5,0
	shlqbyi	$3,$82,0
	iohl	$8,38528	# 9680
	il	$6,7
	il	$7,7
	brsl	$0,func_15108	# 15108
	hbrr	label_15ae8,func_15108	# 15108
	ilhu	$8,152	# 98
	ai	$80,$84,168	# a8
	fsmbi	$5,0
	il	$4,1
	shlqbyi	$3,$82,0
	il	$6,7
	fsmbi	$81,0
	iohl	$8,38528	# 9680
	il	$7,7
label_15ae8:
	brsl	$0,func_15108	# 15108
	ori	$3,$82,0
	il	$4,0
	il	$5,514	# 202
	il	$6,11
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	il	$5,514	# 202
	il	$6,11
	brsl	$0,func_12488	# 12488
	lqd	$59,0($80)
	ilhu	$4,80	# 50
	hbrr	label_15b44,func_12310	# 12310
	ori	$3,$82,0
	fsmbi	$6,0
	iohl	$4,41248	# a120
	rotqby	$58,$59,$80
	ai	$57,$58,46	# 2e
	ai	$56,$58,60	# 3c
	lqd	$55,0($57)
	rotqby	$54,$55,$56
	shli	$5,$54,16
label_15b44:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	lqd	$53,0($80)
	ori	$3,$82,0
	hbrr	label_15b78,func_12310	# 12310
	il	$6,0
	iohl	$4,41312	# a160
	rotqby	$52,$53,$80
	ai	$11,$52,46	# 2e
	ai	$51,$52,60	# 3c
	lqd	$50,0($11)
	rotqby	$49,$50,$51
	shli	$5,$49,16
label_15b78:
	brsl	$0,func_12310	# 12310
	lqd	$48,0($80)
	ori	$3,$82,0
	hbrr	label_15ba4,func_12488	# 12488
	il	$4,0
	il	$5,519	# 207
	rotqby	$47,$48,$80
	ai	$46,$47,78	# 4e
	ai	$45,$47,92	# 5c
	lqd	$44,0($46)
	rotqby	$6,$44,$45
label_15ba4:
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	lqd	$43,0($80)
	il	$4,1
	hbrr	label_15bd0,func_12488	# 12488
	il	$5,519	# 207
	rotqby	$42,$43,$80
	ai	$41,$42,78	# 4e
	ai	$40,$42,92	# 5c
	lqd	$39,0($41)
	rotqby	$6,$39,$40
label_15bd0:
	brsl	$0,func_12488	# 12488
label_15bd4:
	ori	$3,$82,0
	il	$4,0
	il	$5,16
	il	$6,17	# 11
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	il	$5,16
	il	$6,17	# 11
	brsl	$0,func_12488	# 12488
	ilhu	$8,152	# 98
	il	$4,0
	shlqbyi	$3,$82,0
	iohl	$8,38528	# 9680
	il	$5,16
	il	$6,32	# 20
	il	$7,32	# 20
	brsl	$0,func_15108	# 15108
	hbrr	label_15c40,func_15108	# 15108
	ilhu	$8,152	# 98
	shlqbyi	$3,$82,0
	il	$4,1
	il	$5,16
	il	$6,32	# 20
	ai	$81,$81,1
	iohl	$8,38528	# 9680
	il	$7,32	# 20
label_15c40:
	brsl	$0,func_15108	# 15108
	ori	$3,$82,0
	il	$4,0
	fsmbi	$6,0
	il	$5,16
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	fsmbi	$6,0
	il	$4,1
	il	$5,16
	brsl	$0,func_12488	# 12488
	ceqi	$60,$81,128	# 80
	brz	$60,label_15bd4	# 15bd4
	il	$80,0
label_15c78:
	ori	$3,$82,0
	fsmbi	$4,0
	il	$5,16
	il	$6,16
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	il	$5,16
	il	$6,16
	brsl	$0,func_12488	# 12488
	hbrr	label_15cc4,func_15108	# 15108
	ilhu	$8,152	# 98
	il	$4,0
	shlqbyi	$3,$82,0
	iohl	$8,38528	# 9680
	il	$5,16
	il	$6,32	# 20
	il	$7,32	# 20
	ai	$80,$80,1
label_15cc4:
	brsl	$0,func_15108	# 15108
	hbrr	label_15cec,func_15108	# 15108
	ilhu	$8,152	# 98
	il	$4,1
	shlqbyi	$3,$82,0
	il	$5,16
	il	$6,32	# 20
	ceqi	$83,$80,128	# 80
	iohl	$8,38528	# 9680
	il	$7,32	# 20
label_15cec:
	brsl	$0,func_15108	# 15108
	ori	$3,$82,0
	fsmbi	$4,0
	il	$5,16
	fsmbi	$6,0
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	fsmbi	$6,0
	il	$5,16
	brsl	$0,func_12488	# 12488
	brz	$83,label_15c78	# 15c78
	ai	$80,$84,168	# a8
	ori	$3,$82,0
	hbrr	label_15d48,func_12488	# 12488
	il	$4,0
	lqd	$76,0($80)
	il	$5,1009	# 3f1
	rotqby	$75,$76,$80
	ai	$74,$75,88	# 58
	ai	$72,$75,102	# 66
	lqd	$71,0($74)
	rotqby	$6,$71,$72
label_15d48:
	brsl	$0,func_12488	# 12488
	lqd	$70,0($80)
	ori	$3,$82,0
	hbrr	label_15d74,func_12488	# 12488
	il	$4,1
	il	$5,1009	# 3f1
	rotqby	$69,$70,$80
	ai	$68,$69,88	# 58
	ai	$14,$69,102	# 66
	lqd	$67,0($68)
	rotqby	$6,$67,$14
label_15d74:
	brsl	$0,func_12488	# 12488
	lqd	$66,0($80)
	hbrr	label_15db0,func_12488	# 12488
	rotqby	$65,$66,$80
	ai	$64,$65,5
	ai	$63,$65,18	# 12
	lqd	$62,0($64)
	rotqby	$61,$62,$63
	ceqbi	$81,$61,1
	xsbh	$84,$81
	brhnz	$84,label_159b0	# 159b0
	il	$4,0
	fsmbi	$6,0
	il	$5,1010	# 3f2
	shlqbyi	$3,$82,0
label_15db0:
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	il	$4,1
	fsmbi	$6,0
	il	$5,1010	# 3f2
label_15dc4:
	brsl	$0,func_12488	# 12488
	il	$3,0
	br	label_15e20	# 15e20
label_15dd0:
	il	$80,2292	# 8f4
	br	label_15620	# 15620
label_15dd8:
	il	$81,0
label_15ddc:
	shli	$5,$81,3
	ai	$73,$1,32	# 20
	il	$83,2293	# 8f5
	a	$80,$73,$5
	br	label_157c8	# 157c8
label_15df0:
	il	$6,0
label_15df4:
	a	$77,$6,$6
	ai	$78,$1,32	# 20
	fsmbi	$5,0
	a	$4,$78,$77
	br	label_1585c	# 1585c
label_15e08:
	il	$83,0
label_15e0c:
	shli	$79,$83,3
	ai	$3,$1,48	# 30
	il	$81,2292	# 8f4
	a	$80,$3,$79
	br	label_159d8	# 159d8
label_15e20:
	lqd	$0,160($1)	# a0
	ai	$1,$1,144	# 90
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
.global func_15e40
func_15e40:
	ai	$9,$3,168	# a8
	hbrr	label_15e84,label_16094	# 16094
	stqd	$83,-64($1)
	lqd	$8,0($9)
	ori	$83,$3,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
	rotqby	$7,$8,$9
	ai	$6,$7,13
	lqd	$5,128($7)	# 80
	rotqby	$4,$5,$6
	ceqbi	$3,$4,0
	xsbh	$2,$3
label_15e84:
	brhz	$2,label_16094	# 16094
	ai	$81,$83,226	# e2
	fsmbi	$3,0
	il	$4,64	# 40
	fsmbi	$80,0
	brsl	$0,func_1bdf8	# 1bdf8
	il	$4,0
	il	$5,513	# 201
	shlqbyi	$3,$81,0
	il	$6,1
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,1
	il	$5,513	# 201
	il	$6,1
	brsl	$0,func_12488	# 12488
label_15ec4:
	il	$4,0
	il	$5,513	# 201
	shlqbyi	$3,$81,0
	il	$6,3
	ai	$80,$80,1
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,1
	il	$5,513	# 201
	il	$6,3
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	fsmbi	$4,0
	il	$5,513	# 201
	il	$6,1
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,1
	il	$5,513	# 201
	il	$6,1
	brsl	$0,func_12488	# 12488
	ceqi	$10,$80,4
	brz	$10,label_15ec4	# 15ec4
	ori	$3,$81,0
	fsmbi	$4,0
	il	$5,513	# 201
	fsmbi	$6,0
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,1
	fsmbi	$6,0
	il	$5,513	# 201
	brsl	$0,func_12488	# 12488
	il	$4,64	# 40
	il	$3,128	# 80
	brsl	$0,func_1bdf8	# 1bdf8
	hbrr	label_15f78,label_15fbc	# 15fbc
	ai	$16,$83,168	# a8
	fsmbi	$80,0
	lqd	$15,0($16)
	rotqby	$14,$15,$16
	ai	$13,$14,13
	lqd	$12,0($14)
	rotqby	$11,$12,$13
	andi	$82,$11,255	# ff
label_15f78:
	br	label_15fbc	# 15fbc
label_15f7c:
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,1
	il	$5,513	# 201
	il	$6,2
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,0
	fsmbi	$6,0
	il	$5,513	# 201
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	fsmbi	$6,0
	il	$4,1
	il	$5,513	# 201
	brsl	$0,func_12488	# 12488
label_15fbc:
	cgt	$17,$82,$80
	il	$4,0
	shlqbyi	$3,$81,0
	il	$5,513	# 201
	il	$6,2
	ai	$80,$80,1
	brnz	$17,label_15f7c	# 15f7c
	hbrr	label_15ffc,func_12458	# 12458
	ai	$80,$83,168	# a8
	ilhu	$41,20	# 14
	lqd	$40,0($80)
	ori	$5,$41,2
	rotqby	$39,$40,$80
	ai	$38,$39,14
	lqd	$37,144($39)	# 90
	rotqby	$6,$37,$38
label_15ffc:
	brsl	$0,func_12458	# 12458
	ilhu	$36,20	# 14
	lqd	$35,0($80)
	ori	$3,$81,0
	hbrr	label_16028,func_12458	# 12458
	ori	$5,$36,2
	il	$4,1
	rotqby	$34,$35,$80
	lqd	$32,144($34)	# 90
	ai	$33,$34,14
	rotqby	$6,$32,$33
label_16028:
	brsl	$0,func_12458	# 12458
	lqd	$30,0($80)
	ilhu	$31,20	# 14
	hbrr	label_1605c,func_12458	# 12458
	ori	$3,$81,0
	fsmbi	$4,0
	ori	$5,$31,31	# 1f
	rotqby	$29,$30,$80
	ai	$28,$29,106	# 6a
	ai	$27,$29,119	# 77
	lqd	$26,0($28)
	rotqby	$25,$26,$27
	andi	$6,$25,255	# ff
label_1605c:
	brsl	$0,func_12458	# 12458
	ilhu	$24,20	# 14
	lqd	$23,0($80)
	ori	$3,$81,0
	hbrr	label_16090,func_12458	# 12458
	ori	$5,$24,31	# 1f
	il	$4,1
	rotqby	$22,$23,$80
	ai	$21,$22,106	# 6a
	ai	$20,$22,119	# 77
	lqd	$19,0($21)
	rotqby	$18,$19,$20
	andi	$6,$18,255	# ff
label_16090:
	brsl	$0,func_12458	# 12458
label_16094:
	ilhu	$43,20	# 14
	ai	$80,$83,226	# e2
	fsmbi	$4,0
	ori	$5,$43,3
	fsmbi	$81,0
	il	$6,1
	shlqbyi	$3,$80,0
	brsl	$0,func_12458	# 12458
	ilhu	$42,20	# 14
	il	$4,1
	shlqbyi	$3,$80,0
	ori	$5,$42,3
	il	$6,1
	brsl	$0,func_12458	# 12458
	ilhu	$4,80	# 50
	ori	$3,$80,0
	iohl	$4,41232	# a110
	brsl	$0,func_12af0	# 12af0
	ilhu	$4,80	# 50
	ori	$3,$80,0
	iohl	$4,41296	# a150
	brsl	$0,func_12af0	# 12af0
	ori	$3,$80,0
	il	$4,13
	brsl	$0,func_13d48	# 13d48
label_160f8:
	ilhu	$4,80	# 50
	fsmbi	$6,0
	ilhu	$5,1536	# 600
	shlqbyi	$3,$80,0
	iohl	$4,41480	# a208
	brsl	$0,func_12310	# 12310
	ai	$81,$81,1
	hbrr	label_16138,func_13d50	# 13d50
	ilhu	$4,80	# 50
	shlqbyi	$3,$80,0
	ilhu	$5,1024	# 400
	fsmbi	$6,0
	iohl	$4,41480	# a208
	fsmbi	$7,0
	il	$8,0
	il	$9,10000	# 2710
label_16138:
	brsl	$0,func_13d50	# 13d50
	ceqi	$44,$81,8
	brz	$44,label_160f8	# 160f8
	ilhu	$4,80	# 50
	ori	$3,$80,0
	fsmbi	$6,0
	iohl	$4,41480	# a208
	fsmbi	$81,0
	ilhu	$5,16384	# 4000
	brsl	$0,func_12310	# 12310
label_16160:
	ori	$3,$80,0
	fsmbi	$4,0
	il	$5,16
	il	$6,18	# 12
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,16
	il	$6,18	# 12
	brsl	$0,func_12488	# 12488
	ilhu	$8,152	# 98
	fsmbi	$4,0
	il	$5,16
	shlqbyi	$3,$80,0
	iohl	$8,38528	# 9680
	il	$6,32	# 20
	il	$7,32	# 20
	brsl	$0,func_15108	# 15108
	hbrr	label_161cc,func_15108	# 15108
	ilhu	$8,152	# 98
	il	$4,1
	shlqbyi	$3,$80,0
	il	$5,16
	il	$6,32	# 20
	ai	$81,$81,1
	iohl	$8,38528	# 9680
	il	$7,32	# 20
label_161cc:
	brsl	$0,func_15108	# 15108
	ori	$3,$80,0
	fsmbi	$4,0
	il	$5,16
	fsmbi	$6,0
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	fsmbi	$6,0
	il	$5,16
	brsl	$0,func_12488	# 12488
	ceqi	$45,$81,128	# 80
	brz	$45,label_16160	# 16160
	il	$81,0
label_16204:
	ori	$3,$80,0
	il	$4,0
	il	$5,16
	il	$6,19	# 13
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,16
	il	$6,19	# 13
	brsl	$0,func_12488	# 12488
	ilhu	$8,152	# 98
	il	$4,0
	shlqbyi	$3,$80,0
	iohl	$8,38528	# 9680
	il	$5,16
	il	$6,32	# 20
	il	$7,32	# 20
	brsl	$0,func_15108	# 15108
	hbrr	label_16270,func_15108	# 15108
	ilhu	$8,152	# 98
	shlqbyi	$3,$80,0
	il	$4,1
	il	$5,16
	il	$6,32	# 20
	ai	$81,$81,1
	iohl	$8,38528	# 9680
	il	$7,32	# 20
label_16270:
	brsl	$0,func_15108	# 15108
	ori	$3,$80,0
	il	$4,0
	fsmbi	$6,0
	il	$5,16
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	fsmbi	$6,0
	il	$4,1
	il	$5,16
	brsl	$0,func_12488	# 12488
	ceqi	$46,$81,128	# 80
	brz	$46,label_16204	# 16204
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	fsmbi	$3,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
	lnop
.global func_162c8
func_162c8:
	il	$4,0
	stqd	$80,-16($1)
	ai	$80,$3,168	# a8
	hbrr	label_16318,func_12488	# 12488
	il	$5,38	# 26
	stqd	$81,-32($1)
	ai	$81,$3,226	# e2
	lqd	$32,0($80)
	stqd	$0,16($1)
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$83,-64($1)
	ori	$3,$81,0
	stqd	$1,-96($1)
	il	$83,0
	rotqby	$31,$32,$80
	ai	$1,$1,-96
	lqd	$29,80($31)	# 50
	ai	$30,$31,14
	rotqby	$6,$29,$30
label_16318:
	brsl	$0,func_12488	# 12488
	hbrr	label_16340,func_12488	# 12488
	il	$4,1
	lqd	$28,0($80)
	ori	$3,$81,0
	il	$5,38	# 26
	rotqby	$27,$28,$80
	lqd	$25,80($27)	# 50
	ai	$26,$27,14
	rotqby	$6,$25,$26
label_16340:
	brsl	$0,func_12488	# 12488
	lqd	$24,0($80)
	ori	$3,$81,0
	hbrr	label_1636c,func_12488	# 12488
	il	$4,0
	il	$5,39	# 27
	rotqby	$23,$24,$80
	ai	$22,$23,82	# 52
	ai	$21,$23,96	# 60
	lqd	$20,0($22)
	rotqby	$6,$20,$21
label_1636c:
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	lqd	$19,0($80)
	il	$4,1
	hbrr	label_16398,func_12488	# 12488
	il	$5,39	# 27
	rotqby	$18,$19,$80
	ai	$17,$18,82	# 52
	ai	$16,$18,96	# 60
	lqd	$15,0($17)
	rotqby	$6,$15,$16
label_16398:
	brsl	$0,func_12488	# 12488
	lqd	$14,0($80)
	ori	$3,$81,0
	hbrr	label_163c4,func_12488	# 12488
	il	$4,0
	il	$5,42	# 2a
	rotqby	$13,$14,$80
	ai	$12,$13,92	# 5c
	ai	$11,$13,106	# 6a
	lqd	$10,0($12)
	rotqby	$6,$10,$11
label_163c4:
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	lqd	$9,0($80)
	il	$4,1
	hbrr	label_163f0,func_12488	# 12488
	il	$5,42	# 2a
	rotqby	$8,$9,$80
	ai	$7,$8,92	# 5c
	ai	$2,$8,106	# 6a
	lqd	$6,0($7)
	rotqby	$6,$6,$2
label_163f0:
	brsl	$0,func_12488	# 12488
	br	label_164c8	# 164c8
label_163f8:
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,1
	il	$5,36	# 24
	il	$6,7
	brsl	$0,func_12488	# 12488
	ilhu	$8,152	# 98
	fsmbi	$4,0
	il	$5,36	# 24
	shlqbyi	$3,$81,0
	iohl	$8,38528	# 9680
	il	$6,8
	il	$7,8
	brsl	$0,func_15108	# 15108
	ilhu	$8,152	# 98
	shlqbyi	$3,$81,0
	il	$4,1
	il	$5,36	# 24
	il	$6,8
	iohl	$8,38528	# 9680
	il	$7,8
	brsl	$0,func_15108	# 15108
	il	$4,0
	shlqbyi	$3,$81,0
	il	$5,36	# 24
	brsl	$0,func_12b08	# 12b08
	il	$4,0
	fsmbi	$6,0
	andi	$33,$3,256	# 100
	shlqbyi	$3,$81,0
	il	$5,36	# 24
	brz	$33,label_16484	# 16484
	ilhu	$3,45056	# b000
	iohl	$3,8193	# 2001
	br	label_1651c	# 1651c
label_16484:
	brsl	$0,func_12488	# 12488
	il	$4,1
	shlqbyi	$3,$81,0
	il	$5,36	# 24
	brsl	$0,func_12b08	# 12b08
	il	$4,1
	fsmbi	$6,0
	andi	$34,$3,256	# 100
	shlqbyi	$3,$81,0
	il	$5,36	# 24
	brz	$34,label_164bc	# 164bc
	ilhu	$3,45056	# b000
	iohl	$3,8194	# 2002
	br	label_1651c	# 1651c
label_164bc:
	brsl	$0,func_12488	# 12488
	ori	$3,$82,0
	brsl	$0,func_13340	# 13340
label_164c8:
	ai	$44,$82,168	# a8
	hbrr	label_1650c,label_163f8	# 163f8
	ila	$45,65535	# ffff
	fsmbi	$4,0
	il	$5,36	# 24
	lqd	$43,0($44)
	and	$37,$83,$45
	shlqbyi	$3,$81,0
	il	$6,7
	ai	$83,$83,1
	rotqby	$42,$43,$44
	ai	$41,$42,4
	ai	$40,$42,17	# 11
	lqd	$39,0($41)
	rotqby	$38,$39,$40
	andi	$36,$38,255	# ff
	clgt	$35,$36,$37
label_1650c:
	brnz	$35,label_163f8	# 163f8
	ori	$3,$82,0
	brsl	$0,func_124c0	# 124c0
	il	$3,0
label_1651c:
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
.global func_16538
func_16538:
	andi	$6,$4,-128
	hbrr	label_1656c,func_12310	# 12310
	ilhu	$4,80	# 50
	stqd	$80,-16($1)
	ai	$80,$3,226	# e2
	stqd	$0,16($1)
	iohl	$4,41056	# a060
	stqd	$81,-32($1)
	il	$5,0
	stqd	$1,-64($1)
	ori	$3,$80,0
	fsmbi	$81,0
	ai	$1,$1,-64
label_1656c:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	shlqbyi	$3,$80,0
	il	$5,0
	fsmbi	$6,0
	iohl	$4,41064	# a068
	brsl	$0,func_12310	# 12310
label_16588:
	ai	$81,$81,1
	shlqbyi	$3,$80,0
	ilhu	$4,80	# 50
	fsmbi	$5,0
	il	$6,0
	iohl	$4,41072	# a070
	brsl	$0,func_12310	# 12310
	ceqi	$2,$81,16
	brz	$2,label_16588	# 16588
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	fsmbi	$3,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_165c8
func_165c8:
	ilhu	$4,80	# 50
	hbrr	label_165f4,func_12310	# 12310
	ilhu	$5,49152	# c000
	stqd	$80,-16($1)
	ai	$80,$3,226	# e2
	stqd	$0,16($1)
	iohl	$4,41480	# a208
	stqd	$1,-48($1)
	ori	$3,$80,0
	fsmbi	$6,0
	ai	$1,$1,-48
label_165f4:
	brsl	$0,func_12310	# 12310
	ori	$3,$80,0
	il	$4,1000	# 3e8
	brsl	$0,func_13d48	# 13d48
	hbrr	label_1662c,func_13d50	# 13d50
	ilhu	$4,80	# 50
	shlqbyi	$3,$80,0
	ilhu	$9,152	# 98
	fsmbi	$6,0
	iohl	$4,41480	# a208
	fsmbi	$7,0
	iohl	$9,38528	# 9680
	fsmbi	$8,0
	ilhu	$5,32768	# 8000
label_1662c:
	brsl	$0,func_13d50	# 13d50
	ilhu	$2,45056	# b000
	lqd	$0,64($1)	# 40
	hbr	label_1665c,$0
	ceqbi	$6,$3,0
	ai	$1,$1,48	# 30
	xsbh	$5,$6
	iohl	$2,8202	# 200a
	lqd	$80,-16($1)
	ceqhi	$4,$5,0
	fsm	$3,$4
	andc	$3,$2,$3
label_1665c:
	bi	$0
.global func_16660
func_16660:
	il	$4,0
	stqd	$80,-16($1)
	ai	$80,$3,168	# a8
	hbrr	label_166bc,func_12488	# 12488
	il	$5,40	# 28
	stqd	$83,-64($1)
	ai	$83,$3,226	# e2
	lqd	$34,0($80)
	stqd	$0,16($1)
	stqd	$81,-32($1)
	il	$81,0
	stqd	$82,-48($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	ori	$85,$3,0
	rotqby	$33,$34,$80
	ori	$3,$83,0
	stqd	$1,-128($1)
	ai	$1,$1,-128
	ai	$32,$33,84	# 54
	ai	$31,$33,98	# 62
	lqd	$30,0($32)
	rotqby	$6,$30,$31
label_166bc:
	brsl	$0,func_12488	# 12488
	ori	$3,$83,0
	lqd	$29,0($80)
	il	$4,1
	hbrr	label_166e8,func_12488	# 12488
	il	$5,40	# 28
	rotqby	$28,$29,$80
	ai	$27,$28,84	# 54
	ai	$26,$28,98	# 62
	lqd	$25,0($27)
	rotqby	$6,$25,$26
label_166e8:
	brsl	$0,func_12488	# 12488
	lqd	$24,0($80)
	ori	$3,$83,0
	hbrr	label_16714,func_12488	# 12488
	il	$4,0
	il	$5,41	# 29
	rotqby	$23,$24,$80
	ai	$22,$23,86	# 56
	ai	$21,$23,100	# 64
	lqd	$20,0($22)
	rotqby	$6,$20,$21
label_16714:
	brsl	$0,func_12488	# 12488
	ori	$3,$83,0
	lqd	$19,0($80)
	il	$4,1
	hbrr	label_16740,func_12488	# 12488
	il	$5,41	# 29
	rotqby	$18,$19,$80
	ai	$17,$18,86	# 56
	ai	$16,$18,100	# 64
	lqd	$15,0($17)
	rotqby	$6,$15,$16
label_16740:
	brsl	$0,func_12488	# 12488
	lqd	$14,0($80)
	ori	$3,$83,0
	hbrr	label_1676c,func_12488	# 12488
	il	$4,0
	il	$5,42	# 2a
	rotqby	$13,$14,$80
	ai	$12,$13,92	# 5c
	ai	$11,$13,106	# 6a
	lqd	$10,0($12)
	rotqby	$6,$10,$11
label_1676c:
	brsl	$0,func_12488	# 12488
	ori	$3,$83,0
	lqd	$9,0($80)
	il	$4,1
	hbrr	label_16798,func_12488	# 12488
	il	$5,42	# 2a
	rotqby	$8,$9,$80
	ai	$7,$8,92	# 5c
	ai	$2,$8,106	# 6a
	lqd	$6,0($7)
	rotqby	$6,$6,$2
label_16798:
	brsl	$0,func_12488	# 12488
	br	label_16858	# 16858
label_167a0:
	brsl	$0,func_12488	# 12488
	ori	$3,$83,0
	il	$4,1
	il	$5,37	# 25
	il	$6,7
	brsl	$0,func_12488	# 12488
	ilhu	$8,152	# 98
	fsmbi	$4,0
	il	$5,37	# 25
	shlqbyi	$3,$83,0
	iohl	$8,38528	# 9680
	il	$6,8
	il	$7,8
	brsl	$0,func_15108	# 15108
	ilhu	$8,152	# 98
	shlqbyi	$3,$83,0
	il	$4,1
	il	$5,37	# 25
	il	$6,8
	iohl	$8,38528	# 9680
	il	$7,8
	brsl	$0,func_15108	# 15108
	il	$4,0
	shlqbyi	$3,$83,0
	il	$5,37	# 25
	brsl	$0,func_12b08	# 12b08
	il	$4,0
	fsmbi	$6,0
	andi	$35,$3,256	# 100
	shlqbyi	$3,$83,0
	il	$5,37	# 25
	brnz	$35,label_16ad8	# 16ad8
	brsl	$0,func_12488	# 12488
	il	$4,1
	il	$5,37	# 25
	shlqbyi	$3,$83,0
	brsl	$0,func_12b08	# 12b08
	il	$4,1
	andi	$36,$3,256	# 100
	fsmbi	$6,0
	ori	$3,$83,0
	il	$5,37	# 25
	brnz	$36,label_16ae4	# 16ae4
	brsl	$0,func_12488	# 12488
	ori	$3,$85,0
	brsl	$0,func_13518	# 13518
label_16858:
	ai	$84,$85,168	# a8
	hbrr	label_1689c,label_167a0	# 167a0
	ila	$46,65535	# ffff
	fsmbi	$4,0
	il	$5,37	# 25
	lqd	$45,0($84)
	and	$39,$81,$46
	shlqbyi	$3,$83,0
	il	$6,7
	ai	$81,$81,1
	rotqby	$44,$45,$84
	ai	$43,$44,4
	ai	$42,$44,17	# 11
	lqd	$41,0($43)
	rotqby	$40,$41,$42
	andi	$38,$40,255	# ff
	clgt	$37,$38,$39
label_1689c:
	brnz	$37,label_167a0	# 167a0
	ori	$3,$85,0
	brsl	$0,func_127d8	# 127d8
	il	$4,3450	# d7a
	shlqbyi	$3,$83,0
	fsmbi	$82,257	# 101
	brsl	$0,func_142d8	# 142d8
	ilhu	$4,80	# 50
	fsmbi	$6,0
	ilhu	$5,32	# 20
	shlqbyi	$3,$83,0
	iohl	$4,41240	# a118
	brsl	$0,func_12310	# 12310
	il	$4,100	# 64
	shlqbyi	$3,$83,0
	andbi	$82,$82,2
	brsl	$0,func_142d8	# 142d8
	ilhu	$4,80	# 50
	shlqbyi	$3,$83,0
	ilhu	$5,32	# 20
	fsmbi	$6,0
	iohl	$4,41304	# a158
	brsl	$0,func_12310	# 12310
	ori	$3,$83,0
	il	$4,100	# 64
	brsl	$0,func_142d8	# 142d8
	ori	$3,$83,0
	il	$4,360	# 168
	brsl	$0,func_142d8	# 142d8
	il	$70,163	# a3
	lqd	$74,0($84)
	il	$68,1
	hbrr	label_16954,func_12af0	# 12af0
	il	$64,164	# a4
	shlqbyi	$3,$83,0
	ilhu	$4,80	# 50
	iohl	$4,41128	# a0a8
	rotqby	$65,$74,$84
	lqx	$72,$65,$70
	cbd	$73,3($65)
	cbd	$69,4($65)
	shufb	$71,$68,$72,$73
	stqx	$71,$65,$70
	lqx	$67,$65,$64
	shufb	$66,$68,$67,$69
	stqx	$66,$65,$64
label_16954:
	brsl	$0,func_12af0	# 12af0
	ilhu	$4,80	# 50
	ori	$80,$3,0
	iohl	$4,41448	# a1e8
	shlqbyi	$3,$83,0
	brsl	$0,func_12af0	# 12af0
	hbrr	label_16990,func_12310	# 12310
	ilhu	$4,80	# 50
	rotqmbyi	$63,$80,-4
	ori	$81,$3,0
	shlqbyi	$6,$80,4
	ori	$3,$83,0
	iohl	$4,41128	# a0a8
	or	$62,$63,$82
	shlqbyi	$5,$62,4
label_16990:
	brsl	$0,func_12310	# 12310
	rotqmbyi	$61,$81,-4
	ilhu	$4,80	# 50
	shlqbyi	$6,$81,4
	ori	$3,$83,0
	iohl	$4,41448	# a1e8
	or	$60,$61,$82
	shlqbyi	$5,$60,4
	brsl	$0,func_12310	# 12310
	ori	$3,$85,0
	ila	$4,157232	# 26630
	brsl	$0,func_f620	# f620
	ori	$3,$83,0
	il	$4,200	# c8
	brsl	$0,func_142d8	# 142d8
	lqd	$59,0($84)
	ori	$3,$85,0
	rotqby	$58,$59,$84
	ai	$57,$58,132	# 84
	lqd	$56,0($57)
	rotqby	$4,$56,$57
	brsl	$0,func_16538	# 16538
	ori	$3,$83,0
	il	$4,200	# c8
	brsl	$0,func_142d8	# 142d8
	lqd	$55,0($84)
	ori	$3,$85,0
	rotqby	$54,$55,$84
	ai	$53,$54,132	# 84
	lqd	$52,0($53)
	rotqby	$51,$52,$53
	ai	$4,$51,128	# 80
	brsl	$0,func_16538	# 16538
	il	$4,1000	# 3e8
	ori	$3,$83,0
	brsl	$0,func_142d8	# 142d8
	ilhu	$4,80	# 50
	shlqbyi	$3,$83,0
	iohl	$4,41496	# a218
	brsl	$0,func_12af0	# 12af0
	ilhu	$4,80	# 50
	ori	$80,$3,0
	iohl	$4,41488	# a210
	shlqbyi	$3,$83,0
	brsl	$0,func_12af0	# 12af0
	lqd	$50,0($84)
	ori	$81,$3,0
	hbrr	label_16a7c,label_16a94	# 16a94
	rotqby	$49,$50,$84
	lqd	$47,160($49)	# a0
	ai	$48,$49,13
	rotqby	$5,$47,$48
	ceqbi	$4,$5,0
	xsbh	$3,$4
	brhnz	$3,label_16a80	# 16a80
	ilhu	$75,16384	# 4000
	ori	$3,$85,0
	or	$80,$80,$75
	ila	$4,157280	# 26660
label_16a7c:
	br	label_16a94	# 16a94
label_16a80:
	ilhu	$76,49151	# bfff
	shlqbyi	$3,$85,0
	ila	$4,157312	# 26680
	iohl	$76,65535	# ffff
	and	$80,$80,$76
label_16a94:
	brsl	$0,func_f620	# f620
	ai	$9,$85,168	# a8
	hbrr	label_16ad4,label_16b04	# 16b04
	lqd	$8,0($9)
	rotqby	$7,$8,$9
	ai	$2,$7,161	# a1
	ai	$6,$7,174	# ae
	lqd	$84,0($2)
	rotqby	$79,$84,$6
	ceqbi	$78,$79,0
	xsbh	$77,$78
	brhnz	$77,label_16af0	# 16af0
	ilhu	$10,128	# 80
	ori	$3,$85,0
	or	$80,$80,$10
	ila	$4,157344	# 266a0
label_16ad4:
	br	label_16b04	# 16b04
label_16ad8:
	ilhu	$3,45056	# b000
	iohl	$3,8195	# 2003
	br	label_16c90	# 16c90
label_16ae4:
	ilhu	$3,45056	# b000
	iohl	$3,8196	# 2004
	br	label_16c90	# 16c90
label_16af0:
	ilhu	$11,65407	# ff7f
	shlqbyi	$3,$85,0
	ila	$4,157376	# 266c0
	iohl	$11,65535	# ffff
	and	$80,$80,$11
label_16b04:
	brsl	$0,func_f620	# f620
	ilhu	$4,80	# 50
	fsmbi	$6,0
	ilhu	$5,20480	# 5000
	shlqbyi	$3,$83,0
	iohl	$4,41480	# a208
	brsl	$0,func_12310	# 12310
	hbrr	label_16b44,func_13d50	# 13d50
	ilhu	$4,80	# 50
	ilhu	$7,20480	# 5000
	fsmbi	$8,0
	iohl	$4,41480	# a208
	fsmbi	$6,0
	ori	$5,$7,0
	shlqbyi	$3,$83,0
	il	$9,10000	# 2710
label_16b44:
	brsl	$0,func_13d50	# 13d50
	ilhu	$4,80	# 50
	shlqbyi	$3,$83,0
	ori	$5,$81,0
	fsmbi	$6,0
	iohl	$4,41488	# a210
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	shlqbyi	$3,$83,0
	ilhu	$5,16384	# 4000
	fsmbi	$6,0
	iohl	$4,41480	# a208
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	shlqbyi	$5,$80,0
	il	$6,0
	shlqbyi	$3,$83,0
	iohl	$4,41496	# a218
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	shlqbyi	$3,$83,0
	iohl	$4,41208	# a0f8
	brsl	$0,func_12af0	# 12af0
	ilhu	$4,80	# 50
	shlqbyi	$3,$83,0
	iohl	$4,41400	# a1b8
	brsl	$0,func_12af0	# 12af0
	ai	$19,$85,168	# a8
	hbrr	label_16bf0,label_16c00	# 16c00
	lqd	$18,0($19)
	rotqby	$4,$18,$19
	ai	$17,$4,162	# a2
	ai	$16,$4,175	# af
	lqd	$15,0($17)
	rotqby	$14,$15,$16
	ceqbi	$13,$14,0
	xsbh	$12,$13
	brhnz	$12,label_16c00	# 16c00
	lqd	$23,128($4)	# 80
	ai	$24,$4,13
	rotqby	$22,$23,$24
	ceqbi	$21,$22,0
	xsbh	$20,$21
label_16bf0:
	brhz	$20,label_16c00	# 16c00
	ori	$3,$85,0
	brsl	$0,func_165c8	# 165c8
	brnz	$3,label_16c90	# 16c90
label_16c00:
	ilhu	$4,80	# 50
	shlqbyi	$3,$83,0
	ila	$5,64894	# fd7e
	fsmbi	$6,0
	iohl	$4,41520	# a230
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	shlqbyi	$3,$83,0
	il	$5,640	# 280
	fsmbi	$6,0
	iohl	$4,41528	# a238
	brsl	$0,func_12310	# 12310
	ori	$3,$85,0
	ila	$4,157408	# 266e0
	brsl	$0,func_f620	# f620
	ori	$3,$85,0
	ila	$4,157456	# 26710
	brsl	$0,func_f620	# f620
	ori	$3,$83,0
	fsmbi	$6,0
	ilhu	$83,32511	# 7eff
	ilhu	$4,80	# 50
	iohl	$83,65535	# ffff
	iohl	$4,41496	# a218
	and	$5,$80,$83
	brsl	$0,func_12310	# 12310
	ori	$3,$85,0
	ila	$4,157504	# 26740
	brsl	$0,func_f620	# f620
	ori	$3,$85,0
	ila	$4,157552	# 26770
	brsl	$0,func_f620	# f620
	ori	$3,$85,0
	ila	$4,157584	# 26790
	brsl	$0,func_f620	# f620
	il	$3,0
label_16c90:
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	bi	$0
	lnop
.global func_16cb8
func_16cb8:
	hbrr	label_16d00,label_16da8	# 16da8
	stqd	$88,-144($1)
	ori	$88,$3,0
	stqd	$89,-160($1)
	il	$89,0
	stqd	$90,-176($1)
	ori	$90,$3,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$1,-208($1)
	ai	$1,$1,-208
label_16d00:
	br	label_16da8	# 16da8
label_16d04:
	ai	$81,$90,226	# e2
	ori	$5,$85,0
	shlqbyi	$4,$89,0
	ori	$3,$81,0
	brsl	$0,func_12b08	# 12b08
	a	$11,$88,$84
	hbrr	label_16d54,func_12b08	# 12b08
	il	$7,228	# e4
	shlqbyi	$4,$89,0
	a	$80,$11,$87
	ila	$82,65535	# ffff
	ahi	$5,$85,-4
	lqx	$9,$80,$7
	and	$10,$3,$82
	cwd	$83,4($80)
	ori	$3,$81,0
	ai	$84,$84,4
	ahi	$85,$85,16
	shufb	$8,$10,$9,$83
	stqx	$8,$80,$7
label_16d54:
	brsl	$0,func_12b08	# 12b08
	il	$5,1092	# 444
	and	$3,$3,$82
	ceqi	$4,$84,36	# 24
	lqx	$6,$80,$5
	shufb	$2,$3,$6,$83
	stqx	$2,$80,$5
	brz	$4,label_16d04	# 16d04
	ahi	$86,$86,256	# 100
	il	$13,3077	# c05
	ai	$87,$87,36	# 24
	ceqh	$12,$86,$13
	brhz	$12,label_16d9c	# 16d9c
	ai	$89,$89,1
	ai	$88,$88,144	# 90
	ceqi	$14,$89,2
	brnz	$14,label_16db4	# 16db4
	br	label_16da8	# 16da8
label_16d9c:
	ori	$85,$86,0
	il	$84,0
	br	label_16d04	# 16d04
label_16da8:
	il	$86,2053	# 805
	fsmbi	$87,0
	br	label_16d9c	# 16d9c
label_16db4:
	lqd	$0,224($1)	# e0
	ai	$1,$1,208	# d0
	fsmbi	$3,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	hbr	label_16df0,$0
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
label_16df0:
	bi	$0
	lnop
.global func_16df8
func_16df8:
	il	$4,0
	stqd	$80,-16($1)
	ai	$80,$3,168	# a8
	hbrr	label_16e3c,func_12488	# 12488
	il	$5,18	# 12
	stqd	$81,-32($1)
	ai	$81,$3,226	# e2
	lqd	$32,0($80)
	stqd	$0,16($1)
	ori	$3,$81,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	rotqby	$31,$32,$80
	ai	$30,$31,94	# 5e
	ai	$29,$31,108	# 6c
	lqd	$28,0($30)
	rotqby	$6,$28,$29
label_16e3c:
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	lqd	$27,0($80)
	il	$4,1
	hbrr	label_16e68,func_12488	# 12488
	il	$5,18	# 12
	rotqby	$26,$27,$80
	ai	$25,$26,94	# 5e
	ai	$24,$26,108	# 6c
	lqd	$23,0($25)
	rotqby	$6,$23,$24
label_16e68:
	brsl	$0,func_12488	# 12488
	lqd	$22,0($80)
	ori	$3,$81,0
	hbrr	label_16e94,func_12488	# 12488
	il	$4,0
	il	$5,20	# 14
	rotqby	$21,$22,$80
	ai	$20,$21,98	# 62
	ai	$19,$21,112	# 70
	lqd	$18,0($20)
	rotqby	$6,$18,$19
label_16e94:
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	lqd	$17,0($80)
	il	$4,1
	hbrr	label_16ec0,func_12488	# 12488
	il	$5,20	# 14
	rotqby	$16,$17,$80
	ai	$15,$16,98	# 62
	ai	$14,$16,112	# 70
	lqd	$13,0($15)
	rotqby	$6,$13,$14
label_16ec0:
	brsl	$0,func_12488	# 12488
	hbrr	label_16ee8,func_12488	# 12488
	il	$4,0
	lqd	$12,0($80)
	ori	$3,$81,0
	il	$5,19	# 13
	rotqby	$11,$12,$80
	lqd	$9,96($11)	# 60
	ai	$10,$11,14
	rotqby	$6,$9,$10
label_16ee8:
	brsl	$0,func_12488	# 12488
	hbrr	label_16f10,func_12488	# 12488
	il	$4,1
	lqd	$8,0($80)
	ori	$3,$81,0
	il	$5,19	# 13
	rotqby	$7,$8,$80
	lqd	$6,96($7)	# 60
	ai	$2,$7,14
	rotqby	$6,$6,$2
label_16f10:
	brsl	$0,func_12488	# 12488
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	fsmbi	$3,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_16f30
func_16f30:
	ori	$3,$4,0
	br	func_19548	# 19548
.global func_16f38
func_16f38:
	ilhu	$4,80	# 50
	hbrr	label_16f88,func_12310	# 12310
	ilhu	$5,32	# 20
	stqd	$81,-32($1)
	ai	$81,$3,226	# e2
	stqd	$0,16($1)
	iohl	$4,41240	# a118
	stqd	$88,-144($1)
	il	$6,0
	stqd	$80,-16($1)
	ori	$88,$3,0
	stqd	$82,-48($1)
	ori	$3,$81,0
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	stqd	$87,-128($1)
	stqd	$1,-176($1)
	ai	$1,$1,-176
label_16f88:
	brsl	$0,func_12310	# 12310
	ilhu	$4,80	# 50
	ori	$3,$81,0
	fsmbi	$6,0
	ilhu	$5,32	# 20
	iohl	$4,41304	# a158
	brsl	$0,func_12310	# 12310
	ori	$3,$81,0
	il	$4,0
	il	$5,17	# 11
	il	$6,-32768
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,1
	il	$5,17	# 11
	il	$6,-32768
	brsl	$0,func_12488	# 12488
	ai	$10,$88,168	# a8
	hbrr	label_16ff4,label_17004	# 17004
	lqd	$9,0($10)
	rotqby	$8,$9,$10
	ai	$7,$8,111	# 6f
	ai	$6,$8,124	# 7c
	lqd	$5,0($7)
	rotqby	$4,$5,$6
	ceqbi	$3,$4,-1
	xsbh	$2,$3
label_16ff4:
	brhz	$2,label_17004	# 17004
	ori	$3,$81,0
	il	$4,40	# 28
	br	label_1700c	# 1700c
label_17004:
	andi	$4,$4,255	# ff
	ori	$3,$81,0
label_1700c:
	ilhu	$80,160	# a0
	brsl	$0,func_16f30	# 16f30
label_17014:
	ilhu	$4,80	# 50
	ori	$3,$81,0
	iohl	$4,41232	# a110
	ai	$80,$80,-1
	brsl	$0,func_12af0	# 12af0
	ilhu	$21,270	# 10e
	hbrr	label_17060,label_17014	# 17014
	ilhu	$20,258	# 102
	and	$18,$3,$21
	ilhu	$19,260	# 104
	ceq	$17,$18,$20
	ceq	$16,$18,$19
	sfi	$14,$17,0
	sfi	$15,$16,0
	or	$13,$14,$15
	ceqbi	$12,$13,0
	xsbh	$11,$12
	brhz	$11,label_17064	# 17064
	brz	$80,label_17300	# 17300
label_17060:
	br	label_17014	# 17014
label_17064:
	ilhu	$80,160	# a0
label_17068:
	ilhu	$4,80	# 50
	shlqbyi	$3,$81,0
	ai	$80,$80,-1
	iohl	$4,41232	# a110
	brsl	$0,func_12af0	# 12af0
	ilhu	$23,256	# 100
	and	$22,$3,$23
	brz	$22,label_17090	# 17090
	brz	$80,label_17300	# 17300
	br	label_17068	# 17068
label_17090:
	ori	$3,$81,0
	fsmbi	$4,0
	il	$5,17	# 11
	fsmbi	$6,0
	ilhu	$80,160	# a0
	brsl	$0,func_12488	# 12488
label_170a8:
	ilhu	$4,80	# 50
	shlqbyi	$3,$81,0
	ai	$80,$80,-1
	iohl	$4,41296	# a150
	brsl	$0,func_12af0	# 12af0
	hbrr	label_170f4,label_170a8	# 170a8
	ilhu	$34,270	# 10e
	ilhu	$33,258	# 102
	and	$31,$3,$34
	ilhu	$32,260	# 104
	ceq	$30,$31,$33
	ceq	$29,$31,$32
	sfi	$27,$30,0
	sfi	$28,$29,0
	or	$26,$27,$28
	ceqbi	$25,$26,0
	xsbh	$24,$25
	brhz	$24,label_170f8	# 170f8
	brz	$80,label_1730c	# 1730c
label_170f4:
	br	label_170a8	# 170a8
label_170f8:
	ilhu	$80,160	# a0
label_170fc:
	ilhu	$4,80	# 50
	ori	$3,$81,0
	iohl	$4,41296	# a150
	ai	$80,$80,-1
	brsl	$0,func_12af0	# 12af0
	ilhu	$36,256	# 100
	and	$35,$3,$36
	brz	$35,label_17124	# 17124
	brz	$80,label_1730c	# 1730c
	br	label_170fc	# 170fc
label_17124:
	ori	$3,$81,0
	il	$4,1
	fsmbi	$6,0
	il	$5,17	# 11
	shlqbyi	$86,$88,0
	il	$87,0
	brsl	$0,func_12488	# 12488
	br	label_17324	# 17324
label_17144:
	hbrr	label_1716c,func_12488	# 12488
	a	$42,$86,$82
	shlqbyi	$5,$83,0
	ori	$3,$81,0
	shlqbyi	$4,$87,0
	a	$80,$42,$85
	ai	$82,$82,4
	ai	$41,$80,228	# e4
	lqd	$40,0($41)
	rotqby	$6,$40,$41
label_1716c:
	brsl	$0,func_12488	# 12488
	hbrr	label_17194,func_12488	# 12488
	il	$39,1092	# 444
	ahi	$5,$83,-4
	shlqbyi	$3,$81,0
	ori	$4,$87,0
	lqx	$38,$80,$39
	a	$80,$80,$39
	ahi	$83,$83,16
	rotqby	$6,$38,$80
label_17194:
	brsl	$0,func_12488	# 12488
	ceqi	$37,$82,36	# 24
	brz	$37,label_17144	# 17144
	ahi	$84,$84,256	# 100
	il	$44,3077	# c05
	ai	$85,$85,36	# 24
	ceqh	$43,$84,$44
	brhz	$43,label_17318	# 17318
	ai	$87,$87,1
	ai	$86,$86,144	# 90
	ceqi	$45,$87,2
	brz	$45,label_17324	# 17324
	ai	$82,$88,168	# a8
	ori	$3,$81,0
	hbrr	label_171f0,func_12488	# 12488
	il	$4,0
	lqd	$75,0($82)
	il	$5,18	# 12
	rotqby	$74,$75,$82
	ai	$73,$74,100	# 64
	ai	$72,$74,114	# 72
	lqd	$71,0($73)
	rotqby	$6,$71,$72
label_171f0:
	brsl	$0,func_12488	# 12488
	lqd	$70,0($82)
	ori	$3,$81,0
	hbrr	label_1721c,func_12488	# 12488
	il	$4,1
	il	$5,18	# 12
	rotqby	$69,$70,$82
	ai	$68,$69,100	# 64
	ai	$67,$69,114	# 72
	lqd	$66,0($68)
	rotqby	$6,$66,$67
label_1721c:
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	lqd	$65,0($82)
	il	$4,0
	hbrr	label_17248,func_12488	# 12488
	il	$5,20	# 14
	rotqby	$64,$65,$82
	ai	$63,$64,104	# 68
	ai	$62,$64,118	# 76
	lqd	$61,0($63)
	rotqby	$6,$61,$62
label_17248:
	brsl	$0,func_12488	# 12488
	lqd	$60,0($82)
	ori	$3,$81,0
	hbrr	label_17274,func_12488	# 12488
	il	$4,1
	il	$5,20	# 14
	rotqby	$59,$60,$82
	ai	$58,$59,104	# 68
	ai	$57,$59,118	# 76
	lqd	$56,0($58)
	rotqby	$6,$56,$57
label_17274:
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	lqd	$55,0($82)
	il	$4,0
	hbrr	label_172a0,func_12488	# 12488
	il	$5,19	# 13
	rotqby	$54,$55,$82
	ai	$53,$54,102	# 66
	ai	$52,$54,116	# 74
	lqd	$51,0($53)
	rotqby	$6,$51,$52
label_172a0:
	brsl	$0,func_12488	# 12488
	lqd	$50,0($82)
	ori	$3,$81,0
	hbrr	label_172cc,func_12488	# 12488
	il	$4,1
	il	$5,19	# 13
	rotqby	$49,$50,$82
	ai	$48,$49,102	# 66
	ai	$47,$49,116	# 74
	lqd	$46,0($48)
	rotqby	$6,$46,$47
label_172cc:
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	fsmbi	$4,0
	il	$5,17	# 11
	il	$6,-32768
	brsl	$0,func_12488	# 12488
	ori	$3,$81,0
	il	$4,1
	il	$5,17	# 11
	il	$6,-32768
	brsl	$0,func_12488	# 12488
	il	$3,0
	br	label_17330	# 17330
label_17300:
	ilhu	$3,45056	# b000
	iohl	$3,8209	# 2011
	br	label_17330	# 17330
label_1730c:
	ilhu	$3,45056	# b000
	iohl	$3,8210	# 2012
	br	label_17330	# 17330
label_17318:
	ori	$83,$84,0
	fsmbi	$82,0
	br	label_17144	# 17144
label_17324:
	il	$84,2053	# 805
	il	$85,0
	br	label_17318	# 17318
label_17330:
	lqd	$0,192($1)	# c0
	ai	$1,$1,176	# b0
	lqd	$80,-16($1)
	hbr	label_17360,$0
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
label_17360:
	bi	$0
	lnop
.global func_17368
func_17368:
	il	$2,-592
	stqd	$80,-16($1)
	ila	$3,157616	# 267b0
	stqd	$0,16($1)
	il	$80,0
	stqd	$1,-592($1)
	a	$1,$1,$2
	brsl	$0,func_19ad0	# 19ad0
	ila	$4,157888	# 268c0
	ai	$3,$1,32	# 20
	il	$5,544	# 220
	brsl	$0,func_1f8a0	# 1f8a0
label_17398:
	ai	$11,$80,32	# 20
	hbrr	label_173c4,func_780	# 780
	fsmbi	$10,8224	# 2020
	lqx	$9,$11,$1
	lqr	$8,data_22810	# 22810
	andbi	$5,$10,2
	rotqby	$6,$9,$80
	ai	$80,$80,8
	cg	$7,$5,$6
	shufb	$3,$7,$7,$8
	addx	$3,$5,$6
label_173c4:
	brsl	$0,func_780	# 780
	ori	$4,$3,0
	ila	$3,157632	# 267c0
	brsl	$0,func_19ad0	# 19ad0
	il	$4,544	# 220
	ceq	$3,$80,$4
	brz	$3,label_17398	# 17398
	il	$12,592	# 250
	lqd	$0,608($1)	# 260
	ila	$3,152320	# 25300
	a	$1,$1,$12
	lqd	$80,-16($1)
	br	func_19ad0	# 19ad0
.global func_173f8
func_173f8:
	hbrr	label_17494,func_19ad0	# 19ad0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	il	$83,9
	stqd	$84,-80($1)
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	il	$85,1
	stqd	$87,-128($1)
	il	$86,2
	stqd	$88,-144($1)
	il	$87,3
	stqd	$89,-160($1)
	il	$88,4
label_1743c:
	hbrp
	stqd	$90,-176($1)
	stqd	$91,-192($1)
	il	$90,5
	stqd	$92,-208($1)
	il	$91,6
	stqd	$93,-224($1)
	il	$93,7
	stqd	$94,-240($1)
	stqd	$95,-256($1)
	stqd	$96,-272($1)
	il	$96,0
	stqd	$97,-288($1)
	il	$97,8
	stqd	$98,-304($1)
	il	$98,0
	stqd	$99,-320($1)
	ori	$99,$3,0
label_17484:
	hbrp
	ila	$3,157664	# 267e0
	stqd	$1,-512($1)
	ai	$1,$1,-512
label_17494:
	brsl	$0,func_19ad0	# 19ad0
	il	$45,16
	hbrr	label_17520,func_1f8a0	# 1f8a0
	il	$42,17	# 11
	lqd	$51,64($1)	# 40
	il	$39,18	# 12
	chd	$81,0($1)
	il	$36,19	# 13
	chd	$80,2($1)
	ila	$4,157824	# 26880
	lqd	$50,80($1)	# 50
	il	$5,50	# 32
	chd	$82,4($1)
	ai	$3,$1,128	# 80
	chd	$84,6($1)
	shufb	$49,$96,$51,$81
	chd	$92,8($1)
	chd	$89,10($1)
	shufb	$48,$97,$50,$81
	shufb	$47,$85,$49,$80
	chd	$95,12($1)
	chd	$94,14($1)
	shufb	$46,$83,$48,$80
	shufb	$44,$86,$47,$82
	shufb	$43,$45,$46,$82
	shufb	$41,$87,$44,$84
	shufb	$40,$42,$43,$84
	shufb	$38,$88,$41,$92
	shufb	$37,$39,$40,$92
	shufb	$35,$90,$38,$89
	shufb	$34,$36,$37,$89
	shufb	$33,$91,$35,$95
	stqd	$34,80($1)	# 50
	shufb	$32,$93,$33,$94
	stqd	$32,64($1)	# 40
label_17520:
	brsl	$0,func_1f8a0	# 1f8a0
	lqd	$31,32($1)	# 20
	il	$22,10
	lqd	$30,96($1)	# 60
	il	$18,11
	lqd	$29,112($1)	# 70
	il	$14,12
	lqd	$28,48($1)	# 30
	il	$10,13
	hbrr	label_175d0,label_17770	# 17770
	il	$7,14
	shufb	$27,$96,$31,$81
	il	$5,15
	shufb	$26,$96,$30,$81
	shufb	$25,$97,$29,$81
	shufb	$24,$83,$28,$81
	shufb	$23,$85,$27,$80
	shufb	$85,$85,$26,$80
	shufb	$83,$83,$25,$80
	shufb	$21,$18,$24,$80
	shufb	$20,$86,$23,$82
	shufb	$86,$86,$85,$82
	shufb	$19,$22,$83,$82
	shufb	$17,$14,$21,$82
	shufb	$16,$87,$20,$84
	shufb	$87,$87,$86,$84
	shufb	$15,$18,$19,$84
	shufb	$13,$10,$17,$84
	shufb	$12,$88,$16,$92
	shufb	$88,$88,$87,$92
	shufb	$11,$14,$15,$92
	stqd	$13,48($1)	# 30
	shufb	$9,$90,$12,$89
	shufb	$90,$90,$88,$89
	shufb	$8,$10,$11,$89
	shufb	$6,$91,$9,$95
	shufb	$91,$91,$90,$95
	shufb	$4,$7,$8,$95
	shufb	$3,$93,$6,$94
	shufb	$93,$93,$91,$94
	shufb	$2,$5,$4,$94
	stqd	$3,32($1)	# 20
	stqd	$93,96($1)	# 60
	stqd	$2,112($1)	# 70
label_175d0:
	br	label_17770	# 17770
label_175d4:
	hbrr	label_17604,func_12b08	# 12b08
	ai	$59,$1,64	# 40
	shlqbyi	$4,$98,0
	il	$54,1024	# 400
	lqx	$56,$80,$59
	a	$58,$80,$59
	ai	$84,$99,226	# e2
	ai	$57,$58,14
	ori	$3,$84,0
	ai	$80,$80,2
	rotqby	$55,$56,$57
	ah	$5,$55,$54
label_17604:
	brsl	$0,func_12b08	# 12b08
	ila	$53,65535	# ffff
	and	$4,$3,$53
	ila	$3,155904	# 26100
	brsl	$0,func_19ad0	# 19ad0
	ceqi	$52,$80,28	# 1c
	brz	$52,label_175d4	# 175d4
	il	$80,0
	hbrr	label_17648,func_12b08	# 12b08
label_17628:
	ai	$65,$1,128	# 80
	shlqbyi	$4,$98,0
	ori	$3,$84,0
	lqx	$62,$80,$65
	a	$64,$80,$65
	ai	$80,$80,2
	ai	$63,$64,14
	rotqby	$5,$62,$63
label_17648:
	brsl	$0,func_12b08	# 12b08
	ila	$61,65535	# ffff
	and	$4,$3,$61
	ila	$3,155904	# 26100
	brsl	$0,func_19ad0	# 19ad0
	ceqi	$60,$80,50	# 32
	brnz	$60,label_17778	# 17778
	br	label_17628	# 17628
label_17668:
	ori	$5,$80,0
	shlqbyi	$4,$98,0
	ori	$3,$84,0
	ahi	$82,$82,1
	ahi	$80,$80,256	# 100
	brsl	$0,func_12b08	# 12b08
	ila	$67,65535	# ffff
	and	$4,$3,$67
	ila	$3,155904	# 26100
	brsl	$0,func_19ad0	# 19ad0
	ceqhi	$66,$82,4
	brhz	$66,label_17668	# 17668
	ai	$81,$81,2
	ceqi	$68,$81,24	# 18
	brnz	$68,label_177b8	# 177b8
	br	label_1777c	# 1777c
label_176a8:
	shlhi	$72,$80,4
	shlqbyi	$4,$98,0
	ori	$3,$84,0
	ai	$80,$80,1
	or	$71,$83,$72
	or	$5,$82,$71
	brsl	$0,func_12b08	# 12b08
	ila	$70,65535	# ffff
	and	$4,$3,$70
	ila	$3,155904	# 26100
	brsl	$0,func_19ad0	# 19ad0
	ceqi	$69,$80,9
	brz	$69,label_176a8	# 176a8
	ai	$81,$81,2
	ceqi	$73,$81,32	# 20
	brz	$73,label_1779c	# 1779c
	ahi	$82,$82,256	# 100
	il	$75,3072	# c00
	ceqh	$74,$82,$75
	brhz	$74,label_177bc	# 177bc
	ai	$98,$98,1
	ceqi	$76,$98,2
	brz	$76,label_17770	# 17770
	hbrr	label_1776c,func_19ad0	# 19ad0
	il	$77,512	# 200
	lqd	$0,528($1)	# 210
	ila	$3,152320	# 25300
	a	$1,$1,$77
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
	lqd	$93,-224($1)
	lqd	$94,-240($1)
	lqd	$95,-256($1)
label_17758:
	hbrp
	lqd	$96,-272($1)
	lqd	$97,-288($1)
	lqd	$98,-304($1)
	lqd	$99,-320($1)
label_1776c:
	br	func_19ad0	# 19ad0
label_17770:
	il	$80,0
	br	label_175d4	# 175d4
label_17778:
	il	$81,0
label_1777c:
	ai	$5,$81,32	# 20
	ai	$3,$81,14
	fsmbi	$82,0
	il	$78,2288	# 8f0
	lqx	$2,$5,$1
	rotqby	$79,$2,$3
	ah	$80,$79,$78
	br	label_17668	# 17668
label_1779c:
	ai	$6,$1,96	# 60
	il	$80,0
	lqx	$4,$81,$6
	a	$93,$81,$6
	ai	$94,$93,14
	rotqby	$83,$4,$94
	br	label_176a8	# 176a8
label_177b8:
	il	$82,2048	# 800
label_177bc:
	il	$81,0
	br	label_1779c	# 1779c
	lnop
.global func_177c8
func_177c8:
	il	$4,0
	hbrr	label_1780c,func_19ad0	# 19ad0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	il	$82,0
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$1,-240($1)
	ai	$1,$1,-240
	shlqbyi	$84,$3,0
	ila	$3,157680	# 267f0
	lqd	$6,32($1)	# 20
	chd	$5,0($1)
	shufb	$2,$4,$6,$5
	stqd	$2,32($1)	# 20
label_1780c:
	brsl	$0,func_19ad0	# 19ad0
	ai	$3,$1,48	# 30
	ila	$4,157712	# 26810
	il	$5,104	# 68
	brsl	$0,func_1f8a0	# 1f8a0
	br	label_178b8	# 178b8
label_17824:
	ori	$5,$80,0
	ori	$4,$82,0
	shlqbyi	$6,$83,0
	ai	$7,$1,32	# 20
	shlqbyi	$3,$84,0
	ai	$80,$80,1
	brsl	$0,func_17da0	# 17da0
	ila	$7,65535	# ffff
	lqd	$9,32($1)	# 20
	ila	$3,157696	# 26800
	rotqbyi	$8,$9,14
	and	$4,$7,$8
	brsl	$0,func_19ad0	# 19ad0
	ceqi	$3,$80,9
	brz	$3,label_17824	# 17824
	ai	$81,$81,4
	ceqi	$10,$81,104	# 68
	brz	$10,label_178a0	# 178a0
	ai	$82,$82,1
	ceqi	$11,$82,2
	brz	$11,label_178b8	# 178b8
	ila	$3,152320	# 25300
	brsl	$0,func_19ad0	# 19ad0
	lqd	$0,256($1)	# 100
	ai	$1,$1,240	# f0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
label_178a0:
	ai	$14,$1,48	# 30
	fsmbi	$80,0
	a	$13,$81,$14
	lqx	$12,$81,$14
	rotqby	$83,$12,$13
	br	label_17824	# 17824
label_178b8:
	il	$81,0
	br	label_178a0	# 178a0
.global func_178c0
func_178c0:
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_17368	# 17368
	ori	$3,$80,0
	brsl	$0,func_173f8	# 173f8
	ori	$3,$80,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	br	func_177c8	# 177c8
	lnop
.global func_178f8
func_178f8:
	ai	$10,$3,168	# a8
	hbrr	label_17938,label_17a08	# 17a08
	stqd	$81,-32($1)
	lqd	$9,0($10)
	ori	$81,$3,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	rotqby	$8,$9,$10
	ai	$7,$8,7
	ai	$6,$8,20	# 14
	lqd	$5,0($7)
	rotqby	$4,$5,$6
	ceqbi	$3,$4,1
	xsbh	$2,$3
label_17938:
	brhz	$2,label_17a08	# 17a08
	hbrr	label_17964,func_13d50	# 13d50
	ilhu	$5,256	# 100
	fsmbi	$6,0
	ai	$80,$81,226	# e2
	fsmbi	$8,0
	ilhu	$4,80	# 50
	shlqbyi	$7,$5,0
	il	$9,10000	# 2710
	shlqbyi	$3,$80,0
	iohl	$4,41232	# a110
label_17964:
	brsl	$0,func_13d50	# 13d50
	hbrr	label_1798c,func_13d50	# 13d50
	ilhu	$4,80	# 50
	ilhu	$5,256	# 100
	fsmbi	$6,0
	iohl	$4,41232	# a110
	fsmbi	$7,0
	il	$8,0
	shlqbyi	$3,$80,0
	il	$9,10000	# 2710
label_1798c:
	brsl	$0,func_13d50	# 13d50
	il	$4,0
	shlqbyi	$3,$80,0
	il	$5,17	# 11
	fsmbi	$6,0
	brsl	$0,func_12488	# 12488
	hbrr	label_179c8,func_13d50	# 13d50
	ilhu	$5,256	# 100
	fsmbi	$6,0
	ilhu	$4,80	# 50
	fsmbi	$8,0
	ori	$7,$5,0
	shlqbyi	$3,$80,0
	iohl	$4,41296	# a150
	il	$9,10000	# 2710
label_179c8:
	brsl	$0,func_13d50	# 13d50
	hbrr	label_179f0,func_13d50	# 13d50
	ilhu	$4,80	# 50
	fsmbi	$6,0
	ilhu	$5,256	# 100
	shlqbyi	$3,$80,0
	iohl	$4,41296	# a150
	fsmbi	$7,0
	il	$8,0
	il	$9,10000	# 2710
label_179f0:
	brsl	$0,func_13d50	# 13d50
	ori	$3,$80,0
	il	$4,1
	fsmbi	$6,0
	il	$5,17	# 11
	brsl	$0,func_12488	# 12488
label_17a08:
	ai	$80,$81,226	# e2
	fsmbi	$4,0
	il	$5,1005	# 3ed
	ori	$3,$80,0
	il	$6,226	# e2
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,1005	# 3ed
	il	$6,226	# e2
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,0
	il	$5,993	# 3e1
	il	$6,5632	# 1600
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,993	# 3e1
	il	$6,5632	# 1600
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,0
	fsmbi	$6,0
	il	$5,997	# 3e5
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	fsmbi	$6,0
	il	$4,1
	il	$5,997	# 3e5
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,0
	fsmbi	$6,0
	il	$5,998	# 3e6
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	fsmbi	$6,0
	il	$4,1
	il	$5,998	# 3e6
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,0
	il	$5,999	# 3e7
	il	$6,255	# ff
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,999	# 3e7
	il	$6,255	# ff
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,0
	il	$5,38	# 26
	il	$6,512	# 200
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,38	# 26
	il	$6,512	# 200
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,0
	il	$5,39	# 27
	il	$6,7936	# 1f00
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,39	# 27
	il	$6,7936	# 1f00
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,0
	il	$5,64	# 40
	il	$6,16
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,64	# 40
	il	$6,16
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,500	# 1f4
	brsl	$0,func_16f30	# 16f30
	ori	$3,$80,0
	fsmbi	$4,0
	il	$5,64	# 40
	fsmbi	$6,0
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	fsmbi	$6,0
	il	$5,64	# 40
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	fsmbi	$4,0
	il	$5,993	# 3e1
	fsmbi	$6,0
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	fsmbi	$6,0
	il	$5,993	# 3e1
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	fsmbi	$4,0
	il	$5,994	# 3e2
	fsmbi	$6,0
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	fsmbi	$6,0
	il	$5,994	# 3e2
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	fsmbi	$4,0
	il	$5,995	# 3e3
	il	$6,255	# ff
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,995	# 3e3
	il	$6,255	# ff
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	fsmbi	$4,0
	il	$5,40	# 28
	il	$6,5120	# 1400
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,40	# 28
	il	$6,5120	# 1400
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	fsmbi	$4,0
	il	$5,41	# 29
	il	$6,7936	# 1f00
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,41	# 29
	il	$6,7936	# 1f00
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	fsmbi	$4,0
	il	$5,64	# 40
	il	$6,17	# 11
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,64	# 40
	il	$6,17	# 11
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,500	# 1f4
	brsl	$0,func_16f30	# 16f30
	ori	$3,$80,0
	il	$4,0
	il	$5,64	# 40
	il	$6,1
	brsl	$0,func_12488	# 12488
	ori	$3,$80,0
	il	$4,1
	il	$5,64	# 40
	il	$6,1
	brsl	$0,func_12488	# 12488
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	fsmbi	$3,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_17cc0
func_17cc0:
	ceqbi	$2,$4,0
	hbrr	label_17d08,label_17d2c	# 17d2c
	il	$11,1
	cbd	$9,1($3)
	xsbh	$4,$2
	cbd	$8,0($3)
	il	$10,1
	shlqbyi	$5,$3,0
	ori	$7,$9,0
	brhnz	$4,label_17d0c	# 17d0c
	il	$12,4
	lqd	$11,0($3)
	shufb	$9,$12,$11,$8
	stqd	$9,0($3)
	lqx	$8,$3,$10
	il	$3,6
	shufb	$6,$3,$8,$7
	stqx	$6,$5,$10
label_17d08:
	br	label_17d2c	# 17d2c
label_17d0c:
	lqd	$15,0($3)
	il	$16,0
	il	$13,2
	shufb	$14,$16,$15,$8
	stqd	$14,0($3)
	lqx	$10,$3,$11
	shufb	$7,$13,$10,$9
	stqx	$7,$3,$11
label_17d2c:
	il	$3,0
	bi	$0
	lnop
.global func_17d38
func_17d38:
	hbrr	label_17d6c,func_17cc0	# 17cc0
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$82,-48($1)
	il	$82,0
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
label_17d60:
	ahi	$82,$82,1
	shlqbyi	$3,$80,0
	andi	$4,$81,-128
label_17d6c:
	brsl	$0,func_17cc0	# 17cc0
	ceqbi	$3,$82,8
	ai	$80,$80,2
	xsbh	$2,$3
	ah	$81,$81,$81
	brhz	$2,label_17d60	# 17d60
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	fsmbi	$3,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_17da0
func_17da0:
	hbrr	label_17df0,func_17cc0	# 17cc0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$5,0
	stqd	$82,-48($1)
	ori	$82,$6,0
	stqd	$85,-96($1)
	ori	$85,$4,0
	stqd	$86,-112($1)
	il	$4,1
	stqd	$87,-128($1)
	ori	$86,$7,0
	stqd	$83,-64($1)
	ori	$87,$3,0
	stqd	$84,-80($1)
	stqd	$1,-224($1)
	ai	$1,$1,-224
	ai	$3,$1,32	# 20
	ai	$81,$1,42	# 2a
label_17df0:
	brsl	$0,func_17cc0	# 17cc0
	il	$4,1
	ai	$3,$1,34	# 22
	brsl	$0,func_17cc0	# 17cc0
	il	$4,0
	ai	$3,$1,36	# 24
	brsl	$0,func_17cc0	# 17cc0
	ai	$3,$1,38	# 26
	il	$4,0
	brsl	$0,func_17cc0	# 17cc0
	ceqhi	$2,$80,-1
	ai	$3,$1,40	# 28
	brhz	$2,label_17e40	# 17e40
	il	$4,1
	il	$80,0
	brsl	$0,func_17cc0	# 17cc0
	ori	$3,$81,0
	il	$4,1
	brsl	$0,func_17cc0	# 17cc0
	br	label_17e54	# 17e54
label_17e40:
	il	$4,1
	brsl	$0,func_17cc0	# 17cc0
	ori	$3,$81,0
	fsmbi	$4,0
	brsl	$0,func_17cc0	# 17cc0
label_17e54:
	andi	$4,$80,63	# 3f
	ai	$3,$1,44	# 2c
	brsl	$0,func_17d38	# 17d38
	ori	$4,$82,0
	ai	$3,$1,60	# 3c
	ai	$80,$1,76	# 4c
	brsl	$0,func_17d38	# 17d38
label_17e70:
	ori	$3,$80,0
	fsmbi	$4,0
	brsl	$0,func_17cc0	# 17cc0
	lqd	$19,0($80)
	ai	$20,$80,13
	cbd	$17,0($80)
	ai	$13,$80,1
	hbrr	label_17ecc,label_17e70	# 17e70
	ai	$12,$80,14
	cbd	$9,1($80)
	il	$7,1
	ai	$4,$1,92	# 5c
	rotqby	$18,$19,$20
	ori	$16,$18,16
	shufb	$14,$16,$19,$17
	stqd	$14,0($80)
	lqd	$11,0($13)
	rotqby	$10,$11,$12
	ori	$6,$10,16
	shufb	$5,$6,$11,$9
	stqx	$5,$80,$7
	ai	$80,$80,2
	ceq	$3,$80,$4
label_17ecc:
	brz	$3,label_17e70	# 17e70
	il	$4,0
	shlqbyi	$3,$80,0
	il	$84,0
	brsl	$0,func_17cc0	# 17cc0
	ai	$3,$1,94	# 5e
	fsmbi	$4,0
	ai	$82,$1,32	# 20
	brsl	$0,func_17cc0	# 17cc0
label_17ef0:
	ai	$28,$82,13
	hbrr	label_17f1c,func_12488	# 12488
	ai	$83,$87,226	# e2
	lqd	$27,0($82)
	ai	$81,$82,1
	shlqbyi	$4,$85,0
	ori	$3,$83,0
	il	$5,1025	# 401
	ai	$80,$82,14
	rotqby	$26,$27,$28
	andi	$6,$26,7
label_17f1c:
	brsl	$0,func_12488	# 12488
	ori	$3,$83,0
	lqd	$25,0($81)
	ori	$4,$85,0
	il	$5,1025	# 401
	rotqby	$24,$25,$80
	andi	$6,$24,7
	brsl	$0,func_12488	# 12488
	lqd	$23,0($81)
	ori	$3,$83,0
	shlqbyi	$4,$85,0
	il	$5,1025	# 401
	rotqby	$22,$23,$80
	andi	$21,$22,16
	brz	$21,label_17f70	# 17f70
	ah	$84,$84,$84
	brsl	$0,func_12b08	# 12b08
	andi	$31,$3,8
	ori	$30,$84,1
	ceqi	$29,$31,0
	selb	$84,$30,$84,$29
label_17f70:
	ai	$33,$1,94	# 5e
	ceq	$32,$82,$33
	ai	$82,$82,2
	brz	$32,label_17ef0	# 17ef0
	ori	$3,$83,0
	shlqbyi	$4,$85,0
	il	$5,1025	# 401
	fsmbi	$6,0
	brsl	$0,func_12488	# 12488
	lqd	$35,0($86)
	il	$3,0
	chd	$36,0($86)
	shufb	$34,$84,$35,$36
	stqd	$34,0($86)
	lqd	$0,240($1)	# f0
	ai	$1,$1,224	# e0
	hbr	label_17fd4,$0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
label_17fd4:
	bi	$0
.global func_17fd8
func_17fd8:
	il	$11,0
	lqd	$18,0($3)
	il	$14,8
	cdd	$19,0($3)
	il	$10,0
	cdd	$7,8($3)
	il	$8,24	# 18
	cwd	$9,0($3)
	hbr	label_18034,$0
	shufb	$17,$11,$18,$19
	stqd	$17,0($3)
	lqx	$16,$3,$14
	shufb	$15,$11,$16,$7
	stqx	$15,$3,$14
	lqd	$13,16($3)
	shufb	$12,$10,$13,$9
	stqd	$12,16($3)
	lqx	$6,$3,$8
	shufb	$5,$11,$6,$7
	stqx	$5,$3,$8
	lqd	$4,32($3)	# 20
	shufb	$2,$10,$4,$9
	stqd	$2,32($3)	# 20
label_18034:
	bi	$0
.global func_18038
func_18038:
	ila	$3,209216	# 33140
	hbrr	label_18060,func_17fd8	# 17fd8
	lqr	$6,data_33130	# 33130
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqbyi	$5,$6,13
	ceqbi	$4,$5,0
	xsbh	$2,$4
	brhz	$2,label_18078	# 18078
label_18060:
	brsl	$0,func_17fd8	# 17fd8
	lqr	$8,data_33130	# 33130
	il	$3,1
	cbd	$9,0($1)
	shufb	$7,$3,$8,$9
	stqr	$7,data_33130	# 33130
label_18078:
	ila	$3,209216	# 33140
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_18088
func_18088:
	hbrr	label_180c8,label_18154	# 18154
	stqd	$85,-96($1)
	rotmi	$85,$5,-9
	stqd	$81,-32($1)
	il	$81,0
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$83,-64($1)
	ori	$83,$4,0
	stqd	$84,-80($1)
	il	$84,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$86,-112($1)
	stqd	$1,-144($1)
	ai	$1,$1,-144
label_180c8:
	br	label_18154	# 18154
label_180cc:
	lqd	$9,0($80)
	rotqby	$6,$9,$80
	cg	$8,$81,$6
	shufb	$3,$8,$8,$86
	addx	$3,$81,$6
	brsl	$0,func_780	# 780
	hbrr	label_1810c,label_18140	# 18140
	il	$7,0
	fsmbi	$5,514	# 202
	clgt	$6,$85,$84
	ceq	$4,$3,$7
	andbi	$5,$5,16
	gb	$2,$4
	cg	$4,$81,$5
	cgti	$3,$2,11
	brz	$3,label_1813c	# 1813c
label_1810c:
	brnz	$6,label_18140	# 18140
	lqd	$16,0($80)
	hbrr	label_18138,label_18184	# 18184
	lqd	$11,0($83)
	cdd	$13,0($83)
	rotqby	$14,$16,$80
	cg	$15,$14,$81
	shufb	$12,$15,$15,$86
	addx	$12,$14,$81
	shufb	$10,$12,$11,$13
	stqd	$10,0($83)
label_18138:
	br	label_18184	# 18184
label_1813c:
	il	$84,0
label_18140:
	hbrr	label_1817c,label_180cc	# 180cc
	lqr	$18,data_22810	# 22810
	shufb	$17,$4,$4,$18
	addx	$17,$81,$5
	ori	$81,$17,0
label_18154:
	lqd	$25,32($82)	# 20
	ai	$80,$82,24	# 18
	lqr	$86,data_22810	# 22810
	ai	$84,$84,1
	rotqby	$24,$25,$82
	rotqmbyi	$23,$24,-4
	clgt	$22,$23,$81
	ceq	$20,$23,$81
	xswd	$21,$22
	selb	$19,$22,$21,$20
label_1817c:
	brnz	$19,label_180cc	# 180cc
	il	$6,-3
label_18184:
	ori	$3,$6,0
	lqd	$0,160($1)	# a0
	hbr	label_181b0,$0
	ai	$1,$1,144	# 90
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
label_181b0:
	bi	$0
	lnop
.global func_181b8
func_181b8:
	hbrr	label_181ec,label_1824c	# 1824c
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$83,-64($1)
	ori	$83,$4,0
	stqd	$84,-80($1)
	il	$84,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$85,-96($1)
	stqd	$1,-128($1)
	ai	$1,$1,-128
label_181ec:
	br	label_1824c	# 1824c
label_181f0:
	lqd	$8,0($80)
	rotqby	$6,$8,$80
	cg	$7,$81,$6
	shufb	$3,$7,$7,$85
	addx	$3,$81,$6
	brsl	$0,func_780	# 780
	il	$5,0
	ceq	$4,$3,$5
	gb	$2,$4
	cgti	$3,$2,11
	brz	$3,label_1824c	# 1824c
	lqd	$15,0($80)
	il	$6,0
	hbrr	label_18248,label_18270	# 18270
	lqd	$10,0($83)
	cdd	$12,0($83)
	rotqby	$13,$15,$80
	cg	$14,$13,$81
	shufb	$11,$14,$14,$85
	addx	$11,$13,$81
	shufb	$9,$11,$10,$12
	stqd	$9,0($83)
label_18248:
	br	label_18270	# 18270
label_1824c:
	lqd	$18,16($82)
	ai	$80,$82,8
	lqr	$85,data_22810	# 22810
	rotqmbyi	$81,$84,-4
	rotqby	$17,$18,$82
	clgt	$16,$17,$84
	ai	$84,$84,8
	brnz	$16,label_181f0	# 181f0
	il	$6,-3
label_18270:
	ori	$3,$6,0
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	bi	$0
.global func_18298
func_18298:
	hbrr	label_182f4,func_780	# 780
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$83,-64($1)
	il	$3,2048	# 800
	stqd	$84,-80($1)
	ori	$83,$5,0
	stqd	$0,16($1)
	clgt	$2,$5,$3
	stqd	$81,-32($1)
	ori	$84,$4,0
	stqd	$82,-48($1)
	il	$3,-2
	stqd	$1,-112($1)
	ai	$1,$1,-112
	brnz	$2,label_1839c	# 1839c
label_182d8:
	lqd	$11,0($80)
	lqr	$81,data_26ae0	# 26ae0
	lqr	$82,data_22810	# 22810
	rotqby	$9,$11,$80
	cg	$10,$9,$81
	shufb	$3,$10,$10,$82
	addx	$3,$9,$81
label_182f4:
	brsl	$0,func_780	# 780
	fsmbi	$4,257	# 101
	andhi	$4,$4,257	# 101
	and	$8,$3,$4
	shlqbyi	$7,$8,4
	ceqbi	$6,$7,0
	xsbh	$5,$6
	brhz	$5,label_182d8	# 182d8
	rotqmbyi	$18,$83,-4
	il	$19,-1
	hbrr	label_18354,func_eb98	# eb98
	or	$13,$84,$4
	lqd	$22,0($80)
	cg	$21,$18,$19
	shufb	$17,$21,$21,$82
	rotqby	$14,$22,$80
	addx	$17,$18,$19
	cg	$20,$14,$81
	rotqbyi	$16,$17,8
	shufb	$3,$20,$20,$82
	shlqbyi	$15,$16,14
	addx	$3,$14,$81
	shlqbii	$12,$15,5
	or	$4,$12,$13
label_18354:
	brsl	$0,func_eb98	# eb98
label_18358:
	lqd	$33,0($80)
	lqr	$30,data_26ae0	# 26ae0
	lqr	$32,data_22810	# 22810
	rotqby	$29,$33,$80
	cg	$31,$29,$30
	shufb	$3,$31,$31,$32
	addx	$3,$29,$30
	brsl	$0,func_780	# 780
	fsmbi	$28,257	# 101
	andhi	$27,$28,257	# 101
	and	$26,$3,$27
	shlqbyi	$25,$26,4
	ceqbi	$24,$25,0
	xsbh	$23,$24
	brhz	$23,label_18358	# 18358
	sync
	il	$3,0
label_1839c:
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
	lnop
.global func_183c0
func_183c0:
	hbrr	label_18404,func_780	# 780
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$0,16($1)
	stqd	$81,-32($1)
	stqd	$83,-64($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
label_183e8:
	lqd	$9,0($80)
	lqr	$81,data_26af0	# 26af0
	lqr	$83,data_22810	# 22810
	rotqby	$6,$9,$80
	cg	$8,$6,$81
	shufb	$3,$8,$8,$83
	addx	$3,$6,$81
label_18404:
	brsl	$0,func_780	# 780
	fsmbi	$7,257	# 101
	andhi	$7,$7,257	# 101
	and	$5,$3,$7
	shlqbyi	$4,$5,4
	ceqbi	$2,$4,0
	xsbh	$3,$2
	brhz	$3,label_183e8	# 183e8
	ai	$21,$80,8
	lqr	$18,data_22830	# 22830
	lqd	$20,0($21)
	hbrr	label_1846c,func_eb98	# eb98
	lqd	$22,0($80)
	rotqby	$15,$20,$21
	rotqby	$16,$22,$80
	bg	$17,$15,$82
	shufb	$14,$17,$17,$18
	cg	$19,$16,$81
	shufb	$3,$19,$19,$83
	sfx	$14,$15,$82
	rotqmbii	$13,$14,-3
	addx	$3,$16,$81
	rotqbyi	$12,$13,8
	shlqbyi	$11,$12,11
	shlqbii	$10,$11,4
	or	$4,$10,$7
label_1846c:
	brsl	$0,func_eb98	# eb98
label_18470:
	lqd	$33,0($80)
	lqr	$30,data_26af0	# 26af0
	lqr	$32,data_22810	# 22810
	rotqby	$29,$33,$80
	cg	$31,$29,$30
	shufb	$3,$31,$31,$32
	addx	$3,$29,$30
	brsl	$0,func_780	# 780
	fsmbi	$28,257	# 101
	andhi	$27,$28,257	# 101
	and	$26,$3,$27
	shlqbyi	$25,$26,4
	ceqbi	$24,$25,0
	xsbh	$23,$24
	brhz	$23,label_18470	# 18470
	sync
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
	lnop
.global func_184d0
func_184d0:
	hbrr	label_18500,label_18514	# 18514
	stqd	$80,-16($1)
	il	$80,0
	stqd	$81,-32($1)
	il	$81,0
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$83,-64($1)
	ori	$83,$5,0
	stqd	$0,16($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
label_18500:
	br	label_18514	# 18514
label_18504:
	lqr	$3,data_22810	# 22810
	shufb	$3,$5,$5,$3
	addx	$3,$82,$6
	brsl	$0,func_eb98	# eb98
label_18514:
	rotqmbyi	$6,$80,-4
	ceq	$2,$81,$83
	fsmbi	$4,0
	ai	$80,$80,8
	ai	$81,$81,1
	cg	$5,$82,$6
	brz	$2,label_18504	# 18504
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
	lnop
.global func_18550
func_18550:
	ori	$3,$4,0
	fsmbi	$4,0
	br	func_eb98	# eb98
	lnop
.global func_18560
func_18560:
	lqd	$14,0($3)
	hbrr	label_185a0,func_780	# 780
	lqr	$12,data_26b00	# 26b00
	stqd	$82,-48($1)
	lqr	$82,data_22810	# 22810
	stqd	$80,-16($1)
	rotqby	$11,$14,$3
	stqd	$0,16($1)
	stqd	$81,-32($1)
	stqd	$1,-80($1)
	cg	$13,$11,$12
	shlqbyi	$81,$3,0
	ai	$1,$1,-80
	shufb	$80,$13,$13,$82
	addx	$80,$11,$12
	ori	$3,$80,0
label_185a0:
	brsl	$0,func_780	# 780
	lqr	$10,data_26b10	# 26b10
	and	$4,$3,$10
	shlqbyi	$3,$80,0
	brsl	$0,func_eb98	# eb98
	lqd	$9,0($81)
	il	$4,0
	lqr	$7,data_26b20	# 26b20
	rotqby	$6,$9,$81
	cg	$8,$6,$7
	shufb	$3,$8,$8,$82
	addx	$3,$6,$7
	brsl	$0,func_eb98	# eb98
	sync
	il	$3,0
	lqd	$5,0($81)
	cdd	$4,0($81)
	shufb	$2,$3,$5,$4
	stqd	$2,0($81)
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_18608
func_18608:
	il	$10,0
	lqd	$12,0($3)
	ai	$5,$3,8
	rotqmbii	$11,$4,-4
	hbrr	label_18684,func_780	# 780
	stqd	$82,-48($1)
	ori	$82,$3,0
	stqd	$84,-80($1)
	rotqmbyi	$6,$11,-3
	rotqby	$9,$12,$3
	lqr	$84,data_22810	# 22810
	stqd	$80,-16($1)
	il	$80,-1
	rotqbyi	$3,$6,8
	ceq	$8,$9,$10
	stqd	$0,16($1)
	stqd	$81,-32($1)
	gb	$7,$8
	shlqbyi	$4,$3,8
	stqd	$83,-64($1)
	stqd	$1,-112($1)
	cgti	$2,$7,11
	ai	$1,$1,-112
	shlqbii	$4,$4,3
	brnz	$2,label_18710	# 18710
	lqd	$25,0($5)
	rotqby	$23,$25,$5
	cg	$24,$4,$23
	shufb	$83,$24,$24,$84
	addx	$83,$4,$23
	ori	$3,$83,0
label_18684:
	brsl	$0,func_780	# 780
	lqr	$22,data_26b30	# 26b30
	fsmbi	$21,514	# 202
	hbrr	label_186cc,func_184d0	# 184d0
	lqr	$17,data_26b40	# 26b40
	andbi	$14,$21,2
	and	$20,$3,$22
	rotqbyi	$19,$20,8
	and	$81,$3,$17
	ori	$3,$82,0
	ori	$4,$81,0
	shlqbyi	$18,$19,8
	shlqbii	$5,$18,4
	cg	$15,$5,$14
	shufb	$13,$15,$15,$84
	addx	$13,$5,$14
	shlqbyi	$80,$13,4
	ori	$5,$80,0
label_186cc:
	brsl	$0,func_184d0	# 184d0
	ori	$4,$81,0
	shlqbyi	$5,$80,0
	ori	$3,$82,0
	brsl	$0,func_18298	# 18298
	ori	$80,$3,0
	ila	$3,158576	# 26b70
	ori	$4,$80,0
	brz	$80,label_186f8	# 186f8
	brsl	$0,func_19ad0	# 19ad0
	br	label_18710	# 18710
label_186f8:
	ori	$3,$82,0
	shlqbyi	$4,$83,0
	brsl	$0,func_18550	# 18550
	ori	$3,$82,0
	ori	$4,$83,0
	brsl	$0,func_183c0	# 183c0
label_18710:
	ori	$3,$80,0
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
	lnop
.global func_18738
func_18738:
	il	$12,0
	hbrr	label_1877c,label_1878c	# 1878c
	ori	$10,$5,0
	lqr	$11,data_26b50	# 26b50
	ori	$13,$6,0
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$81,-32($1)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	and	$5,$5,$11
	ceq	$9,$5,$12
	shlqbyi	$12,$4,0
	gb	$3,$9
	ori	$9,$7,0
	cgti	$2,$3,11
label_1877c:
	brnz	$2,label_1878c	# 1878c
	ori	$4,$10,0
	ila	$3,158608	# 26b90
	br	label_187a8	# 187a8
label_1878c:
	and	$7,$7,$11
	ceq	$6,$7,$5
	gb	$5,$6
	cgti	$4,$5,11
	brnz	$4,label_187b4	# 187b4
	ori	$4,$9,0
	ila	$3,158656	# 26bc0
label_187a8:
	brsl	$0,func_19ad0	# 19ad0
	il	$3,-2
	br	label_188dc	# 188dc
label_187b4:
	lqd	$24,0($80)
	il	$20,8
	cdd	$25,0($80)
	il	$15,24	# 18
	cdd	$17,8($80)
	il	$81,0
	cwd	$14,0($80)
	hbrr	label_1880c,label_1882c	# 1882c
	shufb	$23,$12,$24,$25
	stqd	$23,0($80)
	lqx	$22,$80,$20
	shufb	$21,$10,$22,$17
	stqx	$21,$80,$20
	lqd	$19,16($80)
	shufb	$18,$13,$19,$14
	stqd	$18,16($80)
	lqx	$16,$80,$15
	shufb	$13,$9,$16,$17
	stqx	$13,$80,$15
	lqd	$11,32($80)	# 20
	shufb	$10,$8,$11,$14
	stqd	$10,32($80)	# 20
label_1880c:
	br	label_1882c	# 1882c
label_18810:
	lqd	$28,0($4)
	lqr	$27,data_22810	# 22810
	rotqby	$8,$28,$4
	cg	$26,$6,$8
	shufb	$4,$26,$26,$27
	addx	$4,$6,$8
	brsl	$0,func_18550	# 18550
label_1882c:
	lqd	$31,16($80)
	ai	$4,$80,8
	rotqmbyi	$6,$81,-4
	ori	$3,$80,0
	rotqby	$30,$31,$80
	clgt	$29,$30,$81
	ai	$81,$81,8
	brnz	$29,label_18810	# 18810
	lqd	$49,32($80)	# 20
	ai	$47,$80,24	# 18
	lqr	$81,data_22810	# 22810
	lqd	$46,0($47)
	rotqby	$48,$49,$80
	rotqby	$4,$46,$47
	rotmi	$5,$48,-3
	brsl	$0,func_184d0	# 184d0
	hbrr	label_1889c,func_eb98	# eb98
	ai	$43,$80,8
	lqd	$45,0($80)
	lqr	$39,data_26b20	# 26b20
	lqd	$42,0($43)
	lqr	$40,data_26b60	# 26b60
	rotqby	$38,$45,$80
	rotqby	$41,$42,$43
	cg	$44,$38,$39
	or	$4,$41,$40
	shufb	$3,$44,$44,$81
	addx	$3,$38,$39
label_1889c:
	brsl	$0,func_eb98	# eb98
	lqd	$37,0($80)
	lqr	$35,data_26b00	# 26b00
	rotqby	$34,$37,$80
	cg	$36,$34,$35
	shufb	$80,$36,$36,$81
	addx	$80,$34,$35
	ori	$3,$80,0
	brsl	$0,func_780	# 780
	fsmbi	$33,8224	# 2020
	andbi	$32,$33,-128
	or	$4,$3,$32
	shlqbyi	$3,$80,0
	brsl	$0,func_eb98	# eb98
	sync
	il	$3,0
label_188dc:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_188f0
func_188f0:
	lqd	$13,0($3)
	hbrr	label_18984,func_181b8	# 181b8
	stqd	$87,-128($1)
	ori	$87,$5,0
	stqd	$86,-112($1)
	ori	$86,$6,0
	il	$6,0
	rotqby	$5,$13,$3
	stqd	$93,-224($1)
	ori	$93,$4,0
	stqd	$80,-16($1)
	ceq	$4,$5,$6
	il	$80,-1
	stqd	$83,-64($1)
	ori	$83,$3,0
	gb	$2,$4
	stqd	$84,-80($1)
	stqd	$89,-160($1)
	ori	$84,$7,0
	stqd	$90,-176($1)
	cgti	$12,$2,11
	stqd	$91,-192($1)
	ori	$89,$10,0
	stqd	$92,-208($1)
	ori	$90,$11,0
	stqd	$0,16($1)
	ori	$91,$8,0
	stqd	$81,-32($1)
	ori	$92,$9,0
	stqd	$82,-48($1)
	stqd	$85,-96($1)
	stqd	$88,-144($1)
label_18970:
	hbrp
	stqd	$1,-288($1)
	ai	$1,$1,-288
	brnz	$12,label_18c94	# 18c94
	ai	$4,$1,32	# 20
label_18984:
	brsl	$0,func_181b8	# 181b8
	ori	$80,$3,0
	brz	$3,label_18998	# 18998
	ila	$3,158704	# 26bf0
	br	label_18ac8	# 18ac8
label_18998:
	ai	$11,$84,-1
	ila	$10,100796	# 189bc
	shli	$9,$11,2
	clgti	$7,$11,6
	a	$3,$9,$10
	lqx	$8,$10,$9
	rotqby	$2,$8,$3
	brnz	$7,label_189f0	# 189f0
	bi	$2
jtbl_189bc:
	.word label_189d8
	.word label_189f0
	.word label_189e0
	.word label_189f0
	.word label_189e8
	.word label_189f0
	.word label_18c50
label_189d8:
	il	$82,4096	# 1000
	br	label_18c54	# 18c54
label_189e0:
	ila	$82,65536	# 10000
	br	label_18c54	# 18c54
label_189e8:
	ilhu	$82,16
	br	label_18c54	# 18c54
label_189f0:
	ila	$3,158752	# 26c20
	br	label_18a00	# 18a00
label_189f8:
	ila	$3,158784	# 26c40
	lnop
label_18a00:
	ila	$4,158976	# 26d00
	brsl	$0,func_19ad0	# 19ad0
label_18a08:
	il	$80,-2
	br	label_18c94	# 18c94
label_18a10:
	heqi	$0,$82,0
	hbrr	label_18a5c,label_18a38	# 18a38
	clz	$7,$82
	clz	$4,$86
	il	$5,1
	fsmbi	$3,0
	sf	$7,$4,$7
	ori	$2,$86,0
	shl	$5,$5,$7
	shl	$4,$82,$7
label_18a38:
	or	$8,$3,$5
	rotqmbii	$5,$5,-1
	clgt	$6,$4,$2
	lnop
	sf	$7,$4,$2
	rotqmbii	$4,$4,-1
	selb	$3,$8,$3,$6
	lnop
	selb	$2,$7,$2,$6
label_18a5c:
	brnz	$5,label_18a38	# 18a38
	brnz	$3,label_18a6c	# 18a6c
	ila	$3,158848	# 26c80
	br	label_18a00	# 18a00
label_18a6c:
	lqr	$18,data_25980	# 25980
	il	$5,2048	# 800
	rotqmbyi	$17,$3,-4
	lqr	$88,data_22810	# 22810
	hbrr	label_18a98,label_18aac	# 18aac
	cg	$19,$17,$18
	shufb	$16,$19,$19,$88
	addx	$16,$17,$18
	shlqbyi	$15,$16,4
	andi	$81,$15,-512
	clgt	$14,$81,$5
label_18a98:
	brz	$14,label_18aac	# 18aac
	ila	$3,158896	# 26cb0
	ila	$4,158976	# 26d00
	brsl	$0,func_19ad0	# 19ad0
	br	label_18a08	# 18a08
label_18aac:
	ori	$3,$83,0
	ai	$4,$1,48	# 30
	shlqbyi	$5,$81,0
	brsl	$0,func_18088	# 18088
	ori	$80,$3,0
	brz	$3,label_18ad8	# 18ad8
	ila	$3,158928	# 26cd0
label_18ac8:
	ila	$4,158976	# 26d00
	shlqbyi	$5,$80,0
	brsl	$0,func_19ad0	# 19ad0
	br	label_18c94	# 18c94
label_18ad8:
	rotmi	$50,$81,-9
	fsmbi	$46,65535	# ffff
	il	$85,0
	hbrr	label_18b2c,func_eb98	# eb98
	il	$80,0
	fsmbi	$51,32896	# 8080
	lqd	$49,48($1)	# 30
	rotqmbyi	$45,$50,-4
	rotqmbyi	$48,$84,-4
	andbi	$41,$51,-128
	il	$84,0
	lqd	$3,32($1)	# 20
	cg	$47,$45,$46
	or	$39,$48,$49
	shufb	$44,$47,$47,$88
	addx	$44,$45,$46
	rotqbyi	$43,$44,8
	shlqbyi	$42,$43,8
	shlqbii	$40,$42,5
	or	$38,$40,$41
	or	$4,$39,$38
label_18b2c:
	brsl	$0,func_eb98	# eb98
	rotqmbyi	$37,$91,-4
	rotqmbyi	$34,$92,-4
	rotqmbyi	$31,$89,-4
	hbrr	label_18b80,label_18bf0	# 18bf0
	rotqmbyi	$26,$90,-4
	rotqbyi	$36,$37,8
	rotqbyi	$33,$34,8
	rotqbyi	$30,$31,8
	rotqbyi	$25,$26,8
	shlqbyi	$35,$36,15
	shlqbyi	$32,$33,15
	shlqbyi	$29,$30,15
	shlqbyi	$24,$25,9
	shlqbii	$27,$35,6
	shlqbii	$28,$32,5
	shlqbii	$23,$29,3
	shlqbii	$20,$24,3
	or	$22,$27,$28
	or	$21,$22,$23
	or	$88,$21,$20
label_18b80:
	br	label_18bf0	# 18bf0
label_18b84:
	hbrr	label_18bc4,label_18be0	# 18be0
	clgt	$52,$86,$84
	lqd	$8,48($1)	# 30
	brz	$52,label_18bc8	# 18bc8
	lqr	$59,data_22810	# 22810
	rotqmbyi	$57,$84,-4
	rotqmbyi	$56,$80,-4
	rotqmbyi	$55,$93,-4
	cg	$60,$87,$57
	cg	$58,$56,$8
	shufb	$54,$60,$60,$59
	shufb	$3,$58,$58,$59
	addx	$54,$87,$57
	addx	$3,$56,$8
	or	$53,$54,$55
	or	$4,$88,$53
label_18bc4:
	br	label_18be0	# 18be0
label_18bc8:
	il	$4,0
	rotqmbyi	$61,$80,-4
	lqr	$63,data_22810	# 22810
	cg	$62,$61,$8
	shufb	$3,$62,$62,$63
	addx	$3,$61,$8
label_18be0:
	ai	$85,$85,1
	brsl	$0,func_eb98	# eb98
	ai	$80,$80,8
	a	$84,$84,$82
label_18bf0:
	ceq	$64,$85,$81
	brz	$64,label_18b84	# 18b84
	ori	$5,$81,0
	lqd	$4,48($1)	# 30
	ori	$3,$83,0
	brsl	$0,func_18298	# 18298
	ori	$3,$83,0
	lqd	$4,32($1)	# 20
	brsl	$0,func_183c0	# 183c0
	ai	$75,$83,8
	lqd	$70,32($1)	# 20
	lqd	$74,0($75)
	lqr	$73,data_22830	# 22830
	hbrr	label_18c4c,label_18c94	# 18c94
	rotqby	$71,$74,$75
	bg	$72,$71,$70
	shufb	$69,$72,$72,$73
	sfx	$69,$71,$70
	rotqmbii	$68,$69,-3
	rotqbyi	$67,$68,8
	shlqbyi	$66,$67,11
	shlqbii	$65,$66,4
	shlqbyi	$80,$65,4
label_18c4c:
	br	label_18c94	# 18c94
label_18c50:
	ilhu	$82,256	# 100
label_18c54:
	ceqi	$5,$82,1
	il	$80,0
	lqr	$12,data_22830	# 22830
	nor	$4,$5,$5
	hbrr	label_18c8c,label_18a10	# 18a10
	rotqmbyi	$2,$4,-4
	xswd	$85,$2
	bg	$88,$85,$80
	shufb	$81,$88,$88,$12
	sfx	$81,$85,$80
	and	$79,$87,$81
	ceq	$78,$79,$80
	gb	$77,$78
	cgti	$76,$77,11
label_18c8c:
	brnz	$76,label_18a10	# 18a10
	br	label_189f8	# 189f8
label_18c94:
	lqd	$0,304($1)	# 130
	ai	$1,$1,288	# 120
	shlqbyi	$3,$80,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	hbr	label_18cdc,$0
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
	lqd	$93,-224($1)
label_18cdc:
	bi	$0
.global func_18ce0
func_18ce0:
	ori	$2,$3,0
	fsmbi	$3,0
	lqd	$7,0($2)
	cdd	$6,0($2)
	shufb	$5,$4,$7,$6
	stqd	$5,0($2)
	bi	$0
	lnop
.global func_18d00
func_18d00:
	ori	$9,$3,0
	fsmbi	$17,257	# 101
	il	$7,2
	lqr	$13,data_22820	# 22820
	il	$6,64	# 40
	lqr	$15,data_22810	# 22810
	hbrr	label_18d64,func_730	# 730
	andbi	$16,$17,15
	stqd	$80,-16($1)
	and	$12,$3,$16
	shlqbyi	$8,$3,4
	cg	$14,$12,$13
	stqd	$0,16($1)
	shufb	$11,$14,$14,$15
	stqd	$1,-48($1)
	ai	$1,$1,-48
	addx	$11,$12,$13
	shlqbyi	$80,$11,4
	ori	$10,$80,0
	wrch	$ch16,$10
	wrch	$ch17,$9
	wrch	$ch18,$8
	wrch	$ch19,$7
	wrch	$ch20,$7
	wrch	$ch21,$6
label_18d64:
	brsl	$0,func_730	# 730
	ai	$5,$80,14
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$4,0($80)
	ila	$3,65535	# ffff
	lqd	$80,-16($1)
	rotqby	$2,$4,$5
	and	$3,$3,$2
	bi	$0
	lnop
.global func_18d90
func_18d90:
	il	$10,0
	lqd	$11,0($3)
	ila	$6,65535	# ffff
	hbrr	label_18dd4,func_18d00	# 18d00
	lqr	$7,data_26d20	# 26d20
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqby	$5,$11,$3
	lqr	$3,data_22810	# 22810
	ceq	$9,$5,$10
	cg	$4,$5,$7
	gb	$8,$9
	shufb	$3,$4,$4,$3
	cgti	$2,$8,11
	brnz	$2,label_18de0	# 18de0
	addx	$3,$5,$7
label_18dd4:
	brsl	$0,func_18d00	# 18d00
	ila	$6,65535	# ffff
	and	$6,$3,$6
label_18de0:
	ori	$3,$6,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_18df0
func_18df0:
	il	$10,0
	lqd	$11,0($3)
	ila	$6,65535	# ffff
	hbrr	label_18e34,func_18d00	# 18d00
	lqr	$7,data_26d30	# 26d30
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqby	$5,$11,$3
	lqr	$3,data_22810	# 22810
	ceq	$9,$5,$10
	cg	$4,$5,$7
	gb	$8,$9
	shufb	$3,$4,$4,$3
	cgti	$2,$8,11
	brnz	$2,label_18e40	# 18e40
	addx	$3,$5,$7
label_18e34:
	brsl	$0,func_18d00	# 18d00
	ila	$6,65535	# ffff
	and	$6,$3,$6
label_18e40:
	ori	$3,$6,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_18e50
func_18e50:
	ori	$6,$3,0
	fsmbi	$18,257	# 101
	il	$9,2
	lqr	$14,data_22820	# 22820
	il	$2,32	# 20
	lqr	$16,data_22810	# 22810
	hbrr	label_18eb4,func_730	# 730
	andbi	$17,$18,15
	shlqbyi	$7,$3,4
	and	$13,$3,$17
	cg	$15,$13,$14
	shufb	$12,$15,$15,$16
	addx	$12,$13,$14
	shlqbyi	$10,$12,4
	ori	$3,$10,0
	lqd	$11,0($10)
	chd	$8,0($10)
	wrch	$ch16,$3
	wrch	$ch17,$6
	wrch	$ch18,$7
	wrch	$ch19,$9
	shufb	$5,$4,$11,$8
	wrch	$ch20,$9
	stqd	$5,0($10)
	wrch	$ch21,$2
label_18eb4:
	br	func_730	# 730
.global func_18eb8
func_18eb8:
	il	$8,0
	lqd	$9,0($3)
	il	$5,-1
	hbrr	label_18f0c,func_18d00	# 18d00
	stqd	$81,-32($1)
	lqr	$81,data_26d20	# 26d20
	stqd	$82,-48($1)
	lqr	$82,data_22810	# 22810
	rotqby	$4,$9,$3
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ceq	$7,$4,$8
	cg	$3,$4,$81
	gb	$6,$7
	ai	$1,$1,-80
	shufb	$3,$3,$3,$82
	cgti	$2,$6,11
	brnz	$2,label_18f70	# 18f70
	addx	$3,$4,$81
label_18f0c:
	brsl	$0,func_18d00	# 18d00
	ilhu	$13,45056	# b000
	hbrr	label_18f3c,label_18f50	# 18f50
	ori	$11,$3,0
	ila	$12,65535	# ffff
	andi	$5,$11,12
	ori	$4,$13,6
	ceqi	$10,$5,4
	ila	$3,159120	# 26d90
	ila	$5,159168	# 26dc0
	il	$6,99	# 63
	and	$8,$11,$12
label_18f3c:
	brnz	$10,label_18f50	# 18f50
	ori	$7,$8,0
	brsl	$0,func_19ad0	# 19ad0
	il	$5,-2
	br	label_18f70	# 18f70
label_18f50:
	il	$4,4
	lqd	$16,0($80)
	rotqby	$14,$16,$80
	cg	$15,$14,$81
	shufb	$3,$15,$15,$82
	addx	$3,$14,$81
	brsl	$0,func_18e50	# 18e50
	il	$5,0
label_18f70:
	ori	$3,$5,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_18f90
func_18f90:
	il	$10,0
	lqd	$11,0($3)
	hbrr	label_18fec,func_18e50	# 18e50
	lqr	$7,data_26d40	# 26d40
	stqd	$81,-32($1)
	lqr	$81,data_22810	# 22810
	stqd	$80,-16($1)
	rotqby	$5,$11,$3
	ori	$80,$3,0
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$0,16($1)
	ori	$4,$6,0
	stqd	$1,-80($1)
	ceq	$9,$5,$10
	fsmbi	$6,65535	# ffff
	cg	$3,$5,$7
	gb	$8,$9
	ai	$1,$1,-80
	shufb	$3,$3,$3,$81
	cgti	$2,$8,11
	brnz	$2,label_19074	# 19074
	addx	$3,$5,$7
label_18fec:
	brsl	$0,func_18e50	# 18e50
	il	$4,0
	lqd	$25,0($80)
	lqr	$23,data_26d50	# 26d50
	rotqby	$22,$25,$80
	cg	$24,$22,$23
	shufb	$3,$24,$24,$81
	addx	$3,$22,$23
	brsl	$0,func_18e50	# 18e50
	rotmi	$4,$82,-16
	lqd	$21,0($80)
	lqr	$19,data_26d60	# 26d60
	rotqby	$18,$21,$80
	cg	$20,$18,$19
	shufb	$3,$20,$20,$81
	addx	$3,$18,$19
	brsl	$0,func_18e50	# 18e50
	ori	$4,$82,0
	lqd	$17,0($80)
	lqr	$15,data_26d70	# 26d70
	rotqby	$14,$17,$80
	cg	$16,$14,$15
	shufb	$3,$16,$16,$81
	addx	$3,$14,$15
	brsl	$0,func_18e50	# 18e50
	il	$4,24	# 18
	lqd	$13,0($80)
	lqr	$7,data_26d80	# 26d80
	rotqby	$6,$13,$80
	cg	$12,$6,$7
	shufb	$3,$12,$12,$81
	addx	$3,$6,$7
	brsl	$0,func_18e50	# 18e50
	il	$6,0
label_19074:
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	shlqbyi	$3,$6,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_19090
func_19090:
	il	$10,0
	lqd	$11,0($3)
	il	$4,15
	hbrr	label_190e4,func_18e50	# 18e50
	il	$6,-1
	lqr	$7,data_26d20	# 26d20
	stqd	$81,-32($1)
	lqr	$81,data_22810	# 22810
	stqd	$80,-16($1)
	rotqby	$5,$11,$3
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	ceq	$9,$5,$10
	cg	$3,$5,$7
	gb	$8,$9
	shufb	$3,$3,$3,$81
	cgti	$2,$8,11
	brnz	$2,label_1918c	# 1918c
	addx	$3,$5,$7
label_190e4:
	brsl	$0,func_18e50	# 18e50
	il	$4,4
	lqd	$29,0($80)
	lqr	$27,data_26d40	# 26d40
	rotqby	$26,$29,$80
	cg	$28,$26,$27
	shufb	$3,$28,$28,$81
	addx	$3,$26,$27
	brsl	$0,func_18e50	# 18e50
	il	$4,0
	lqd	$25,0($80)
	lqr	$23,data_26d50	# 26d50
	rotqby	$22,$25,$80
	cg	$24,$22,$23
	shufb	$3,$24,$24,$81
	addx	$3,$22,$23
	brsl	$0,func_18e50	# 18e50
	il	$4,0
	lqd	$21,0($80)
	lqr	$19,data_26d60	# 26d60
	rotqby	$18,$21,$80
	cg	$20,$18,$19
	shufb	$3,$20,$20,$81
	addx	$3,$18,$19
	brsl	$0,func_18e50	# 18e50
	il	$4,0
	lqd	$17,0($80)
	lqr	$15,data_26d70	# 26d70
	rotqby	$14,$17,$80
	cg	$16,$14,$15
	shufb	$3,$16,$16,$81
	addx	$3,$14,$15
	brsl	$0,func_18e50	# 18e50
	il	$4,12
	lqd	$13,0($80)
	lqr	$7,data_26d80	# 26d80
	rotqby	$6,$13,$80
	cg	$12,$6,$7
	shufb	$3,$12,$12,$81
	addx	$3,$6,$7
	brsl	$0,func_18e50	# 18e50
	il	$6,0
label_1918c:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$3,$6,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_191a8
func_191a8:
	ila	$3,209280	# 33180
	hbr	label_191ec,$0
	lqr	$8,data_33170	# 33170
	cdd	$7,0($1)
	cbd	$6,0($1)
	rotqbyi	$5,$8,13
	ceqbi	$4,$5,0
	xsbh	$2,$4
	bihz	$2,$0
	lqr	$12,data_33180	# 33180
	il	$13,0
	lqr	$10,data_33170	# 33170
	il	$11,1
	shufb	$9,$13,$12,$7
	shufb	$7,$11,$10,$6
	stqr	$9,data_33180	# 33180
	stqr	$7,data_33170	# 33170
label_191ec:
	bi	$0
.global func_191f0
func_191f0:
	stqr	$3,data_33190	# 33190
	il	$3,0
	bi	$0
	lnop
.global func_19200
func_19200:
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	ori	$81,$4,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_e510	# e510
	ceqbi	$2,$3,0
	xsbh	$3,$2
	brhnz	$3,label_1924c	# 1924c
	brsl	$0,func_1ab30	# 1ab30
	ori	$4,$80,0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$5,$81,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	br	func_1af08	# 1af08
label_1924c:
	brsl	$0,func_1af28	# 1af28
	ori	$4,$80,0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$5,$81,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	br	func_1b148	# 1b148
	lnop
.global func_19270
func_19270:
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_e510	# e510
	ceqbi	$2,$3,0
	xsbh	$3,$2
	brhnz	$3,label_1929c	# 1929c
	brsl	$0,func_1ab30	# 1ab30
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	br	func_1abe0	# 1abe0
label_1929c:
	brsl	$0,func_1af28	# 1af28
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	br	func_1b0c0	# 1b0c0
	lnop
.global func_192b0
func_192b0:
	hbrr	label_192fc,func_191a8	# 191a8
	lqr	$2,data_33190	# 33190
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	il	$80,-3
	stqd	$84,-80($1)
	ori	$81,$5,0
	stqd	$85,-96($1)
	ori	$84,$4,0
	stqd	$86,-112($1)
	ori	$85,$3,0
	stqd	$0,16($1)
	ori	$86,$6,0
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$1,-144($1)
	ai	$1,$1,-144
	brz	$2,label_19498	# 19498
	shli	$82,$5,9
label_192fc:
	brsl	$0,func_191a8	# 191a8
	ori	$5,$81,0
	shlqbyi	$4,$84,0
	ori	$83,$3,0
	fsmbi	$6,0
	il	$81,0
	brsl	$0,func_18f90	# 18f90
	ori	$80,$3,0
	brz	$3,label_19350	# 19350
	ori	$3,$83,0
	brsl	$0,func_18df0	# 18df0
	hbrr	label_1934c,label_19420	# 19420
	ila	$5,65535	# ffff
	ilhu	$4,45056	# b000
	shlqbyi	$7,$80,0
	and	$8,$3,$5
	ori	$4,$4,6
	ila	$3,159184	# 26dd0
	ila	$5,159568	# 26f50
	il	$6,87	# 57
label_1934c:
	br	label_19420	# 19420
label_19350:
	ilhu	$7,16
	a	$3,$85,$81
	clgt	$6,$82,$7
	rotqmbyi	$3,$3,-4
	selb	$80,$82,$7,$6
	ori	$4,$80,0
	brsl	$0,func_19200	# 19200
	brz	$3,label_1938c	# 1938c
	ilhu	$9,45056	# b000
	shlqbyi	$7,$3,0
	ila	$5,159568	# 26f50
	ori	$4,$9,5
	ila	$3,159248	# 26e10
	il	$6,100	# 64
	br	label_193b8	# 193b8
label_1938c:
	brsl	$0,func_19270	# 19270
	ceqi	$10,$3,1
	ceqi	$2,$3,-1
	brnz	$10,label_193c4	# 193c4
	brz	$2,label_1938c	# 1938c
	ilhu	$11,45056	# b000
	fsmbi	$7,65535	# ffff
	ila	$3,159296	# 26e40
	ori	$4,$11,5
	ila	$5,159568	# 26f50
	il	$6,110	# 6e
label_193b8:
	il	$80,-2
	brsl	$0,func_19ad0	# 19ad0
	br	label_19498	# 19498
label_193c4:
	ori	$3,$83,0
	ila	$84,65535	# ffff
	brsl	$0,func_18d90	# 18d90
	andi	$12,$3,8
	and	$7,$3,$84
	brnz	$12,label_1942c	# 1942c
	sf	$82,$80,$82
	brz	$82,label_193ec	# 193ec
	a	$81,$81,$80
	br	label_19350	# 19350
label_193ec:
	ori	$3,$83,0
	brsl	$0,func_19090	# 19090
	ori	$80,$3,0
	brz	$3,label_19448	# 19448
	ori	$3,$83,0
	brsl	$0,func_18df0	# 18df0
	ilhu	$13,45056	# b000
	and	$8,$84,$3
	shlqbyi	$7,$80,0
	ori	$4,$13,6
	ila	$3,159392	# 26ea0
	ila	$5,159568	# 26f50
	il	$6,167	# a7
label_19420:
	brsl	$0,func_19ad0	# 19ad0
label_19424:
	il	$80,-1
	br	label_19498	# 19498
label_1942c:
	ilhu	$14,45056	# b000
	ila	$3,159344	# 26e70
	ori	$4,$14,6
	ila	$5,159568	# 26f50
	il	$6,118	# 76
	brsl	$0,func_19ad0	# 19ad0
	br	label_19424	# 19424
label_19448:
	bisl	$0,$86
	ceqbi	$16,$3,0
	xsbh	$15,$16
	brhnz	$15,label_19448	# 19448
	ori	$3,$83,0
	brsl	$0,func_18eb8	# 18eb8
	ori	$80,$3,0
	brz	$3,label_19498	# 19498
	ori	$3,$83,0
	brsl	$0,func_18df0	# 18df0
	hbrr	label_19494,func_19ad0	# 19ad0
	ilhu	$17,45056	# b000
	ila	$18,65535	# ffff
	shlqbyi	$7,$80,0
	ori	$4,$17,6
	and	$8,$3,$18
	ila	$5,159568	# 26f50
	ila	$3,159456	# 26ee0
	il	$6,174	# ae
label_19494:
	brsl	$0,func_19ad0	# 19ad0
label_19498:
	ori	$3,$80,0
	lqd	$0,160($1)	# a0
	hbr	label_194c4,$0
	ai	$1,$1,144	# 90
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
label_194c4:
	bi	$0
.global func_194c8
func_194c8:
	lqr	$6,data_33190	# 33190
	br	func_192b0	# 192b0
.global func_194d0
func_194d0:
	cgti	$2,$3,0
	hbrr	label_19514,label_194ec	# 194ec
	rdch	$5,$ch8
	biz	$2,$0
	sf	$3,$3,$5
	cgt	$4,$5,$3
	brz	$4,label_19518	# 19518
label_194ec:
	rdch	$14,$ch8
	cgt	$13,$14,$3
	cgt	$12,$14,$5
	nor	$11,$13,$13
	sfi	$10,$12,0
	sfi	$9,$11,0
	or	$8,$9,$10
	ceqbi	$7,$8,0
	xsbh	$6,$7
	bihz	$6,$0
label_19514:
	br	label_194ec	# 194ec
label_19518:
	hbrr	label_19540,0
	rdch	$23,$ch8
	cgt	$22,$23,$3
	cgt	$21,$23,$5
	nor	$20,$22,$22
	sfi	$19,$21,0
	sfi	$18,$20,0
	and	$17,$18,$19
	ceqbi	$16,$17,0
	xsbh	$15,$16
label_19540:
	brhnz	$15,label_19518	# 19518
	bi	$0
.global func_19548
func_19548:
	ilhu	$21,19923	# 4dd3
	lqr	$19,data_29760	# 29760
	ilhu	$20,4194	# 1062
	hbrr	label_195ac,func_194d0	# 194d0
	iohl	$21,4194	# 1062
	iohl	$20,19923	# 4dd3
	mpyu	$18,$19,$21
	mpyhhu	$17,$19,$21
	mpyu	$15,$19,$20
	mpyhhu	$13,$19,$20
	shli	$16,$18,16
	rotmi	$14,$18,-16
	shli	$9,$17,16
	rotmi	$11,$17,-16
	cg	$10,$15,$16
	a	$12,$15,$16
	addx	$10,$13,$14
	cg	$7,$12,$9
	addx	$7,$10,$11
	rotmi	$6,$7,-6
	mpyh	$5,$6,$3
	mpyh	$4,$3,$6
	mpyu	$3,$6,$3
	a	$2,$5,$4
	a	$3,$2,$3
label_195ac:
	br	func_194d0	# 194d0
.global func_195b0
func_195b0:
	ilhu	$19,56963	# de83
	lqr	$17,data_29760	# 29760
	ilhu	$18,17179	# 431b
	hbrr	label_19610,func_194d0	# 194d0
	iohl	$19,17179	# 431b
	shlqbyi	$10,$3,0
	iohl	$18,56963	# de83
	mpyu	$16,$17,$19
	mpyhhu	$15,$17,$19
	mpyu	$13,$17,$18
	mpyhhu	$7,$17,$18
	shli	$14,$16,16
	rotmi	$6,$16,-16
	shli	$9,$15,16
	rotmi	$4,$15,-16
	cg	$11,$13,$14
	a	$12,$13,$14
	addx	$11,$7,$6
	cg	$5,$12,$9
	addx	$5,$11,$4
	rotmi	$2,$5,-18
	mpyu	$3,$2,$3
	mpyh	$8,$10,$2
	a	$3,$8,$3
label_19610:
	br	func_194d0	# 194d0
	lnop
.global func_19618
func_19618:
	ilhu	$33,56963	# de83
	lqr	$31,data_29760	# 29760
	ilhu	$32,17179	# 431b
	hbrr	label_196bc,func_194d0	# 194d0
	iohl	$33,17179	# 431b
	iohl	$32,56963	# de83
	ilhu	$15,19923	# 4dd3
	ilhu	$10,4194	# 1062
	mpyu	$30,$31,$33
	mpyhhu	$29,$31,$33
	mpyu	$27,$31,$32
	mpyhhu	$25,$31,$32
	iohl	$15,4194	# 1062
	iohl	$10,19923	# 4dd3
	shli	$28,$30,16
	rotmi	$26,$30,-16
	shli	$24,$29,16
	rotmi	$22,$29,-16
	cg	$21,$27,$28
	a	$23,$27,$28
	addx	$21,$25,$26
	cg	$20,$23,$24
	addx	$20,$21,$22
	rotmi	$19,$20,-18
	mpyu	$17,$19,$3
	mpyh	$16,$3,$19
	a	$14,$16,$17
	mpyu	$13,$14,$15
	mpyhhu	$12,$14,$15
	mpyu	$11,$14,$10
	mpyhhu	$6,$14,$10
	shli	$7,$13,16
	rotmi	$4,$13,-16
	shli	$8,$12,16
	rotmi	$5,$12,-16
	cg	$2,$11,$7
	a	$9,$11,$7
	addx	$2,$6,$4
	cg	$3,$9,$8
	addx	$3,$2,$5
	rotmi	$3,$3,-6
label_196bc:
	br	func_194d0	# 194d0
.global func_196c0
func_196c0:
	il	$2,32	# 20
	hbr	label_196e8,$0
	rdch	$5,$ch11
	andi	$6,$5,-33
	wrch	$ch1,$6
	wrch	$ch2,$2
	syncc
	ori	$4,$5,32	# 20
	wrch	$ch7,$3
	wrch	$ch1,$4
label_196e8:
	bi	$0
	lnop
.global func_196f0
func_196f0:
	br	func_196c0	# 196c0
	lnop
.global func_196f8
func_196f8:
	ila	$3,209328	# 331b0
	hbr	label_1973c,$0
	lqr	$8,data_331a0	# 331a0
	cdd	$7,0($1)
	cbd	$6,0($1)
	rotqbyi	$5,$8,13
	ceqbi	$4,$5,0
	xsbh	$2,$4
	bihz	$2,$0
	lqr	$12,data_331b0	# 331b0
	il	$13,0
	lqr	$10,data_331a0	# 331a0
	il	$11,1
	shufb	$9,$13,$12,$7
	shufb	$7,$11,$10,$6
	stqr	$9,data_331b0	# 331b0
	stqr	$7,data_331a0	# 331a0
label_1973c:
	bi	$0
.global func_19740
func_19740:
	il	$6,0
	lqd	$7,0($3)
	hbrr	label_19784,label_197d0	# 197d0
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	stqd	$82,-48($1)
	rotqby	$5,$7,$3
	stqd	$1,-80($1)
	ai	$1,$1,-80
	ceq	$4,$5,$6
	gb	$3,$4
	cgti	$2,$3,11
	brz	$2,label_19788	# 19788
	il	$81,-1
label_19784:
	br	label_197d0	# 197d0
label_19788:
	lqd	$12,0($80)
	lqr	$10,data_26f70	# 26f70
	lqr	$82,data_22810	# 22810
	rotqby	$9,$12,$80
	cg	$11,$9,$10
	shufb	$3,$11,$11,$82
	addx	$3,$9,$10
	brsl	$0,func_15a8	# 15a8
	andi	$8,$3,256	# 100
	brz	$8,label_19788	# 19788
	ori	$4,$81,0
	lqd	$16,0($80)
	lqr	$14,data_26f80	# 26f80
	rotqby	$13,$16,$80
	cg	$15,$13,$14
	shufb	$3,$15,$15,$82
	addx	$3,$13,$14
	brsl	$0,func_1040	# 1040
label_197d0:
	ori	$3,$81,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_197f0
func_197f0:
	hbrr	label_1981c,label_19864	# 19864
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	il	$81,0
	stqd	$83,-64($1)
	ori	$83,$3,0
	stqd	$0,16($1)
	stqd	$82,-48($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
label_1981c:
	br	label_19864	# 19864
label_19820:
	lqx	$7,$81,$80
	rotqby	$6,$7,$82
	ceqbi	$5,$6,0
	xsbh	$4,$6
	xsbh	$2,$5
	xshw	$4,$4
	brhnz	$2,label_19860	# 19860
	brsl	$0,func_19740	# 19740
	ori	$3,$83,0
	lqx	$11,$81,$80
	il	$4,13
	rotqby	$10,$11,$82
	ceqbi	$9,$10,10
	xsbh	$8,$9
	brhz	$8,label_19860	# 19860
	brsl	$0,func_19740	# 19740
label_19860:
	ai	$81,$81,1
label_19864:
	ori	$3,$80,0
	brsl	$0,func_1fa00	# 1fa00
	a	$13,$81,$80
	clgt	$12,$3,$81
	shlqbyi	$3,$83,0
	ai	$82,$13,13
	brnz	$12,label_19820	# 19820
	il	$3,0
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
.global func_198a0
func_198a0:
	hbrr	label_19920,func_1040	# 1040
	stqd	$81,-32($1)
	lqr	$81,data_26f90	# 26f90
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$82,-48($1)
	ori	$80,$3,0
	stqd	$83,-64($1)
	ori	$82,$6,0
	stqd	$84,-80($1)
	cg	$52,$4,$81
	stqd	$85,-96($1)
	ori	$83,$9,0
	stqd	$86,-112($1)
	ori	$84,$7,0
	stqd	$87,-128($1)
	ori	$86,$8,0
label_198e4:
	hbrp
	ceqi	$84,$84,0
	stqd	$88,-144($1)
	ori	$88,$5,0
	stqd	$1,-176($1)
	ai	$1,$1,-176
	lqd	$50,0($3)
	ceqi	$83,$83,0
	lqr	$85,data_22810	# 22810
	cdd	$51,0($3)
	shufb	$49,$4,$50,$51
	shufb	$3,$52,$52,$85
	stqd	$49,0($80)
	addx	$3,$4,$81
	ila	$4,32911	# 808f
label_19920:
	brsl	$0,func_1040	# 1040
	lqd	$48,0($80)
	il	$4,142	# 8e
	rotqby	$46,$48,$80
	cg	$47,$46,$81
	shufb	$3,$47,$47,$85
	addx	$3,$46,$81
	brsl	$0,func_1040	# 1040
	andi	$45,$82,1
	hbrr	label_199ac,func_1040	# 1040
	rotmai	$43,$82,-1
	lqd	$42,0($80)
	ceqbi	$44,$45,0
	lqr	$27,data_26fa0	# 26fa0
	il	$36,16416	# 4020
	fsmbi	$35,0
	xsbh	$41,$44
	ceqi	$82,$43,0
	ceqhi	$40,$41,0
	rotqby	$26,$42,$80
	il	$38,16432	# 4030
	fsm	$37,$40
	il	$34,3
	il	$33,8
	cg	$39,$26,$27
	il	$32,4
	selb	$31,$34,$35,$83
	shufb	$3,$39,$39,$85
	andc	$29,$33,$82
	andc	$28,$32,$84
	selb	$30,$36,$38,$37
	or	$24,$28,$29
	or	$25,$30,$31
	addx	$3,$26,$27
	or	$4,$24,$25
label_199ac:
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqd	$23,0($80)
	lqr	$21,data_26fb0	# 26fb0
	rotqby	$20,$23,$80
	cg	$22,$20,$21
	shufb	$3,$22,$22,$85
	addx	$3,$20,$21
	brsl	$0,func_1040	# 1040
	ceqbi	$19,$86,0
	hbrr	label_19a18,func_1040	# 1040
	il	$7,0
	lqd	$17,0($80)
	xsbh	$18,$19
	lqr	$10,data_26fc0	# 26fc0
	il	$13,4096	# 1000
	ceqhi	$16,$18,0
	il	$12,2048	# 800
	fsm	$14,$16
	rotqby	$9,$17,$80
	selb	$11,$7,$13,$14
	cg	$15,$9,$10
	selb	$8,$7,$12,$14
	ori	$4,$11,2
	shufb	$3,$15,$15,$85
	or	$4,$8,$4
	addx	$3,$9,$10
label_19a18:
	brsl	$0,func_1040	# 1040
	hbrr	label_19a68,func_1040	# 1040
	ori	$4,$88,0
	lqd	$6,0($80)
	lqr	$5,data_26fd0	# 26fd0
	lqd	$0,192($1)	# c0
	ai	$1,$1,176	# b0
	lqd	$81,-32($1)
	rotqby	$2,$6,$80
	lqd	$82,-48($1)
	lqd	$80,-16($1)
	lqd	$83,-64($1)
	cg	$3,$2,$5
	lqd	$84,-80($1)
	lqd	$86,-112($1)
	shufb	$3,$3,$3,$85
	lqd	$87,-128($1)
	lqd	$85,-96($1)
	lqd	$88,-144($1)
	addx	$3,$2,$5
label_19a68:
	br	func_1040	# 1040
	lnop
	ori	$4,$3,0
	hbrr	label_19ab8,func_197f0	# 197f0
	ila	$3,209328	# 331b0
	lqr	$9,data_331a0	# 331a0
	cdd	$8,0($1)
	cbd	$7,0($1)
	rotqbyi	$6,$9,13
	ceqbi	$5,$6,0
	xsbh	$2,$5
	brhz	$2,label_19ab8	# 19ab8
	il	$14,0
	lqr	$13,data_331b0	# 331b0
	il	$12,1
	lqr	$11,data_331a0	# 331a0
	shufb	$10,$14,$13,$8
	shufb	$8,$12,$11,$7
	stqr	$10,data_331b0	# 331b0
	stqr	$8,data_331a0	# 331a0
label_19ab8:
	br	func_197f0	# 197f0
	lnop
.global func_19ac0
func_19ac0:
	rothi	$2,$3,8
	ila	$3,65535	# ffff
	and	$3,$3,$2
	bi	$0
.global func_19ad0
func_19ad0:
	il	$2,-1552
	hbrr	label_19c58,func_1f6d0	# 1f6d0
	stqd	$0,16($1)
	stqd	$80,-1232($1)
	stqd	$1,-1552($1)
	a	$1,$1,$2
	ai	$80,$1,64	# 40
	stqd	$9,416($1)	# 1a0
	il	$9,1184	# 4a0
	stqd	$10,432($1)	# 1b0
	ai	$10,$1,368	# 170
	stqd	$5,352($1)	# 160
	ori	$5,$3,0
	stqd	$8,400($1)	# 190
	ai	$3,$1,336	# 150
	stqd	$6,368($1)	# 170
	a	$8,$10,$9
	stqd	$11,448($1)	# 1c0
	ai	$6,$1,32	# 20
	stqd	$12,464($1)	# 1d0
	stqd	$13,480($1)	# 1e0
	stqd	$14,496($1)	# 1f0
	stqd	$15,512($1)	# 200
label_19b2c:
	hbrp
	stqd	$16,528($1)	# 210
	stqd	$17,544($1)	# 220
	stqd	$18,560($1)	# 230
	stqd	$19,576($1)	# 240
	stqd	$20,592($1)	# 250
	stqd	$21,608($1)	# 260
	stqd	$22,624($1)	# 270
	stqd	$23,640($1)	# 280
	stqd	$24,656($1)	# 290
	stqd	$25,672($1)	# 2a0
	stqd	$26,688($1)	# 2b0
	stqd	$27,704($1)	# 2c0
	stqd	$28,720($1)	# 2d0
	stqd	$29,736($1)	# 2e0
	stqd	$30,752($1)	# 2f0
	stqd	$31,768($1)	# 300
label_19b70:
	hbrp
	stqd	$32,784($1)	# 310
	stqd	$33,800($1)	# 320
	stqd	$34,816($1)	# 330
	stqd	$35,832($1)	# 340
	stqd	$36,848($1)	# 350
	stqd	$37,864($1)	# 360
	stqd	$38,880($1)	# 370
	stqd	$39,896($1)	# 380
	stqd	$40,912($1)	# 390
	stqd	$41,928($1)	# 3a0
	stqd	$42,944($1)	# 3b0
	stqd	$43,960($1)	# 3c0
	stqd	$44,976($1)	# 3d0
	stqd	$45,992($1)	# 3e0
	stqd	$46,1008($1)	# 3f0
	stqd	$47,1024($1)	# 400
label_19bb4:
	hbrp
	stqd	$48,1040($1)	# 410
	stqd	$49,1056($1)	# 420
	stqd	$50,1072($1)	# 430
	stqd	$51,1088($1)	# 440
	stqd	$52,1104($1)	# 450
	stqd	$53,1120($1)	# 460
	stqd	$54,1136($1)	# 470
	stqd	$55,1152($1)	# 480
	stqd	$56,1168($1)	# 490
	stqd	$57,1184($1)	# 4a0
	stqd	$58,1200($1)	# 4b0
	stqd	$59,1216($1)	# 4c0
	stqd	$60,1232($1)	# 4d0
	stqd	$61,1248($1)	# 4e0
	stqd	$62,1264($1)	# 4f0
	stqd	$63,1280($1)	# 500
label_19bf8:
	hbrp
	stqd	$64,1296($1)	# 510
	stqd	$65,1312($1)	# 520
	stqd	$66,1328($1)	# 530
	stqd	$67,1344($1)	# 540
	stqd	$68,1360($1)	# 550
	stqd	$69,1376($1)	# 560
	stqd	$70,1392($1)	# 570
	stqd	$71,1408($1)	# 580
	stqd	$72,1424($1)	# 590
	stqd	$73,1440($1)	# 5a0
	stqd	$74,1456($1)	# 5b0
	stqd	$75,1472($1)	# 5c0
	stqd	$76,1488($1)	# 5d0
	stqd	$77,1504($1)	# 5e0
	stqd	$78,1520($1)	# 5f0
	stqd	$79,1536($1)	# 600
label_19c3c:
	hbrp
	stqd	$8,48($1)	# 30
	stqd	$4,336($1)	# 150
	il	$4,256	# 100
	stqd	$7,384($1)	# 180
	stqd	$3,32($1)	# 20
	ori	$3,$80,0
label_19c58:
	brsl	$0,func_1f6d0	# 1f6d0
	lqd	$6,304($1)	# 130
	il	$7,0
	cbd	$5,15($1)
	ori	$3,$80,0
	shufb	$4,$7,$6,$5
	stqd	$4,304($1)	# 130
	brsl	$0,func_1bfb8	# 1bfb8
	il	$2,1552	# 610
	lqd	$0,1568($1)	# 620
	a	$1,$1,$2
	lqd	$80,-1232($1)
	bi	$0
	lnop
.global func_19c90
func_19c90:
	il	$2,-1552
	hbrr	label_19e18,func_1f6d0	# 1f6d0
	stqd	$0,16($1)
	stqd	$80,-1232($1)
	stqd	$1,-1552($1)
	a	$1,$1,$2
	ai	$80,$1,64	# 40
	stqd	$9,416($1)	# 1a0
	il	$9,1184	# 4a0
	stqd	$10,432($1)	# 1b0
	ai	$10,$1,368	# 170
	stqd	$7,384($1)	# 180
	ai	$7,$1,336	# 150
	stqd	$8,400($1)	# 190
	a	$8,$10,$9
	stqd	$6,368($1)	# 170
	ai	$6,$1,32	# 20
	stqd	$11,448($1)	# 1c0
	stqd	$12,464($1)	# 1d0
	stqd	$13,480($1)	# 1e0
	stqd	$14,496($1)	# 1f0
	stqd	$15,512($1)	# 200
	stqd	$16,528($1)	# 210
label_19cec:
	hbrp
	stqd	$17,544($1)	# 220
	stqd	$18,560($1)	# 230
	stqd	$19,576($1)	# 240
	stqd	$20,592($1)	# 250
	stqd	$21,608($1)	# 260
	stqd	$22,624($1)	# 270
	stqd	$23,640($1)	# 280
	stqd	$24,656($1)	# 290
	stqd	$25,672($1)	# 2a0
	stqd	$26,688($1)	# 2b0
	stqd	$27,704($1)	# 2c0
	stqd	$28,720($1)	# 2d0
	stqd	$29,736($1)	# 2e0
	stqd	$30,752($1)	# 2f0
	stqd	$31,768($1)	# 300
	stqd	$32,784($1)	# 310
label_19d30:
	hbrp
	stqd	$33,800($1)	# 320
	stqd	$34,816($1)	# 330
	stqd	$35,832($1)	# 340
	stqd	$36,848($1)	# 350
	stqd	$37,864($1)	# 360
	stqd	$38,880($1)	# 370
	stqd	$39,896($1)	# 380
	stqd	$40,912($1)	# 390
	stqd	$41,928($1)	# 3a0
	stqd	$42,944($1)	# 3b0
	stqd	$43,960($1)	# 3c0
	stqd	$44,976($1)	# 3d0
	stqd	$45,992($1)	# 3e0
	stqd	$46,1008($1)	# 3f0
	stqd	$47,1024($1)	# 400
	stqd	$48,1040($1)	# 410
label_19d74:
	hbrp
	stqd	$49,1056($1)	# 420
	stqd	$50,1072($1)	# 430
	stqd	$51,1088($1)	# 440
	stqd	$52,1104($1)	# 450
	stqd	$53,1120($1)	# 460
	stqd	$54,1136($1)	# 470
	stqd	$55,1152($1)	# 480
	stqd	$56,1168($1)	# 490
	stqd	$57,1184($1)	# 4a0
	stqd	$58,1200($1)	# 4b0
	stqd	$59,1216($1)	# 4c0
	stqd	$60,1232($1)	# 4d0
	stqd	$61,1248($1)	# 4e0
	stqd	$62,1264($1)	# 4f0
	stqd	$63,1280($1)	# 500
	stqd	$64,1296($1)	# 510
label_19db8:
	hbrp
	stqd	$65,1312($1)	# 520
	stqd	$66,1328($1)	# 530
	stqd	$67,1344($1)	# 540
	stqd	$68,1360($1)	# 550
	stqd	$69,1376($1)	# 560
	stqd	$70,1392($1)	# 570
	stqd	$71,1408($1)	# 580
	stqd	$72,1424($1)	# 590
	stqd	$73,1440($1)	# 5a0
	stqd	$74,1456($1)	# 5b0
	stqd	$75,1472($1)	# 5c0
	stqd	$76,1488($1)	# 5d0
	stqd	$77,1504($1)	# 5e0
	stqd	$78,1520($1)	# 5f0
	stqd	$79,1536($1)	# 600
	stqd	$8,48($1)	# 30
label_19dfc:
	hbrp
	stqd	$7,32($1)	# 20
	stqd	$4,336($1)	# 150
	il	$4,256	# 100
	stqd	$5,352($1)	# 160
	ori	$5,$3,0
	shlqbyi	$3,$80,0
label_19e18:
	brsl	$0,func_1f6d0	# 1f6d0
	lqd	$6,304($1)	# 130
	il	$3,0
	cbd	$4,15($1)
	shufb	$5,$3,$6,$4
	stqd	$5,304($1)	# 130
	brsl	$0,func_196f8	# 196f8
	ori	$4,$80,0
	brsl	$0,func_197f0	# 197f0
	lqd	$0,1568($1)	# 620
	il	$2,1552	# 610
	a	$1,$1,$2
	lqd	$80,-1232($1)
	bi	$0
.global func_19e50
func_19e50:
	il	$4,15
	hbrr	label_19e94,func_18e50	# 18e50
	stqd	$80,-16($1)
	ori	$80,$3,0
	lqr	$3,data_26d20	# 26d20
	stqd	$83,-64($1)
	lqr	$83,data_22810	# 22810
	stqd	$81,-32($1)
	stqd	$0,16($1)
	stqd	$82,-48($1)
	cg	$2,$80,$3
	stqd	$84,-80($1)
	stqd	$1,-128($1)
	shufb	$81,$2,$2,$83
	ai	$1,$1,-128
	addx	$81,$80,$3
	ori	$3,$81,0
label_19e94:
	brsl	$0,func_18e50	# 18e50
	ori	$3,$81,0
	brsl	$0,func_18d00	# 18d00
	hbrr	label_19ec4,func_18e50	# 18e50
	brhnz	$3,label_19fa4	# 19fa4
	il	$4,8
	lqr	$7,data_26d40	# 26d40
	il	$84,100	# 64
	cg	$8,$80,$7
	shufb	$82,$8,$8,$83
	addx	$82,$80,$7
	ori	$3,$82,0
label_19ec4:
	brsl	$0,func_18e50	# 18e50
	il	$4,152	# 98
	lqr	$5,data_26d80	# 26d80
	cg	$6,$80,$5
	shufb	$83,$6,$6,$83
	addx	$83,$80,$5
	ori	$3,$83,0
	brsl	$0,func_18e50	# 18e50
label_19ee4:
	ori	$3,$81,0
	ai	$84,$84,-1
	brsl	$0,func_18d00	# 18d00
	lqd	$12,32($1)	# 20
	chd	$13,0($1)
	hbrr	label_19f14,label_19f9c	# 19f9c
	shufb	$11,$3,$12,$13
	il	$3,1
	stqd	$11,32($1)	# 20
	lqd	$10,32($1)	# 20
	rotqbyi	$9,$10,14
	andi	$4,$9,8
label_19f14:
	brz	$4,label_19f9c	# 19f9c
	il	$4,8
	shlqbyi	$3,$81,0
	brsl	$0,func_18e50	# 18e50
	ori	$3,$82,0
	il	$4,4
	brsl	$0,func_18e50	# 18e50
	il	$4,0
	lqr	$14,data_26d50	# 26d50
	lqr	$16,data_22810	# 22810
	cg	$15,$80,$14
	shufb	$3,$15,$15,$16
	addx	$3,$80,$14
	brsl	$0,func_18e50	# 18e50
	ori	$3,$83,0
	il	$4,12
	brsl	$0,func_18e50	# 18e50
label_19f58:
	ori	$3,$81,0
	brsl	$0,func_18d00	# 18d00
	andi	$17,$3,4
	brz	$17,label_19f58	# 19f58
	ori	$3,$81,0
	il	$4,4
	brsl	$0,func_18e50	# 18e50
	lqr	$19,data_26d30	# 26d30
	lqr	$21,data_22810	# 22810
	cg	$20,$80,$19
	shufb	$3,$20,$20,$21
	addx	$3,$80,$19
	brsl	$0,func_18d00	# 18d00
	il	$2,0
	rothmi	$18,$3,-8
	brhz	$18,label_19fa8	# 19fa8
	br	label_19fa4	# 19fa4
label_19f9c:
	brsl	$0,func_19548	# 19548
	brnz	$84,label_19ee4	# 19ee4
label_19fa4:
	il	$2,-1
label_19fa8:
	ori	$3,$2,0
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
	lnop
.global func_19fd0
func_19fd0:
	il	$4,-3856
	hbrr	label_1a004,func_18e50	# 18e50
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$85,-96($1)
	ori	$83,$3,0
	stqd	$84,-80($1)
	il	$85,1
	stqd	$1,-128($1)
	ai	$1,$1,-128
label_1a004:
	brsl	$0,func_18e50	# 18e50
	il	$4,-26472
	fsmbi	$29,257	# 101
	lqr	$80,data_22810	# 22810
	andbi	$27,$29,-86
	cg	$28,$83,$27
	shufb	$3,$28,$28,$80
	addx	$3,$83,$27
	brsl	$0,func_18e50	# 18e50
	fsmbi	$26,257	# 101
	andbi	$24,$26,32	# 20
	cg	$25,$83,$24
	shufb	$3,$25,$25,$80
	addx	$3,$83,$24
	brsl	$0,func_18d00	# 18d00
	fsmbi	$23,257	# 101
	ori	$82,$3,0
	andbi	$21,$23,34	# 22
	cg	$22,$83,$21
	shufb	$3,$22,$22,$80
	addx	$3,$83,$21
	brsl	$0,func_18d00	# 18d00
	fsmbi	$20,257	# 101
	ori	$81,$3,0
	andbi	$7,$20,36	# 24
	cg	$19,$83,$7
	shufb	$3,$19,$19,$80
	addx	$3,$83,$7
	brsl	$0,func_18d00	# 18d00
	rothmi	$18,$81,-8
	hbrr	label_1a0fc,label_1a320	# 1a320
	rothmi	$17,$3,-8
	shlqbyi	$7,$3,0
	rothmi	$13,$82,-8
	ceqhi	$16,$18,82	# 52
	ceqhi	$15,$17,89	# 59
	nor	$14,$16,$16
	xshw	$12,$15
	xshw	$11,$14
	ceqhi	$10,$13,81	# 51
	andc	$9,$12,$11
	nor	$8,$10,$10
	ceqhi	$6,$9,0
	xshw	$5,$8
	nor	$4,$6,$6
	xshw	$3,$4
	andc	$2,$3,$5
	brhnz	$2,label_1a104	# 1a104
	andi	$42,$81,255	# ff
	andi	$41,$7,255	# ff
	fsmbi	$4,65535	# ffff
	ceqi	$40,$42,82	# 52
	ceqi	$39,$41,89	# 59
	nor	$38,$40,$40
	nor	$37,$39,$39
	andi	$36,$82,255	# ff
	or	$35,$38,$37
	ceqi	$34,$36,81	# 51
	ceqi	$33,$35,0
	nor	$32,$34,$34
	nor	$31,$33,$33
	or	$30,$32,$31
label_1a0fc:
	brnz	$30,label_1a320	# 1a320
	il	$85,0
label_1a104:
	ori	$3,$83,0
	il	$4,-3856
	brsl	$0,func_18e50	# 18e50
	il	$4,-21846
	lqr	$56,data_26fe0	# 26fe0
	lqr	$82,data_22810	# 22810
	cg	$57,$83,$56
	shufb	$81,$57,$57,$82
	addx	$81,$83,$56
	ori	$3,$81,0
	brsl	$0,func_18e50	# 18e50
	il	$4,21845	# 5555
	lqr	$54,data_26ff0	# 26ff0
	cg	$55,$83,$54
	shufb	$84,$55,$55,$82
	addx	$84,$83,$54
	ori	$3,$84,0
	brsl	$0,func_18e50	# 18e50
	ori	$3,$81,0
	il	$4,-28528
	brsl	$0,func_18e50	# 18e50
	ori	$3,$83,0
	brsl	$0,func_18d00	# 18d00
	ori	$3,$83,0
	il	$4,-3856
	brsl	$0,func_18e50	# 18e50
	ori	$3,$81,0
	il	$4,-21846
	brsl	$0,func_18e50	# 18e50
	ori	$3,$84,0
	il	$4,21845	# 5555
	brsl	$0,func_18e50	# 18e50
	il	$4,-28528
	ori	$3,$81,0
	brsl	$0,func_18e50	# 18e50
	fsmbi	$53,257	# 101
	andbi	$51,$53,2
	cg	$52,$83,$51
	shufb	$3,$52,$52,$82
	addx	$3,$83,$51
	brsl	$0,func_18d00	# 18d00
	fsmbi	$50,257	# 101
	ori	$84,$3,0
	andbi	$48,$50,28	# 1c
	cg	$49,$83,$48
	shufb	$3,$49,$49,$82
	addx	$3,$83,$48
	brsl	$0,func_18d00	# 18d00
	fsmbi	$47,257	# 101
	ori	$81,$3,0
	andbi	$45,$47,30	# 1e
	cg	$46,$83,$45
	shufb	$3,$46,$46,$82
	addx	$3,$83,$45
	brsl	$0,func_18d00	# 18d00
	il	$4,-3856
	ori	$80,$3,0
	ori	$3,$83,0
	brsl	$0,func_18e50	# 18e50
	ceqbi	$44,$85,0
	xsbh	$43,$44
	brhnz	$43,label_1a220	# 1a220
	ori	$3,$84,0
	brsl	$0,func_19ac0	# 19ac0
	ori	$84,$3,0
	ori	$3,$81,0
	brsl	$0,func_19ac0	# 19ac0
	ori	$81,$3,0
	shlqbyi	$3,$80,0
	brsl	$0,func_19ac0	# 19ac0
	ori	$80,$3,0
label_1a220:
	andi	$59,$84,255	# ff
	ceqi	$58,$59,126	# 7e
	brz	$58,label_1a280	# 1a280
	andi	$3,$81,255	# ff
	ceqi	$60,$3,2
	brz	$60,label_1a244	# 1a244
	andi	$2,$80,255	# ff
	il	$4,256	# 100
	br	label_1a26c	# 1a26c
label_1a244:
	ceqi	$61,$3,18	# 12
	brz	$61,label_1a25c	# 1a25c
	andi	$2,$80,255	# ff
	il	$4,272	# 110
	brz	$2,label_1a320	# 1a320
	br	label_1a274	# 1a274
label_1a25c:
	ceqi	$62,$3,33	# 21
	brz	$62,label_1a280	# 1a280
	andi	$2,$80,255	# ff
	il	$4,273	# 111
label_1a26c:
	ceqi	$2,$2,1
	br	label_1a27c	# 1a27c
label_1a274:
	ceqi	$2,$2,1
	il	$4,288	# 120
label_1a27c:
	brnz	$2,label_1a320	# 1a320
label_1a280:
	il	$85,9598	# 257e
	il	$83,9478	# 2506
	ceqh	$79,$84,$85
	ceqh	$78,$81,$83
	nor	$77,$79,$79
	nor	$76,$78,$78
	xshw	$75,$77
	xshw	$74,$76
	sfi	$72,$75,0
	sfi	$73,$74,0
	il	$71,9473	# 2501
	or	$70,$72,$73
	ceqh	$69,$80,$71
	ceqbi	$68,$70,0
	xshw	$65,$69
	xsbh	$67,$68
	il	$4,400	# 190
	ceqhi	$66,$67,0
	xshw	$64,$66
	andc	$63,$65,$64
	brhnz	$63,label_1a320	# 1a320
	il	$15,8830	# 227e
	il	$12,8806	# 2266
	ceqh	$14,$84,$15
	ceqh	$11,$81,$12
	nor	$13,$14,$14
	nor	$10,$11,$11
	xshw	$9,$13
	xshw	$8,$10
	sfi	$6,$9,0
	sfi	$5,$8,0
	or	$4,$6,$5
	ceqbi	$3,$4,0
	xsbh	$2,$3
	brhz	$2,label_1a31c	# 1a31c
	il	$17,8800	# 2260
	il	$4,416	# 1a0
	ceqh	$16,$80,$17
	brhnz	$16,label_1a320	# 1a320
label_1a31c:
	il	$4,417	# 1a1
label_1a320:
	ori	$3,$4,0
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	bi	$0
.global func_1a348
func_1a348:
	stqd	$80,-16($1)
	stqd	$0,16($1)
	ori	$80,$3,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	brsl	$0,func_19e50	# 19e50
	ori	$4,$3,0
	shlqbyi	$3,$80,0
	ceqi	$2,$4,-1
	brz	$2,label_1a380	# 1a380
	brsl	$0,func_19fd0	# 19fd0
	il	$5,512	# 200
	ceqi	$4,$3,-1
	selb	$4,$3,$5,$4
label_1a380:
	ori	$3,$4,0
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_1a398
func_1a398:
	ila	$3,209360	# 331d0
	hbr	label_1a3dc,$0
	lqr	$8,data_331c0	# 331c0
	cdd	$7,0($1)
	cbd	$6,0($1)
	rotqbyi	$5,$8,13
	ceqbi	$4,$5,0
	xsbh	$2,$4
	bihz	$2,$0
	lqr	$12,data_331d0	# 331d0
	il	$13,0
	lqr	$10,data_331c0	# 331c0
	il	$11,1
	shufb	$9,$13,$12,$7
	shufb	$7,$11,$10,$6
	stqr	$9,data_331d0	# 331d0
	stqr	$7,data_331c0	# 331c0
label_1a3dc:
	bi	$0
.global func_1a3e0
func_1a3e0:
	andi	$4,$4,255	# ff
	hbrr	label_1a424,label_1a3f4	# 1a3f4
	il	$7,0
	fsmbi	$6,0
	il	$8,1
label_1a3f4:
	sfi	$15,$6,0
	sfi	$13,$6,7
	rotma	$14,$4,$15
	shl	$10,$8,$13
	ai	$6,$6,1
	andi	$12,$14,1
	or	$5,$7,$10
	ceqbi	$11,$12,0
	ceqi	$2,$6,8
	xsbh	$9,$11
	ceqhi	$3,$9,0
	selb	$7,$7,$5,$3
label_1a424:
	brz	$2,label_1a3f4	# 1a3f4
	andi	$3,$7,255	# ff
	bi	$0
.global func_1a430
func_1a430:
	il	$10,0
	lqd	$11,0($3)
	il	$6,-1
	hbrr	label_1a47c,func_15a8	# 15a8
	lqr	$7,data_27010	# 27010
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$0,16($1)
	stqd	$1,-48($1)
	rotqby	$5,$11,$3
	ai	$1,$1,-48
	lqr	$3,data_22810	# 22810
	ceq	$9,$5,$10
	cg	$4,$5,$7
	gb	$8,$9
	shufb	$3,$4,$4,$3
	cgti	$2,$8,11
	brnz	$2,label_1a494	# 1a494
	addx	$3,$5,$7
label_1a47c:
	brsl	$0,func_15a8	# 15a8
	il	$6,0
	lqd	$12,0($80)
	chd	$13,0($80)
	shufb	$7,$3,$12,$13
	stqd	$7,0($80)
label_1a494:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	shlqbyi	$3,$6,0
	lqd	$80,-16($1)
	bi	$0
.global func_1a4a8
func_1a4a8:
	ila	$3,209360	# 331d0
	hbrr	label_1a4fc,func_1a430	# 1a430
	lqr	$9,data_331c0	# 331c0
	stqd	$0,16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	ai	$4,$1,32	# 20
	cdd	$8,0($1)
	rotqbyi	$6,$9,13
	cbd	$7,0($1)
	ceqbi	$5,$6,0
	xsbh	$2,$5
	brhz	$2,label_1a4fc	# 1a4fc
	lqr	$13,data_331d0	# 331d0
	il	$14,0
	lqr	$11,data_331c0	# 331c0
	il	$12,1
	shufb	$10,$14,$13,$8
	shufb	$8,$12,$11,$7
	stqr	$10,data_331d0	# 331d0
	stqr	$8,data_331c0	# 331c0
label_1a4fc:
	brsl	$0,func_1a430	# 1a430
	ila	$4,159856	# 27070
	brz	$3,label_1a51c	# 1a51c
	ila	$3,159808	# 27040
	il	$5,96	# 60
	brsl	$0,func_19ad0	# 19ad0
	il	$3,0
	br	label_1a534	# 1a534
label_1a51c:
	lqd	$16,32($1)	# 20
	ila	$15,65535	# ffff
	rotqbyi	$7,$16,14
	nand	$4,$7,$15
	rotmi	$3,$4,-5
	andi	$3,$3,1
label_1a534:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	bi	$0
.global func_1a540
func_1a540:
	il	$11,0
	lqd	$12,0($3)
	ori	$13,$4,0
	hbrr	label_1a590,func_1040	# 1040
	ila	$4,65535	# ffff
	lqr	$8,data_27000	# 27000
	il	$7,-1
	stqd	$0,16($1)
	and	$4,$4,$13
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqby	$6,$12,$3
	lqr	$3,data_22810	# 22810
	ceq	$10,$6,$11
	cg	$5,$6,$8
	gb	$9,$10
	shufb	$3,$5,$5,$3
	cgti	$2,$9,11
	brnz	$2,label_1a598	# 1a598
	addx	$3,$6,$8
label_1a590:
	brsl	$0,func_1040	# 1040
	il	$7,0
label_1a598:
	ori	$3,$7,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_1a5a8
func_1a5a8:
	nor	$4,$4,$4
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$1,-48($1)
	ai	$1,$1,-48
	shlqbyi	$80,$3,0
	brsl	$0,func_1a3e0	# 1a3e0
	lqd	$0,64($1)	# 40
	shlhi	$4,$3,8
	ai	$1,$1,48	# 30
	ori	$3,$80,0
	lqd	$80,-16($1)
	br	func_1a540	# 1a540
	lnop
.global func_1a5e0
func_1a5e0:
	ori	$10,$4,0
	hbrr	label_1a638,func_1040	# 1040
	lqr	$8,data_27020	# 27020
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$3,0
	stqd	$82,-48($1)
	ila	$81,65535	# ffff
	stqd	$83,-64($1)
	cg	$4,$4,$8
	stqd	$1,-96($1)
	ori	$82,$6,0
	lqd	$11,0($3)
	ai	$1,$1,-96
	lqr	$83,data_22810	# 22810
	cdd	$9,0($3)
	shufb	$7,$10,$11,$9
	shufb	$3,$4,$4,$83
	and	$4,$5,$81
	stqd	$7,0($80)
	addx	$3,$10,$8
label_1a638:
	brsl	$0,func_1040	# 1040
	hbrr	label_1a674,func_1040	# 1040
	and	$4,$81,$82
	lqd	$6,0($80)
	lqr	$5,data_27030	# 27030
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$81,-32($1)
	rotqby	$2,$6,$80
	lqd	$82,-48($1)
	lqd	$80,-16($1)
	cg	$3,$2,$5
	shufb	$3,$3,$3,$83
	lqd	$83,-64($1)
	addx	$3,$2,$5
label_1a674:
	br	func_1040	# 1040
	ila	$3,209360	# 331d0
	hbrr	label_1a6c8,func_1a4a8	# 1a4a8
	lqr	$8,data_331c0	# 331c0
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	cdd	$7,0($1)
	rotqbyi	$5,$8,13
	cbd	$6,0($1)
	ceqbi	$4,$5,0
	xsbh	$2,$4
	brhz	$2,label_1a6c8	# 1a6c8
	il	$13,0
	lqr	$12,data_331d0	# 331d0
	il	$11,1
	lqr	$10,data_331c0	# 331c0
	shufb	$9,$13,$12,$7
	shufb	$7,$11,$10,$6
	stqr	$9,data_331d0	# 331d0
	stqr	$7,data_331c0	# 331c0
label_1a6c8:
	brsl	$0,func_1a4a8	# 1a4a8
	lqd	$0,48($1)	# 30
	andi	$3,$3,255	# ff
	ai	$1,$1,32	# 20
	bi	$0
	lnop
.global func_1a6e0
func_1a6e0:
	ori	$6,$3,0
	fsmbi	$18,257	# 101
	il	$2,32	# 20
	lqr	$14,data_22820	# 22820
	lqr	$16,data_22810	# 22810
	hbrr	label_1a748,func_730	# 730
	andbi	$17,$18,15
	shlqbyi	$7,$3,4
	and	$13,$3,$17
	il	$3,2
	cg	$15,$13,$14
	shufb	$12,$15,$15,$16
	addx	$12,$13,$14
	shlqbyi	$9,$12,4
	ori	$11,$9,0
	lqd	$10,0($9)
	cbd	$8,0($9)
	wrch	$ch16,$11
	wrch	$ch17,$6
	wrch	$ch18,$7
	shufb	$5,$4,$10,$8
	il	$4,1
	wrch	$ch19,$4
	wrch	$ch20,$3
	stqd	$5,0($9)
	wrch	$ch21,$2
label_1a748:
	br	func_730	# 730
	lnop
.global func_1a750
func_1a750:
	il	$12,0
	lqd	$13,0($3)
	ori	$14,$4,0
	hbrr	label_1a7b0,func_1a6e0	# 1a6e0
	ori	$4,$5,0
	lqr	$9,data_270a0	# 270a0
	il	$8,-1
	lqr	$10,data_22810	# 22810
	rotqmbyi	$6,$14,-4
	stqd	$0,16($1)
	rotqby	$7,$13,$3
	stqd	$1,-32($1)
	xswd	$6,$6
	ai	$1,$1,-32
	ceq	$11,$7,$12
	cg	$3,$7,$9
	gb	$5,$11
	cgti	$2,$5,11
	shufb	$5,$3,$3,$10
	brnz	$2,label_1a7b8	# 1a7b8
	addx	$5,$7,$9
	cg	$8,$6,$5
	shufb	$3,$8,$8,$10
	addx	$3,$6,$5
label_1a7b0:
	brsl	$0,func_1a6e0	# 1a6e0
	il	$8,0
label_1a7b8:
	ori	$3,$8,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_1a7c8
func_1a7c8:
	ori	$5,$4,0
	il	$4,48	# 30
	br	func_1a750	# 1a750
	lnop
.global func_1a7d8
func_1a7d8:
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$4,0
	stqd	$0,16($1)
	ori	$81,$3,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_e510	# e510
	ori	$4,$80,0
	hbrr	label_1a834,func_1040	# 1040
	ceqbi	$7,$3,0
	lqr	$6,data_270b0	# 270b0
	lqr	$2,data_22810	# 22810
	xsbh	$3,$7
	cg	$5,$81,$6
	shufb	$2,$5,$5,$2
	brhnz	$3,label_1a838	# 1a838
	lqd	$0,80($1)	# 50
	ori	$3,$2,0
	ai	$1,$1,64	# 40
	addx	$3,$81,$6
	lqd	$80,-16($1)
	lqd	$81,-32($1)
label_1a834:
	br	func_1040	# 1040
label_1a838:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_1a850
func_1a850:
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$4,0
	stqd	$0,16($1)
	ori	$81,$3,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_e510	# e510
	ori	$4,$80,0
	hbrr	label_1a8ac,func_1040	# 1040
	ceqbi	$7,$3,0
	lqr	$6,data_270c0	# 270c0
	lqr	$2,data_22810	# 22810
	xsbh	$3,$7
	cg	$5,$81,$6
	shufb	$2,$5,$5,$2
	brhnz	$3,label_1a8b0	# 1a8b0
	lqd	$0,80($1)	# 50
	ori	$3,$2,0
	ai	$1,$1,64	# 40
	addx	$3,$81,$6
	lqd	$80,-16($1)
	lqd	$81,-32($1)
label_1a8ac:
	br	func_1040	# 1040
label_1a8b0:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_1a8c8
func_1a8c8:
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$80,$4,0
	stqd	$0,16($1)
	ori	$81,$3,0
	stqd	$1,-64($1)
	ai	$1,$1,-64
	brsl	$0,func_e510	# e510
	ori	$4,$80,0
	hbrr	label_1a924,func_1040	# 1040
	ceqbi	$7,$3,0
	lqr	$6,data_270d0	# 270d0
	lqr	$2,data_22810	# 22810
	xsbh	$3,$7
	cg	$5,$81,$6
	shufb	$2,$5,$5,$2
	brhnz	$3,label_1a928	# 1a928
	lqd	$0,80($1)	# 50
	ori	$3,$2,0
	ai	$1,$1,64	# 40
	addx	$3,$81,$6
	lqd	$80,-16($1)
	lqd	$81,-32($1)
label_1a924:
	br	func_1040	# 1040
label_1a928:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_1a940
func_1a940:
	ori	$7,$4,0
	hbrr	label_1a98c,func_1a7d8	# 1a7d8
	ceqbi	$9,$5,0
	stqd	$80,-16($1)
	ilhu	$4,256	# 100
	stqd	$81,-32($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	xsbh	$5,$9
	stqd	$1,-128($1)
	iohl	$4,1210	# 4ba
	lqd	$8,0($3)
	ai	$1,$1,-128
	cdd	$6,0($3)
	ori	$3,$7,0
	lqr	$81,data_22810	# 22810
	shufb	$2,$7,$8,$6
	stqd	$2,0($80)
	brhnz	$5,label_1aa3c	# 1aa3c
label_1a98c:
	brsl	$0,func_1a7d8	# 1a7d8
	ilhu	$4,4080	# ff0
	lqd	$35,0($80)
	rotqby	$3,$35,$80
	brsl	$0,func_1a8c8	# 1a8c8
	ilhu	$4,16
	lqd	$34,0($80)
	rotqby	$3,$34,$80
	brsl	$0,func_1a850	# 1a850
	il	$16,0
	lqd	$3,80($1)	# 50
	il	$18,3
	lqd	$33,64($1)	# 40
	il	$20,1
	cwd	$31,0($1)
	il	$14,2
	lqd	$28,48($1)	# 30
	il	$5,6
	fsmbi	$32,2056	# 808
	ai	$6,$1,48	# 30
	hbrr	label_1aa38,func_1ba08	# 1ba08
	cwd	$26,4($1)
	shufb	$25,$16,$3,$31
	andhi	$29,$32,257	# 101
	cdd	$30,0($1)
	ai	$3,$1,32	# 20
	shufb	$27,$18,$33,$31
	cwd	$22,8($1)
	shufb	$21,$16,$25,$26
	shufb	$24,$29,$28,$30
	shufb	$23,$16,$27,$26
	lqd	$4,0($80)
	cwd	$10,12($1)
	shufb	$19,$16,$24,$22
	shufb	$17,$16,$23,$22
	shufb	$15,$20,$21,$22
	shufb	$13,$18,$19,$10
	shufb	$12,$16,$17,$10
	shufb	$11,$14,$15,$10
	rotqby	$4,$4,$80
	stqd	$13,48($1)	# 30
	stqd	$12,64($1)	# 40
	stqd	$11,80($1)	# 50
label_1aa38:
	brsl	$0,func_1ba08	# 1ba08
label_1aa3c:
	lqd	$43,0($80)
	il	$4,-1
	lqr	$41,data_270e0	# 270e0
	rotqby	$40,$43,$80
	cg	$42,$40,$41
	shufb	$3,$42,$42,$81
	addx	$3,$40,$41
	brsl	$0,func_1a6e0	# 1a6e0
	lqd	$39,0($80)
	il	$4,0
	lqr	$37,data_270f0	# 270f0
	rotqby	$36,$39,$80
	cg	$38,$36,$37
	shufb	$3,$38,$38,$81
	addx	$3,$36,$37
	brsl	$0,func_1a6e0	# 1a6e0
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
.global func_1aa90
func_1aa90:
	ila	$3,209392	# 331f0
	hbr	label_1aad4,$0
	lqr	$8,data_331e0	# 331e0
	cdd	$7,0($1)
	cbd	$6,0($1)
	rotqbyi	$5,$8,13
	ceqbi	$4,$5,0
	xsbh	$2,$4
	bihz	$2,$0
	lqr	$12,data_331f0	# 331f0
	il	$13,0
	lqr	$10,data_331e0	# 331e0
	il	$11,1
	shufb	$9,$13,$12,$7
	shufb	$7,$11,$10,$6
	stqr	$9,data_331f0	# 331f0
	stqr	$7,data_331e0	# 331e0
label_1aad4:
	bi	$0
.global func_1aad8
func_1aad8:
	il	$4,0
	lqd	$17,0($3)
	il	$13,8
	cdd	$5,0($3)
	il	$8,24	# 18
	cdd	$7,8($3)
	hbr	label_1ab2c,$0
	shufb	$16,$4,$17,$5
	stqd	$16,0($3)
	lqx	$15,$3,$13
	shufb	$14,$4,$15,$7
	stqx	$14,$3,$13
	lqd	$12,16($3)
	shufb	$11,$4,$12,$5
	stqd	$11,16($3)
	lqx	$10,$3,$8
	shufb	$9,$4,$10,$7
	stqx	$9,$3,$8
	lqd	$6,32($3)	# 20
	shufb	$2,$4,$6,$5
	stqd	$2,32($3)	# 20
label_1ab2c:
	bi	$0
.global func_1ab30
func_1ab30:
	ila	$3,209424	# 33210
	hbrr	label_1ab58,func_1aad8	# 1aad8
	lqr	$6,data_33200	# 33200
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqbyi	$5,$6,13
	ceqbi	$4,$5,0
	xsbh	$2,$4
	brhz	$2,label_1ab70	# 1ab70
label_1ab58:
	brsl	$0,func_1aad8	# 1aad8
	lqr	$8,data_33200	# 33200
	il	$3,1
	cbd	$9,0($1)
	shufb	$7,$3,$8,$9
	stqr	$7,data_33200	# 33200
label_1ab70:
	ila	$3,209424	# 33210
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_1ab80
func_1ab80:
	ori	$9,$3,0
	lqd	$20,0($3)
	il	$16,24	# 18
	cdd	$11,0($3)
	il	$14,8
	cdd	$12,8($9)
	lqx	$19,$3,$16
	hbr	label_1abd8,$0
	il	$3,0
	shufb	$18,$4,$20,$11
	shufb	$17,$5,$19,$12
	stqd	$18,0($9)
	lqx	$15,$9,$14
	stqx	$17,$9,$16
	lqd	$13,32($9)	# 20
	shufb	$10,$7,$15,$12
	shufb	$4,$6,$13,$11
	stqx	$10,$9,$14
	lqd	$5,16($9)
	stqd	$4,32($9)	# 20
	shufb	$2,$8,$5,$11
	stqd	$2,16($9)
label_1abd8:
	bi	$0
	lnop
.global func_1abe0
func_1abe0:
	hbrr	label_1ac18,func_15a8	# 15a8
	lqd	$6,0($3)
	lqr	$4,data_27100	# 27100
	stqd	$81,-32($1)
	lqr	$81,data_22810	# 22810
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$0,16($1)
	rotqby	$5,$6,$3
	stqd	$1,-64($1)
	ai	$1,$1,-64
	cg	$3,$5,$4
	shufb	$3,$3,$3,$81
	addx	$3,$5,$4
label_1ac18:
	brsl	$0,func_15a8	# 15a8
	hbrr	label_1ac54,func_1040	# 1040
	andi	$2,$3,256	# 100
	fsmbi	$4,0
	andi	$5,$3,64	# 40
	brnz	$2,label_1ac7c	# 1ac7c
	lqr	$6,data_27110	# 27110
	brz	$5,label_1ac60	# 1ac60
	ilhu	$10,8448	# 2100
	lqd	$9,0($80)
	ori	$4,$10,52	# 34
	rotqby	$7,$9,$80
	cg	$8,$7,$6
	shufb	$3,$8,$8,$81
	addx	$3,$7,$6
label_1ac54:
	brsl	$0,func_1040	# 1040
	il	$4,1
	br	label_1ac7c	# 1ac7c
label_1ac60:
	ilhu	$11,45056	# b000
	shlqbyi	$6,$3,0
	ila	$5,160176	# 271b0
	ori	$4,$11,5
	ila	$3,160144	# 27190
	brsl	$0,func_1df60	# 1df60
	il	$4,-1
label_1ac7c:
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	shlqbyi	$3,$4,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_1ac98
func_1ac98:
	il	$8,0
	lqd	$9,0($3)
	ori	$17,$6,0
	stqd	$84,-80($1)
	ori	$84,$3,0
	shlqbyi	$18,$5,0
	il	$3,-11
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	rotqby	$7,$9,$84
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	stqd	$1,-176($1)
	ceq	$6,$7,$8
	ai	$1,$1,-176
	gb	$5,$6
	cgti	$2,$5,11
	brnz	$2,label_1aee4	# 1aee4
	lqd	$75,32($84)	# 20
	ai	$83,$84,8
	fsmbi	$74,257	# 101
	il	$51,0
	lqr	$82,data_22810	# 22810
	il	$67,0
	lqd	$70,0($83)
	ai	$80,$84,24	# 18
	lqd	$73,80($1)	# 50
	andbi	$81,$74,32	# 20
	lqr	$59,data_27120	# 27120
	il	$63,4
	rotqby	$66,$75,$84
	il	$5,32	# 20
	hbrr	label_1ad90,func_10858	# 10858
	cdd	$52,0($1)
	rotqby	$57,$70,$83
	cg	$71,$66,$81
	lqd	$72,64($1)	# 40
	cwd	$69,8($1)
	shufb	$58,$71,$71,$82
	shufb	$68,$59,$73,$52
	lqd	$56,0($80)
	shufb	$61,$4,$51,$52
	addx	$58,$66,$81
	ai	$4,$1,32	# 20
	cdd	$49,8($1)
	cg	$65,$57,$58
	cwd	$62,12($1)
	shufb	$60,$8,$72,$52
	shufb	$50,$65,$65,$82
	shufb	$64,$67,$68,$69
	shufb	$54,$17,$61,$62
	shufb	$53,$59,$60,$49
	addx	$50,$57,$58
	shufb	$55,$63,$64,$62
	shufb	$48,$50,$51,$52
	rotqby	$3,$56,$80
	stqd	$54,48($1)	# 30
	stqd	$55,80($1)	# 50
	shufb	$47,$18,$48,$49
	stqd	$53,64($1)	# 40
	stqd	$47,32($1)	# 20
label_1ad90:
	brsl	$0,func_10858	# 10858
	lqd	$46,0($80)
	il	$5,32	# 20
	ai	$4,$1,64	# 40
	rotqby	$44,$46,$80
	cg	$45,$44,$81
	shufb	$3,$45,$45,$82
	addx	$3,$44,$81
	brsl	$0,func_10858	# 10858
	lqd	$43,0($84)
	lqr	$41,data_27130	# 27130
	rotqby	$40,$43,$84
	cg	$42,$40,$41
	shufb	$81,$42,$42,$82
	addx	$81,$40,$41
	ori	$3,$81,0
	brsl	$0,func_15a8	# 15a8
	ori	$4,$3,65	# 41
	ori	$3,$81,0
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqd	$39,0($84)
	lqr	$37,data_27140	# 27140
	rotqby	$36,$39,$84
	cg	$38,$36,$37
	shufb	$3,$38,$38,$82
	addx	$3,$36,$37
	brsl	$0,func_1040	# 1040
	il	$4,8
	lqd	$35,0($84)
	lqr	$33,data_27150	# 27150
	rotqby	$32,$35,$84
	cg	$34,$32,$33
	shufb	$3,$34,$34,$82
	addx	$3,$32,$33
	brsl	$0,func_1040	# 1040
	il	$4,8
	lqd	$31,0($84)
	lqr	$29,data_27160	# 27160
	rotqby	$28,$31,$84
	cg	$30,$28,$29
	shufb	$3,$30,$30,$82
	addx	$3,$28,$29
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqd	$27,0($84)
	lqr	$25,data_27100	# 27100
	rotqby	$24,$27,$84
	cg	$26,$24,$25
	shufb	$3,$26,$26,$82
	addx	$3,$24,$25
	brsl	$0,func_1040	# 1040
	hbrr	label_1ae84,func_1040	# 1040
	lqd	$22,0($84)
	ilhu	$23,8192	# 2000
	lqr	$20,data_27110	# 27110
	ori	$4,$23,52	# 34
	rotqby	$19,$22,$84
	cg	$21,$19,$20
	shufb	$3,$21,$21,$82
	addx	$3,$19,$20
label_1ae84:
	brsl	$0,func_1040	# 1040
	hbrr	label_1aebc,func_1040	# 1040
	lqd	$18,0($84)
	lqr	$13,data_27170	# 27170
	lqd	$17,32($84)	# 20
	lqd	$16,0($83)
	rotqby	$12,$18,$84
	rotqby	$14,$17,$84
	rotqby	$15,$16,$83
	cg	$4,$12,$13
	shufb	$3,$4,$4,$82
	or	$80,$14,$15
	ori	$4,$80,0
	addx	$3,$12,$13
label_1aebc:
	brsl	$0,func_1040	# 1040
	lqd	$11,0($84)
	lqr	$10,data_27180	# 27180
	shlqbyi	$4,$80,4
	rotqby	$8,$11,$84
	cg	$3,$8,$10
	shufb	$3,$3,$3,$82
	addx	$3,$8,$10
	brsl	$0,func_1040	# 1040
	il	$3,0
label_1aee4:
	lqd	$0,192($1)	# c0
	ai	$1,$1,176	# b0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
	lnop
.global func_1af08
func_1af08:
	ai	$8,$3,8
	shlqbyi	$6,$5,0
	lqd	$5,16($3)
	lqd	$9,0($8)
	rotqby	$5,$5,$3
	rotqby	$2,$9,$8
	or	$4,$4,$2
	br	func_1ac98	# 1ac98
.global func_1af28
func_1af28:
	il	$7,0
	hbr	label_1af8c,$0
	ila	$3,209488	# 33250
	lqr	$6,data_33240	# 33240
	cdd	$8,0($1)
	cdd	$11,8($1)
	cwd	$10,8($1)
	cbd	$9,0($1)
	rotqbyi	$5,$6,13
	ceqbi	$4,$5,0
	xsbh	$2,$4
	bihz	$2,$0
	il	$16,1
	lqr	$18,data_33250	# 33250
	lqr	$17,data_33260	# 33260
	lqr	$15,data_33240	# 33240
	shufb	$14,$7,$18,$8
	shufb	$13,$7,$17,$8
	shufb	$12,$16,$15,$9
	il	$9,0
	shufb	$8,$7,$14,$11
	shufb	$7,$9,$13,$10
	stqr	$12,data_33240	# 33240
	stqr	$8,data_33250	# 33250
	stqr	$7,data_33260	# 33260
label_1af8c:
	bi	$0
.global func_1af90
func_1af90:
	il	$12,0
	hbr	label_1afbc,$0
	ori	$8,$3,0
	fsmbi	$11,257	# 101
	andbi	$13,$11,15
	andi	$11,$7,15
	and	$10,$6,$13
	ceq	$9,$10,$12
	gb	$3,$9
	cgti	$2,$3,11
	il	$3,-12
label_1afbc:
	biz	$2,$0
	il	$13,8
	hbr	label_1b010,$0
	il	$14,24	# 18
	cdd	$10,0($8)
	cdd	$9,8($8)
	cwd	$12,8($8)
	binz	$11,$0
	lqd	$20,0($8)
	il	$3,0
	shufb	$19,$4,$20,$10
	stqd	$19,0($8)
	lqx	$18,$8,$13
	shufb	$17,$5,$18,$9
	stqx	$17,$8,$13
	lqd	$16,16($8)
	shufb	$15,$6,$16,$10
	stqd	$15,16($8)
	lqx	$5,$8,$14
	shufb	$4,$7,$5,$12
	stqx	$4,$8,$14
label_1b010:
	bi	$0
	lnop
.global func_1b018
func_1b018:
	ori	$14,$3,0
	lqd	$13,0($3)
	il	$12,0
	hbrr	label_1b06c,func_19ad0	# 19ad0
	ilhu	$4,45056	# b000
	fsmbi	$9,514	# 202
	ila	$3,160224	# 271e0
	lqr	$6,data_22810	# 22810
	ori	$4,$4,99	# 63
	stqd	$0,16($1)
	ila	$5,160320	# 27240
	stqd	$1,-32($1)
	andbi	$9,$9,-16
	rotqby	$8,$13,$14
	ai	$1,$1,-32
	ceq	$11,$8,$12
	cg	$7,$8,$9
	gb	$10,$11
	shufb	$6,$7,$7,$6
	cgti	$2,$10,11
	brz	$2,label_1b078	# 1b078
label_1b06c:
	brsl	$0,func_19ad0	# 19ad0
	il	$3,0
	br	label_1b08c	# 1b08c
label_1b078:
	ori	$3,$6,0
	addx	$3,$8,$9
	brsl	$0,func_15a8	# 15a8
	rotmi	$3,$3,-1
	andi	$3,$3,1
label_1b08c:
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	brsl	$0,func_1af28	# 1af28
	brsl	$0,func_1b018	# 1b018
	lqd	$0,48($1)	# 30
	andi	$3,$3,255	# ff
	ai	$1,$1,32	# 20
	bi	$0
	lnop
.global func_1b0c0
func_1b0c0:
	il	$10,0
	lqd	$11,0($3)
	il	$7,-11
	hbrr	label_1b108,func_15a8	# 15a8
	fsmbi	$6,514	# 202
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	andbi	$6,$6,-16
	rotqby	$5,$11,$3
	lqr	$3,data_22810	# 22810
	ceq	$9,$5,$10
	cg	$4,$5,$6
	gb	$8,$9
	shufb	$3,$4,$4,$3
	cgti	$2,$8,11
	brnz	$2,label_1b138	# 1b138
	addx	$3,$5,$6
label_1b108:
	brsl	$0,func_15a8	# 15a8
	ilhu	$13,57351	# e007
	ilhu	$7,45056	# b000
	shlqbyi	$6,$3,0
	and	$12,$3,$13
	ori	$4,$7,5
	andi	$7,$3,1
	brz	$12,label_1b138	# 1b138
	ila	$3,160272	# 27210
	ila	$5,160352	# 27260
	brsl	$0,func_19ad0	# 19ad0
	il	$7,-1
label_1b138:
	ori	$3,$7,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_1b148
func_1b148:
	il	$10,0
	hbrr	label_1b19c,label_1b2cc	# 1b2cc
	ori	$8,$5,0
	lqd	$11,0($3)
	ai	$6,$3,8
	stqd	$80,-16($1)
	ori	$80,$3,0
	shlqbyi	$4,$4,4
	il	$7,-11
	stqd	$0,16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	rotqby	$9,$11,$3
	stqd	$83,-64($1)
	stqd	$84,-80($1)
	stqd	$1,-128($1)
	ceq	$5,$9,$10
	ai	$1,$1,-128
	gb	$3,$5
	cgti	$2,$3,11
	andi	$3,$4,127	# 7f
label_1b19c:
	brnz	$2,label_1b2cc	# 1b2cc
	ceqi	$16,$3,0
	lqd	$17,0($6)
	ilhu	$82,32768	# 8000
	hbrr	label_1b1f0,label_1b2cc	# 1b2cc
	il	$5,8
	lqr	$83,data_22810	# 22810
	or	$9,$4,$82
	cwd	$10,0($1)
	or	$8,$8,$82
	cwd	$11,4($1)
	ai	$4,$1,32	# 20
	rotqby	$7,$17,$6
	nor	$6,$16,$16
	ai	$81,$80,24	# 18
	shlqbyi	$84,$7,4
	il	$7,-12
	andi	$15,$84,127	# 7f
	ceqi	$14,$15,0
	nor	$13,$14,$14
	or	$12,$6,$13
label_1b1f0:
	brnz	$12,label_1b2cc	# 1b2cc
	lqd	$45,32($1)	# 20
	lqd	$44,16($80)
	shufb	$43,$9,$45,$10
	rotqby	$3,$44,$80
	shufb	$42,$8,$43,$11
	stqd	$42,32($1)	# 20
	brsl	$0,func_10858	# 10858
	hbrr	label_1b23c,func_1040	# 1040
	lqd	$40,0($80)
	fsmbi	$41,514	# 202
	lqd	$39,0($81)
	andbi	$36,$41,-15
	rotqby	$35,$40,$80
	rotqby	$38,$39,$81
	cg	$37,$35,$36
	or	$4,$38,$82
	shufb	$3,$37,$37,$83
	addx	$3,$35,$36
label_1b23c:
	brsl	$0,func_1040	# 1040
	hbrr	label_1b268,func_1040	# 1040
	lqd	$34,0($80)
	lqr	$30,data_271c0	# 271c0
	lqd	$33,0($81)
	rotqby	$29,$34,$80
	rotqby	$32,$33,$81
	cg	$31,$29,$30
	shufb	$3,$31,$31,$83
	or	$4,$32,$82
	addx	$3,$29,$30
label_1b268:
	brsl	$0,func_1040	# 1040
	hbrr	label_1b290,func_1040	# 1040
	il	$4,-1
	lqd	$27,0($80)
	fsmbi	$28,514	# 202
	andbi	$25,$28,-16
	rotqby	$24,$27,$80
	cg	$26,$24,$25
	shufb	$3,$26,$26,$83
	addx	$3,$24,$25
label_1b290:
	brsl	$0,func_1040	# 1040
	hbrr	label_1b2c4,func_1040	# 1040
	ilhu	$22,8191	# 1fff
	lqd	$21,0($80)
	ori	$4,$82,8
	lqr	$18,data_271d0	# 271d0
	iohl	$22,65280	# ff00
	and	$20,$84,$22
	or	$4,$20,$4
	rotqby	$8,$21,$80
	cg	$19,$8,$18
	shufb	$3,$19,$19,$83
	addx	$3,$8,$18
label_1b2c4:
	brsl	$0,func_1040	# 1040
	il	$7,0
label_1b2cc:
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	shlqbyi	$3,$7,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	bi	$0
.global func_1b2f0
func_1b2f0:
	shli	$6,$4,3
	lqr	$12,data_27280	# 27280
	lqr	$14,data_22810	# 22810
	hbrr	label_1b330,func_780	# 780
	stqd	$80,-16($1)
	ori	$80,$5,0
	rotqmbyi	$5,$6,-4
	cg	$7,$3,$12
	stqd	$0,16($1)
	shufb	$10,$7,$7,$14
	stqd	$1,-48($1)
	ai	$1,$1,-48
	addx	$10,$3,$12
	cg	$3,$5,$10
	shufb	$3,$3,$3,$14
	addx	$3,$5,$10
label_1b330:
	brsl	$0,func_780	# 780
	lqd	$76,0($80)
	il	$57,8
	rotqmbyi	$4,$3,-4
	il	$41,12
	cdd	$78,0($80)
	il	$29,20	# 14
	fsmbi	$2,514	# 202
	il	$25,24	# 18
	lqr	$15,data_27290	# 27290
	il	$22,28	# 1c
	rotqbyi	$9,$4,8
	il	$12,36	# 24
	cwd	$14,8($80)
	andbi	$75,$2,15
	fsmbi	$74,1028	# 404
	fsmbi	$70,257	# 101
	shlqbyi	$13,$9,8
	and	$73,$3,$75
	cwd	$19,0($80)
	and	$11,$3,$15
	cwd	$15,12($80)
	andbi	$71,$74,48	# 30
	shlqbyi	$65,$73,3
	andbi	$67,$70,64	# 40
	shlqbii	$77,$13,4
	and	$69,$3,$71
	shlqbii	$79,$11,4
	and	$62,$3,$67
	fsmbi	$66,257	# 101
	il	$9,40	# 28
	shlqbii	$68,$69,4
	il	$11,44	# 2c
	shufb	$72,$77,$76,$78
	shlqbyi	$49,$79,2
	rotqmbii	$55,$62,-6
	andbi	$63,$66,48	# 30
	shlqbyi	$36,$68,1
	stqd	$72,0($80)
	lqx	$64,$80,$57
	and	$60,$3,$63
	cwd	$20,4($80)
	shlqbyi	$32,$55,4
	shlqbii	$59,$60,4
	fsmbi	$61,2056	# 808
	fsmbi	$54,1028	# 404
	shufb	$58,$65,$64,$14
	shlqbyi	$28,$59,3
	andhi	$56,$61,257	# 101
	fsmbi	$52,257	# 101
	andbi	$51,$54,-64
	fsmbi	$43,257	# 101
	and	$53,$3,$56
	stqx	$58,$80,$57
	and	$47,$3,$51
	lqx	$48,$80,$41
	andbi	$50,$52,-128
	rotqmbyi	$45,$53,-3
	andbi	$40,$43,8
	shlqbii	$46,$47,2
	and	$44,$3,$50
	shlqbyi	$37,$3,4
	and	$38,$3,$40
	shlqbyi	$24,$45,4
	shufb	$42,$49,$48,$15
	shlqbyi	$8,$46,1
	andi	$13,$37,7
	rotqmbii	$39,$44,-7
	rotqmbii	$34,$38,-3
	stqx	$42,$80,$41
	lqd	$35,16($80)
	shlqbyi	$18,$39,4
	shlqbyi	$10,$34,4
	shufb	$33,$36,$35,$19
	stqd	$33,16($80)
	lqx	$31,$80,$29
	shufb	$30,$32,$31,$20
	stqx	$30,$80,$29
	lqx	$27,$80,$25
	shufb	$26,$28,$27,$14
	stqx	$26,$80,$25
	lqx	$23,$80,$22
	shufb	$21,$24,$23,$15
	stqx	$21,$80,$22
	lqd	$17,32($80)	# 20
	shufb	$16,$8,$17,$19
	stqd	$16,32($80)	# 20
	lqx	$7,$80,$12
	shufb	$6,$18,$7,$20
	stqx	$6,$80,$12
	lqx	$5,$80,$9
	shufb	$4,$10,$5,$14
	stqx	$4,$80,$9
	lqx	$3,$80,$11
	shufb	$2,$13,$3,$15
	stqx	$2,$80,$11
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	lqd	$80,-16($1)
	bi	$0
.global func_1b4c0
func_1b4c0:
	ai	$77,$5,8
	lqd	$78,0($5)
	ai	$75,$5,12
	lqd	$79,16($5)
	ai	$73,$5,20	# 14
	lqd	$76,0($77)
	ai	$70,$5,24	# 18
	lqd	$74,0($75)
	ai	$65,$5,28	# 1c
	lqd	$72,0($73)
	ai	$61,$5,36	# 24
	lqd	$69,0($70)
	ai	$52,$5,40	# 28
	rotqby	$67,$78,$5
	ai	$38,$5,44	# 2c
	lqd	$64,0($65)
	shli	$47,$4,3
	lqd	$58,32($5)	# 20
	rotqby	$71,$76,$77
	lqd	$60,0($61)
	rotqby	$68,$79,$5
	rotqby	$66,$74,$75
	shli	$62,$71,8
	rotqby	$63,$72,$73
	lqd	$51,0($52)
	rotqmbii	$46,$67,-4
	shli	$56,$68,20	# 14
	lqr	$30,data_27280	# 27280
	shli	$55,$66,12
	rotqby	$59,$69,$70
	shli	$54,$63,6
	rotqby	$57,$64,$65
	rotqby	$53,$58,$5
	lqr	$18,data_22810	# 22810
	shli	$49,$59,4
	rotqby	$50,$60,$61
	shli	$48,$57,24	# 18
	lqd	$37,0($38)
	cg	$42,$3,$30
	rotqbyi	$45,$46,8
	shli	$44,$53,22	# 16
	hbrr	label_1b60c,func_eb98	# eb98
	shli	$40,$50,7
	rotqmbyi	$41,$62,-4
	rotqby	$43,$51,$52
	rotqmbyi	$39,$56,-4
	rotqmbyi	$33,$55,-4
	rotqmbyi	$31,$54,-4
	xswd	$36,$41
	shlqbyi	$35,$45,12
	shli	$32,$43,3
	rotqmbyi	$25,$49,-4
	xswd	$28,$39
	rotqmbyi	$24,$48,-4
	xswd	$29,$33
	shufb	$5,$42,$42,$18
	xswd	$27,$31
	rotqby	$34,$37,$38
	or	$26,$35,$36
	rotqmbyi	$4,$47,-4
	or	$22,$28,$29
	rotqmbyi	$20,$44,-4
	addx	$5,$3,$30
	rotqmbyi	$19,$40,-4
	or	$16,$26,$27
	rotqmbyi	$12,$34,-4
	xswd	$23,$25
	rotqmbyi	$17,$32,-4
	xswd	$21,$24
	cg	$3,$4,$5
	or	$14,$22,$23
	or	$13,$16,$21
	xswd	$15,$20
	shufb	$3,$3,$3,$18
	xswd	$11,$19
	or	$10,$14,$15
	or	$8,$13,$11
	xswd	$9,$17
	xswd	$7,$12
	or	$6,$10,$9
	or	$2,$8,$7
	addx	$3,$4,$5
	or	$4,$6,$2
label_1b60c:
	br	func_eb98	# eb98
.global func_1b610
func_1b610:
	shli	$2,$4,5
	hbrr	label_1b66c,func_15a8	# 15a8
	clgti	$4,$4,3
	stqd	$83,-64($1)
	lqr	$6,data_272a0	# 272a0
	lqr	$83,data_22810	# 22810
	stqd	$82,-48($1)
	cwd	$82,8($5)
	stqd	$81,-32($1)
	stqd	$0,16($1)
	ori	$81,$5,0
	stqd	$80,-16($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
	brnz	$4,label_1b7ac	# 1b7ac
	rotqmbyi	$66,$2,-4
	xswd	$64,$66
	cg	$65,$3,$64
	shufb	$80,$65,$65,$83
	addx	$80,$3,$64
	cg	$63,$80,$6
	shufb	$3,$63,$63,$83
	addx	$3,$80,$6
label_1b66c:
	brsl	$0,func_15a8	# 15a8
	il	$50,8
	fsmbi	$61,257	# 101
	andi	$62,$3,31	# 1f
	lqr	$59,data_22830	# 22830
	hbrr	label_1b6b8,func_15a8	# 15a8
	rotqmbyi	$56,$62,-4
	andbi	$55,$61,12
	lqr	$57,data_272b0	# 272b0
	lqx	$52,$81,$50
	bg	$58,$56,$55
	shufb	$54,$58,$58,$59
	cg	$60,$80,$57
	shufb	$3,$60,$60,$83
	sfx	$54,$56,$55
	shlqbyi	$53,$54,4
	addx	$3,$80,$57
	shufb	$51,$53,$52,$82
	stqx	$51,$81,$50
label_1b6b8:
	brsl	$0,func_15a8	# 15a8
	il	$39,28	# 1c
	ilhu	$49,256	# 100
	cwd	$11,12($81)
	il	$37,12
	lqx	$44,$81,$39
	il	$48,16128	# 3f00
	cwd	$32,4($81)
	and	$47,$3,$49
	lqx	$41,$81,$37
	and	$46,$3,$48
	cwd	$16,0($81)
	rotmi	$45,$47,-24
	fsmbi	$8,0
	rotmi	$42,$46,-8
	hbrr	label_1b794,func_15a8	# 15a8
	il	$28,20	# 14
	lqr	$23,data_27270	# 27270
	andi	$43,$3,2
	shufb	$40,$45,$44,$11
	rotmi	$34,$43,-1
	shufb	$38,$42,$41,$11
	il	$26,36	# 24
	andi	$36,$3,4
	il	$18,40	# 28
	stqx	$40,$81,$39
	rotmi	$31,$36,-2
	stqx	$38,$81,$37
	il	$17,24	# 18
	lqx	$33,$81,$28
	andi	$22,$3,1
	lqx	$30,$81,$26
	il	$14,44	# 2c
	cg	$25,$80,$23
	shufb	$3,$25,$25,$83
	shufb	$29,$34,$33,$32
	shufb	$27,$31,$30,$32
	addx	$3,$80,$23
	stqx	$29,$81,$28
	lqd	$24,16($81)
	stqx	$27,$81,$26
	lqx	$21,$81,$18
	shufb	$20,$8,$24,$16
	shufb	$19,$22,$21,$82
	stqd	$20,16($81)
	lqx	$15,$81,$17
	stqx	$19,$81,$18
	shufb	$13,$8,$15,$82
	stqx	$13,$81,$17
	lqd	$12,32($81)	# 20
	shufb	$10,$8,$12,$16
	stqd	$10,32($81)	# 20
	lqx	$9,$81,$14
	shufb	$7,$8,$9,$11
	stqx	$7,$81,$14
label_1b794:
	brsl	$0,func_15a8	# 15a8
	lqd	$5,0($81)
	rotqmbyi	$3,$3,-4
	cdd	$6,0($81)
	shufb	$2,$3,$5,$6
	stqd	$2,0($81)
label_1b7ac:
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
.global func_1b7c8
func_1b7c8:
	hbrr	label_1b7f0,func_e510	# e510
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	ori	$81,$5,0
	stqd	$82,-48($1)
	ori	$82,$6,0
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
label_1b7f0:
	brsl	$0,func_e510	# e510
	hbrr	label_1b824,func_1b2f0	# 1b2f0
	ceqbi	$6,$3,0
	shlqbyi	$4,$81,0
	ori	$5,$82,0
	shlqbyi	$3,$80,0
	xsbh	$2,$6
	brhnz	$2,label_1b828	# 1b828
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
label_1b824:
	br	func_1b2f0	# 1b2f0
label_1b828:
	hbrr	label_1b84c,func_1b610	# 1b610
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	shlqbyi	$3,$80,0
	ori	$4,$81,0
	shlqbyi	$5,$82,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
label_1b84c:
	br	func_1b610	# 1b610
.global func_1b850
func_1b850:
	ori	$6,$3,0
	hbrr	label_1b8dc,func_1040	# 1040
	stqd	$83,-64($1)
	ori	$83,$4,0
	shli	$4,$4,5
	stqd	$84,-80($1)
	clgti	$2,$83,3
	lqr	$84,data_22810	# 22810
	lqr	$7,data_272a0	# 272a0
	stqd	$82,-48($1)
	ori	$82,$5,0
	rotqmbyi	$3,$4,-4
	ai	$5,$5,8
	stqd	$85,-96($1)
	ai	$85,$82,4
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$1,-128($1)
	ai	$1,$1,-128
	brnz	$2,label_1b9e4	# 1b9e4
	xswd	$32,$3
	lqd	$38,0($5)
	cg	$36,$6,$32
	lqd	$35,0($82)
	shufb	$81,$36,$36,$84
	rotqby	$37,$38,$5
	addx	$81,$6,$32
	rotqby	$34,$35,$85
	cg	$31,$81,$7
	sfi	$33,$37,12
	shufb	$80,$31,$31,$84
	or	$4,$33,$34
	addx	$80,$81,$7
	ori	$3,$80,0
label_1b8dc:
	brsl	$0,func_1040	# 1040
	ori	$3,$80,0
	brsl	$0,func_15a8	# 15a8
	ori	$4,$83,0
	ori	$5,$3,0
	ila	$3,160448	# 272c0
	brsl	$0,func_1dc30	# 1dc30
	ai	$30,$82,28	# 1c
	hbrr	label_1b96c,func_1040	# 1040
	ai	$28,$82,12
	lqr	$11,data_272b0	# 272b0
	ai	$24,$82,36	# 24
	lqd	$29,0($30)
	ai	$22,$82,20	# 14
	lqd	$27,0($28)
	ai	$10,$82,40	# 28
	lqd	$23,0($24)
	lqd	$21,0($22)
	lqd	$15,0($10)
	cg	$18,$81,$11
	rotqby	$26,$29,$30
	rotqby	$25,$27,$28
	rotqby	$20,$23,$24
	rotqby	$19,$21,$22
	shli	$16,$26,24	# 18
	shli	$17,$25,8
	shufb	$80,$18,$18,$84
	shli	$14,$20,2
	rotqby	$12,$15,$10
	a	$13,$19,$19
	or	$9,$16,$17
	addx	$80,$81,$11
	or	$8,$13,$14
	or	$7,$9,$12
	shlqbyi	$3,$80,0
	or	$4,$8,$7
label_1b96c:
	brsl	$0,func_1040	# 1040
	ori	$3,$80,0
	brsl	$0,func_15a8	# 15a8
	ori	$4,$83,0
	ori	$5,$3,0
	ila	$3,160480	# 272e0
	brsl	$0,func_1dc30	# 1dc30
	lqr	$3,data_27270	# 27270
	lqd	$5,0($82)
	cg	$6,$81,$3
	rotqby	$4,$5,$85
	shufb	$80,$6,$6,$84
	addx	$80,$81,$3
	ori	$3,$80,0
	brsl	$0,func_1040	# 1040
	ori	$3,$80,0
	brsl	$0,func_15a8	# 15a8
	ori	$4,$83,0
	hbrr	label_1b9e0,func_1dc30	# 1dc30
	ori	$5,$3,0
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	ila	$3,160512	# 27300
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
label_1b9e0:
	br	func_1dc30	# 1dc30
label_1b9e4:
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	bi	$0
.global func_1ba08
func_1ba08:
	hbrr	label_1ba30,func_e510	# e510
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	ori	$81,$5,0
	stqd	$82,-48($1)
	ori	$82,$6,0
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
label_1ba30:
	brsl	$0,func_e510	# e510
	hbrr	label_1ba64,func_1b4c0	# 1b4c0
	ceqbi	$6,$3,0
	shlqbyi	$4,$81,0
	ori	$5,$82,0
	shlqbyi	$3,$80,0
	xsbh	$2,$6
	brhnz	$2,label_1ba68	# 1ba68
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
label_1ba64:
	br	func_1b4c0	# 1b4c0
label_1ba68:
	hbrr	label_1ba8c,func_1b850	# 1b850
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	shlqbyi	$3,$80,0
	ori	$4,$81,0
	shlqbyi	$5,$82,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
label_1ba8c:
	br	func_1b850	# 1b850
.global func_1ba90
func_1ba90:
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$6,0
	stqd	$81,-32($1)
	il	$6,0
	stqd	$82,-48($1)
	ori	$81,$3,0
	stqd	$1,-128($1)
	ai	$1,$1,-128
	hbrr	label_1bad8,func_1ced0	# 1ced0
	lqd	$10,32($1)	# 20
	chd	$9,0($1)
	cbd	$8,0($1)
	cbd	$3,1($1)
	shufb	$7,$6,$10,$9
	shufb	$2,$4,$7,$8
	shufb	$5,$5,$2,$3
	stqd	$5,32($1)	# 20
label_1bad8:
	brsl	$0,func_1ced0	# 1ced0
	ai	$5,$1,32	# 20
	il	$4,18	# 12
	fsmbi	$10,0
	il	$6,2
	ai	$7,$1,64	# 40
	il	$8,16
	ai	$9,$1,48	# 30
	brsl	$0,func_1cc70	# 1cc70
	ai	$4,$1,68	# 44
	ori	$82,$3,0
	shlqbyi	$3,$81,0
	il	$5,4
	brsl	$0,func_1f8a0	# 1f8a0
	ceqbi	$4,$80,0
	cwd	$11,0($81)
	ilhu	$2,34079	# 851f
	ilhu	$3,20971	# 51eb
	xsbh	$80,$4
	iohl	$2,20971	# 51eb
	iohl	$3,34079	# 851f
	brhnz	$80,label_1bb80	# 1bb80
	lqd	$28,0($81)
	hbrr	label_1bb80,label_1bbe4	# 1bbe4
	rotqby	$15,$28,$81
	mpyu	$27,$15,$2
	mpyhhu	$26,$15,$2
	mpyu	$24,$15,$3
	mpyhhu	$22,$15,$3
	shli	$25,$27,16
	rotmi	$23,$27,-16
	shli	$21,$26,16
	rotmi	$19,$26,-16
	cg	$18,$24,$25
	a	$20,$24,$25
	addx	$18,$22,$23
	cg	$17,$20,$21
	addx	$17,$18,$19
	rotmi	$16,$17,-7
	sf	$14,$16,$15
	shufb	$12,$14,$28,$11
	stqd	$12,0($81)
label_1bb80:
	brnz	$82,label_1bbe4	# 1bbe4
	hbrr	label_1bbd4,label_1bbe0	# 1bbe0
	lqd	$31,64($1)	# 40
	rotqbyi	$5,$31,14
	ceqbi	$30,$5,1
	clgtbi	$29,$5,0
	xsbh	$11,$30
	xsbh	$4,$29
	brhnz	$11,label_1bbd8	# 1bbd8
	ceqbi	$3,$5,-2
	brhz	$4,label_1bbe4	# 1bbe4
	xsbh	$37,$3
	ceqbi	$38,$5,2
	ceqhi	$36,$37,0
	ilhu	$34,65534	# fffe
	fsm	$33,$36
	il	$35,-10003
	iohl	$34,31073	# 7961
	xsbh	$32,$38
	selb	$82,$35,$34,$33
	brhz	$32,label_1bbe4	# 1bbe4
label_1bbd4:
	br	label_1bbe0	# 1bbe0
label_1bbd8:
	il	$82,-10001
	br	label_1bbe4	# 1bbe4
label_1bbe0:
	il	$82,-10002
label_1bbe4:
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	shlqbyi	$3,$82,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_1bc00
func_1bc00:
	ori	$6,$4,0
	il	$5,16
	il	$4,3
	br	func_1ba90	# 1ba90
.global func_1bc10
func_1bc10:
	il	$7,0
	hbrr	label_1bc48,func_1ced0	# 1ced0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$81,-32($1)
	stqd	$1,-240($1)
	ai	$1,$1,-240
	lqd	$8,32($1)	# 20
	cbd	$9,0($1)
	cbd	$3,1($1)
	shufb	$4,$7,$8,$9
	shufb	$5,$7,$4,$3
	stqd	$5,32($1)	# 20
label_1bc48:
	brsl	$0,func_1ced0	# 1ced0
	il	$6,2
	ai	$5,$1,32	# 20
	fsmbi	$10,0
	il	$4,18	# 12
	ai	$7,$1,64	# 40
	il	$8,132	# 84
	ai	$9,$1,48	# 30
	brsl	$0,func_1cc70	# 1cc70
	hbrr	label_1bc90,label_1bcfc	# 1bcfc
	il	$5,128	# 80
	lqd	$6,48($1)	# 30
	ori	$81,$3,0
	shlqbyi	$3,$80,0
	ai	$4,$1,68	# 44
	ceqi	$2,$6,132	# 84
	brnz	$2,label_1bc94	# 1bc94
	il	$81,-7
label_1bc90:
	br	label_1bcfc	# 1bcfc
label_1bc94:
	brsl	$0,func_1f8a0	# 1f8a0
	brnz	$81,label_1bcfc	# 1bcfc
	hbrr	label_1bcec,label_1bcf8	# 1bcf8
	lqd	$13,64($1)	# 40
	rotqbyi	$5,$13,14
	ceqbi	$12,$5,1
	clgtbi	$11,$5,0
	xsbh	$10,$12
	xsbh	$4,$11
	brhnz	$10,label_1bcf0	# 1bcf0
	ceqbi	$3,$5,-2
	brhz	$4,label_1bcfc	# 1bcfc
	xsbh	$19,$3
	ceqbi	$20,$5,2
	ceqhi	$18,$19,0
	ilhu	$16,65534	# fffe
	fsm	$15,$18
	il	$17,-10003
	iohl	$16,31073	# 7961
	xsbh	$14,$20
	selb	$81,$17,$16,$15
	brhz	$14,label_1bcfc	# 1bcfc
label_1bcec:
	br	label_1bcf8	# 1bcf8
label_1bcf0:
	il	$81,-10001
	br	label_1bcfc	# 1bcfc
label_1bcf8:
	il	$81,-10002
label_1bcfc:
	lqd	$0,256($1)	# 100
	ai	$1,$1,240	# f0
	shlqbyi	$3,$81,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	bi	$0
	lnop
.global func_1bd18
func_1bd18:
	il	$18,2
	hbrr	label_1bd50,func_1ced0	# 1ced0
	il	$14,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
	shlqbyi	$80,$3,0
	lqd	$17,32($1)	# 20
	cbd	$19,0($1)
	cbd	$16,1($1)
	shufb	$15,$18,$17,$19
	shufb	$8,$14,$15,$16
	stqd	$8,32($1)	# 20
label_1bd50:
	brsl	$0,func_1ced0	# 1ced0
	il	$4,18	# 12
	ai	$5,$1,32	# 20
	fsmbi	$10,0
	il	$6,2
	ai	$7,$1,64	# 40
	il	$8,16
	ai	$9,$1,48	# 30
	brsl	$0,func_1cc70	# 1cc70
	lqd	$13,64($1)	# 40
	il	$8,-10001
	lqd	$10,0($80)
	cwd	$6,0($80)
	rotqbyi	$12,$13,1
	rotqbyi	$7,$13,14
	andi	$2,$12,255	# ff
	ceqbi	$9,$7,1
	shufb	$5,$2,$10,$6
	clgtbi	$4,$7,0
	xsbh	$3,$9
	xsbh	$4,$4
	stqd	$5,0($80)
	brhnz	$3,label_1bde4	# 1bde4
	ceqbi	$23,$7,-2
	ceqbi	$21,$7,2
	fsmbi	$8,0
	xsbh	$22,$23
	ilhu	$5,65534	# fffe
	ceqhi	$20,$22,0
	iohl	$5,31073	# 7961
	xsbh	$3,$21
	fsm	$6,$20
	brhz	$4,label_1bde4	# 1bde4
	il	$24,-10003
	selb	$8,$24,$5,$6
	brhz	$3,label_1bde4	# 1bde4
	il	$8,-10002
label_1bde4:
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	shlqbyi	$3,$8,0
	lqd	$80,-16($1)
	bi	$0
.global func_1bdf8
func_1bdf8:
	il	$9,0
	stqd	$0,16($1)
	or	$8,$3,$4
	stqd	$1,-80($1)
	ai	$1,$1,-80
	hbrr	label_1be38,func_1ced0	# 1ced0
	il	$6,1
	lqd	$11,32($1)	# 20
	chd	$12,0($1)
	cbd	$7,2($1)
	cbd	$4,1($1)
	shufb	$10,$9,$11,$12
	shufb	$5,$9,$10,$7
	shufb	$2,$6,$5,$4
	shufb	$3,$8,$2,$7
	stqd	$3,32($1)	# 20
label_1be38:
	brsl	$0,func_1ced0	# 1ced0
	il	$4,18	# 12
	ai	$5,$1,32	# 20
	fsmbi	$10,0
	il	$6,3
	ai	$7,$1,48	# 30
	il	$8,4
	ai	$9,$1,64	# 40
	brsl	$0,func_1cc70	# 1cc70
	ori	$4,$3,0
	brnz	$3,label_1bec4	# 1bec4
	hbrr	label_1beb4,label_1bec0	# 1bec0
	lqd	$16,48($1)	# 30
	rotqbyi	$5,$16,14
	ceqbi	$15,$5,1
	clgtbi	$14,$5,0
	xsbh	$13,$15
	xsbh	$6,$14
	brhnz	$13,label_1beb8	# 1beb8
	ceqbi	$3,$5,-2
	brhz	$6,label_1bec4	# 1bec4
	xsbh	$22,$3
	ceqbi	$23,$5,2
	ceqhi	$21,$22,0
	ilhu	$18,65534	# fffe
	fsm	$19,$21
	il	$20,-10003
	iohl	$18,31073	# 7961
	xsbh	$17,$23
	selb	$4,$20,$18,$19
	brhz	$17,label_1bec4	# 1bec4
label_1beb4:
	br	label_1bec0	# 1bec0
label_1beb8:
	il	$4,-10001
	br	label_1bec4	# 1bec4
label_1bec0:
	il	$4,-10002
label_1bec4:
	lqd	$0,96($1)	# 60
	ori	$3,$4,0
	ai	$1,$1,80	# 50
	bi	$0
	lnop
.global func_1bed8
func_1bed8:
	il	$11,0
	stqd	$0,16($1)
	il	$6,2
	stqd	$1,-80($1)
	ai	$1,$1,-80
	hbrr	label_1bf18,func_1ced0	# 1ced0
	lqd	$10,32($1)	# 20
	cwd	$12,0($1)
	cbd	$7,1($1)
	cbd	$8,2($1)
	cbd	$9,3($1)
	shufb	$5,$11,$10,$12
	shufb	$2,$6,$5,$7
	shufb	$3,$3,$2,$8
	shufb	$4,$4,$3,$9
	stqd	$4,32($1)	# 20
label_1bf18:
	brsl	$0,func_1ced0	# 1ced0
	il	$4,18	# 12
	ai	$5,$1,32	# 20
	fsmbi	$10,0
	il	$6,4
	ai	$7,$1,48	# 30
	il	$8,4
	ai	$9,$1,64	# 40
	brsl	$0,func_1cc70	# 1cc70
	ori	$4,$3,0
	brnz	$3,label_1bfa4	# 1bfa4
	hbrr	label_1bf94,label_1bfa0	# 1bfa0
	lqd	$16,48($1)	# 30
	rotqbyi	$5,$16,14
	ceqbi	$15,$5,1
	clgtbi	$14,$5,0
	xsbh	$13,$15
	xsbh	$6,$14
	brhnz	$13,label_1bf98	# 1bf98
	ceqbi	$3,$5,-2
	brhz	$6,label_1bfa4	# 1bfa4
	xsbh	$22,$3
	ceqbi	$23,$5,2
	ceqhi	$21,$22,0
	ilhu	$18,65534	# fffe
	fsm	$19,$21
	il	$20,-10003
	iohl	$18,31073	# 7961
	xsbh	$17,$23
	selb	$4,$20,$18,$19
	brhz	$17,label_1bfa4	# 1bfa4
label_1bf94:
	br	label_1bfa0	# 1bfa0
label_1bf98:
	il	$4,-10001
	br	label_1bfa4	# 1bfa4
label_1bfa0:
	il	$4,-10002
label_1bfa4:
	lqd	$0,96($1)	# 60
	ori	$3,$4,0
	ai	$1,$1,80	# 50
	bi	$0
	lnop
.global func_1bfb8
func_1bfb8:
	ori	$6,$3,0
	hbrr	label_1bfec,label_1c00c	# 1c00c
	il	$3,0
	stqd	$80,-16($1)
	ila	$5,209520	# 33270
	lqr	$7,data_33270	# 33270
	il	$80,1
	stqd	$0,16($1)
	stqd	$1,-64($1)
	ai	$1,$1,-64
	cbd	$4,0($1)
	shufb	$2,$3,$7,$4
	stqr	$2,data_33270	# 33270
label_1bfec:
	br	label_1c00c	# 1c00c
label_1bff0:
	hbrr	label_1c030,0
	lqx	$10,$80,$5
	shufb	$9,$3,$10,$4
	stqx	$9,$80,$5
	ai	$80,$80,1
	ceqi	$8,$80,257	# 101
	brnz	$8,label_1c034	# 1c034
label_1c00c:
	a	$17,$6,$80
	cbx	$4,$80,$5
	ai	$16,$17,-1
	ai	$15,$17,12
	lqd	$14,0($16)
	rotqby	$13,$14,$15
	ceqbi	$12,$13,0
	ori	$3,$13,0
	xsbh	$11,$12
label_1c030:
	brhz	$11,label_1bff0	# 1bff0
label_1c034:
	brsl	$0,func_1ced0	# 1ced0
	ila	$5,209520	# 33270
	shlqbyi	$6,$80,0
	ai	$9,$1,32	# 20
	fsmbi	$10,0
	il	$4,32	# 20
	shlqbyi	$7,$5,0
	il	$8,257	# 101
	brsl	$0,func_1cc70	# 1cc70
	il	$3,0
	lqd	$0,80($1)	# 50
	ai	$1,$1,64	# 40
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_1c070
func_1c070:
	ai	$2,$3,12
	lqd	$3,0($2)
	rotqby	$3,$3,$2
	bi	$0
.global func_1c080
func_1c080:
	il	$6,8
	cbd	$5,8($3)
	lqx	$7,$3,$6
	shufb	$2,$4,$7,$5
	stqx	$2,$3,$6
	bi	$0
.global func_1c098
func_1c098:
	ori	$11,$4,0
	lqd	$8,0($6)
	il	$3,0
	chd	$4,0($6)
	il	$7,0
	shufb	$2,$3,$8,$4
	stqd	$2,0($6)
	br	label_1c0e0	# 1c0e0
label_1c0b8:
	hbrr	label_1c0f4,0
	lqx	$18,$7,$11
	ai	$7,$7,1
	lqd	$16,0($6)
	rotqby	$17,$18,$8
	rotqby	$14,$16,$9
	andi	$15,$17,255	# ff
	ah	$13,$14,$15
	shufb	$9,$13,$16,$10
	stqd	$9,0($6)
label_1c0e0:
	a	$20,$7,$11
	chd	$10,0($6)
	ceq	$19,$7,$5
	ai	$9,$6,14
	ai	$8,$20,13
label_1c0f4:
	brz	$19,label_1c0b8	# 1c0b8
	il	$3,0
	bi	$0
.global func_1c100
func_1c100:
	ori	$11,$4,0
	lqd	$8,0($6)
	il	$3,0
	chd	$4,0($6)
	il	$7,0
	shufb	$2,$3,$8,$4
	stqd	$2,0($6)
	br	label_1c148	# 1c148
label_1c120:
	hbrr	label_1c15c,0
	lqx	$18,$7,$11
	ai	$7,$7,1
	lqd	$16,0($6)
	rotqby	$17,$18,$8
	rotqby	$14,$16,$9
	andi	$15,$17,255	# ff
	sfh	$13,$15,$14
	shufb	$9,$13,$16,$10
	stqd	$9,0($6)
label_1c148:
	a	$20,$7,$11
	chd	$10,0($6)
	ceq	$19,$7,$5
	ai	$9,$6,14
	ai	$8,$20,13
label_1c15c:
	brz	$19,label_1c120	# 1c120
	il	$3,0
	bi	$0
.global func_1c168
func_1c168:
	lqd	$6,0($3)
	lqr	$5,data_27320	# 27320
	lqr	$4,data_22810	# 22810
	rotqby	$2,$6,$3
	cg	$3,$2,$5
	shufb	$3,$3,$3,$4
	addx	$3,$2,$5
	br	func_15a8	# 15a8
.global func_1c188
func_1c188:
	hbrr	label_1c1c8,func_15a8	# 15a8
	lqd	$5,0($3)
	lqr	$4,data_27320	# 27320
	stqd	$82,-48($1)
	lqr	$82,data_22810	# 22810
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$80,-16($1)
	il	$80,0
	rotqby	$2,$5,$3
	stqd	$0,16($1)
	stqd	$1,-80($1)
	ai	$1,$1,-80
	cg	$3,$2,$4
	shufb	$3,$3,$3,$82
	addx	$3,$2,$4
label_1c1c8:
	brsl	$0,func_15a8	# 15a8
	lqr	$4,data_27330	# 27330
	brz	$3,label_1c260	# 1c260
	lqd	$27,0($81)
	rotqby	$25,$27,$81
	cg	$26,$25,$4
	shufb	$3,$26,$26,$82
	addx	$3,$25,$4
	brsl	$0,func_18d00	# 18d00
	lqd	$24,0($81)
	ori	$80,$3,0
	lqr	$22,data_27340	# 27340
	rotqby	$21,$24,$81
	cg	$23,$21,$22
	shufb	$3,$23,$23,$82
	addx	$3,$21,$22
	brsl	$0,func_18d00	# 18d00
	hbrr	label_1c238,func_18d00	# 18d00
	ahi	$20,$3,1
	lqd	$18,0($81)
	lqr	$15,data_27350	# 27350
	ceqh	$19,$80,$20
	xshw	$17,$19
	rotqby	$14,$18,$81
	sfi	$80,$17,0
	cg	$16,$14,$15
	shufb	$3,$16,$16,$82
	addx	$3,$14,$15
label_1c238:
	brsl	$0,func_18d00	# 18d00
	lqd	$12,16($81)
	ai	$13,$81,14
	ori	$7,$80,2
	rotqby	$11,$12,$13
	ahi	$10,$11,1
	ceqh	$9,$10,$3
	ceqhi	$8,$9,0
	fsm	$6,$8
	selb	$80,$7,$80,$6
label_1c260:
	ori	$3,$80,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_1c280
func_1c280:
	ai	$4,$3,12
	lqd	$6,0($4)
	rotqby	$5,$6,$4
	ceqi	$2,$5,1
	brz	$2,label_1c298	# 1c298
	br	func_1c188	# 1c188
label_1c298:
	il	$3,0
	bi	$0
.global func_1c2a0
func_1c2a0:
	hbrr	label_1c2d4,label_1c2f8	# 1c2f8
	lqr	$5,data_33b80	# 33b80
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	ori	$81,$4,0
	stqd	$0,16($1)
	ori	$82,$3,0
	stqd	$80,-16($1)
	stqd	$1,-80($1)
	and	$2,$5,$4
	ai	$1,$1,-80
	brz	$2,label_1c2d8	# 1c2d8
	andc	$2,$5,$4
label_1c2d4:
	br	label_1c2f8	# 1c2f8
label_1c2d8:
	ori	$3,$82,0
	lqr	$80,data_33b80	# 33b80
	brsl	$0,func_1c280	# 1c280
	or	$4,$80,$3
	and	$3,$4,$81
	stqr	$4,data_33b80	# 33b80
	brz	$3,label_1c2d8	# 1c2d8
	andc	$2,$4,$81
label_1c2f8:
	il	$3,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	stqr	$2,data_33b80	# 33b80
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_1c318
func_1c318:
	ai	$16,$3,12
	lqd	$17,0($3)
	lqr	$8,data_27360	# 27360
	lqd	$15,0($16)
	lqr	$9,data_22810	# 22810
	hbrr	label_1c374,func_1040	# 1040
	stqd	$0,16($1)
	rotqby	$10,$17,$3
	stqd	$1,-32($1)
	rotqby	$14,$15,$16
	ai	$1,$1,-32
	cg	$13,$10,$8
	ceqi	$12,$14,1
	shufb	$5,$13,$13,$9
	ceqi	$11,$12,0
	and	$7,$4,$11
	addx	$5,$10,$8
	shli	$6,$7,2
	il	$4,1
	rotqmbyi	$2,$6,-4
	cg	$3,$2,$5
	shufb	$3,$3,$3,$9
	addx	$3,$2,$5
label_1c374:
	brsl	$0,func_1040	# 1040
	il	$3,0
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_1c388
func_1c388:
	hbrr	label_1c3fc,func_18d00	# 18d00
	lqd	$10,0($3)
	lqr	$9,data_27330	# 27330
	stqd	$85,-96($1)
	ori	$85,$6,0
	stqd	$86,-112($1)
	lqr	$86,data_22810	# 22810
	stqd	$89,-160($1)
	ori	$89,$7,0
	rotqby	$6,$10,$3
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$0,16($1)
	cg	$7,$6,$9
	stqd	$80,-16($1)
	shufb	$3,$7,$7,$86
	stqd	$82,-48($1)
	stqd	$83,-64($1)
	ori	$83,$8,0
	stqd	$87,-128($1)
	addx	$3,$6,$9
	stqd	$88,-144($1)
	ori	$88,$4,0
	stqd	$90,-176($1)
	ori	$90,$5,0
	stqd	$84,-80($1)
	stqd	$91,-192($1)
	stqd	$1,-240($1)
	ai	$1,$1,-240
label_1c3fc:
	brsl	$0,func_18d00	# 18d00
	lqd	$5,0($81)
	lqr	$4,data_27340	# 27340
	ori	$82,$3,0
	rotqby	$2,$5,$81
	cg	$3,$2,$4
	shufb	$3,$3,$3,$86
	addx	$3,$2,$4
	brsl	$0,func_18d00	# 18d00
	ceqh	$80,$82,$3
	shlqbyi	$87,$3,0
	brhz	$80,label_1c44c	# 1c44c
	ila	$8,65535	# ffff
	ila	$3,160720	# 273d0
	and	$5,$87,$8
	ila	$4,161440	# 276a0
	ori	$6,$5,0
	brsl	$0,func_19c90	# 19c90
	il	$3,-16
	br	label_1c6c8	# 1c6c8
label_1c44c:
	hbrr	label_1c478,func_970	# 970
	ila	$4,209792	# 33380
	lqd	$15,0($81)
	il	$5,16
	lqr	$84,data_27370	# 27370
	ori	$91,$4,0
	ila	$82,65535	# ffff
	rotqby	$13,$15,$81
	cg	$14,$13,$84
	shufb	$3,$14,$14,$86
	addx	$3,$13,$84
label_1c478:
	brsl	$0,func_970	# 970
	lqr	$12,data_33380	# 33380
	rotqbyi	$4,$12,10
	and	$80,$4,$82
	clgt	$11,$80,$85
	brz	$11,label_1c4ac	# 1c4ac
	ila	$3,160768	# 27400
	shlqbyi	$5,$85,0
	ori	$6,$80,0
	ila	$4,161440	# 276a0
	brsl	$0,func_19c90	# 19c90
	il	$3,-7
	br	label_1c6c8	# 1c6c8
label_1c4ac:
	ai	$17,$80,20	# 14
	il	$18,2048	# 800
	clgt	$16,$17,$18
	brz	$16,label_1c4d0	# 1c4d0
	ori	$5,$80,0
	ila	$3,160816	# 27430
	ila	$4,161440	# 276a0
	brsl	$0,func_19c90	# 19c90
	br	label_1c4f4	# 1c4f4
label_1c4d0:
	lqr	$20,data_33380	# 33380
	rotqbyi	$3,$20,12
	ceqh	$19,$4,$3
	brhnz	$19,label_1c4fc	# 1c4fc
	and	$6,$82,$3
	shlqbyi	$5,$80,0
	ila	$3,160848	# 27450
label_1c4ec:
	ila	$4,161440	# 276a0
	brsl	$0,func_19c90	# 19c90
label_1c4f4:
	il	$3,-6
	br	label_1c6c8	# 1c6c8
label_1c4fc:
	ila	$4,209792	# 33380
	ori	$3,$81,0
	il	$5,6
	ai	$6,$1,32	# 20
	brsl	$0,func_1c098	# 1c098
	il	$24,-32768
	lqd	$25,32($1)	# 20
	lqr	$23,data_33380	# 33380
	rotqbyi	$4,$25,14
	rotqbyi	$3,$23,4
	or	$22,$4,$24
	ceqh	$21,$3,$22
	brhnz	$21,label_1c540	# 1c540
	and	$5,$82,$3
	and	$6,$82,$4
	ila	$3,160896	# 27480
	br	label_1c4ec	# 1c4ec
label_1c540:
	ila	$4,209792	# 33380
	fsmbi	$56,257	# 101
	rotqmbyi	$50,$80,-4
	lqd	$55,0($81)
	fsmbi	$54,257	# 101
	andbi	$51,$56,3
	hbrr	label_1c5a4,func_970	# 970
	cg	$53,$50,$51
	andbi	$43,$54,15
	shufb	$48,$53,$53,$86
	rotqby	$49,$55,$81
	addx	$48,$50,$51
	cg	$52,$49,$84
	shlqbyi	$47,$48,4
	shufb	$3,$52,$52,$86
	andi	$46,$47,-4
	addx	$3,$49,$84
	and	$84,$82,$46
	ai	$45,$84,20	# 14
	rotqmbyi	$42,$45,-4
	cg	$44,$42,$43
	shufb	$41,$44,$44,$86
	addx	$41,$42,$43
	shlqbyi	$40,$41,4
	andi	$5,$40,-16
label_1c5a4:
	brsl	$0,func_970	# 970
	ai	$6,$1,32	# 20
	shlqbyi	$3,$81,0
	ila	$4,209792	# 33380
	ai	$5,$84,16
	brsl	$0,func_1c100	# 1c100
	a	$36,$84,$91
	hbrr	label_1c600,label_1c614	# 1c614
	ai	$39,$36,18	# 12
	ai	$38,$36,19	# 13
	lqd	$37,32($1)	# 20
	ai	$35,$36,31	# 1f
	lqd	$34,0($39)
	ai	$32,$36,32	# 20
	lqd	$31,0($38)
	rotqbyi	$6,$37,14
	rotqby	$33,$34,$35
	rotqby	$30,$31,$32
	andi	$29,$33,255	# ff
	andi	$28,$30,255	# ff
	shli	$27,$29,8
	or	$3,$28,$27
	ceqh	$26,$6,$3
label_1c600:
	brhnz	$26,label_1c614	# 1c614
	and	$5,$3,$82
	and	$6,$82,$6
	ila	$3,160928	# 274a0
	br	label_1c4ec	# 1c4ec
label_1c614:
	lqr	$9,data_33380	# 33380
	ai	$4,$91,16
	shlqbyi	$3,$90,0
	cwd	$90,0($88)
	rotqbyi	$5,$9,10
	and	$5,$82,$5
	brsl	$0,func_1f8a0	# 1f8a0
	ahi	$2,$87,1
	lqr	$80,data_33380	# 33380
	il	$67,4
	lqd	$85,0($88)
	and	$79,$82,$2
	chd	$76,0($83)
	cwd	$71,4($83)
	cwd	$64,0($89)
	shli	$78,$79,16
	hbrr	label_1c6c0,func_1040	# 1040
	rotqbyi	$91,$80,13
	lqr	$58,data_27380	# 27380
	or	$4,$79,$78
	andi	$87,$91,255	# ff
	shufb	$77,$87,$85,$90
	stqd	$77,0($88)
	lqd	$74,0($83)
	lqr	$75,data_33380	# 33380
	shufb	$73,$75,$74,$76
	stqd	$73,0($83)
	lqr	$72,data_33380	# 33380
	lqx	$69,$83,$67
	rotqbyi	$70,$72,8
	shufb	$68,$70,$69,$71
	stqx	$68,$83,$67
	lqr	$66,data_33380	# 33380
	lqd	$62,0($89)
	rotqbyi	$65,$66,10
	and	$63,$82,$65
	shufb	$61,$63,$62,$64
	stqd	$61,0($89)
	lqd	$60,0($81)
	rotqby	$57,$60,$81
	cg	$59,$57,$58
	shufb	$3,$59,$59,$86
	addx	$3,$57,$58
label_1c6c0:
	brsl	$0,func_1040	# 1040
	il	$3,0
label_1c6c8:
	lqd	$0,256($1)	# 100
	ai	$1,$1,240	# f0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	hbr	label_1c704,$0
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
label_1c704:
	bi	$0
.global func_1c708
func_1c708:
	ai	$9,$3,12
	lqd	$11,0($9)
	rotqby	$10,$11,$9
	ceqi	$2,$10,1
	brz	$2,label_1c720	# 1c720
	br	func_1c388	# 1c388
label_1c720:
	il	$3,-8
	bi	$0
.global func_1c728
func_1c728:
	ai	$9,$6,20	# 14
	hbrr	label_1c788,label_1c7a4	# 1c7a4
	il	$2,2048	# 800
	stqd	$82,-48($1)
	ori	$82,$6,0
	stqd	$83,-64($1)
	clgt	$6,$9,$2
	stqd	$84,-80($1)
	ori	$83,$8,0
	stqd	$85,-96($1)
	ori	$84,$3,0
	stqd	$86,-112($1)
	ori	$85,$4,0
	stqd	$87,-128($1)
	ori	$86,$7,0
	stqd	$0,16($1)
	ori	$87,$5,0
	stqd	$80,-16($1)
	stqd	$81,-32($1)
label_1c774:
	hbrp
	stqd	$88,-144($1)
	stqd	$89,-160($1)
	stqd	$1,-208($1)
	ai	$1,$1,-208
label_1c788:
	brz	$6,label_1c7a4	# 1c7a4
	ila	$4,161472	# 276c0
	ori	$5,$82,0
	ila	$3,160960	# 274c0
	brsl	$0,func_19c90	# 19c90
	il	$4,-7
	br	label_1ca4c	# 1ca4c
label_1c7a4:
	hbrr	label_1c7cc,func_18d00	# 18d00
	il	$89,0
	lqd	$14,0($3)
	il	$88,0
	lqr	$12,data_27390	# 27390
	lqr	$80,data_22810	# 22810
	rotqby	$11,$14,$3
	cg	$13,$11,$12
	shufb	$3,$13,$13,$80
	addx	$3,$11,$12
label_1c7cc:
	brsl	$0,func_18d00	# 18d00
	lqd	$10,0($84)
	lqr	$4,data_27350	# 27350
	ori	$81,$3,0
	rotqby	$7,$10,$84
	cg	$8,$7,$4
	shufb	$3,$8,$8,$80
	addx	$3,$7,$4
	brsl	$0,func_18d00	# 18d00
	ceqbi	$5,$83,0
	ori	$4,$3,0
	xsbh	$3,$5
	brhnz	$3,label_1c830	# 1c830
	ceqh	$15,$81,$4
	shlqbyi	$88,$81,0
	ori	$89,$81,0
	brhnz	$15,label_1c830	# 1c830
	ila	$16,65535	# ffff
	ila	$3,160992	# 274e0
	and	$6,$16,$4
	ila	$4,161472	# 276c0
	and	$5,$16,$81
	brsl	$0,func_19c90	# 19c90
	il	$4,-16
	br	label_1ca4c	# 1ca4c
label_1c830:
	il	$42,1
	lqr	$48,data_33380	# 33380
	ai	$41,$86,14
	cbd	$49,0($1)
	il	$34,0
	cbd	$44,1($1)
	andi	$47,$82,3
	hbrr	label_1c89c,func_1c098	# 1c098
	ila	$4,209792	# 33380
	chd	$39,2($1)
	ceqi	$46,$47,0
	chd	$36,4($1)
	sfi	$45,$47,4
	shufb	$43,$85,$48,$49
	il	$5,6
	shlqbyi	$3,$84,0
	andc	$85,$45,$46
	ai	$6,$1,32	# 20
	ila	$81,209808	# 33390
	shufb	$38,$42,$43,$44
	a	$83,$82,$81
	stqr	$38,data_33380	# 33380
	lqd	$40,0($86)
	rotqby	$37,$40,$41
	shufb	$35,$37,$38,$39
	shufb	$33,$34,$35,$36
	stqr	$33,data_33380	# 33380
label_1c89c:
	brsl	$0,func_1c098	# 1c098
	il	$31,-32768
	lqd	$32,32($1)	# 20
	ai	$26,$86,4
	lqr	$27,data_33380	# 33380
	ori	$5,$82,0
	chd	$29,6($1)
	ori	$4,$87,0
	hbrr	label_1c8f8,func_1f8a0	# 1f8a0
	ori	$3,$81,0
	cwd	$24,8($1)
	chd	$21,12($1)
	rotqbyi	$30,$32,14
	chd	$19,14($1)
	or	$28,$30,$31
	shufb	$23,$28,$27,$29
	stqr	$23,data_33380	# 33380
	lqd	$25,0($26)
	rotqby	$22,$25,$26
	shufb	$20,$22,$23,$24
	shufb	$18,$82,$20,$21
	shufb	$17,$82,$18,$19
	stqr	$17,data_33380	# 33380
label_1c8f8:
	brsl	$0,func_1f8a0	# 1f8a0
	il	$3,0
	il	$5,0
	br	label_1c918	# 1c918
label_1c908:
	lqx	$51,$3,$83
	shufb	$50,$5,$51,$4
	stqx	$50,$3,$83
	ai	$3,$3,1
label_1c918:
	ceq	$52,$3,$85
	cbx	$4,$3,$83
	brz	$52,label_1c908	# 1c908
	a	$87,$83,$85
	ila	$82,209792	# 33380
	shlqbyi	$3,$84,0
	ai	$6,$1,32	# 20
	cbd	$80,3($87)
	sf	$5,$82,$87
	shlqbyi	$4,$82,0
	brsl	$0,func_1c100	# 1c100
	lqx	$5,$83,$85
	il	$9,0
	cbx	$3,$83,$85
	il	$8,1
	lqd	$16,32($1)	# 20
	il	$10,2
	cbd	$12,1($87)
	il	$77,3
	cbd	$11,2($87)
	ori	$4,$87,0
	hbrr	label_1c9b0,func_1f8a0	# 1f8a0
	shufb	$14,$9,$5,$3
	lqr	$86,data_22810	# 22810
	il	$5,4
	rotqbyi	$6,$16,13
	ori	$3,$87,0
	rotqbyi	$7,$16,14
	stqx	$14,$83,$85
	lqx	$13,$87,$8
	shufb	$2,$9,$13,$12
	stqx	$2,$87,$8
	lqx	$85,$87,$10
	shufb	$83,$6,$85,$11
	stqx	$83,$87,$10
	lqx	$79,$87,$77
	shufb	$78,$7,$79,$80
	stqx	$78,$87,$77
label_1c9b0:
	brsl	$0,func_1f8a0	# 1f8a0
	ai	$76,$87,4
	ori	$4,$82,0
	fsmbi	$75,257	# 101
	sf	$74,$82,$76
	hbrr	label_1ca00,func_10858	# 10858
	lqd	$73,0($84)
	rotqmbyi	$72,$74,-4
	andbi	$67,$75,15
	lqr	$70,data_273a0	# 273a0
	xswd	$66,$72
	rotqby	$69,$73,$84
	cg	$68,$66,$67
	shufb	$65,$68,$68,$86
	cg	$71,$69,$70
	shufb	$3,$71,$71,$86
	addx	$65,$66,$67
	shlqbyi	$64,$65,4
	addx	$3,$69,$70
	andi	$5,$64,-16
label_1ca00:
	brsl	$0,func_10858	# 10858
	hbrr	label_1ca34,func_1040	# 1040
	ahi	$62,$89,1
	lqd	$61,0($84)
	ila	$63,65535	# ffff
	lqr	$57,data_273b0	# 273b0
	and	$58,$62,$63
	shli	$59,$58,16
	rotqby	$56,$61,$84
	or	$4,$58,$59
	cg	$60,$56,$57
	shufb	$3,$60,$60,$86
	addx	$3,$56,$57
label_1ca34:
	brsl	$0,func_1040	# 1040
	il	$4,0
	lqd	$54,16($84)
	chd	$55,0($84)
	shufb	$53,$88,$54,$55
	stqd	$53,16($84)
label_1ca4c:
	lqd	$0,224($1)	# e0
	ai	$1,$1,208	# d0
	shlqbyi	$3,$4,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	hbr	label_1ca84,$0
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
label_1ca84:
	bi	$0
.global func_1ca88
func_1ca88:
	ai	$9,$3,12
	il	$8,1
	lqd	$11,0($9)
	rotqby	$10,$11,$9
	ceqi	$2,$10,1
	brz	$2,label_1caa4	# 1caa4
	br	func_1c728	# 1c728
label_1caa4:
	il	$3,-8
	bi	$0
	lnop
.global func_1cab0
func_1cab0:
	hbrr	label_1caf4,func_1c168	# 1c168
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	ori	$81,$5,0
	stqd	$83,-64($1)
	ori	$83,$6,0
	stqd	$0,16($1)
	ori	$82,$3,0
	stqd	$1,-128($1)
	ceqbi	$80,$83,0
	lqd	$6,0($3)
	ai	$1,$1,-128
	cdd	$5,0($3)
	xsbh	$83,$80
	shufb	$2,$4,$6,$5
	stqd	$2,0($3)
label_1caf4:
	brsl	$0,func_1c168	# 1c168
	brhnz	$83,label_1cc38	# 1cc38
	il	$23,12
	il	$81,1
	cwd	$26,12($82)
	il	$4,0
	lqx	$25,$82,$23
	hbrr	label_1cb38,func_1040	# 1040
	lqr	$20,data_273b0	# 273b0
	lqr	$80,data_22810	# 22810
	shufb	$24,$81,$25,$26
	stqx	$24,$82,$23
	lqd	$22,0($82)
	rotqby	$19,$22,$82
	cg	$21,$19,$20
	shufb	$3,$21,$21,$80
	addx	$3,$19,$20
label_1cb38:
	brsl	$0,func_1040	# 1040
	lqd	$18,0($82)
	il	$4,0
	lqr	$17,data_27380	# 27380
	rotqby	$16,$18,$82
	cg	$3,$16,$17
	shufb	$3,$3,$3,$80
	addx	$3,$16,$17
	brsl	$0,func_1040	# 1040
	hbrr	label_1cba4,func_1c728	# 1c728
	il	$13,0
	lqd	$7,48($1)	# 30
	il	$4,255	# ff
	chd	$15,0($1)
	ori	$3,$82,0
	lqd	$14,32($1)	# 20
	ai	$5,$1,32	# 20
	cbd	$8,0($1)
	il	$6,1
	cwd	$11,4($1)
	shufb	$9,$83,$7,$15
	ai	$7,$1,48	# 30
	shufb	$10,$81,$14,$8
	il	$8,0
	shufb	$12,$13,$9,$11
	stqd	$10,32($1)	# 20
	stqd	$12,48($1)	# 30
label_1cba4:
	brsl	$0,func_1c728	# 1c728
	ori	$3,$82,0
	fsmbi	$4,0
	brsl	$0,func_1c318	# 1c318
label_1cbb4:
	lqd	$29,0($82)
	lqr	$4,data_27320	# 27320
	lqr	$80,data_22810	# 22810
	rotqby	$27,$29,$82
	cg	$28,$27,$4
	shufb	$3,$28,$28,$80
	addx	$3,$27,$4
	brsl	$0,func_15a8	# 15a8
	brz	$3,label_1cbb4	# 1cbb4
	lqd	$37,0($82)
	lqr	$35,data_273c0	# 273c0
	rotqby	$34,$37,$82
	cg	$36,$34,$35
	shufb	$3,$36,$36,$80
	addx	$3,$34,$35
	brsl	$0,func_780	# 780
	il	$33,-1
	ceq	$32,$3,$33
	gb	$31,$32
	cgti	$30,$31,11
	brz	$30,label_1cc1c	# 1cc1c
	il	$5,12
	cwd	$4,12($82)
	il	$3,1
	lqx	$2,$82,$5
	br	label_1cc2c	# 1cc2c
label_1cc1c:
	il	$5,12
	il	$3,0
	cwd	$4,12($82)
	lqx	$2,$82,$5
label_1cc2c:
	shufb	$38,$3,$2,$4
	stqx	$38,$82,$5
	br	label_1cc4c	# 1cc4c
label_1cc38:
	il	$39,12
	cwd	$42,12($82)
	lqx	$41,$82,$39
	shufb	$40,$81,$41,$42
	stqx	$40,$82,$39
label_1cc4c:
	lqd	$0,144($1)	# 90
	ai	$1,$1,128	# 80
	fsmbi	$3,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
	lnop
.global func_1cc70
func_1cc70:
	lqd	$10,0($3)
	hbrr	label_1ccd8,func_1c168	# 1c168
	stqd	$82,-48($1)
	ori	$82,$6,0
	stqd	$84,-80($1)
	ori	$84,$7,0
	il	$7,0
	rotqby	$6,$10,$3
	stqd	$81,-32($1)
	ori	$81,$5,0
	stqd	$83,-64($1)
	ceq	$5,$6,$7
	ori	$83,$4,0
	stqd	$80,-16($1)
	ori	$80,$3,0
	gb	$4,$5
	stqd	$85,-96($1)
	stqd	$86,-112($1)
	ori	$85,$8,0
	stqd	$0,16($1)
	cgti	$2,$4,11
	stqd	$1,-176($1)
	ori	$86,$9,0
	fsmbi	$4,65535	# ffff
	ai	$1,$1,-176
	brnz	$2,label_1cea0	# 1cea0
label_1ccd8:
	brsl	$0,func_1c168	# 1c168
	lqr	$18,data_33b90	# 33b90
	il	$12,0
	hbrr	label_1cd24,func_1ca88	# 1ca88
	ori	$5,$81,0
	lqd	$15,48($1)	# 30
	ori	$6,$82,0
	chd	$16,0($1)
	ori	$3,$80,0
	cwd	$13,4($1)
	ori	$4,$83,0
	rotqbyi	$17,$18,14
	ai	$7,$1,48	# 30
	ahi	$14,$17,1
	shufb	$9,$14,$15,$16
	shlqbyi	$8,$14,2
	shufb	$11,$12,$9,$13
	stqr	$8,data_33b90	# 33b90
	stqd	$11,48($1)	# 30
label_1cd24:
	brsl	$0,func_1ca88	# 1ca88
	brz	$3,label_1cd44	# 1cd44
	ila	$4,161504	# 276e0
	ori	$5,$3,0
	ila	$3,161040	# 27510
	brsl	$0,func_19c90	# 19c90
	il	$4,-4
	br	label_1cea0	# 1cea0
label_1cd44:
	il	$4,0
	ori	$3,$80,0
	brsl	$0,func_1c318	# 1c318
	il	$4,2
	shlqbyi	$3,$80,0
	brsl	$0,func_1c2a0	# 1c2a0
	ila	$4,161504	# 276e0
	ori	$5,$3,0
	brz	$3,label_1cd74	# 1cd74
	ila	$3,161072	# 27530
	brsl	$0,func_19c90	# 19c90
	br	label_1cd44	# 1cd44
label_1cd74:
	hbrr	label_1cda4,func_1c2a0	# 1c2a0
	ai	$22,$80,12
	lqd	$23,32($1)	# 20
	cwd	$24,0($1)
	lqd	$21,0($22)
	shufb	$20,$83,$23,$24
	rotqby	$19,$21,$22
	stqd	$20,32($1)	# 20
	ceqi	$3,$19,1
	brz	$3,label_1ce84	# 1ce84
label_1cd9c:
	il	$4,1
	ori	$3,$80,0
label_1cda4:
	brsl	$0,func_1c2a0	# 1c2a0
	ila	$4,161504	# 276e0
	ori	$5,$3,0
	brz	$3,label_1cdc0	# 1cdc0
	ila	$3,161072	# 27530
	brsl	$0,func_19c90	# 19c90
	br	label_1cd9c	# 1cd9c
label_1cdc0:
	ori	$5,$84,0
	shlqbyi	$6,$85,0
	ori	$7,$86,0
	shlqbyi	$3,$80,0
	ai	$4,$1,32	# 20
	ai	$8,$1,48	# 30
	brsl	$0,func_1c708	# 1c708
	brz	$3,label_1cdf8	# 1cdf8
	ila	$4,161504	# 276e0
	shlqbyi	$5,$3,0
	ila	$3,161120	# 27560
	brsl	$0,func_19c90	# 19c90
	il	$4,-3
	br	label_1cea0	# 1cea0
label_1cdf8:
	lqd	$5,32($1)	# 20
	ceq	$25,$5,$83
	brnz	$25,label_1ce0c	# 1ce0c
	ila	$3,161152	# 27580
	br	label_1ce30	# 1ce30
label_1ce0c:
	lqr	$29,data_33b90	# 33b90
	lqd	$28,48($1)	# 30
	rotqbyi	$4,$29,14
	rotqbyi	$27,$28,14
	ceqh	$26,$27,$4
	brhnz	$26,label_1ce40	# 1ce40
	ila	$30,65535	# ffff
	ila	$3,161200	# 275b0
	and	$5,$30,$4
label_1ce30:
	ila	$4,161504	# 276e0
label_1ce34:
	brsl	$0,func_19c90	# 19c90
	il	$4,-6
	br	label_1cea0	# 1cea0
label_1ce40:
	lqd	$32,48($1)	# 30
	rotqbyi	$31,$32,4
	brz	$31,label_1ce5c	# 1ce5c
	ila	$3,161248	# 275e0
	ila	$4,161504	# 276e0
	fsmbi	$5,0
	br	label_1ce34	# 1ce34
label_1ce5c:
	ai	$36,$80,12
	lqd	$35,0($36)
	rotqby	$34,$35,$36
	ceqi	$33,$34,1
	brz	$33,label_1ce8c	# 1ce8c
	il	$4,1
	shlqbyi	$3,$80,0
	brsl	$0,func_1c318	# 1c318
	il	$4,0
	br	label_1cea0	# 1cea0
label_1ce84:
	ila	$3,161296	# 27610
	br	label_1ce90	# 1ce90
label_1ce8c:
	ila	$3,161328	# 27630
label_1ce90:
	ila	$4,161504	# 276e0
	il	$5,-8
	brsl	$0,func_19c90	# 19c90
	il	$4,-2
label_1cea0:
	ori	$3,$4,0
	lqd	$0,192($1)	# c0
	hbr	label_1cecc,$0
	ai	$1,$1,176	# b0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
label_1cecc:
	bi	$0
.global func_1ced0
func_1ced0:
	il	$7,1
	hbr	label_1cf30,$0
	ila	$3,211888	# 33bb0
	lqr	$6,data_33ba0	# 33ba0
	cdd	$10,0($1)
	cbd	$11,8($1)
	chd	$9,0($1)
	cbd	$8,0($1)
	rotqbyi	$5,$6,13
	ceqbi	$4,$5,0
	xsbh	$2,$4
	bihz	$2,$0
	il	$17,0
	lqr	$16,data_33bb0	# 33bb0
	il	$15,0
	lqr	$14,data_33bc0	# 33bc0
	lqr	$13,data_33ba0	# 33ba0
	shufb	$12,$17,$16,$10
	shufb	$10,$15,$14,$9
	shufb	$9,$7,$13,$8
	shufb	$8,$7,$12,$11
	stqr	$10,data_33bc0	# 33bc0
	stqr	$9,data_33ba0	# 33ba0
	stqr	$8,data_33bb0	# 33bb0
label_1cf30:
	bi	$0
	lnop
.global func_1cf38
func_1cf38:
	il	$12,51	# 33
	hbrr	label_1cf64,func_1ced0	# 1ced0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	ori	$80,$3,0
	stqd	$1,-96($1)
	ai	$1,$1,-96
	lqd	$7,32($1)	# 20
	cbd	$13,0($1)
	shufb	$6,$12,$7,$13
	stqd	$6,32($1)	# 20
label_1cf64:
	brsl	$0,func_1ced0	# 1ced0
	il	$4,19	# 13
	fsmbi	$10,0
	ai	$5,$1,32	# 20
	il	$6,1
	ai	$7,$1,64	# 40
	il	$8,8
	ai	$9,$1,48	# 30
	brsl	$0,func_1cc70	# 1cc70
	ilhu	$6,65534	# fffe
	lqd	$11,64($1)	# 40
	il	$7,-10003
	iohl	$6,31073	# 7961
	rotqbyi	$9,$11,13
	ceqbi	$10,$9,-2
	ceqbi	$5,$9,1
	xsbh	$8,$10
	clgtbi	$4,$9,0
	ceqhi	$2,$8,0
	xsbh	$3,$5
	xsbh	$5,$4
	fsm	$4,$2
	brhnz	$3,label_1cfe8	# 1cfe8
	il	$14,-10002
	selb	$7,$14,$6,$4
	cwd	$4,0($80)
	brhnz	$5,label_1cfe8	# 1cfe8
	il	$7,0
	lqd	$18,64($1)	# 40
	lqd	$16,0($80)
	rotqbyi	$17,$18,4
	shufb	$15,$17,$16,$4
	stqd	$15,0($80)
label_1cfe8:
	ori	$3,$7,0
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	lqd	$80,-16($1)
	bi	$0
	lnop
.global func_1d000
func_1d000:
	il	$9,0
	stqd	$0,16($1)
	il	$5,18	# 12
	stqd	$1,-80($1)
	ai	$1,$1,-80
	hbrr	label_1d038,func_1ced0	# 1ced0
	lqd	$8,64($1)	# 40
	cdd	$10,0($1)
	cbd	$6,0($1)
	cwd	$7,4($1)
	shufb	$4,$9,$8,$10
	shufb	$2,$5,$4,$6
	shufb	$3,$3,$2,$7
	stqd	$3,64($1)	# 40
label_1d038:
	brsl	$0,func_1ced0	# 1ced0
	ai	$5,$1,64	# 40
	il	$4,19	# 13
	fsmbi	$10,0
	il	$6,8
	ai	$7,$1,32	# 20
	il	$8,1
	ai	$9,$1,48	# 30
	brsl	$0,func_1cc70	# 1cc70
	ori	$5,$3,0
	brnz	$3,label_1d0b0	# 1d0b0
	hbrr	label_1d0a8,label_1d0b0	# 1d0b0
	lqd	$14,32($1)	# 20
	rotqbyi	$4,$14,13
	ceqbi	$13,$4,1
	clgtbi	$12,$4,0
	xsbh	$11,$13
	xsbh	$3,$12
	brhnz	$11,label_1d0ac	# 1d0ac
	ceqbi	$2,$4,-2
	brhz	$3,label_1d0b0	# 1d0b0
	xsbh	$19,$2
	ilhu	$16,65534	# fffe
	ceqhi	$18,$19,0
	iohl	$16,31073	# 7961
	fsm	$15,$18
	il	$17,-10002
	selb	$5,$17,$16,$15
label_1d0a8:
	br	label_1d0b0	# 1d0b0
label_1d0ac:
	il	$5,-10007
label_1d0b0:
	ori	$3,$5,0
	lqd	$0,96($1)	# 60
	ai	$1,$1,80	# 50
	bi	$0
.global func_1d0c0
func_1d0c0:
	hbrr	label_1d114,func_1ced0	# 1ced0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$82,-48($1)
	il	$4,16
	stqd	$83,-64($1)
	ori	$82,$5,0
	stqd	$84,-80($1)
	ori	$83,$6,0
	stqd	$85,-96($1)
	ori	$84,$7,0
	stqd	$1,-176($1)
	ai	$1,$1,-176
	shlqbyi	$85,$8,0
	ori	$80,$3,0
	lqd	$10,32($1)	# 20
	cbd	$9,0($1)
	shufb	$2,$4,$10,$9
	stqd	$2,32($1)	# 20
label_1d114:
	brsl	$0,func_1ced0	# 1ced0
	il	$4,19	# 13
	fsmbi	$10,0
	ai	$5,$1,32	# 20
	il	$6,1
	ai	$7,$1,64	# 40
	il	$8,16
	ai	$9,$1,48	# 30
	brsl	$0,func_1cc70	# 1cc70
	ori	$13,$3,0
	brnz	$3,label_1d284	# 1d284
	lqd	$7,64($1)	# 40
	rotqbyi	$6,$7,13
	ceqbi	$5,$6,0
	xsbh	$3,$5
	brhnz	$3,label_1d160	# 1d160
	ilhu	$13,65534	# fffe
	iohl	$13,31073	# 7961
	br	label_1d284	# 1d284
label_1d160:
	lqd	$3,48($1)	# 30
	ceqi	$8,$3,8
	brz	$8,label_1d1e4	# 1d1e4
	lqd	$35,64($1)	# 40
	stqr	$13,data_29770	# 29770
	lqd	$31,0($80)
	cbd	$33,0($80)
	cbd	$28,0($81)
	cbd	$24,0($82)
	rotqbyi	$32,$35,14
	rotqbyi	$27,$35,15
	cbd	$21,0($83)
	hbrr	label_1d1e0,label_1d26c	# 1d26c
	shufb	$29,$32,$31,$33
	cbd	$18,0($84)
	rotqbyi	$12,$35,4
	cwd	$14,0($85)
	stqd	$29,0($80)
	lqd	$26,0($81)
	shufb	$25,$27,$26,$28
	stqd	$25,0($81)
	lqd	$23,0($82)
	shufb	$22,$13,$23,$24
	stqd	$22,0($82)
	lqd	$20,0($83)
	shufb	$19,$13,$20,$21
	stqd	$19,0($83)
	lqd	$16,0($84)
	shufb	$15,$35,$16,$18
	stqd	$15,0($84)
	lqd	$11,0($85)
	shufb	$2,$12,$11,$14
label_1d1e0:
	br	label_1d26c	# 1d26c
label_1d1e4:
	ceqi	$36,$3,16
	brz	$36,label_1d274	# 1d274
	lqd	$66,64($1)	# 40
	il	$65,1
	cbd	$61,0($80)
	cbd	$55,0($81)
	stqr	$65,data_29770	# 29770
	lqd	$59,0($80)
	cbd	$51,0($82)
	rotqbyi	$60,$66,5
	rotqbyi	$54,$66,6
	rotqbyi	$50,$66,7
	rotqbyi	$46,$66,8
	shufb	$57,$60,$59,$61
	cbd	$47,0($83)
	rotqbyi	$42,$66,9
	cbd	$43,0($84)
	stqd	$57,0($80)
	lqd	$53,0($81)
	rotqbyi	$38,$66,4
	cwd	$39,0($85)
	shufb	$52,$54,$53,$55
	stqd	$52,0($81)
	lqd	$49,0($82)
	shufb	$48,$50,$49,$51
	stqd	$48,0($82)
	lqd	$45,0($83)
	shufb	$44,$46,$45,$47
	stqd	$44,0($83)
	lqd	$41,0($84)
	shufb	$40,$42,$41,$43
	stqd	$40,0($84)
	lqd	$37,0($85)
	shufb	$2,$38,$37,$39
label_1d26c:
	stqd	$2,0($85)
	br	label_1d284	# 1d284
label_1d274:
	ilhu	$13,65534	# fffe
	il	$67,-1
	iohl	$13,31073	# 7961
	stqr	$67,data_29770	# 29770
label_1d284:
	lqd	$0,192($1)	# c0
	ai	$1,$1,176	# b0
	shlqbyi	$3,$13,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	bi	$0
	lnop
.global func_1d2b0
func_1d2b0:
	hbrr	label_1d2e0,label_1d304	# 1d304
	stqd	$80,-16($1)
	ori	$80,$3,0
	lqr	$3,data_29770	# 29770
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	ori	$81,$4,0
	stqd	$0,16($1)
	ori	$82,$5,0
	stqd	$1,-208($1)
	ai	$1,$1,-208
	ceqi	$2,$3,-1
label_1d2e0:
	brz	$2,label_1d304	# 1d304
	ai	$3,$1,32	# 20
	ai	$4,$1,96	# 60
	ai	$5,$1,80	# 50
	ai	$6,$1,64	# 40
	ai	$7,$1,48	# 30
	ai	$8,$1,144	# 90
	brsl	$0,func_1d0c0	# 1d0c0
	brnz	$3,label_1d3b4	# 1d3b4
label_1d304:
	lqr	$2,data_29770	# 29770
	brz	$2,label_1d318	# 1d318
	ceqi	$4,$2,1
	brnz	$4,label_1d35c	# 1d35c
	br	label_1d3b0	# 1d3b0
label_1d318:
	il	$9,17	# 11
	lqd	$8,112($1)	# 70
	cbd	$10,0($1)
	cbd	$5,1($1)
	shufb	$7,$9,$8,$10
	shufb	$6,$80,$7,$5
	stqd	$6,112($1)	# 70
	brsl	$0,func_1ced0	# 1ced0
	il	$4,19	# 13
	fsmbi	$7,0
	ai	$5,$1,112	# 70
	fsmbi	$8,0
	il	$6,2
	fsmbi	$10,0
	ai	$9,$1,144	# 90
	brsl	$0,func_1cc70	# 1cc70
	br	label_1d3b0	# 1d3b0
label_1d35c:
	lqd	$18,128($1)	# 80
	il	$19,17	# 11
	cbd	$20,0($1)
	hbrr	label_1d38c,func_1ced0	# 1ced0
	cbd	$17,1($1)
	cbd	$15,2($1)
	cbd	$13,3($1)
	shufb	$16,$19,$18,$20
	shufb	$14,$80,$16,$17
	shufb	$12,$81,$14,$15
	shufb	$11,$82,$12,$13
	stqd	$11,128($1)	# 80
label_1d38c:
	brsl	$0,func_1ced0	# 1ced0
	il	$4,19	# 13
	fsmbi	$7,0
	ai	$5,$1,128	# 80
	fsmbi	$8,0
	il	$6,4
	fsmbi	$10,0
	ai	$9,$1,144	# 90
	brsl	$0,func_1cc70	# 1cc70
label_1d3b0:
	br	label_1d3b0
label_1d3b4:
	lqd	$0,224($1)	# e0
	ai	$1,$1,208	# d0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
	lnop
.global func_1d3d0
func_1d3d0:
	ila	$4,212112	# 33c90
	hbrr	label_1d3f8,label_1d428	# 1d428
	il	$3,20	# 14
	lqr	$7,data_33ca0	# 33ca0
	stqd	$0,16($1)
	stqd	$1,-32($1)
	ai	$1,$1,-32
	rotqbyi	$6,$7,13
	ceqbi	$5,$6,0
	xsbh	$2,$5
label_1d3f8:
	brhz	$2,label_1d428	# 1d428
	brsl	$0,func_e138	# e138
	fsmbi	$5,65528	# fff8
	ori	$8,$3,0
	ila	$3,161536	# 27700
	ori	$4,$8,0
	brz	$8,label_1d420	# 1d420
	brsl	$0,func_1df60	# 1df60
	il	$3,0
	br	label_1d43c	# 1d43c
label_1d420:
	andhi	$3,$5,257	# 101
	stqr	$3,data_33ca0	# 33ca0
label_1d428:
	lqr	$11,data_33c90	# 33c90
	rotqbyi	$10,$11,14
	clgthi	$9,$10,258	# 102
	xshw	$4,$9
	sfi	$3,$4,0
label_1d43c:
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_1d448
func_1d448:
	hbrr	label_1d478,func_1d3d0	# 1d3d0
	stqd	$80,-16($1)
	ori	$80,$6,0
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$83,-64($1)
	ori	$83,$5,0
	stqd	$0,16($1)
	stqd	$1,-96($1)
	ai	$1,$1,-96
label_1d478:
	brsl	$0,func_1d3d0	# 1d3d0
	hbrr	label_1d4a0,func_1d6e8	# 1d6e8
	ceqbi	$5,$3,0
	shlqbyi	$6,$80,0
	ori	$4,$82,0
	shlqbyi	$3,$81,0
	xsbh	$2,$5
	shlqbyi	$5,$83,0
	il	$80,-8
	brhnz	$2,label_1d4c4	# 1d4c4
label_1d4a0:
	brsl	$0,func_1d6e8	# 1d6e8
	ori	$4,$81,0
	ori	$80,$3,0
	shlqbyi	$5,$82,0
	brz	$3,label_1d4c4	# 1d4c4
	ori	$6,$83,0
	ila	$3,161568	# 27720
	shlqbyi	$7,$80,0
	brsl	$0,func_1df60	# 1df60
label_1d4c4:
	lqd	$0,112($1)	# 70
	ai	$1,$1,96	# 60
	shlqbyi	$3,$80,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
	lnop
.global func_1d4e8
func_1d4e8:
	hbrr	label_1d518,func_1d3d0	# 1d3d0
	stqd	$80,-16($1)
	ori	$80,$6,0
	stqd	$81,-32($1)
	ori	$81,$3,0
	stqd	$82,-48($1)
	ori	$82,$4,0
	stqd	$83,-64($1)
	ori	$83,$5,0
	stqd	$0,16($1)
	stqd	$1,-112($1)
	ai	$1,$1,-112
label_1d518:
	brsl	$0,func_1d3d0	# 1d3d0
	hbrr	label_1d544,func_1d818	# 1d818
	ceqbi	$5,$3,0
	shlqbyi	$6,$80,0
	ori	$4,$82,0
	shlqbyi	$3,$81,0
	xsbh	$2,$5
	shlqbyi	$5,$83,0
	ai	$7,$1,32	# 20
	il	$80,-8
	brhnz	$2,label_1d568	# 1d568
label_1d544:
	brsl	$0,func_1d818	# 1d818
	ori	$4,$81,0
	shlqbyi	$5,$82,0
	ori	$80,$3,0
	brz	$3,label_1d568	# 1d568
	ori	$6,$83,0
	shlqbyi	$7,$80,0
	ila	$3,161648	# 27770
	brsl	$0,func_1df60	# 1df60
label_1d568:
	ori	$3,$80,0
	lqd	$0,128($1)	# 80
	ai	$1,$1,112	# 70
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	bi	$0
.global func_1d588
func_1d588:
	shli	$4,$3,2
	stqd	$80,-16($1)
	shli	$5,$3,5
	hbrr	label_1d610,func_1d4e8	# 1d4e8
	ila	$8,169872	# 29790
	stqd	$0,16($1)
	ila	$6,169856	# 29780
	stqd	$1,-48($1)
	il	$7,0
	sf	$5,$4,$5
	ai	$11,$6,4
	a	$80,$5,$8
	ai	$4,$6,12
	ai	$10,$80,8
	ai	$14,$80,21	# 15
	lqd	$13,0($10)
	ai	$1,$1,-48
	a	$9,$5,$6
	a	$8,$5,$11
	a	$10,$5,$4
	rotqby	$12,$13,$14
	ceqbi	$3,$12,0
	xsbh	$2,$3
	brhz	$2,label_1d634	# 1d634
	lqx	$7,$5,$4
	lqx	$16,$5,$11
	lqx	$15,$5,$6
	lqd	$11,16($8)
	lqd	$6,16($9)
	rotqby	$7,$7,$10
	rotqby	$4,$16,$8
	rotqby	$3,$15,$9
	rotqby	$5,$11,$8
	rotqby	$6,$6,$9
label_1d610:
	brsl	$0,func_1d4e8	# 1d4e8
	cbd	$4,8($80)
	il	$5,8
	shlqbyi	$7,$3,0
	brnz	$3,label_1d634	# 1d634
	lqx	$17,$80,$5
	il	$18,1
	shufb	$9,$18,$17,$4
	stqx	$9,$80,$5
label_1d634:
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	shlqbyi	$3,$7,0
	lqd	$80,-16($1)
	bi	$0
.global func_1d648
func_1d648:
	andi	$6,$3,255	# ff
	stqd	$0,16($1)
	ila	$4,120444	# 1d67c
	stqd	$1,-32($1)
	shli	$7,$6,2
	clgti	$5,$6,5
	ai	$1,$1,-32
	lqx	$2,$4,$7
	a	$3,$7,$4
	rotqby	$2,$2,$3
	nop	$127
	brnz	$5,label_1d6c8	# 1d6c8
	bi	$2
jtbl_1d670:
	.word label_1d694
	.word label_1d6a0
	.word label_1d6a0
	.word label_1d6a0
	.word label_1d6a0
	.word label_1d6b4
label_1d694:
	il	$3,0
	nop	$127
	br	label_1d6dc	# 1d6dc
label_1d6a0:
	ila	$3,161712	# 277b0
	shlqbyi	$4,$6,0
	brsl	$0,func_19c90	# 19c90
	il	$3,-10003
	br	label_1d6dc	# 1d6dc
label_1d6b4:
	ila	$3,161712	# 277b0
	ori	$4,$6,0
	brsl	$0,func_19c90	# 19c90
	il	$3,-10002
	br	label_1d6dc	# 1d6dc
label_1d6c8:
	ila	$3,161712	# 277b0
	shlqbyi	$4,$6,0
	brsl	$0,func_19c90	# 19c90
	ilhu	$3,65534	# fffe
	iohl	$3,31073	# 7961
label_1d6dc:
	lqd	$0,48($1)	# 30
	ai	$1,$1,32	# 20
	bi	$0
.global func_1d6e8
func_1d6e8:
	ceqi	$18,$4,0
	hbrr	label_1d76c,label_1d7f0	# 1d7f0
	ceqi	$17,$5,256	# 100
	stqd	$80,-16($1)
	sfi	$15,$18,0
	shlqbyi	$80,$5,0
	sfi	$16,$17,0
	stqd	$81,-32($1)
	ori	$81,$4,0
	stqd	$82,-48($1)
	and	$14,$15,$16
	stqd	$84,-80($1)
	ori	$84,$3,0
	stqd	$83,-64($1)
	ceqbi	$13,$14,0
	stqd	$85,-96($1)
	clgti	$7,$84,3
	stqd	$0,16($1)
	xsbh	$12,$13
	stqd	$1,-416($1)
	ai	$1,$1,-416
	shlqbyi	$83,$6,0
	ceqhi	$11,$12,0
	fsmbi	$4,0
	ai	$85,$1,48	# 30
	fsm	$10,$11
	ori	$3,$85,0
	il	$5,260	# 104
	il	$6,-10008
	andc	$82,$80,$10
	a	$9,$81,$82
	clgti	$8,$9,256	# 100
	or	$2,$8,$7
label_1d76c:
	brnz	$2,label_1d7f0	# 1d7f0
	brsl	$0,func_1f718	# 1f718
	lqd	$25,48($1)	# 30
	il	$26,16
	cbd	$27,0($1)
	ori	$5,$80,0
	hbrr	label_1d7b0,func_1f8a0	# 1f8a0
	ori	$4,$83,0
	cbd	$24,1($1)
	ai	$3,$1,52	# 34
	cbd	$22,2($1)
	cbd	$20,3($1)
	shufb	$23,$26,$25,$27
	shufb	$21,$84,$23,$24
	shufb	$19,$81,$21,$22
	shufb	$6,$82,$19,$20
	stqd	$6,48($1)	# 30
label_1d7b0:
	brsl	$0,func_1f8a0	# 1f8a0
	brsl	$0,func_1ced0	# 1ced0
	ai	$6,$80,4
	shlqbyi	$5,$85,0
	il	$4,20	# 14
	shlqbyi	$7,$85,0
	il	$8,260	# 104
	fsmbi	$10,0
	ai	$9,$1,32	# 20
	brsl	$0,func_1cc70	# 1cc70
	ori	$6,$3,0
	brnz	$3,label_1d7f0	# 1d7f0
	lqd	$3,48($1)	# 30
	rotqbyi	$3,$3,13
	brsl	$0,func_1d648	# 1d648
	ori	$6,$3,0
label_1d7f0:
	ori	$3,$6,0
	lqd	$0,432($1)	# 1b0
	ai	$1,$1,416	# 1a0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	bi	$0
.global func_1d818
func_1d818:
	ceqi	$18,$4,0
	hbrr	label_1d8a8,label_1d960	# 1d960
	ceqi	$17,$5,256	# 100
	stqd	$82,-48($1)
	sfi	$15,$18,0
	shlqbyi	$82,$5,0
	sfi	$16,$17,0
	stqd	$80,-16($1)
	ori	$80,$4,0
	stqd	$81,-32($1)
	and	$14,$15,$16
	stqd	$84,-80($1)
	ori	$84,$3,0
	stqd	$83,-64($1)
	ceqbi	$13,$14,0
	stqd	$85,-96($1)
	clgti	$8,$84,3
	stqd	$86,-112($1)
	xsbh	$12,$13
	stqd	$0,16($1)
	ori	$83,$7,0
	stqd	$1,-432($1)
	ceqhi	$11,$12,0
label_1d874:
	hbrp
	ai	$1,$1,-432
	shlqbyi	$85,$6,0
	il	$4,0
	fsm	$10,$11
	ai	$86,$1,48	# 30
	il	$5,260	# 104
	ori	$3,$86,0
	andc	$81,$82,$10
	il	$6,-10008
	a	$9,$80,$81
	clgti	$7,$9,256	# 100
	or	$2,$7,$8
label_1d8a8:
	brnz	$2,label_1d960	# 1d960
	brsl	$0,func_1f718	# 1f718
	il	$23,32	# 20
	lqd	$22,48($1)	# 30
	cbd	$24,0($1)
	hbrr	label_1d8e0,func_1ced0	# 1ced0
	cbd	$5,1($1)
	cbd	$6,2($1)
	cbd	$19,3($1)
	shufb	$21,$23,$22,$24
	shufb	$20,$84,$21,$5
	shufb	$4,$80,$20,$6
	shufb	$3,$81,$4,$19
	stqd	$3,48($1)	# 30
label_1d8e0:
	brsl	$0,func_1ced0	# 1ced0
	il	$6,4
	ori	$5,$86,0
	shlqbyi	$7,$86,0
	il	$8,260	# 104
	fsmbi	$10,0
	ai	$9,$1,32	# 20
	il	$4,20	# 14
	brsl	$0,func_1cc70	# 1cc70
	ori	$6,$3,0
	brnz	$3,label_1d960	# 1d960
	hbrr	label_1d93c,func_1f8a0	# 1f8a0
	ilhu	$6,65534	# fffe
	lqd	$26,32($1)	# 20
	ori	$3,$85,0
	ai	$4,$1,52	# 34
	iohl	$6,31073	# 7961
	ai	$28,$26,-4
	clgti	$25,$26,3
	clgt	$27,$82,$28
	selb	$80,$82,$28,$27
	ori	$5,$80,0
	brz	$25,label_1d960	# 1d960
label_1d93c:
	brsl	$0,func_1f8a0	# 1f8a0
	lqd	$31,0($83)
	lqd	$30,48($1)	# 30
	cwd	$32,0($83)
	shufb	$29,$80,$31,$32
	rotqbyi	$3,$30,13
	stqd	$29,0($83)
	brsl	$0,func_1d648	# 1d648
	ori	$6,$3,0
label_1d960:
	ori	$3,$6,0
	lqd	$0,448($1)	# 1c0
	hbr	label_1d98c,$0
	ai	$1,$1,432	# 1b0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
label_1d98c:
	bi	$0
.global func_1d990
func_1d990:
	shli	$5,$3,2
	hbr	label_1d9c0,$0
	cgti	$3,$3,3
	fsmbi	$7,65535	# ffff
	ila	$6,212144	# 33cb0
	brnz	$3,label_1d9bc	# 1d9bc
	il	$7,0
	lqx	$8,$5,$6
	cwx	$9,$5,$6
	shufb	$2,$4,$8,$9
	stqx	$2,$5,$6
label_1d9bc:
	ori	$3,$7,0
label_1d9c0:
	bi	$0
	lnop
.global func_1d9c8
func_1d9c8:
	cgti	$2,$3,3
	fsmbi	$4,65535	# ffff
	brnz	$2,label_1d9dc	# 1d9dc
	il	$4,0
	stqr	$3,data_29860	# 29860
label_1d9dc:
	ori	$3,$4,0
	bi	$0
	lnop
.global func_1d9e8
func_1d9e8:
	stqr	$3,data_33cc0	# 33cc0
	il	$3,0
	bi	$0
	lnop
.global func_1d9f8
func_1d9f8:
	il	$7,-1
	hbrr	label_1da24,label_1da78	# 1da78
	cgti	$8,$3,3
	lqr	$2,data_29860	# 29860
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
	stqd	$1,-336($1)
	cgt	$4,$4,$2
	ai	$1,$1,-336
label_1da24:
	brnz	$4,label_1da78	# 1da78
	shli	$80,$3,2
	hbrr	label_1da50,func_1f6d0	# 1f6d0
	brnz	$8,label_1da7c	# 1da7c
	ila	$81,212144	# 33cb0
	il	$4,256	# 100
	lqx	$8,$80,$81
	a	$82,$80,$81
	ai	$3,$1,32	# 20
	rotqby	$7,$8,$82
	brz	$7,label_1da78	# 1da78
label_1da50:
	brsl	$0,func_1f6d0	# 1f6d0
	lqd	$10,272($1)	# 110
	il	$11,0
	lqx	$9,$80,$81
	ai	$3,$1,32	# 20
	cbd	$12,15($1)
	shufb	$5,$11,$10,$12
	rotqby	$6,$9,$82
	stqd	$5,272($1)	# 110
	bisl	$0,$6
label_1da78:
	il	$7,0
label_1da7c:
	lqd	$0,352($1)	# 160
	ai	$1,$1,336	# 150
	shlqbyi	$3,$7,0
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	bi	$0
.global func_1da98
func_1da98:
	hbrr	label_1dc18,func_1d9f8	# 1d9f8
	stqd	$80,-1216($1)
	il	$80,-1280
	stqd	$0,16($1)
	stqd	$1,-1280($1)
	a	$1,$1,$80
	ori	$80,$3,0
	fsmbi	$3,0
	ai	$2,$1,80	# 50
	stqd	$5,80($1)	# 50
	ai	$5,$1,112	# 70
	stqd	$7,112($1)	# 70
	il	$7,1168	# 490
	stqd	$6,96($1)	# 60
	stqd	$2,32($1)	# 20
	a	$6,$5,$7
	ori	$5,$4,0
	stqd	$8,128($1)	# 80
	il	$4,0
	stqd	$6,48($1)	# 30
	ai	$6,$1,32	# 20
	stqd	$9,144($1)	# 90
	stqd	$10,160($1)	# a0
	stqd	$11,176($1)	# b0
	stqd	$12,192($1)	# c0
	stqd	$13,208($1)	# d0
	stqd	$14,224($1)	# e0
	stqd	$15,240($1)	# f0
	stqd	$16,256($1)	# 100
	stqd	$17,272($1)	# 110
	stqd	$18,288($1)	# 120
	stqd	$19,304($1)	# 130
	stqd	$20,320($1)	# 140
label_1db1c:
	hbrp
	stqd	$21,336($1)	# 150
	stqd	$22,352($1)	# 160
	stqd	$23,368($1)	# 170
	stqd	$24,384($1)	# 180
	stqd	$25,400($1)	# 190
	stqd	$26,416($1)	# 1a0
	stqd	$27,432($1)	# 1b0
	stqd	$28,448($1)	# 1c0
	stqd	$29,464($1)	# 1d0
	stqd	$30,480($1)	# 1e0
	stqd	$31,496($1)	# 1f0
	stqd	$32,512($1)	# 200
	stqd	$33,528($1)	# 210
	stqd	$34,544($1)	# 220
	stqd	$35,560($1)	# 230
	stqd	$36,576($1)	# 240
label_1db60:
	hbrp
	stqd	$37,592($1)	# 250
	stqd	$38,608($1)	# 260
	stqd	$39,624($1)	# 270
	stqd	$40,640($1)	# 280
	stqd	$41,656($1)	# 290
	stqd	$42,672($1)	# 2a0
	stqd	$43,688($1)	# 2b0
	stqd	$44,704($1)	# 2c0
	stqd	$45,720($1)	# 2d0
	stqd	$46,736($1)	# 2e0
	stqd	$47,752($1)	# 2f0
	stqd	$48,768($1)	# 300
	stqd	$49,784($1)	# 310
	stqd	$50,800($1)	# 320
	stqd	$51,816($1)	# 330
	stqd	$52,832($1)	# 340
label_1dba4:
	hbrp
	stqd	$53,848($1)	# 350
	stqd	$54,864($1)	# 360
	stqd	$55,880($1)	# 370
	stqd	$56,896($1)	# 380
	stqd	$57,912($1)	# 390
	stqd	$58,928($1)	# 3a0
	stqd	$59,944($1)	# 3b0
	stqd	$60,960($1)	# 3c0
	stqd	$61,976($1)	# 3d0
	stqd	$62,992($1)	# 3e0
	stqd	$63,1008($1)	# 3f0
	stqd	$64,1024($1)	# 400
	stqd	$65,1040($1)	# 410
	stqd	$66,1056($1)	# 420
	stqd	$67,1072($1)	# 430
	stqd	$68,1088($1)	# 440
label_1dbe8:
	hbrp
	stqd	$69,1104($1)	# 450
	stqd	$70,1120($1)	# 460
	stqd	$71,1136($1)	# 470
	stqd	$72,1152($1)	# 480
	stqd	$73,1168($1)	# 490
	stqd	$74,1184($1)	# 4a0
	stqd	$75,1200($1)	# 4b0
	stqd	$76,1216($1)	# 4c0
	stqd	$77,1232($1)	# 4d0
	stqd	$78,1248($1)	# 4e0
	stqd	$79,1264($1)	# 4f0
label_1dc18:
	brsl	$0,func_1d9f8	# 1d9f8
	lqr	$2,data_33cc0	# 33cc0
	brz	$2,label_1dc2c	# 1dc2c
	ori	$3,$80,0
	bisl	$0,$2
label_1dc2c:
	br	label_1dc2c
.global func_1dc30
func_1dc30:
	il	$2,-1280
	hbrr	label_1ddb0,func_1d9f8	# 1d9f8
	stqd	$0,16($1)
	stqd	$1,-1280($1)
	a	$1,$1,$2
	stqd	$5,80($1)	# 50
	il	$5,1184	# 4a0
	stqd	$8,128($1)	# 80
	ai	$8,$1,96	# 60
	stqd	$4,64($1)	# 40
	ai	$4,$1,64	# 40
	stqd	$7,112($1)	# 70
	a	$7,$8,$5
	stqd	$6,96($1)	# 60
	ori	$5,$3,0
	stqd	$9,144($1)	# 90
	ai	$6,$1,32	# 20
	stqd	$10,160($1)	# a0
	il	$3,0
	stqd	$11,176($1)	# b0
	stqd	$12,192($1)	# c0
label_1dc84:
	hbrp
	stqd	$13,208($1)	# d0
	stqd	$14,224($1)	# e0
	stqd	$15,240($1)	# f0
	stqd	$16,256($1)	# 100
	stqd	$17,272($1)	# 110
	stqd	$18,288($1)	# 120
	stqd	$19,304($1)	# 130
	stqd	$20,320($1)	# 140
	stqd	$21,336($1)	# 150
	stqd	$22,352($1)	# 160
	stqd	$23,368($1)	# 170
	stqd	$24,384($1)	# 180
	stqd	$25,400($1)	# 190
	stqd	$26,416($1)	# 1a0
	stqd	$27,432($1)	# 1b0
	stqd	$28,448($1)	# 1c0
label_1dcc8:
	hbrp
	stqd	$29,464($1)	# 1d0
	stqd	$30,480($1)	# 1e0
	stqd	$31,496($1)	# 1f0
	stqd	$32,512($1)	# 200
	stqd	$33,528($1)	# 210
	stqd	$34,544($1)	# 220
	stqd	$35,560($1)	# 230
	stqd	$36,576($1)	# 240
	stqd	$37,592($1)	# 250
	stqd	$38,608($1)	# 260
	stqd	$39,624($1)	# 270
	stqd	$40,640($1)	# 280
	stqd	$41,656($1)	# 290
	stqd	$42,672($1)	# 2a0
	stqd	$43,688($1)	# 2b0
	stqd	$44,704($1)	# 2c0
label_1dd0c:
	hbrp
	stqd	$45,720($1)	# 2d0
	stqd	$46,736($1)	# 2e0
	stqd	$47,752($1)	# 2f0
	stqd	$48,768($1)	# 300
	stqd	$49,784($1)	# 310
	stqd	$50,800($1)	# 320
	stqd	$51,816($1)	# 330
	stqd	$52,832($1)	# 340
	stqd	$53,848($1)	# 350
	stqd	$54,864($1)	# 360
	stqd	$55,880($1)	# 370
	stqd	$56,896($1)	# 380
	stqd	$57,912($1)	# 390
	stqd	$58,928($1)	# 3a0
	stqd	$59,944($1)	# 3b0
	stqd	$60,960($1)	# 3c0
label_1dd50:
	hbrp
	stqd	$61,976($1)	# 3d0
	stqd	$62,992($1)	# 3e0
	stqd	$63,1008($1)	# 3f0
	stqd	$64,1024($1)	# 400
	stqd	$65,1040($1)	# 410
	stqd	$66,1056($1)	# 420
	stqd	$67,1072($1)	# 430
	stqd	$68,1088($1)	# 440
	stqd	$69,1104($1)	# 450
	stqd	$70,1120($1)	# 460
	stqd	$71,1136($1)	# 470
	stqd	$72,1152($1)	# 480
	stqd	$73,1168($1)	# 490
	stqd	$74,1184($1)	# 4a0
	stqd	$75,1200($1)	# 4b0
	stqd	$76,1216($1)	# 4c0
label_1dd94:
	hbrp
	stqd	$77,1232($1)	# 4d0
	stqd	$78,1248($1)	# 4e0
	stqd	$79,1264($1)	# 4f0
	stqd	$7,48($1)	# 30
	stqd	$4,32($1)	# 20
	il	$4,3
label_1ddb0:
	brsl	$0,func_1d9f8	# 1d9f8
	lqd	$0,1296($1)	# 510
	il	$2,1280	# 500
	a	$1,$1,$2
	bi	$0
	lnop
.global func_1ddc8
func_1ddc8:
	il	$2,-1280
	hbrr	label_1df48,func_1d9f8	# 1d9f8
	stqd	$0,16($1)
	stqd	$1,-1280($1)
	a	$1,$1,$2
	stqd	$5,80($1)	# 50
	il	$5,1184	# 4a0
	stqd	$8,128($1)	# 80
	ai	$8,$1,96	# 60
	stqd	$4,64($1)	# 40
	ai	$4,$1,64	# 40
	stqd	$7,112($1)	# 70
	a	$7,$8,$5
	stqd	$6,96($1)	# 60
	ori	$5,$3,0
	stqd	$9,144($1)	# 90
	ai	$6,$1,32	# 20
	stqd	$10,160($1)	# a0
	il	$3,0
	stqd	$11,176($1)	# b0
	stqd	$12,192($1)	# c0
label_1de1c:
	hbrp
	stqd	$13,208($1)	# d0
	stqd	$14,224($1)	# e0
	stqd	$15,240($1)	# f0
	stqd	$16,256($1)	# 100
	stqd	$17,272($1)	# 110
	stqd	$18,288($1)	# 120
	stqd	$19,304($1)	# 130
	stqd	$20,320($1)	# 140
	stqd	$21,336($1)	# 150
	stqd	$22,352($1)	# 160
	stqd	$23,368($1)	# 170
	stqd	$24,384($1)	# 180
	stqd	$25,400($1)	# 190
	stqd	$26,416($1)	# 1a0
	stqd	$27,432($1)	# 1b0
	stqd	$28,448($1)	# 1c0
label_1de60:
	hbrp
	stqd	$29,464($1)	# 1d0
	stqd	$30,480($1)	# 1e0
	stqd	$31,496($1)	# 1f0
	stqd	$32,512($1)	# 200
	stqd	$33,528($1)	# 210
	stqd	$34,544($1)	# 220
	stqd	$35,560($1)	# 230
	stqd	$36,576($1)	# 240
	stqd	$37,592($1)	# 250
	stqd	$38,608($1)	# 260
	stqd	$39,624($1)	# 270
	stqd	$40,640($1)	# 280
	stqd	$41,656($1)	# 290
	stqd	$42,672($1)	# 2a0
	stqd	$43,688($1)	# 2b0
	stqd	$44,704($1)	# 2c0
label_1dea4:
	hbrp
	stqd	$45,720($1)	# 2d0
	stqd	$46,736($1)	# 2e0
	stqd	$47,752($1)	# 2f0
	stqd	$48,768($1)	# 300
	stqd	$49,784($1)	# 310
	stqd	$50,800($1)	# 320
	stqd	$51,816($1)	# 330
	stqd	$52,832($1)	# 340
	stqd	$53,848($1)	# 350
	stqd	$54,864($1)	# 360
	stqd	$55,880($1)	# 370
	stqd	$56,896($1)	# 380
	stqd	$57,912($1)	# 390
	stqd	$58,928($1)	# 3a0
	stqd	$59,944($1)	# 3b0
	stqd	$60,960($1)	# 3c0
label_1dee8:
	hbrp
	stqd	$61,976($1)	# 3d0
	stqd	$62,992($1)	# 3e0
	stqd	$63,1008($1)	# 3f0
	stqd	$64,1024($1)	# 400
	stqd	$65,1040($1)	# 410
	stqd	$66,1056($1)	# 420
	stqd	$67,1072($1)	# 430
	stqd	$68,1088($1)	# 440
	stqd	$69,1104($1)	# 450
	stqd	$70,1120($1)	# 460
	stqd	$71,1136($1)	# 470
	stqd	$72,1152($1)	# 480
	stqd	$73,1168($1)	# 490
	stqd	$74,1184($1)	# 4a0
	stqd	$75,1200($1)	# 4b0
	stqd	$76,1216($1)	# 4c0
label_1df2c:
	hbrp
	stqd	$77,1232($1)	# 4d0
	stqd	$78,1248($1)	# 4e0
	stqd	$79,1264($1)	# 4f0
	stqd	$7,48($1)	# 30
	stqd	$4,32($1)	# 20
	il	$4,2
label_1df48:
	brsl	$0,func_1d9f8	# 1d9f8
	lqd	$0,1296($1)	# 510
	il	$2,1280	# 500
	a	$1,$1,$2
	bi	$0
	lnop
.global func_1df60
func_1df60:
	il	$2,-1280
	hbrr	label_1e0e0,func_1d9f8	# 1d9f8
	stqd	$0,16($1)
	stqd	$1,-1280($1)
	a	$1,$1,$2
	stqd	$5,80($1)	# 50
	il	$5,1184	# 4a0
	stqd	$8,128($1)	# 80
	ai	$8,$1,96	# 60
	stqd	$4,64($1)	# 40
	ai	$4,$1,64	# 40
	stqd	$7,112($1)	# 70
	a	$7,$8,$5
	stqd	$6,96($1)	# 60
	ori	$5,$3,0
	stqd	$9,144($1)	# 90
	ai	$6,$1,32	# 20
	stqd	$10,160($1)	# a0
	il	$3,0
	stqd	$11,176($1)	# b0
	stqd	$12,192($1)	# c0
label_1dfb4:
	hbrp
	stqd	$13,208($1)	# d0
	stqd	$14,224($1)	# e0
	stqd	$15,240($1)	# f0
	stqd	$16,256($1)	# 100
	stqd	$17,272($1)	# 110
	stqd	$18,288($1)	# 120
	stqd	$19,304($1)	# 130
	stqd	$20,320($1)	# 140
	stqd	$21,336($1)	# 150
	stqd	$22,352($1)	# 160
	stqd	$23,368($1)	# 170
	stqd	$24,384($1)	# 180
	stqd	$25,400($1)	# 190
	stqd	$26,416($1)	# 1a0
	stqd	$27,432($1)	# 1b0
	stqd	$28,448($1)	# 1c0
label_1dff8:
	hbrp
	stqd	$29,464($1)	# 1d0
	stqd	$30,480($1)	# 1e0
	stqd	$31,496($1)	# 1f0
	stqd	$32,512($1)	# 200
	stqd	$33,528($1)	# 210
	stqd	$34,544($1)	# 220
	stqd	$35,560($1)	# 230
	stqd	$36,576($1)	# 240
	stqd	$37,592($1)	# 250
	stqd	$38,608($1)	# 260
	stqd	$39,624($1)	# 270
	stqd	$40,640($1)	# 280
	stqd	$41,656($1)	# 290
	stqd	$42,672($1)	# 2a0
	stqd	$43,688($1)	# 2b0
	stqd	$44,704($1)	# 2c0
label_1e03c:
	hbrp
	stqd	$45,720($1)	# 2d0
	stqd	$46,736($1)	# 2e0
	stqd	$47,752($1)	# 2f0
	stqd	$48,768($1)	# 300
	stqd	$49,784($1)	# 310
	stqd	$50,800($1)	# 320
	stqd	$51,816($1)	# 330
	stqd	$52,832($1)	# 340
	stqd	$53,848($1)	# 350
	stqd	$54,864($1)	# 360
	stqd	$55,880($1)	# 370
	stqd	$56,896($1)	# 380
	stqd	$57,912($1)	# 390
	stqd	$58,928($1)	# 3a0
	stqd	$59,944($1)	# 3b0
	stqd	$60,960($1)	# 3c0
label_1e080:
	hbrp
	stqd	$61,976($1)	# 3d0
	stqd	$62,992($1)	# 3e0
	stqd	$63,1008($1)	# 3f0
	stqd	$64,1024($1)	# 400
	stqd	$65,1040($1)	# 410
	stqd	$66,1056($1)	# 420
	stqd	$67,1072($1)	# 430
	stqd	$68,1088($1)	# 440
	stqd	$69,1104($1)	# 450
	stqd	$70,1120($1)	# 460
	stqd	$71,1136($1)	# 470
	stqd	$72,1152($1)	# 480
	stqd	$73,1168($1)	# 490
	stqd	$74,1184($1)	# 4a0
	stqd	$75,1200($1)	# 4b0
	stqd	$76,1216($1)	# 4c0
label_1e0c4:
	hbrp
	stqd	$77,1232($1)	# 4d0
	stqd	$78,1248($1)	# 4e0
	stqd	$79,1264($1)	# 4f0
	stqd	$7,48($1)	# 30
	stqd	$4,32($1)	# 20
	il	$4,1
label_1e0e0:
	brsl	$0,func_1d9f8	# 1d9f8
	lqd	$0,1296($1)	# 510
	il	$2,1280	# 500
	a	$1,$1,$2
	bi	$0
	lnop
.global func_1e0f8
func_1e0f8:
	br	func_1e0f8
	lnop
.global func_1e100
func_1e100:
	hbrr	label_1e174,label_1f5ac	# 1f5ac
	stqd	$83,-64($1)
	ori	$83,$7,0
	stqd	$85,-96($1)
	ori	$85,$6,0
	stqd	$87,-128($1)
	ori	$87,$5,0
	stqd	$88,-144($1)
	ori	$88,$4,0
	stqd	$89,-160($1)
	ori	$89,$3,0
	stqd	$91,-192($1)
	il	$91,0
	stqd	$0,16($1)
	stqd	$80,-16($1)
	stqd	$81,-32($1)
	stqd	$82,-48($1)
label_1e144:
	hbrp
	stqd	$84,-80($1)
	stqd	$86,-112($1)
	stqd	$90,-176($1)
	stqd	$92,-208($1)
	stqd	$93,-224($1)
	stqd	$1,-336($1)
	ai	$1,$1,-336
	lqd	$8,96($1)	# 60
	cwd	$3,0($1)
	shufb	$2,$5,$8,$3
	stqd	$2,96($1)	# 60
label_1e174:
	br	label_1f5ac	# 1f5ac
label_1e178:
	ceqbi	$5,$6,37	# 25
	fsmbi	$82,0
	il	$86,0
	fsmbi	$84,0
	xsbh	$4,$5
	brhz	$4,label_1f56c	# 1f56c
label_1e190:
	ai	$85,$85,1
	lqd	$9,0($85)
	ai	$10,$85,13
	rotqby	$4,$9,$10
	ceqbi	$7,$4,100	# 64
	xsbh	$6,$7
	brhnz	$6,label_1e8e4	# 1e8e4
	cgtbi	$12,$4,100	# 64
	xsbh	$11,$12
	brhnz	$11,label_1e254	# 1e254
	ceqbi	$14,$4,48	# 30
	xsbh	$13,$14
	brhnz	$13,label_1e2ec	# 1e2ec
	cgtbi	$16,$4,48	# 30
	xsbh	$15,$16
	brhnz	$15,label_1e22c	# 1e22c
	ceqbi	$18,$4,42	# 2a
	xsbh	$17,$18
	brhnz	$17,label_1e35c	# 1e35c
	cgtbi	$20,$4,42	# 2a
	xsbh	$19,$20
	brhnz	$19,label_1e204	# 1e204
	ceqbi	$22,$4,32	# 20
	xsbh	$21,$22
	brhnz	$21,label_1e498	# 1e498
	ceqbi	$24,$4,35	# 23
	xsbh	$23,$24
	brhnz	$23,label_1e4a0	# 1e4a0
	br	label_1f190	# 1f190
label_1e204:
	ceqbi	$26,$4,45	# 2d
	xsbh	$25,$26
	brhnz	$25,label_1e2dc	# 1e2dc
	ceqbi	$28,$4,46	# 2e
	xsbh	$27,$28
	brhnz	$27,label_1e3b8	# 1e3b8
	ceqbi	$30,$4,43	# 2b
	xsbh	$29,$30
	brhnz	$29,label_1e2e4	# 1e2e4
	br	label_1f190	# 1f190
label_1e22c:
	cgtbi	$32,$4,57	# 39
	xsbh	$31,$32
	brhz	$31,label_1e2f4	# 1e2f4
	ceqbi	$34,$4,88	# 58
	xsbh	$33,$34
	brhnz	$33,label_1e6e4	# 1e6e4
	ceqbi	$36,$4,99	# 63
	xsbh	$35,$36
	brhnz	$35,label_1eeec	# 1eeec
	br	label_1f190	# 1f190
label_1e254:
	ceqbi	$38,$4,111	# 6f
	xsbh	$37,$38
	brhnz	$37,label_1e4b8	# 1e4b8
	cgtbi	$40,$4,111	# 6f
	xsbh	$39,$40
	brhnz	$39,label_1e294	# 1e294
	ceqbi	$42,$4,105	# 69
	xsbh	$41,$42
	brhnz	$41,label_1e8e4	# 1e8e4
	ceqbi	$44,$4,108	# 6c
	xsbh	$43,$44
	brhnz	$43,label_1e4a8	# 1e4a8
	ceqbi	$46,$4,104	# 68
	xsbh	$45,$46
	brhnz	$45,label_1e4b0	# 1e4b0
	br	label_1f190	# 1f190
label_1e294:
	hbrr	label_1e2bc,label_1f190	# 1f190
	ceqbi	$48,$4,115	# 73
	xsbh	$47,$48
	brhnz	$47,label_1eda8	# 1eda8
	cgtbi	$50,$4,115	# 73
	xsbh	$49,$50
	brhnz	$49,label_1e2c0	# 1e2c0
	ceqbi	$52,$4,112	# 70
	xsbh	$51,$52
	brhnz	$51,label_1ef9c	# 1ef9c
label_1e2bc:
	br	label_1f190	# 1f190
label_1e2c0:
	ceqbi	$54,$4,117	# 75
	xsbh	$53,$54
	brhnz	$53,label_1ebb8	# 1ebb8
	ceqbi	$56,$4,120	# 78
	xsbh	$55,$56
	brhnz	$55,label_1e6b0	# 1e6b0
	br	label_1f190	# 1f190
label_1e2dc:
	ori	$82,$82,1
	br	label_1e190	# 1e190
label_1e2e4:
	ori	$82,$82,2
	br	label_1e190	# 1e190
label_1e2ec:
	ori	$82,$82,4
	br	label_1e190	# 1e190
label_1e2f4:
	hbrr	label_1e340,label_1e2fc	# 1e2fc
	il	$4,0
label_1e2fc:
	ai	$70,$85,13
	shli	$67,$4,3
	lqd	$69,0($85)
	ai	$85,$85,1
	a	$66,$4,$4
	ai	$64,$85,13
	lqd	$63,0($85)
	a	$61,$66,$67
	rotqby	$68,$69,$70
	rotqby	$5,$63,$64
	xsbh	$65,$68
	xshw	$62,$65
	ahi	$60,$5,-48
	a	$59,$61,$62
	clgtbi	$58,$60,9
	ai	$4,$59,-48
	xsbh	$57,$58
label_1e340:
	brhz	$57,label_1e2fc	# 1e2fc
	ceqbi	$72,$5,0
	xsbh	$71,$72
	brhnz	$71,label_1f5ac	# 1f5ac
	ai	$85,$85,-1
	shlqbyi	$86,$4,0
	br	label_1e190	# 1e190
label_1e35c:
	lqd	$78,0($83)
	lqd	$6,16($83)
	hbrr	label_1e3b4,label_1e190	# 1e190
	ai	$4,$78,16
	clgt	$7,$78,$6
	clgt	$2,$4,$6
	nor	$3,$7,$7
	sfi	$93,$2,0
	sfi	$8,$3,0
	ai	$80,$6,32	# 20
	and	$92,$93,$8
	ceqbi	$90,$92,0
	xsbh	$86,$90
	ceqhi	$81,$86,0
	fsm	$79,$81
	selb	$76,$78,$80,$79
	ai	$77,$76,16
	stqd	$77,0($83)
	lqd	$75,0($76)
	rotqby	$73,$75,$76
	cgti	$74,$73,-1
	orc	$86,$73,$74
label_1e3b4:
	br	label_1e190	# 1e190
label_1e3b8:
	hbrr	label_1e3dc,label_1e448	# 1e448
	ai	$85,$85,1
	ori	$82,$82,32	# 20
	fsmbi	$6,0
	ai	$12,$85,13
	lqd	$11,0($85)
	rotqby	$10,$11,$12
	ceqbi	$9,$10,42	# 2a
	xsbh	$84,$9
label_1e3dc:
	brhz	$84,label_1e448	# 1e448
	lqd	$18,0($83)
	lqd	$27,16($83)
	hbrr	label_1e438,label_1e190	# 1e190
	ai	$31,$18,16
	clgt	$30,$18,$27
	clgt	$29,$31,$27
	nor	$28,$30,$30
	sfi	$25,$29,0
	sfi	$26,$28,0
	ai	$20,$27,32	# 20
	and	$24,$25,$26
	ceqbi	$23,$24,0
	xsbh	$22,$23
	ceqhi	$21,$22,0
	fsm	$19,$21
	selb	$16,$18,$20,$19
	ai	$17,$16,16
	stqd	$17,0($83)
	lqd	$15,0($16)
	rotqby	$13,$15,$16
	cgti	$14,$13,-1
	orc	$84,$13,$14
label_1e438:
	br	label_1e190	# 1e190
label_1e43c:
	hbrr	label_1e478,0
	ai	$6,$4,-48
	ai	$85,$85,1
label_1e448:
	ai	$40,$85,13
	lqd	$39,0($85)
	shli	$42,$6,3
	a	$41,$6,$6
	a	$33,$41,$42
	rotqby	$38,$39,$40
	ahi	$37,$38,-48
	xsbh	$36,$38
	clgtbi	$35,$37,9
	xshw	$34,$36
	xsbh	$32,$35
	a	$4,$33,$34
label_1e478:
	brhz	$32,label_1e43c	# 1e43c
	ceqbi	$44,$38,0
	xsbh	$43,$44
	brhnz	$43,label_1f5ac	# 1f5ac
	cgti	$45,$6,-1
	ai	$85,$85,-1
	orc	$84,$6,$45
	br	label_1e190	# 1e190
label_1e498:
	ori	$82,$82,8
	br	label_1e190	# 1e190
label_1e4a0:
	ori	$82,$82,16
	br	label_1e190	# 1e190
label_1e4a8:
	ori	$82,$82,64	# 40
	br	label_1e190	# 1e190
label_1e4b0:
	ori	$82,$82,128	# 80
	br	label_1e190	# 1e190
label_1e4b8:
	andi	$46,$82,64	# 40
	brz	$46,label_1e514	# 1e514
	lqd	$50,0($83)
	lqd	$59,16($83)
	hbrr	label_1e510,label_1e5c8	# 1e5c8
	ai	$5,$50,16
	clgt	$62,$50,$59
	clgt	$61,$5,$59
	nor	$60,$62,$62
	sfi	$57,$61,0
	sfi	$58,$60,0
	ai	$52,$59,32	# 20
	and	$56,$57,$58
	ceqbi	$55,$56,0
	xsbh	$54,$55
	ceqhi	$53,$54,0
	fsm	$51,$53
	selb	$48,$50,$52,$51
	ai	$49,$48,16
	stqd	$49,0($83)
	lqd	$47,0($48)
	rotqby	$7,$47,$48
label_1e510:
	br	label_1e5c8	# 1e5c8
label_1e514:
	andi	$65,$82,-128
	lqd	$5,0($83)
	ceqbi	$64,$65,0
	lqd	$4,16($83)
	xsbh	$63,$64
	brhnz	$63,label_1e580	# 1e580
	ai	$90,$5,16
	clgt	$81,$5,$4
	hbrr	label_1e57c,label_1e5c4	# 1e5c4
	clgt	$80,$90,$4
	nor	$79,$81,$81
	sfi	$77,$80,0
	sfi	$78,$79,0
	ai	$71,$4,32	# 20
	and	$76,$77,$78
	ila	$67,65535	# ffff
	ceqbi	$75,$76,0
	xsbh	$74,$75
	ceqhi	$73,$74,0
	fsm	$72,$73
	selb	$69,$5,$71,$72
	ai	$70,$69,16
	stqd	$70,0($83)
	lqd	$68,0($69)
	rotqby	$66,$68,$69
	and	$2,$66,$67
label_1e57c:
	br	label_1e5c4	# 1e5c4
label_1e580:
	ai	$17,$5,16
	clgt	$16,$5,$4
	clgt	$15,$17,$4
	nor	$14,$16,$16
	sfi	$12,$15,0
	sfi	$13,$14,0
	ai	$6,$4,32	# 20
	and	$11,$12,$13
	ceqbi	$10,$11,0
	xsbh	$9,$10
	ceqhi	$2,$9,0
	fsm	$3,$2
	selb	$93,$5,$6,$3
	ai	$8,$93,16
	stqd	$8,0($83)
	lqd	$92,0($93)
	rotqby	$2,$92,$93
label_1e5c4:
	rotqmbyi	$7,$2,-4
label_1e5c8:
	il	$22,0
	fsmbi	$19,257	# 101
	ai	$8,$1,63	# 3f
	fsmbi	$18,257	# 101
	ceq	$21,$7,$22
	lqr	$12,data_22810	# 22810
	il	$11,0
	gb	$20,$21
	andbi	$10,$19,7
	andbi	$9,$18,48	# 30
	cgti	$4,$20,11
	brz	$4,label_1e640	# 1e640
	rotmi	$30,$82,-5
	hbrr	label_1e63c,label_1e6a0	# 1e6a0
	ceqi	$31,$84,0
	nor	$29,$31,$31
	xori	$28,$30,1
	sfi	$27,$29,0
	andi	$26,$28,1
	or	$25,$26,$27
	ceqbi	$24,$25,0
	xsbh	$23,$24
	brhnz	$23,label_1e6a0	# 1e6a0
	lqd	$33,48($1)	# 30
	il	$34,48	# 30
	cbd	$35,15($1)
	ai	$8,$1,62	# 3e
	shufb	$32,$34,$33,$35
	stqd	$32,48($1)	# 30
label_1e63c:
	br	label_1e6a0	# 1e6a0
label_1e640:
	and	$42,$7,$10
	hbrr	label_1e67c,label_1e640	# 1e640
	rotqmbii	$7,$7,-3
	cg	$45,$42,$9
	lqd	$38,0($8)
	shufb	$41,$45,$45,$12
	ceq	$44,$7,$11
	cbd	$40,0($8)
	gb	$43,$44
	addx	$41,$42,$9
	shlqbyi	$39,$41,4
	cgti	$36,$43,11
	shufb	$37,$39,$38,$40
	stqd	$37,0($8)
	ai	$8,$8,-1
label_1e67c:
	brz	$36,label_1e640	# 1e640
	andi	$46,$82,16
	brz	$46,label_1e6a0	# 1e6a0
	il	$48,48	# 30
	lqd	$47,0($8)
	cbd	$49,0($8)
	shufb	$7,$48,$47,$49
	stqd	$7,0($8)
	ai	$8,$8,-1
label_1e6a0:
	ai	$50,$1,63	# 3f
	ai	$80,$8,1
	sf	$8,$8,$50
	br	label_1f1d0	# 1f1d0
label_1e6b0:
	andi	$51,$82,16
	hbrr	label_1e6e0,label_1e710	# 1e710
	ila	$10,161744	# 277d0
	fsmbi	$90,0
	brz	$51,label_1e718	# 1e718
	lqd	$52,64($1)	# 40
	il	$53,48	# 30
	cbd	$54,0($1)
	il	$90,2
	cbd	$5,1($1)
	il	$2,120	# 78
	shufb	$3,$53,$52,$54
label_1e6e0:
	br	label_1e710	# 1e710
label_1e6e4:
	andi	$55,$82,16
	ila	$10,155824	# 260b0
	fsmbi	$90,0
	brz	$55,label_1e718	# 1e718
	lqd	$56,64($1)	# 40
	il	$57,48	# 30
	cbd	$58,0($1)
	il	$90,2
	cbd	$5,1($1)
	il	$2,88	# 58
	shufb	$3,$57,$56,$58
label_1e710:
	shufb	$59,$2,$3,$5
	stqd	$59,64($1)	# 40
label_1e718:
	andi	$60,$82,64	# 40
	brz	$60,label_1e774	# 1e774
	lqd	$63,0($83)
	lqd	$72,16($83)
	hbrr	label_1e770,label_1e828	# 1e828
	ai	$76,$63,16
	clgt	$75,$63,$72
	clgt	$74,$76,$72
	nor	$73,$75,$75
	sfi	$70,$74,0
	sfi	$71,$73,0
	ai	$65,$72,32	# 20
	and	$69,$70,$71
	ceqbi	$68,$69,0
	xsbh	$67,$68
	ceqhi	$66,$67,0
	fsm	$64,$66
	selb	$62,$63,$65,$64
	ai	$5,$62,16
	stqd	$5,0($83)
	lqd	$61,0($62)
	rotqby	$7,$61,$62
label_1e770:
	br	label_1e828	# 1e828
label_1e774:
	andi	$79,$82,-128
	lqd	$5,0($83)
	ceqbi	$78,$79,0
	lqd	$4,16($83)
	xsbh	$77,$78
	brhnz	$77,label_1e7e0	# 1e7e0
	ai	$18,$5,16
	clgt	$17,$5,$4
	hbrr	label_1e7dc,label_1e824	# 1e824
	clgt	$16,$18,$4
	nor	$15,$17,$17
	sfi	$13,$16,0
	sfi	$14,$15,0
	ai	$6,$4,32	# 20
	and	$12,$13,$14
	ila	$81,65535	# ffff
	ceqbi	$11,$12,0
	xsbh	$9,$11
	ceqhi	$2,$9,0
	fsm	$3,$2
	selb	$93,$5,$6,$3
	ai	$8,$93,16
	stqd	$8,0($83)
	lqd	$92,0($93)
	rotqby	$80,$92,$93
	and	$2,$80,$81
label_1e7dc:
	br	label_1e824	# 1e824
label_1e7e0:
	clgt	$31,$5,$4
	ai	$32,$5,16
	nor	$29,$31,$31
	clgt	$30,$32,$4
	sfi	$28,$29,0
	sfi	$27,$30,0
	ai	$21,$4,32	# 20
	and	$26,$27,$28
	ceqbi	$25,$26,0
	xsbh	$24,$25
	ceqhi	$23,$24,0
	fsm	$22,$23
	selb	$4,$5,$21,$22
	ai	$20,$4,16
	stqd	$20,0($83)
	lqd	$19,0($4)
	rotqby	$2,$19,$4
label_1e824:
	rotqmbyi	$7,$2,-4
label_1e828:
	il	$36,0
	fsmbi	$9,0
	ai	$8,$1,63	# 3f
	ceq	$35,$7,$36
	gb	$34,$35
	cgti	$33,$34,11
	brz	$33,label_1e890	# 1e890
	hbrr	label_1e88c,label_1e8d4	# 1e8d4
	rotmi	$42,$82,-5
	ceqi	$43,$84,0
	nor	$41,$43,$43
	xori	$90,$42,1
	sfi	$40,$41,0
	andi	$39,$90,1
	il	$90,0
	or	$38,$39,$40
	ceqbi	$37,$38,0
	xsbh	$10,$37
	brhnz	$10,label_1e8d4	# 1e8d4
	lqd	$45,48($1)	# 30
	il	$46,48	# 30
	cbd	$47,15($1)
	ai	$8,$1,62	# 3e
	shufb	$44,$46,$45,$47
	stqd	$44,48($1)	# 30
label_1e88c:
	br	label_1e8d4	# 1e8d4
label_1e890:
	shlqbyi	$59,$7,4
	hbrr	label_1e8d0,label_1e890	# 1e890
	rotqmbii	$7,$7,-4
	lqd	$50,0($8)
	andi	$58,$59,15
	cbd	$52,0($8)
	a	$55,$10,$58
	lqx	$53,$10,$58
	ceq	$57,$7,$9
	ai	$54,$55,13
	gb	$56,$57
	rotqby	$51,$53,$54
	cgti	$48,$56,11
	shufb	$49,$51,$50,$52
	stqd	$49,0($8)
	ai	$8,$8,-1
label_1e8d0:
	brz	$48,label_1e890	# 1e890
label_1e8d4:
	ai	$60,$1,63	# 3f
	ai	$80,$8,1
	sf	$8,$8,$60
	br	label_1f1d4	# 1f1d4
label_1e8e4:
	andi	$7,$82,64	# 40
	brz	$7,label_1e940	# 1e940
	lqd	$63,0($83)
	lqd	$72,16($83)
	hbrr	label_1e93c,label_1e9f8	# 1e9f8
	ai	$76,$63,16
	clgt	$75,$63,$72
	clgt	$74,$76,$72
	nor	$73,$75,$75
	sfi	$70,$74,0
	sfi	$71,$73,0
	ai	$65,$72,32	# 20
	and	$69,$70,$71
	ceqbi	$68,$69,0
	xsbh	$67,$68
	ceqhi	$66,$67,0
	fsm	$64,$66
	selb	$62,$63,$65,$64
	ai	$5,$62,16
	stqd	$5,0($83)
	lqd	$61,0($62)
	rotqby	$80,$61,$62
label_1e93c:
	br	label_1e9f8	# 1e9f8
label_1e940:
	andi	$79,$82,-128
	lqd	$5,0($83)
	lqd	$4,16($83)
	ceqbi	$78,$79,0
	xsbh	$77,$78
	brhnz	$77,label_1e9a8	# 1e9a8
	clgt	$17,$5,$4
	hbrr	label_1e9a4,label_1e9f0	# 1e9f0
	ai	$18,$5,16
	nor	$15,$17,$17
	clgt	$16,$18,$4
	sfi	$14,$15,0
	sfi	$13,$16,0
	ai	$6,$4,32	# 20
	and	$12,$13,$14
	ceqbi	$11,$12,0
	xsbh	$9,$11
	ceqhi	$2,$9,0
	fsm	$3,$2
	selb	$93,$5,$6,$3
	ai	$8,$93,16
	stqd	$8,0($83)
	lqd	$92,0($93)
	rotqby	$81,$92,$93
	xshw	$4,$81
label_1e9a4:
	br	label_1e9f0	# 1e9f0
label_1e9a8:
	clgt	$32,$5,$4
	ai	$33,$5,16
	nor	$30,$32,$32
	clgt	$31,$33,$4
	sfi	$29,$30,0
	sfi	$28,$31,0
	ai	$22,$4,32	# 20
	and	$27,$28,$29
	ceqbi	$26,$27,0
	xsbh	$25,$26
	ceqhi	$24,$25,0
	fsm	$23,$24
	selb	$4,$5,$22,$23
	ai	$21,$4,16
	stqd	$21,0($83)
	lqd	$20,0($4)
	rotqby	$19,$20,$4
	ori	$4,$19,0
label_1e9f0:
	rotqmbyi	$34,$4,-4
	xswd	$80,$34
label_1e9f8:
	il	$39,0
	hbrr	label_1ea30,label_1ea50	# 1ea50
	clgt	$38,$39,$80
	ceq	$36,$39,$80
	cgt	$37,$39,$80
	xswd	$10,$38
	selb	$35,$37,$10,$36
	brnz	$35,label_1ea5c	# 1ea5c
	andi	$40,$82,2
	brz	$40,label_1ea34	# 1ea34
	il	$90,1
	lqd	$2,64($1)	# 40
	il	$3,43	# 2b
	cbd	$4,0($1)
label_1ea30:
	br	label_1ea50	# 1ea50
label_1ea34:
	andi	$41,$82,8
	il	$90,0
	brz	$41,label_1ea90	# 1ea90
	il	$90,1
	lqd	$2,64($1)	# 40
	il	$3,32	# 20
	cbd	$4,0($1)
label_1ea50:
	shufb	$42,$3,$2,$4
	stqd	$42,64($1)	# 40
	br	label_1ea90	# 1ea90
label_1ea5c:
	hbrr	label_1ea88,label_1eaf0	# 1eaf0
	il	$48,45	# 2d
	fsmbi	$50,32896	# 8080
	lqd	$47,64($1)	# 40
	cbd	$49,0($1)
	andbi	$46,$50,-128
	ceq	$45,$80,$46
	shufb	$43,$48,$47,$49
	gb	$44,$45
	stqd	$43,64($1)	# 40
	cgti	$90,$44,11
label_1ea88:
	brnz	$90,label_1eaf0	# 1eaf0
	br	label_1eb18	# 1eb18
label_1ea90:
	il	$54,0
	ai	$81,$1,63	# 3f
	ceq	$53,$80,$54
	gb	$52,$53
	cgti	$51,$52,11
	brz	$51,label_1eb88	# 1eb88
	rotmi	$80,$82,-5
	hbrr	label_1eaec,label_1eba8	# 1eba8
	ceqi	$61,$84,0
	nor	$7,$61,$61
	xori	$60,$80,1
	sfi	$59,$7,0
	andi	$58,$60,1
	or	$57,$58,$59
	ceqbi	$56,$57,0
	xsbh	$55,$56
	brhnz	$55,label_1eba8	# 1eba8
	lqd	$5,48($1)	# 30
	il	$63,48	# 30
	cbd	$64,15($1)
	ai	$81,$1,62	# 3e
	shufb	$62,$63,$5,$64
	stqd	$62,48($1)	# 30
label_1eaec:
	br	label_1eba8	# 1eba8
label_1eaf0:
	hbrr	label_1eb14,label_1eb88	# 1eb88
	lqd	$66,48($1)	# 30
	il	$67,56	# 38
	cbd	$68,15($1)
	ai	$81,$1,62	# 3e
	lqr	$80,data_277f0	# 277f0
	il	$90,1
	shufb	$65,$67,$66,$68
	stqd	$65,48($1)	# 30
label_1eb14:
	br	label_1eb88	# 1eb88
label_1eb18:
	il	$69,0
	lqr	$71,data_22830	# 22830
	ai	$81,$1,63	# 3f
	bg	$70,$80,$69
	il	$90,1
	shufb	$3,$70,$70,$71
	sfx	$3,$80,$69
	br	label_1eb84	# 1eb84
label_1eb38:
	brsl	$0,func_205b0	# 205b0
	fsmbi	$8,257	# 101
	ori	$77,$3,0
	lqr	$92,data_22810	# 22810
	ori	$3,$80,0
	hbrr	label_1eb80,func_1fa78	# 1fa78
	lqd	$73,0($81)
	andbi	$78,$8,48	# 30
	cbd	$75,0($81)
	cg	$79,$77,$78
	fsmbi	$93,257	# 101
	shufb	$76,$79,$79,$92
	andbi	$4,$93,10
	addx	$76,$77,$78
	shlqbyi	$74,$76,4
	shufb	$72,$74,$73,$75
	stqd	$72,0($81)
	ai	$81,$81,-1
label_1eb80:
	brsl	$0,func_1fa78	# 1fa78
label_1eb84:
	ori	$80,$3,0
label_1eb88:
	il	$12,0
	fsmbi	$9,257	# 101
	ori	$3,$80,0
	ceq	$11,$80,$12
	andbi	$4,$9,10
	gb	$2,$11
	cgti	$6,$2,11
	brz	$6,label_1eb38	# 1eb38
label_1eba8:
	ai	$3,$1,63	# 3f
	ai	$80,$81,1
	sf	$8,$81,$3
	br	label_1f1d4	# 1f1d4
label_1ebb8:
	andi	$81,$82,64	# 40
	brz	$81,label_1ec14	# 1ec14
	lqd	$16,0($83)
	lqd	$24,16($83)
	hbrr	label_1ec10,label_1ecc8	# 1ecc8
	ai	$28,$16,16
	clgt	$27,$16,$24
	clgt	$26,$28,$24
	nor	$25,$27,$27
	sfi	$22,$26,0
	sfi	$23,$25,0
	ai	$18,$24,32	# 20
	and	$21,$22,$23
	ceqbi	$4,$21,0
	xsbh	$20,$4
	ceqhi	$19,$20,0
	fsm	$17,$19
	selb	$14,$16,$18,$17
	ai	$15,$14,16
	stqd	$15,0($83)
	lqd	$13,0($14)
	rotqby	$80,$13,$14
label_1ec10:
	br	label_1ecc8	# 1ecc8
label_1ec14:
	andi	$31,$82,-128
	lqd	$5,0($83)
	ceqbi	$30,$31,0
	lqd	$4,16($83)
	xsbh	$29,$30
	brhnz	$29,label_1ec80	# 1ec80
	ai	$46,$5,16
	clgt	$45,$5,$4
	hbrr	label_1ec7c,label_1ecc4	# 1ecc4
	clgt	$44,$46,$4
	nor	$43,$45,$45
	sfi	$42,$44,0
	sfi	$90,$43,0
	ai	$10,$4,32	# 20
	and	$41,$42,$90
	ila	$33,65535	# ffff
	ceqbi	$40,$41,0
	xsbh	$39,$40
	ceqhi	$38,$39,0
	fsm	$37,$38
	selb	$35,$5,$10,$37
	ai	$36,$35,16
	stqd	$36,0($83)
	lqd	$34,0($35)
	rotqby	$32,$34,$35
	and	$2,$32,$33
label_1ec7c:
	br	label_1ecc4	# 1ecc4
label_1ec80:
	ai	$7,$5,16
	clgt	$60,$5,$4
	clgt	$59,$7,$4
	nor	$58,$60,$60
	sfi	$56,$59,0
	sfi	$57,$58,0
	ai	$50,$4,32	# 20
	and	$55,$56,$57
	ceqbi	$54,$55,0
	xsbh	$53,$54
	ceqhi	$52,$53,0
	fsm	$51,$52
	selb	$48,$5,$50,$51
	ai	$49,$48,16
	stqd	$49,0($83)
	lqd	$47,0($48)
	rotqby	$2,$47,$48
label_1ecc4:
	rotqmbyi	$80,$2,-4
label_1ecc8:
	il	$63,0
	ai	$81,$1,63	# 3f
	ceq	$5,$80,$63
	gb	$62,$5
	cgti	$61,$62,11
	brz	$61,label_1ed28	# 1ed28
	rotmi	$71,$82,-5
	hbrr	label_1ed24,label_1ed98	# 1ed98
	ceqi	$72,$84,0
	nor	$70,$72,$72
	xori	$69,$71,1
	sfi	$68,$70,0
	andi	$67,$69,1
	or	$66,$67,$68
	ceqbi	$65,$66,0
	xsbh	$64,$65
	brhnz	$64,label_1ed98	# 1ed98
	lqd	$74,48($1)	# 30
	il	$75,48	# 30
	cbd	$76,15($1)
	ai	$81,$1,62	# 3e
	shufb	$73,$75,$74,$76
	stqd	$73,48($1)	# 30
label_1ed24:
	br	label_1ed98	# 1ed98
label_1ed28:
	ori	$3,$80,0
	fsmbi	$16,257	# 101
	il	$92,0
	andbi	$4,$16,10
	brsl	$0,func_21c00	# 21c00
	fsmbi	$15,257	# 101
	ori	$12,$3,0
	lqr	$13,data_22810	# 22810
	ori	$3,$80,0
	hbrr	label_1ed7c,func_21148	# 21148
	lqd	$11,0($81)
	andbi	$6,$15,48	# 30
	cbd	$9,0($81)
	cg	$80,$12,$6
	fsmbi	$14,257	# 101
	shufb	$2,$80,$80,$13
	andbi	$4,$14,10
	addx	$2,$12,$6
	shlqbyi	$8,$2,4
	shufb	$93,$8,$11,$9
	stqd	$93,0($81)
label_1ed7c:
	brsl	$0,func_21148	# 21148
	ai	$81,$81,-1
	ori	$80,$3,0
	ceq	$79,$80,$92
	gb	$78,$79
	cgti	$77,$78,11
	brz	$77,label_1ed28	# 1ed28
label_1ed98:
	ai	$3,$1,63	# 3f
	ai	$80,$81,1
	sf	$8,$81,$3
	br	label_1f1d0	# 1f1d0
label_1eda8:
	lqd	$20,0($83)
	lqd	$28,16($83)
	hbrr	label_1edfc,label_1ee80	# 1ee80
	ai	$32,$20,16
	clgt	$31,$20,$28
	clgt	$30,$32,$28
	nor	$29,$31,$31
	sfi	$26,$30,0
	sfi	$27,$29,0
	ai	$21,$28,32	# 20
	and	$25,$26,$27
	ceqbi	$24,$25,0
	xsbh	$23,$24
	ceqhi	$22,$23,0
	fsm	$4,$22
	selb	$18,$20,$21,$4
	ai	$19,$18,16
	stqd	$19,0($83)
	lqd	$17,0($18)
	rotqby	$81,$17,$18
	ori	$4,$81,0
label_1edfc:
	brnz	$81,label_1ee80	# 1ee80
	ai	$82,$1,96	# 60
	shlqbyi	$5,$87,0
	il	$6,40	# 28
	shlqbyi	$3,$88,0
	ori	$4,$82,0
	bisl	$0,$89
	ori	$4,$82,0
	shlqbyi	$5,$87,0
	il	$6,110	# 6e
	shlqbyi	$3,$88,0
	bisl	$0,$89
	ori	$4,$82,0
	ori	$5,$87,0
	shlqbyi	$3,$88,0
	il	$6,117	# 75
	bisl	$0,$89
	ori	$4,$82,0
	shlqbyi	$5,$87,0
	il	$6,108	# 6c
	shlqbyi	$3,$88,0
	bisl	$0,$89
	ori	$4,$82,0
	ori	$5,$87,0
	shlqbyi	$3,$88,0
	il	$6,108	# 6c
	bisl	$0,$89
	ori	$3,$88,0
	shlqbyi	$4,$82,0
	ori	$5,$87,0
	il	$6,41	# 29
	bisl	$0,$89
	br	label_1f588	# 1f588
label_1ee80:
	andi	$33,$82,32	# 20
	fsmbi	$8,0
	il	$6,0
	brnz	$33,label_1eeb0	# 1eeb0
	br	label_1eec8	# 1eec8
label_1ee94:
	hbrr	label_1eebc,0
	lqx	$10,$6,$4
	rotqby	$36,$10,$5
	ceqbi	$35,$36,0
	xsbh	$34,$35
	brhnz	$34,label_1f1c8	# 1f1c8
	ai	$6,$6,1
label_1eeb0:
	a	$38,$6,$4
	cgt	$37,$84,$6
	ai	$5,$38,13
label_1eebc:
	brnz	$37,label_1ee94	# 1ee94
	br	label_1f1c8	# 1f1c8
label_1eec4:
	ai	$8,$8,1
label_1eec8:
	a	$43,$8,$4
	lqx	$42,$8,$4
	ai	$90,$43,13
	rotqby	$41,$42,$90
	ceqbi	$40,$41,0
	xsbh	$39,$40
	brhz	$39,label_1eec4	# 1eec4
	ori	$80,$4,0
	br	label_1f1d0	# 1f1d0
label_1eeec:
	lqd	$63,0($83)
	ori	$7,$82,256	# 100
	lqd	$74,16($83)
	ai	$55,$1,63	# 3f
	lqd	$45,48($1)	# 30
	andi	$67,$7,4
	hbrr	label_1ef98,label_1f1d4	# 1f1d4
	andi	$69,$7,-5
	cbd	$47,15($1)
	ceqi	$54,$67,0
	fsmbi	$58,0
	ai	$78,$63,16
	fsmbi	$57,0
	clgt	$77,$63,$74
	clgt	$76,$78,$74
	nor	$75,$77,$77
	sfi	$72,$76,0
	sfi	$73,$75,0
	ai	$65,$74,32	# 20
	and	$71,$72,$73
	ori	$62,$69,8
	ceqbi	$70,$71,0
	il	$60,1
	xsbh	$68,$70
	il	$59,1
	ceqhi	$66,$68,0
	selb	$82,$62,$7,$54
	selb	$84,$60,$59,$54
	fsm	$64,$66
	selb	$90,$58,$57,$54
	selb	$80,$55,$55,$54
	il	$8,1
	selb	$53,$63,$65,$64
	ai	$5,$53,16
	stqd	$5,0($83)
	lqd	$52,0($53)
	rotqby	$51,$52,$53
	rotqmbyi	$50,$51,-4
	rotqbyi	$49,$50,8
	shlqbyi	$48,$49,15
	rotmai	$46,$48,-24
	shufb	$44,$46,$45,$47
	stqd	$44,48($1)	# 30
label_1ef98:
	br	label_1f1d4	# 1f1d4
label_1ef9c:
	andi	$79,$82,64	# 40
	brz	$79,label_1eff8	# 1eff8
	lqd	$9,0($83)
	lqd	$81,16($83)
	hbrr	label_1eff4,label_1f0ac	# 1f0ac
	ai	$19,$9,16
	clgt	$18,$9,$81
	clgt	$17,$19,$81
	nor	$3,$18,$18
	sfi	$15,$17,0
	sfi	$16,$3,0
	ai	$12,$81,32	# 20
	and	$14,$15,$16
	ceqbi	$13,$14,0
	xsbh	$80,$13
	ceqhi	$6,$80,0
	fsm	$2,$6
	selb	$93,$9,$12,$2
	ai	$11,$93,16
	stqd	$11,0($83)
	lqd	$92,0($93)
	rotqby	$8,$92,$93
label_1eff4:
	br	label_1f0ac	# 1f0ac
label_1eff8:
	andi	$22,$82,-128
	lqd	$5,0($83)
	lqd	$4,16($83)
	ceqbi	$21,$22,0
	xsbh	$20,$21
	brhnz	$20,label_1f064	# 1f064
	clgt	$10,$5,$4
	hbrr	label_1f060,label_1f0a8	# 1f0a8
	ai	$37,$5,16
	nor	$35,$10,$10
	clgt	$36,$37,$4
	sfi	$34,$35,0
	sfi	$33,$36,0
	ai	$27,$4,32	# 20
	and	$32,$33,$34
	ila	$4,65535	# ffff
	ceqbi	$31,$32,0
	xsbh	$30,$31
	ceqhi	$29,$30,0
	fsm	$28,$29
	selb	$25,$5,$27,$28
	ai	$26,$25,16
	stqd	$26,0($83)
	lqd	$24,0($25)
	rotqby	$23,$24,$25
	and	$2,$23,$4
label_1f060:
	br	label_1f0a8	# 1f0a8
label_1f064:
	ai	$51,$5,16
	clgt	$50,$5,$4
	clgt	$49,$51,$4
	nor	$48,$50,$50
	sfi	$46,$49,0
	sfi	$47,$48,0
	ai	$41,$4,32	# 20
	and	$45,$46,$47
	ceqbi	$44,$45,0
	xsbh	$43,$44
	ceqhi	$90,$43,0
	fsm	$42,$90
	selb	$39,$5,$41,$42
	ai	$40,$39,16
	stqd	$40,0($83)
	lqd	$38,0($39)
	rotqby	$2,$38,$39
label_1f0a8:
	rotqmbyi	$8,$2,-4
label_1f0ac:
	il	$55,0
	ai	$7,$1,63	# 3f
	fsmbi	$10,0
	ceq	$54,$8,$55
	ila	$9,161744	# 277d0
	gb	$53,$54
	cgti	$52,$53,11
	brz	$52,label_1f114	# 1f114
	hbrr	label_1f110,label_1f158	# 1f158
	rotmi	$5,$82,-5
	ceqi	$63,$84,0
	nor	$62,$63,$63
	xori	$61,$5,1
	sfi	$60,$62,0
	andi	$59,$61,1
	or	$58,$59,$60
	ceqbi	$57,$58,0
	xsbh	$56,$57
	brhnz	$56,label_1f158	# 1f158
	il	$66,48	# 30
	lqd	$65,48($1)	# 30
	ai	$7,$1,62	# 3e
	cbd	$67,15($1)
	shufb	$64,$66,$65,$67
	stqd	$64,48($1)	# 30
label_1f110:
	br	label_1f158	# 1f158
label_1f114:
	shlqbyi	$79,$8,4
	hbrr	label_1f154,label_1f114	# 1f114
	rotqmbii	$8,$8,-4
	lqd	$70,0($7)
	andi	$78,$79,15
	cbd	$72,0($7)
	lqx	$73,$78,$9
	a	$75,$78,$9
	ceq	$77,$8,$10
	ai	$74,$75,13
	gb	$76,$77
	rotqby	$71,$73,$74
	cgti	$68,$76,11
	shufb	$69,$71,$70,$72
	stqd	$69,0($7)
	ai	$7,$7,-1
label_1f154:
	brz	$68,label_1f114	# 1f114
label_1f158:
	il	$2,48	# 30
	hbrr	label_1f18c,label_1f1d4	# 1f1d4
	ai	$8,$1,63	# 3f
	lqd	$9,64($1)	# 40
	il	$92,120	# 78
	cbd	$12,0($1)
	ai	$80,$7,1
	cbd	$11,1($1)
	sf	$8,$7,$8
	il	$90,2
	shufb	$93,$2,$9,$12
	shufb	$7,$92,$93,$11
	stqd	$7,64($1)	# 40
label_1f18c:
	br	label_1f1d4	# 1f1d4
label_1f190:
	ceqbi	$6,$4,0
	hbrr	label_1f1c4,label_1f1d4	# 1f1d4
	xsbh	$84,$6
	brhnz	$84,label_1f5ac	# 1f5ac
	ori	$82,$82,256	# 100
	lqd	$14,48($1)	# 30
	il	$8,1
	cbd	$15,15($1)
	ai	$80,$1,63	# 3f
	fsmbi	$90,0
	il	$84,1
	shufb	$13,$4,$14,$15
	stqd	$13,48($1)	# 30
label_1f1c4:
	br	label_1f1d4	# 1f1d4
label_1f1c8:
	ori	$80,$4,0
	shlqbyi	$8,$6,0
label_1f1d0:
	il	$90,0
label_1f1d4:
	hbrr	label_1f208,label_1f21c	# 1f21c
	sf	$17,$8,$86
	sf	$81,$8,$84
	cgt	$3,$84,$8
	sf	$86,$90,$17
	and	$92,$3,$81
	andi	$16,$82,256	# 100
	sf	$86,$92,$86
	a	$93,$80,$8
	cgti	$4,$86,0
	brz	$16,label_1f20c	# 1f20c
	rotmi	$3,$82,-2
	sfi	$2,$4,0
label_1f208:
	br	label_1f21c	# 1f21c
label_1f20c:
	andi	$19,$82,36	# 24
	sfi	$3,$4,0
	ceqi	$18,$19,4
	sfi	$2,$18,0
label_1f21c:
	and	$22,$2,$3
	ceqbi	$21,$22,0
	xsbh	$20,$21
	brhz	$20,label_1f234	# 1f234
	il	$84,32	# 20
	br	label_1f238	# 1f238
label_1f234:
	il	$84,48	# 30
label_1f238:
	andi	$24,$82,1
	fsmbi	$81,0
	ceqbi	$4,$24,0
	xsbh	$23,$4
	brhz	$23,label_1f270	# 1f270
	br	label_1f324	# 1f324
label_1f250:
	lqx	$26,$81,$7
	ai	$81,$81,1
	rotqby	$25,$26,$6
	xsbh	$82,$25
	xshw	$6,$82
	bisl	$0,$89
	hbrr	label_1f28c,label_1f250	# 1f250
	a	$91,$91,$3
label_1f270:
	ai	$7,$1,64	# 40
	shlqbyi	$3,$88,0
	cgt	$27,$90,$81
	shlqbyi	$5,$87,0
	a	$28,$81,$7
	ai	$4,$1,96	# 60
	ai	$6,$28,13
label_1f28c:
	brnz	$27,label_1f250	# 1f250
	il	$81,0
	br	label_1f2a0	# 1f2a0
label_1f298:
	bisl	$0,$89
	a	$91,$91,$3
label_1f2a0:
	cgt	$29,$92,$81
	shlqbyi	$3,$88,0
	ai	$4,$1,96	# 60
	shlqbyi	$5,$87,0
	il	$6,48	# 30
	ai	$81,$81,1
	brnz	$29,label_1f298	# 1f298
	br	label_1f2dc	# 1f2dc
label_1f2c0:
	lqd	$32,0($80)
	ai	$80,$80,1
	rotqby	$31,$32,$6
	xsbh	$30,$31
	xshw	$6,$30
	bisl	$0,$89
	a	$91,$91,$3
label_1f2dc:
	clgt	$33,$93,$80
	ai	$6,$80,13
	shlqbyi	$3,$88,0
	ai	$4,$1,96	# 60
	shlqbyi	$5,$87,0
	brnz	$33,label_1f2c0	# 1f2c0
	il	$80,0
	br	label_1f304	# 1f304
label_1f2fc:
	bisl	$0,$89
	a	$91,$91,$3
label_1f304:
	cgt	$34,$86,$80
	ori	$3,$88,0
	shlqbyi	$5,$87,0
	ai	$4,$1,96	# 60
	il	$6,32	# 20
	ai	$80,$80,1
	brnz	$34,label_1f2fc	# 1f2fc
	br	label_1f588	# 1f588
label_1f324:
	andi	$35,$82,4
	il	$81,0
	brz	$35,label_1f49c	# 1f49c
	ceqbi	$10,$84,48	# 30
	fsmbi	$82,0
	xsbh	$36,$10
	brhnz	$36,label_1f364	# 1f364
	br	label_1f3c0	# 1f3c0
label_1f344:
	lqx	$39,$81,$7
	ai	$81,$81,1
	rotqby	$38,$39,$6
	xsbh	$37,$38
	xshw	$6,$37
	bisl	$0,$89
	hbrr	label_1f380,label_1f344	# 1f344
	a	$91,$91,$3
label_1f364:
	ai	$7,$1,64	# 40
	cgt	$40,$90,$81
	shlqbyi	$3,$88,0
	a	$41,$81,$7
	shlqbyi	$5,$87,0
	ai	$4,$1,96	# 60
	ai	$6,$41,13
label_1f380:
	brnz	$40,label_1f344	# 1f344
	il	$81,0
	br	label_1f394	# 1f394
label_1f38c:
	bisl	$0,$89
	a	$91,$91,$3
label_1f394:
	cgt	$42,$86,$81
	ori	$3,$88,0
	shlqbyi	$5,$87,0
	ai	$4,$1,96	# 60
	il	$6,48	# 30
	ai	$81,$81,1
	brnz	$42,label_1f38c	# 1f38c
	br	label_1f428	# 1f428
label_1f3b4:
	bisl	$0,$89
	hbrr	label_1f3dc,label_1f3b4	# 1f3b4
	a	$91,$91,$3
label_1f3c0:
	xsbh	$44,$84
	shlqbyi	$3,$88,0
	cgt	$43,$86,$82
	shlqbyi	$5,$87,0
	xshw	$6,$44
	ai	$4,$1,96	# 60
	ai	$82,$82,1
label_1f3dc:
	brnz	$43,label_1f3b4	# 1f3b4
	il	$81,0
	br	label_1f408	# 1f408
label_1f3e8:
	lqx	$47,$81,$7
	ai	$81,$81,1
	rotqby	$46,$47,$6
	xsbh	$45,$46
	xshw	$6,$45
	bisl	$0,$89
	hbrr	label_1f424,label_1f3e8	# 1f3e8
	a	$91,$91,$3
label_1f408:
	ai	$7,$1,64	# 40
	shlqbyi	$3,$88,0
	cgt	$48,$90,$81
	shlqbyi	$5,$87,0
	a	$49,$81,$7
	ai	$4,$1,96	# 60
	ai	$6,$49,13
label_1f424:
	brnz	$48,label_1f3e8	# 1f3e8
label_1f428:
	il	$81,0
	br	label_1f438	# 1f438
label_1f430:
	bisl	$0,$89
	a	$91,$91,$3
label_1f438:
	cgt	$90,$92,$81
	shlqbyi	$3,$88,0
	ai	$4,$1,96	# 60
	shlqbyi	$5,$87,0
	il	$6,48	# 30
	ai	$81,$81,1
	brnz	$90,label_1f430	# 1f430
	br	label_1f474	# 1f474
label_1f458:
	lqd	$52,0($80)
	ai	$80,$80,1
	rotqby	$51,$52,$6
	xsbh	$50,$51
	xshw	$6,$50
	bisl	$0,$89
	a	$91,$91,$3
label_1f474:
	clgt	$53,$93,$80
	ai	$6,$80,13
	shlqbyi	$3,$88,0
	ai	$4,$1,96	# 60
	shlqbyi	$5,$87,0
	brnz	$53,label_1f458	# 1f458
	br	label_1f588	# 1f588
label_1f490:
	bisl	$0,$89
	hbrr	label_1f4b8,label_1f490	# 1f490
	a	$91,$91,$3
label_1f49c:
	xsbh	$55,$84
	cgt	$54,$86,$81
	shlqbyi	$3,$88,0
	xshw	$6,$55
	shlqbyi	$5,$87,0
	ai	$4,$1,96	# 60
	ai	$81,$81,1
label_1f4b8:
	brnz	$54,label_1f490	# 1f490
	il	$81,0
	br	label_1f4e4	# 1f4e4
label_1f4c4:
	lqx	$58,$81,$7
	ai	$81,$81,1
	rotqby	$57,$58,$6
	xsbh	$56,$57
	xshw	$6,$56
	bisl	$0,$89
	hbrr	label_1f500,label_1f4c4	# 1f4c4
	a	$91,$91,$3
label_1f4e4:
	ai	$7,$1,64	# 40
	cgt	$59,$90,$81
	shlqbyi	$3,$88,0
	a	$60,$81,$7
	shlqbyi	$5,$87,0
	ai	$4,$1,96	# 60
	ai	$6,$60,13
label_1f500:
	brnz	$59,label_1f4c4	# 1f4c4
	il	$81,0
	br	label_1f514	# 1f514
label_1f50c:
	bisl	$0,$89
	a	$91,$91,$3
label_1f514:
	cgt	$61,$92,$81
	ori	$3,$88,0
	shlqbyi	$5,$87,0
	ai	$4,$1,96	# 60
	il	$6,48	# 30
	ai	$81,$81,1
	brnz	$61,label_1f50c	# 1f50c
	br	label_1f550	# 1f550
label_1f534:
	lqd	$64,0($80)
	ai	$80,$80,1
	rotqby	$63,$64,$6
	xsbh	$62,$63
	xshw	$6,$62
	bisl	$0,$89
	a	$91,$91,$3
label_1f550:
	clgt	$65,$93,$80
	shlqbyi	$3,$88,0
	ai	$6,$80,13
	shlqbyi	$5,$87,0
	ai	$4,$1,96	# 60
	brnz	$65,label_1f534	# 1f534
	br	label_1f588	# 1f588
label_1f56c:
	xsbh	$80,$6
	ori	$3,$88,0
	shlqbyi	$5,$87,0
	xshw	$6,$80
	ai	$4,$1,96	# 60
	bisl	$0,$89
	a	$91,$91,$3
label_1f588:
	ai	$71,$85,13
	lqd	$70,0($85)
	hbrr	label_1f5c0,label_1e178	# 1e178
	rotqby	$69,$70,$71
	ceqbi	$68,$69,0
	xsbh	$67,$68
	ceqhi	$66,$67,0
	xshw	$5,$66
	sf	$85,$5,$85
label_1f5ac:
	lqd	$74,0($85)
	ai	$75,$85,13
	rotqby	$6,$74,$75
	ceqbi	$73,$6,0
	xsbh	$72,$73
label_1f5c0:
	brhz	$72,label_1e178	# 1e178
	ai	$4,$1,96	# 60
	ori	$5,$87,0
	shlqbyi	$3,$88,0
	il	$6,0
	bisl	$0,$89
	ori	$3,$91,0
	lqd	$0,352($1)	# 160
	ai	$1,$1,336	# 150
	lqd	$80,-16($1)
	lqd	$81,-32($1)
	lqd	$82,-48($1)
	hbr	label_1f620,$0
	lqd	$83,-64($1)
	lqd	$84,-80($1)
	lqd	$85,-96($1)
	lqd	$86,-112($1)
	lqd	$87,-128($1)
	lqd	$88,-144($1)
	lqd	$89,-160($1)
	lqd	$90,-176($1)
	lqd	$91,-192($1)
	lqd	$92,-208($1)
	lqd	$93,-224($1)
label_1f620:
	bi	$0
	lnop
.global func_1f628
func_1f628:
	ori	$7,$4,0
	lqd	$2,0($4)
	ori	$5,$3,0
	il	$10,1
	cgti	$4,$6,255	# ff
	rotqby	$2,$2,$7
	brz	$2,label_1f6c4	# 1f6c4
	ceqi	$3,$2,1
	cwd	$8,0($5)
	cwd	$9,0($7)
	ceqi	$3,$3,0
	brnz	$4,label_1f6a4	# 1f6a4
	and	$20,$6,$3
	lqd	$22,0($5)
	hbrr	label_1f6a0,label_1f6c4	# 1f6c4
	rotqby	$17,$22,$5
	lqd	$19,0($17)
	cbd	$21,0($17)
	shufb	$18,$20,$19,$21
	stqd	$18,0($17)
	lqd	$16,0($5)
	rotqby	$15,$16,$5
	ai	$14,$15,1
	shufb	$12,$14,$16,$8
	stqd	$12,0($5)
	lqd	$11,0($7)
	rotqby	$8,$11,$7
	ai	$6,$8,-1
	shufb	$4,$6,$11,$9
	stqd	$4,0($7)
label_1f6a0:
	br	label_1f6c4	# 1f6c4
label_1f6a4:
	lqd	$26,0($5)
	il	$24,0
	fsmbi	$10,0
	rotqby	$7,$26,$5
	lqd	$23,0($7)
	cbd	$25,0($7)
	shufb	$9,$24,$23,$25
	stqd	$9,0($7)
label_1f6c4:
	ori	$3,$10,0
	bi	$0
	lnop
.global func_1f6d0
func_1f6d0:
	ori	$8,$5,0
	hbrr	label_1f708,func_1e100	# 1e100
	ori	$7,$6,0
	stqd	$0,16($1)
	ori	$5,$4,0
	stqd	$1,-48($1)
	ai	$1,$1,-48
	shlqbyi	$6,$8,0
	ai	$4,$1,32	# 20
	lqd	$10,32($1)	# 20
	cwd	$9,0($1)
	shufb	$2,$3,$10,$9
	ila	$3,128552	# 1f628
	stqd	$2,32($1)	# 20
label_1f708:
	brsl	$0,func_1e100	# 1e100
	lqd	$0,64($1)	# 40
	ai	$1,$1,48	# 30
	bi	$0
.global func_1f718
func_1f718:
	hbrr	label_1f73c,label_1f750	# 1f750
	ilh	$2,771	# 303
	ori	$7,$3,0
	shufb	$9,$4,$4,$2
	brz	$5,label_1f7d4	# 1f7d4
	andi	$3,$3,15
	ori	$6,$7,0
	andi	$2,$5,-16
	andi	$4,$5,15
label_1f73c:
	brz	$3,label_1f750	# 1f750
	br	label_1f758	# 1f758
label_1f744:
	stqd	$9,0($6)
	ai	$2,$2,-16
	ai	$6,$6,16
label_1f750:
	brnz	$2,label_1f744	# 1f744
	br	label_1f7b8	# 1f7b8
label_1f758:
	a	$8,$3,$5
	hbrr	label_1f78c,label_1f7d4	# 1f7d4
	sfi	$6,$3,16
	lqd	$10,0($7)
	il	$11,-1
	clgti	$3,$8,15
	shlqby	$4,$11,$6
	brnz	$3,label_1f790	# 1f790
	sfi	$12,$8,0
	rotqmby	$8,$11,$12
	or	$6,$4,$8
	selb	$5,$9,$10,$6
	stqd	$5,0($7)
label_1f78c:
	br	label_1f7d4	# 1f7d4
label_1f790:
	selb	$11,$9,$10,$4
	sf	$4,$6,$5
	a	$6,$7,$6
	stqd	$11,0($7)
	br	label_1f7b0	# 1f7b0
label_1f7a4:
	stqd	$9,0($6)
	ai	$4,$4,-16
	ai	$6,$6,16
label_1f7b0:
	clgti	$10,$4,15
	brnz	$10,label_1f7a4	# 1f7a4
label_1f7b8:
	brz	$4,label_1f7d4	# 1f7d4
	lqd	$14,0($6)
	sfi	$17,$4,0
	fsmbi	$16,65535	# ffff
	rotqmby	$15,$16,$17
	selb	$13,$9,$14,$15
	stqd	$13,0($6)
label_1f7d4:
	ori	$3,$7,0
	bi	$0
	lnop
.global func_1f7e0
func_1f7e0:
	andi	$9,$3,15
	shlqbyi	$8,$3,0
	andi	$6,$4,15
	shlqbyi	$7,$4,0
	shli	$2,$9,4
	shli	$3,$6,4
	ila	$4,161792	# 27800
	ai	$9,$5,32	# 20
	ila	$14,65535	# ffff
	lqx	$13,$2,$4
	lqx	$12,$3,$4
label_1f80c:
	lqd	$19,0($8)
	ai	$8,$8,16
	lqd	$10,0($7)
	ai	$7,$7,16
	hbrr	label_1f854,label_1f80c	# 1f80c
	ai	$9,$9,-16
	lqd	$20,0($8)
	lqd	$18,0($7)
	clgti	$11,$9,32	# 20
	shufb	$6,$19,$20,$13
	shufb	$10,$10,$18,$12
	ceqbi	$5,$6,0
	ceqb	$17,$6,$10
	gbb	$3,$5
	gbb	$16,$17
	xor	$4,$16,$14
	brnz	$4,label_1f858	# 1f858
	brnz	$3,label_1f858	# 1f858
label_1f854:
	brnz	$11,label_1f80c	# 1f80c
label_1f858:
	clgtb	$28,$6,$10
	hbr	label_1f898,$0
	clz	$24,$4
	fsmbi	$7,0
	clz	$23,$3
	gbb	$26,$28
	clgt	$27,$9,$24
	clgt	$14,$24,$23
	nor	$21,$27,$27
	clz	$25,$26
	or	$12,$21,$14
	ceq	$22,$25,$24
	ceqi	$8,$12,0
	ceqi	$13,$22,0
	ori	$11,$13,1
	selb	$3,$7,$11,$8
label_1f898:
	bi	$0
	lnop
.global func_1f8a0
func_1f8a0:
	ori	$11,$5,0
	hbrr	label_1f8c8,label_1f8e4	# 1f8e4
	ori	$15,$3,0
	shlqbyi	$13,$4,0
	brz	$5,label_1f9f4	# 1f9f4
	andi	$12,$3,15
	andi	$4,$4,15
	shlqbyi	$6,$3,0
	ori	$3,$13,0
	or	$2,$4,$12
label_1f8c8:
	brz	$2,label_1f8e4	# 1f8e4
	br	label_1f910	# 1f910
label_1f8d0:
	ai	$11,$11,-16
	lqd	$4,0($3)
	ai	$3,$3,16
	stqd	$4,0($6)
	ai	$6,$6,16
label_1f8e4:
	clgti	$5,$11,15
	brnz	$5,label_1f8d0	# 1f8d0
	brz	$11,label_1f9f4	# 1f9f4
	sfi	$12,$11,0
	lqd	$7,0($3)
	il	$10,-1
	lqd	$9,0($6)
	rotqmby	$8,$10,$12
	selb	$3,$7,$9,$8
	stqd	$3,0($6)
	br	label_1f9f4	# 1f9f4
label_1f910:
	sf	$36,$12,$4
	hbrr	label_1f9a0,label_1f9c4	# 1f9c4
	ila	$38,161792	# 27800
	lqd	$31,0($13)
	shli	$37,$36,4
	lqd	$30,16($13)
	a	$29,$12,$5
	fsmbi	$26,65535	# ffff
	cgti	$33,$36,0
	lqd	$18,0($15)
	clgti	$35,$29,15
	lqx	$32,$37,$38
	sfi	$34,$29,0
	rotqmby	$23,$31,$36
	sfi	$10,$12,16
	rotqmby	$25,$26,$34
	ceqi	$28,$35,0
	shlqby	$19,$26,$10
	ceqi	$27,$33,0
	fsm	$20,$28
	clgti	$17,$29,15
	shufb	$24,$31,$30,$32
	or	$21,$19,$25
	fsm	$22,$27
	selb	$16,$19,$21,$20
	selb	$14,$24,$23,$22
	selb	$6,$14,$18,$16
	stqd	$6,0($15)
	brz	$17,label_1f9f4	# 1f9f4
	a	$4,$13,$10
	ila	$11,161792	# 27800
	andi	$39,$4,15
	sf	$8,$10,$5
	shli	$13,$39,4
	a	$9,$15,$10
	lqx	$7,$13,$11
label_1f9a0:
	br	label_1f9c4	# 1f9c4
label_1f9a4:
	hbrr	label_1f9c8,0
	ai	$8,$8,-16
	lqd	$41,0($4)
	ai	$4,$4,16
	lqd	$42,0($4)
	shufb	$40,$41,$42,$7
	stqd	$40,0($9)
	ai	$9,$9,16
label_1f9c4:
	clgti	$43,$8,15
label_1f9c8:
	brnz	$43,label_1f9a4	# 1f9a4
	brz	$8,label_1f9f4	# 1f9f4
	sfi	$51,$8,0
	lqd	$49,16($4)
	il	$50,-1
	lqd	$48,0($4)
	lqd	$47,0($9)
	rotqmby	$46,$50,$51
	shufb	$45,$48,$49,$7
	selb	$44,$45,$47,$46
	stqd	$44,0($9)
label_1f9f4:
	ori	$3,$15,0
	bi	$0
	lnop
.global func_1fa00
func_1fa00:
	andi	$10,$3,15
	hbrr	label_1fa30,label_1fa5c	# 1fa5c
	ila	$8,65535	# ffff
	shlqbyi	$5,$3,0
	sf	$4,$10,$3
	sfi	$9,$10,0
	lqd	$7,0($4)
	rotm	$3,$8,$9
	ai	$4,$4,16
	ceqbi	$6,$7,0
	gbb	$2,$6
	and	$2,$2,$3
label_1fa30:
	br	label_1fa5c	# 1fa5c
label_1fa34:
	hbrr	label_1fa5c,0
	lqd	$17,0($4)
	lqd	$16,16($4)
	ai	$4,$4,32	# 20
	ceqbi	$15,$17,0
	ceqbi	$13,$16,0
	gbb	$14,$15
	gbb	$12,$13
	shli	$11,$14,16
	or	$2,$11,$12
label_1fa5c:
	brz	$2,label_1fa34	# 1fa34
	sf	$18,$5,$4
	clz	$19,$2
	a	$5,$18,$19
	ai	$3,$5,-32
	bi	$0
	lnop
.global func_1fa78
func_1fa78:
	il	$22,0
	lqr	$25,data_22830	# 22830
	il	$21,0
	fsmbi	$15,0
	cgti	$20,$3,-1
	fsmbi	$10,65535	# ffff
	cgti	$26,$4,-1
	bg	$27,$3,$22
	bg	$24,$4,$21
	lnop
	ceqi	$11,$26,0
	shufb	$17,$27,$27,$25
	ceqi	$23,$20,0
	shufb	$6,$24,$24,$25
	ceqi	$9,$20,0
	fsm	$8,$11
	fsm	$16,$23
	sfx	$17,$3,$22
	sfx	$6,$4,$21
	selb	$19,$15,$10,$9
	selb	$13,$3,$17,$16
	selb	$4,$4,$6,$8
	nor	$7,$19,$19
	rotqbyi	$3,$13,8
	ori	$9,$13,0
	rotqbyi	$2,$4,8
	selb	$19,$19,$7,$11
	shlqbyi	$18,$3,12
	shlqbyi	$12,$2,12
	brnz	$4,label_1fd24	# 1fd24
	clgt	$30,$12,$13
	brnz	$30,label_20078	# 20078
	brz	$12,label_1ffb8	# 1ffb8
	ori	$25,$12,0
	ila	$24,65535	# ffff
	clz	$14,$25
	rotmi	$11,$12,-16
	and	$15,$12,$24
	sf	$4,$12,$9
	lnop
	il	$8,1
	brnz	$14,label_1fd70	# 1fd70
label_1fb20:
	heqi	$0,$11,0
	hbrr	label_1fb6c,label_1fb48	# 1fb48
	clz	$5,$11
	clz	$23,$4
	il	$24,1
	fsmbi	$32,0
	sf	$5,$23,$5
	ori	$59,$4,0
	shl	$24,$24,$5
	shl	$23,$11,$5
label_1fb48:
	or	$7,$32,$24
	rotqmbii	$24,$24,-1
	clgt	$3,$23,$59
	lnop
	sf	$5,$23,$59
	rotqmbii	$23,$23,-1
	selb	$32,$7,$32,$3
	lnop
	selb	$59,$5,$59,$3
label_1fb6c:
	brnz	$24,label_1fb48	# 1fb48
	rotmi	$58,$18,-16
	lnop
	heqi	$0,$11,0
	hbrr	label_1fbc4,label_1fba0	# 1fba0
	clz	$16,$11
	clz	$10,$4
	il	$13,1
	fsmbi	$7,0
	sf	$16,$10,$16
	ori	$9,$4,0
	shl	$13,$13,$16
	shl	$10,$11,$16
label_1fba0:
	or	$17,$7,$13
	rotqmbii	$13,$13,-1
	clgt	$14,$10,$9
	lnop
	sf	$16,$10,$9
	rotqmbii	$10,$10,-1
	selb	$7,$17,$7,$14
	lnop
	selb	$9,$16,$9,$14
label_1fbc4:
	brnz	$13,label_1fba0	# 1fba0
	ila	$31,65535	# ffff
	lnop
	mpyh	$55,$32,$15
	shlqbyi	$17,$8,0
	mpyu	$56,$15,$32
	shli	$57,$59,16
	ai	$40,$32,-1
	ai	$45,$40,-1
	or	$46,$57,$58
	a	$43,$55,$56
	a	$51,$46,$12
	clgt	$37,$43,$46
	clgt	$49,$43,$51
	clgt	$54,$12,$51
	a	$52,$51,$12
	ceqi	$53,$49,0
	ceqi	$41,$54,0
	selb	$50,$52,$51,$53
	ceqi	$47,$37,0
	selb	$48,$51,$50,$41
	ceqi	$44,$49,0
	selb	$42,$48,$46,$47
	selb	$39,$45,$40,$44
	sf	$36,$43,$42
	selb	$34,$40,$39,$41
	lnop
	heqi	$0,$11,0
	hbrr	label_1fc7c,label_1fc58	# 1fc58
	clz	$23,$11
	clz	$20,$36
	il	$21,1
	fsmbi	$25,0
	sf	$23,$20,$23
	ori	$35,$36,0
	shl	$21,$21,$23
	shl	$20,$11,$23
label_1fc58:
	or	$24,$25,$21
	rotqmbii	$21,$21,-1
	clgt	$22,$20,$35
	lnop
	sf	$23,$20,$35
	rotqmbii	$20,$20,-1
	selb	$25,$24,$25,$22
	lnop
	selb	$35,$23,$35,$22
label_1fc7c:
	brnz	$21,label_1fc58	# 1fc58
	heqi	$0,$11,0
	hbrr	label_1fccc,label_1fca8	# 1fca8
	clz	$16,$11
	clz	$7,$36
	il	$13,1
	fsmbi	$8,0
	sf	$16,$7,$16
	ori	$3,$36,0
	shl	$13,$13,$16
	shl	$7,$11,$16
label_1fca8:
	or	$20,$8,$13
	rotqmbii	$13,$13,-1
	clgt	$14,$7,$3
	lnop
	sf	$16,$7,$3
	rotqmbii	$7,$7,-1
	selb	$8,$20,$8,$14
	lnop
	selb	$3,$16,$3,$14
label_1fccc:
	brnz	$13,label_1fca8	# 1fca8
	hbrr	label_1fd20,label_1fd38	# 1fd38
	ceqi	$33,$37,0
	mpyu	$28,$15,$25
	mpyh	$27,$25,$15
	shli	$30,$35,16
	ai	$21,$25,-1
	selb	$29,$34,$32,$33
	selb	$9,$30,$18,$31
	shli	$18,$29,16
	a	$14,$12,$9
	a	$26,$27,$28
	clgt	$23,$12,$14
	clgt	$24,$26,$14
	clgt	$22,$26,$9
	a	$20,$21,$24
	ceqi	$16,$23,0
	ceqi	$15,$22,0
	selb	$3,$21,$20,$16
	selb	$12,$3,$25,$15
	or	$7,$12,$18
label_1fd20:
	br	label_1fd38	# 1fd38
label_1fd24:
	clgt	$17,$4,$13
	nop	$127
	brz	$17,label_20038	# 20038
label_1fd30:
	il	$17,0
	fsmbi	$7,0
label_1fd38:
	ceqi	$31,$19,0
	cwd	$9,0($1)
	il	$18,0
	hbr	label_1fd6c,$0
	cwd	$29,4($1)
	lqr	$28,data_22830	# 22830
	shufb	$30,$17,$9,$9
	fsm	$21,$31
	shufb	$19,$7,$30,$29
	bg	$27,$19,$18
	shufb	$12,$27,$27,$28
	sfx	$12,$19,$18
	selb	$3,$12,$19,$21
label_1fd6c:
	bi	$0
label_1fd70:
	shl	$12,$12,$14
	sfi	$10,$14,32	# 20
	shl	$8,$9,$14
	sfi	$11,$10,0
	sfi	$13,$10,0
	rotm	$4,$9,$11
	rotmi	$11,$12,-16
	rotm	$6,$18,$13
	ila	$52,65535	# ffff
	shl	$18,$18,$14
	heqi	$0,$11,0
	hbrr	label_1fde4,label_1fdc0	# 1fdc0
	clz	$24,$11
	clz	$21,$4
	il	$22,1
	fsmbi	$54,0
	sf	$24,$21,$24
	ori	$5,$4,0
	shl	$22,$22,$24
	shl	$21,$11,$24
label_1fdc0:
	or	$2,$54,$22
	rotqmbii	$22,$22,-1
	clgt	$23,$21,$5
	lnop
	sf	$24,$21,$5
	rotqmbii	$21,$21,-1
	selb	$54,$2,$54,$23
	lnop
	selb	$5,$24,$5,$23
label_1fde4:
	brnz	$22,label_1fdc0	# 1fdc0
	or	$53,$8,$6
	lnop
	heqi	$0,$11,0
	hbrr	label_1fe3c,label_1fe18	# 1fe18
	clz	$21,$11
	clz	$13,$4
	il	$17,1
	fsmbi	$10,0
	sf	$21,$13,$21
	ori	$9,$4,0
	shl	$17,$17,$21
	shl	$13,$11,$21
label_1fe18:
	or	$22,$10,$17
	rotqmbii	$17,$17,-1
	clgt	$20,$13,$9
	lnop
	sf	$21,$13,$9
	rotqmbii	$13,$13,-1
	selb	$10,$22,$10,$20
	lnop
	selb	$9,$21,$9,$20
label_1fe3c:
	brnz	$17,label_1fe18	# 1fe18
	rotmi	$7,$53,-16
	mpyh	$77,$54,$12
	mpyu	$78,$12,$54
	shli	$79,$5,16
	ila	$2,65535	# ffff
	ai	$62,$54,-1
	and	$15,$12,$2
	or	$68,$79,$7
	ai	$67,$62,-1
	a	$73,$68,$12
	a	$65,$77,$78
	clgt	$76,$12,$73
	clgt	$71,$65,$73
	a	$74,$73,$12
	ceqi	$75,$71,0
	clgt	$59,$65,$68
	ceqi	$63,$76,0
	selb	$72,$74,$73,$75
	ceqi	$69,$59,0
	selb	$70,$73,$72,$63
	ceqi	$66,$71,0
	selb	$64,$70,$68,$69
	selb	$61,$67,$62,$66
	sf	$58,$65,$64
	selb	$56,$62,$61,$63
	lnop
	heqi	$0,$11,0
	hbrr	label_1fef4,label_1fed0	# 1fed0
	clz	$10,$11
	clz	$23,$58
	il	$24,1
	fsmbi	$29,0
	sf	$10,$23,$10
	ori	$57,$58,0
	shl	$24,$24,$10
	shl	$23,$11,$10
label_1fed0:
	or	$13,$29,$24
	rotqmbii	$24,$24,-1
	clgt	$9,$23,$57
	lnop
	sf	$10,$23,$57
	rotqmbii	$23,$23,-1
	selb	$29,$13,$29,$9
	lnop
	selb	$57,$10,$57,$9
label_1fef4:
	brnz	$24,label_1fed0	# 1fed0
	heqi	$0,$11,0
	hbrr	label_1ff44,label_1ff20	# 1ff20
	clz	$21,$11
	clz	$16,$58
	il	$17,1
	fsmbi	$9,0
	sf	$21,$16,$21
	ori	$2,$58,0
	shl	$17,$17,$21
	shl	$16,$11,$21
label_1ff20:
	or	$22,$9,$17
	rotqmbii	$17,$17,-1
	clgt	$20,$16,$2
	lnop
	sf	$21,$16,$2
	rotqmbii	$16,$16,-1
	selb	$9,$22,$9,$20
	lnop
	selb	$2,$21,$2,$20
label_1ff44:
	brnz	$17,label_1ff20	# 1ff20
	ceqi	$55,$59,0
	hbrr	label_1ffb4,label_1fb20	# 1fb20
	mpyh	$48,$29,$15
	mpyu	$49,$15,$29
	shli	$51,$57,16
	ai	$38,$29,-1
	selb	$50,$56,$54,$55
	ai	$44,$38,-1
	selb	$32,$51,$53,$52
	shli	$26,$50,16
	a	$41,$32,$12
	a	$28,$48,$49
	clgt	$42,$12,$41
	clgt	$47,$28,$41
	a	$46,$41,$12
	ceqi	$45,$47,0
	ceqi	$39,$42,0
	clgt	$35,$28,$32
	selb	$40,$46,$41,$45
	selb	$36,$44,$38,$45
	ceqi	$33,$35,0
	selb	$34,$41,$40,$39
	selb	$31,$38,$36,$39
	selb	$27,$34,$32,$33
	selb	$9,$31,$29,$33
	sf	$4,$28,$27
	or	$8,$9,$26
label_1ffb4:
	br	label_1fb20	# 1fb20
label_1ffb8:
	il	$23,1
	ila	$24,65535	# ffff
	heqi	$0,$12,0
	hbrr	label_2000c,label_1ffe8	# 1ffe8
	clz	$15,$12
	clz	$11,$23
	il	$13,1
	fsmbi	$22,0
	sf	$15,$11,$15
	ori	$3,$23,0
	shl	$13,$13,$15
	shl	$11,$12,$15
label_1ffe8:
	or	$16,$22,$13
	rotqmbii	$13,$13,-1
	clgt	$14,$11,$3
	lnop
	sf	$15,$11,$3
	rotqmbii	$11,$11,-1
	selb	$22,$16,$22,$14
	lnop
	selb	$3,$15,$3,$14
label_2000c:
	brnz	$13,label_1ffe8	# 1ffe8
	hbrr	label_20034,label_1fd70	# 1fd70
	ori	$12,$22,0
	il	$8,1
	ori	$25,$12,0
	rotmi	$11,$12,-16
	clz	$14,$25
	and	$15,$12,$24
	sf	$4,$12,$9
	brz	$14,label_1fb20	# 1fb20
label_20034:
	br	label_1fd70	# 1fd70
label_20038:
	ori	$60,$4,0
	hbrr	label_20074,label_1fd30	# 1fd30
	clz	$21,$60
	brnz	$21,label_202bc	# 202bc
	clgt	$68,$12,$18
	fsmbi	$17,0
	clgt	$67,$13,$4
	nor	$66,$68,$68
	sfi	$64,$67,0
	sfi	$65,$66,0
	il	$7,1
	or	$63,$64,$65
	ceqbi	$62,$63,0
	xsbh	$61,$62
	brhz	$61,label_1fd38	# 1fd38
label_20074:
	br	label_1fd30	# 1fd30
label_20078:
	ori	$17,$12,0
	ila	$5,65535	# ffff
	clz	$14,$17
	fsmbi	$17,0
	ila	$50,65535	# ffff
	sfi	$21,$14,32	# 20
	shl	$16,$12,$14
	sfi	$20,$21,0
	ceqi	$10,$14,0
	shl	$15,$13,$14
	rotm	$3,$18,$20
	shlqbyi	$2,$10,0
	selb	$43,$16,$12,$10
	shl	$6,$18,$14
	rotmi	$57,$43,-16
	or	$13,$15,$3
	and	$56,$43,$5
	selb	$8,$13,$9,$10
	selb	$51,$6,$18,$2
	lnop
	heqi	$0,$57,0
	hbrr	label_20114,label_200f0	# 200f0
	clz	$14,$57
	clz	$10,$8
	il	$11,1
	fsmbi	$52,0
	sf	$14,$10,$14
	ori	$4,$8,0
	shl	$11,$11,$14
	shl	$10,$57,$14
label_200f0:
	or	$15,$52,$11
	rotqmbii	$11,$11,-1
	clgt	$13,$10,$4
	lnop
	sf	$14,$10,$4
	rotqmbii	$10,$10,-1
	selb	$52,$15,$52,$13
	lnop
	selb	$4,$14,$4,$13
label_20114:
	brnz	$11,label_200f0	# 200f0
	rotmi	$7,$51,-16
	lnop
	heqi	$0,$57,0
	hbrr	label_2016c,label_20148	# 20148
	clz	$23,$57
	clz	$20,$8
	il	$21,1
	fsmbi	$10,0
	sf	$23,$20,$23
	ori	$16,$8,0
	shl	$21,$21,$23
	shl	$20,$57,$23
label_20148:
	or	$24,$10,$21
	rotqmbii	$21,$21,-1
	clgt	$22,$20,$16
	lnop
	sf	$23,$20,$16
	rotqmbii	$20,$20,-1
	selb	$10,$24,$10,$22
	lnop
	selb	$16,$23,$16,$22
label_2016c:
	brnz	$21,label_20148	# 20148
	mpyh	$77,$52,$43
	mpyu	$78,$43,$52
	shli	$79,$4,16
	ai	$62,$52,-1
	ai	$67,$62,-1
	or	$68,$79,$7
	a	$65,$77,$78
	a	$73,$68,$43
	clgt	$59,$65,$68
	clgt	$71,$65,$73
	clgt	$76,$43,$73
	ceqi	$75,$71,0
	a	$74,$73,$43
	ceqi	$63,$76,0
	selb	$72,$74,$73,$75
	ceqi	$69,$59,0
	selb	$70,$73,$72,$63
	ceqi	$66,$71,0
	selb	$64,$70,$68,$69
	selb	$61,$67,$62,$66
	sf	$58,$65,$64
	selb	$54,$62,$61,$63
	heqi	$0,$57,0
	hbrr	label_20214,label_201f0	# 201f0
	clz	$16,$57
	clz	$10,$58
	il	$13,1
	fsmbi	$33,0
	sf	$16,$10,$16
	ori	$55,$58,0
	shl	$13,$13,$16
	shl	$10,$57,$16
label_201f0:
	or	$20,$33,$13
	rotqmbii	$13,$13,-1
	clgt	$14,$10,$55
	lnop
	sf	$16,$10,$55
	rotqmbii	$10,$10,-1
	selb	$33,$20,$33,$14
	lnop
	selb	$55,$16,$55,$14
label_20214:
	brnz	$13,label_201f0	# 201f0
	heqi	$0,$57,0
	hbrr	label_20264,label_20240	# 20240
	clz	$24,$57
	clz	$21,$58
	il	$22,1
	fsmbi	$10,0
	sf	$24,$21,$24
	ori	$2,$58,0
	shl	$22,$22,$24
	shl	$21,$57,$24
label_20240:
	or	$9,$10,$22
	rotqmbii	$22,$22,-1
	clgt	$23,$21,$2
	lnop
	sf	$24,$21,$2
	rotqmbii	$21,$21,-1
	selb	$10,$9,$10,$23
	lnop
	selb	$2,$24,$2,$23
label_20264:
	brnz	$22,label_20240	# 20240
	ceqi	$53,$59,0
	hbrr	label_202b8,label_1fd38	# 1fd38
	mpyu	$47,$56,$33
	mpyh	$46,$33,$56
	shli	$49,$55,16
	ai	$38,$33,-1
	selb	$48,$54,$52,$53
	selb	$45,$49,$51,$50
	shli	$32,$48,16
	a	$44,$46,$47
	a	$42,$43,$45
	clgt	$39,$44,$45
	clgt	$41,$44,$42
	clgt	$40,$43,$42
	a	$37,$38,$41
	ceqi	$36,$40,0
	ceqi	$34,$39,0
	selb	$35,$38,$37,$36
	selb	$31,$35,$33,$34
	or	$7,$31,$32
label_202b8:
	br	label_1fd38	# 1fd38
label_202bc:
	sfi	$14,$21,32	# 20
	shl	$4,$4,$21
	sfi	$22,$14,0
	sfi	$76,$14,0
	rotm	$26,$12,$22
	sfi	$77,$14,0
	rotm	$23,$18,$76
	rotm	$77,$13,$77
	or	$49,$4,$26
	shl	$10,$13,$21
	rotmi	$76,$49,-16
	shl	$38,$12,$21
	ila	$32,65536	# 10000
	or	$60,$10,$23
	lnop
	heqi	$0,$76,0
	hbrr	label_20344,label_20320	# 20320
	clz	$9,$76
	clz	$2,$77
	il	$3,1
	fsmbi	$61,0
	sf	$9,$2,$9
	ori	$24,$77,0
	shl	$3,$3,$9
	shl	$2,$76,$9
label_20320:
	or	$14,$61,$3
	rotqmbii	$3,$3,-1
	clgt	$8,$2,$24
	lnop
	sf	$9,$2,$24
	rotqmbii	$2,$2,-1
	selb	$61,$14,$61,$8
	lnop
	selb	$24,$9,$24,$8
label_20344:
	brnz	$3,label_20320	# 20320
	rotmi	$20,$60,-16
	ila	$8,65535	# ffff
	rotmi	$36,$38,-16
	mpyh	$2,$61,$49
	mpyu	$3,$49,$61
	shli	$15,$24,16
	and	$65,$49,$8
	ai	$69,$61,-1
	or	$75,$15,$20
	ai	$74,$69,-1
	a	$13,$75,$49
	a	$72,$2,$3
	clgt	$25,$49,$13
	clgt	$5,$72,$13
	a	$6,$13,$49
	ceqi	$11,$5,0
	clgt	$66,$72,$75
	selb	$71,$6,$13,$11
	ceqi	$70,$25,0
	ceqi	$78,$66,0
	selb	$79,$13,$71,$70
	ceqi	$73,$5,0
	selb	$7,$79,$75,$78
	selb	$68,$74,$69,$73
	sf	$79,$72,$7
	selb	$63,$69,$68,$70
	heqi	$0,$76,0
	hbrr	label_203fc,label_203d8	# 203d8
	clz	$23,$76
	clz	$15,$79
	il	$17,1
	fsmbi	$47,0
	sf	$23,$15,$23
	ori	$64,$79,0
	shl	$17,$17,$23
	shl	$15,$76,$23
label_203d8:
	or	$24,$47,$17
	rotqmbii	$17,$17,-1
	clgt	$20,$15,$64
	lnop
	sf	$23,$15,$64
	rotqmbii	$15,$15,-1
	selb	$47,$24,$47,$20
	lnop
	selb	$64,$23,$64,$20
label_203fc:
	brnz	$17,label_203d8	# 203d8
	ceqi	$62,$66,0
	ila	$17,65535	# ffff
	selb	$58,$63,$61,$62
	mpyu	$57,$65,$47
	mpyh	$56,$47,$65
	shli	$59,$64,16
	ai	$52,$47,-1
	shli	$45,$58,16
	ai	$55,$52,-1
	selb	$27,$59,$60,$17
	shl	$25,$18,$21
	a	$39,$27,$49
	a	$24,$56,$57
	clgt	$42,$49,$39
	clgt	$46,$24,$39
	clgt	$53,$24,$27
	ceqi	$54,$46,0
	ceqi	$50,$42,0
	selb	$51,$55,$52,$54
	ceqi	$28,$53,0
	selb	$48,$52,$51,$50
	a	$44,$39,$49
	selb	$16,$48,$47,$28
	ceqi	$43,$46,0
	or	$16,$16,$45
	selb	$41,$44,$39,$43
	rotmi	$35,$16,-16
	lnop
	mpyu	$23,$16,$38
	shlqbyi	$7,$16,0
	mpyu	$37,$16,$36
	ceqi	$40,$42,0
	mpyu	$9,$35,$38
	mpyu	$22,$35,$36
	selb	$29,$39,$41,$40
	ila	$18,65535	# ffff
	rotmi	$33,$23,-16
	selb	$20,$29,$27,$28
	and	$10,$23,$18
	a	$34,$37,$9
	a	$26,$22,$32
	a	$30,$33,$34
	sf	$6,$24,$20
	clgt	$31,$9,$30
	shli	$3,$30,16
	rotmi	$12,$30,-16
	ceqi	$14,$31,0
	selb	$15,$26,$22,$14
	a	$11,$3,$10
	a	$4,$15,$12
	clgt	$13,$11,$25
	ceq	$2,$6,$4
	sfi	$8,$13,0
	sfi	$5,$2,0
	clgt	$71,$4,$6
	and	$78,$5,$8
	heqi	$0,$76,0
	hbrr	label_2052c,label_20508	# 20508
	clz	$10,$76
	clz	$3,$79
	il	$8,1
	fsmbi	$5,0
	sf	$10,$3,$10
	ori	$4,$79,0
	shl	$8,$8,$10
	shl	$3,$76,$10
label_20508:
	or	$12,$5,$8
	rotqmbii	$8,$8,-1
	clgt	$9,$3,$4
	lnop
	sf	$10,$3,$4
	rotqmbii	$3,$3,-1
	selb	$5,$12,$5,$9
	lnop
	selb	$4,$10,$4,$9
label_2052c:
	brnz	$8,label_20508	# 20508
	heqi	$0,$76,0
	hbrr	label_2057c,label_20558	# 20558
	clz	$20,$76
	clz	$14,$77
	il	$15,1
	fsmbi	$4,0
	sf	$20,$14,$20
	ori	$3,$77,0
	shl	$15,$15,$20
	shl	$14,$76,$20
label_20558:
	or	$21,$4,$15
	rotqmbii	$15,$15,-1
	clgt	$17,$14,$3
	lnop
	sf	$20,$14,$3
	rotqmbii	$14,$14,-1
	selb	$4,$21,$4,$17
	lnop
	selb	$3,$20,$3,$17
label_2057c:
	brnz	$15,label_20558	# 20558
	ceqbi	$75,$78,0
	hbrr	label_205a8,label_1fd38	# 1fd38
	xsbh	$74,$75
	fsmbi	$17,0
	ceqhi	$73,$74,0
	nor	$72,$73,$73
	xshw	$70,$72
	andc	$69,$70,$71
	brnz	$69,label_1fd38	# 1fd38
	ai	$7,$16,-1
label_205a8:
	br	label_1fd38	# 1fd38
	lnop
.global func_205b0
func_205b0:
	il	$17,0
	lqr	$23,data_22830	# 22830
	cgti	$24,$4,-1
	fsmbi	$21,0
	bg	$7,$4,$17
	stqd	$1,-48($1)
	ceqi	$18,$24,0
	fsmbi	$2,0
	cgti	$12,$3,-1
	lnop
	bg	$25,$3,$21
	fsm	$14,$18
	ceqi	$22,$12,0
	shufb	$7,$7,$7,$23
	ceqi	$6,$12,0
	shufb	$20,$25,$25,$23
	ai	$1,$1,-48
	fsm	$15,$22
	ori	$11,$7,0
	sfx	$20,$3,$21
	sfx	$11,$4,$17
	selb	$9,$3,$20,$15
	selb	$8,$4,$11,$14
	fsmbi	$3,65535	# ffff
	ai	$26,$1,32	# 20
	rotqbyi	$4,$9,8
	rotqbyi	$10,$8,8
	selb	$27,$2,$3,$6
	shlqbyi	$19,$4,12
	shlqbyi	$5,$10,12
	ori	$12,$5,0
	brnz	$8,label_20898	# 20898
	clgt	$28,$5,$9
	brnz	$28,label_20b64	# 20b64
	brz	$5,label_20ae0	# 20ae0
	ori	$16,$12,0
	ila	$15,65535	# ffff
	clz	$14,$16
	rotmi	$11,$12,-16
	lnop
	and	$13,$12,$15
	fsmbi	$15,0
	sf	$3,$12,$9
	brnz	$14,label_208d0	# 208d0
label_20660:
	heqi	$0,$11,0
	hbrr	label_206ac,label_20688	# 20688
	clz	$23,$11
	clz	$18,$3
	il	$20,1
	fsmbi	$24,0
	sf	$23,$18,$23
	ori	$22,$3,0
	shl	$20,$20,$23
	shl	$18,$11,$23
label_20688:
	or	$25,$24,$20
	rotqmbii	$20,$20,-1
	clgt	$21,$18,$22
	lnop
	sf	$23,$18,$22
	rotqmbii	$18,$18,-1
	selb	$24,$25,$24,$21
	lnop
	selb	$22,$23,$22,$21
label_206ac:
	brnz	$20,label_20688	# 20688
	rotmi	$21,$19,-16
	lnop
	heqi	$0,$11,0
	hbrr	label_20704,label_206e0	# 206e0
	clz	$10,$11
	clz	$28,$3
	il	$8,1
	fsmbi	$7,0
	sf	$10,$28,$10
	ori	$6,$3,0
	shl	$8,$8,$10
	shl	$28,$11,$10
label_206e0:
	or	$14,$7,$8
	rotqmbii	$8,$8,-1
	clgt	$9,$28,$6
	lnop
	sf	$10,$28,$6
	rotqmbii	$28,$28,-1
	selb	$7,$14,$7,$9
	lnop
	selb	$6,$10,$6,$9
label_20704:
	brnz	$8,label_206e0	# 206e0
	ila	$74,65535	# ffff
	mpyu	$18,$13,$24
	mpyh	$4,$24,$13
	shli	$20,$22,16
	or	$2,$20,$21
	a	$79,$4,$18
	a	$6,$2,$12
	clgt	$16,$79,$2
	clgt	$17,$12,$6
	a	$3,$6,$12
	clgt	$9,$79,$6
	ceqi	$14,$17,0
	selb	$10,$6,$3,$9
	ceqi	$5,$16,0
	selb	$8,$6,$10,$14
	selb	$78,$8,$2,$5
	sf	$77,$79,$78
	lnop
	heqi	$0,$11,0
	hbrr	label_2079c,label_20778	# 20778
	clz	$20,$11
	clz	$16,$77
	il	$17,1
	fsmbi	$76,0
	sf	$20,$16,$20
	ori	$75,$77,0
	shl	$17,$17,$20
	shl	$16,$11,$20
label_20778:
	or	$21,$76,$17
	rotqmbii	$17,$17,-1
	clgt	$18,$16,$75
	lnop
	sf	$20,$16,$75
	rotqmbii	$16,$16,-1
	selb	$76,$21,$76,$18
	lnop
	selb	$75,$20,$75,$18
label_2079c:
	brnz	$17,label_20778	# 20778
	heqi	$0,$11,0
	hbrr	label_207ec,label_207c8	# 207c8
	clz	$4,$11
	clz	$23,$77
	il	$25,1
	fsmbi	$7,0
	sf	$4,$23,$4
	ori	$6,$77,0
	shl	$25,$25,$4
	shl	$23,$11,$4
label_207c8:
	or	$8,$7,$25
	rotqmbii	$25,$25,-1
	clgt	$28,$23,$6
	lnop
	sf	$4,$23,$6
	rotqmbii	$23,$23,-1
	selb	$7,$8,$7,$28
	lnop
	selb	$6,$4,$6,$28
label_207ec:
	brnz	$25,label_207c8	# 207c8
	mpyu	$72,$13,$76
	mpyh	$71,$76,$13
	shli	$73,$75,16
	selb	$62,$73,$19,$74
	a	$19,$71,$72
	a	$67,$62,$12
	clgt	$7,$19,$62
	a	$68,$67,$12
	clgt	$70,$12,$67
	clgt	$69,$19,$67
	ceqi	$65,$70,0
	selb	$66,$67,$68,$69
	ceqi	$63,$7,0
	selb	$64,$67,$66,$65
	selb	$12,$64,$62,$63
	sf	$2,$19,$12
label_20830:
	sfi	$32,$15,0
	cwd	$31,4($1)
	il	$28,0
	cwd	$29,0($1)
	rotm	$30,$2,$32
	lqd	$23,0($26)
	cdd	$25,0($26)
	shufb	$7,$30,$7,$31
	shufb	$15,$28,$7,$29
	shufb	$13,$15,$23,$25
	stqd	$13,0($26)
label_2085c:
	brz	$27,label_208c8	# 208c8
label_20860:
	il	$65,0
	lqd	$26,32($1)	# 20
	lqr	$77,data_22830	# 22830
	cdd	$22,0($1)
	bg	$66,$26,$65
	shufb	$19,$66,$66,$77
	sfx	$19,$26,$65
	lnop
	ori	$7,$19,0
	shufb	$27,$19,$26,$22
	stqd	$27,32($1)	# 20
label_2088c:
	ori	$3,$7,0
	ai	$1,$1,48	# 30
	bi	$0
label_20898:
	clgt	$33,$8,$9
	hbrr	label_208c4,label_20860	# 20860
	brz	$33,label_20d80	# 20d80
	cwd	$39,4($1)
	cwd	$38,0($1)
	lqd	$34,32($1)	# 20
	cdd	$36,0($1)
	shufb	$37,$19,$7,$39
	shufb	$35,$9,$37,$38
	shufb	$26,$35,$34,$36
	stqd	$26,32($1)	# 20
label_208c4:
	brnz	$27,label_20860	# 20860
label_208c8:
	lqd	$7,32($1)	# 20
	br	label_2088c	# 2088c
label_208d0:
	shl	$12,$12,$14
	shlqbyi	$15,$14,0
	sfi	$61,$14,32	# 20
	shl	$57,$9,$14
	sfi	$11,$61,0
	sfi	$60,$61,0
	rotm	$56,$9,$11
	rotmi	$11,$12,-16
	rotm	$58,$19,$60
	ila	$59,65535	# ffff
	shl	$19,$19,$14
	lnop
	heqi	$0,$11,0
	hbrr	label_2094c,label_20928	# 20928
	clz	$9,$11
	clz	$3,$56
	il	$6,1
	fsmbi	$55,0
	sf	$9,$3,$9
	ori	$54,$56,0
	shl	$6,$6,$9
	shl	$3,$11,$9
label_20928:
	or	$10,$55,$6
	rotqmbii	$6,$6,-1
	clgt	$8,$3,$54
	lnop
	sf	$9,$3,$54
	rotqmbii	$3,$3,-1
	selb	$55,$10,$55,$8
	lnop
	selb	$54,$9,$54,$8
label_2094c:
	brnz	$6,label_20928	# 20928
	or	$34,$57,$58
	lnop
	heqi	$0,$11,0
	hbrr	label_209a4,label_20980	# 20980
	clz	$20,$11
	clz	$16,$56
	il	$17,1
	fsmbi	$9,0
	sf	$20,$16,$20
	ori	$8,$56,0
	shl	$17,$17,$20
	shl	$16,$11,$20
label_20980:
	or	$21,$9,$17
	rotqmbii	$17,$17,-1
	clgt	$18,$16,$8
	lnop
	sf	$20,$16,$8
	rotqmbii	$16,$16,-1
	selb	$9,$21,$9,$18
	lnop
	selb	$8,$20,$8,$18
label_209a4:
	brnz	$17,label_20980	# 20980
	rotmi	$53,$34,-16
	mpyu	$51,$12,$55
	mpyh	$50,$55,$12
	shli	$52,$54,16
	and	$13,$12,$59
	ila	$33,65535	# ffff
	or	$40,$52,$53
	a	$39,$50,$51
	a	$45,$40,$12
	clgt	$46,$39,$40
	clgt	$49,$12,$45
	clgt	$48,$39,$45
	a	$47,$45,$12
	ceqi	$44,$49,0
	selb	$43,$45,$47,$48
	ceqi	$41,$46,0
	selb	$42,$45,$43,$44
	selb	$38,$42,$40,$41
	sf	$37,$39,$38
	lnop
	heqi	$0,$11,0
	hbrr	label_20a44,label_20a20	# 20a20
	clz	$5,$11
	clz	$23,$37
	il	$25,1
	fsmbi	$36,0
	sf	$5,$23,$5
	ori	$35,$37,0
	shl	$25,$25,$5
	shl	$23,$11,$5
label_20a20:
	or	$6,$36,$25
	rotqmbii	$25,$25,-1
	clgt	$28,$23,$35
	lnop
	sf	$5,$23,$35
	rotqmbii	$23,$23,-1
	selb	$36,$6,$36,$28
	lnop
	selb	$35,$5,$35,$28
label_20a44:
	brnz	$25,label_20a20	# 20a20
	heqi	$0,$11,0
	hbrr	label_20a94,label_20a70	# 20a70
	clz	$16,$11
	clz	$9,$37
	il	$10,1
	fsmbi	$8,0
	sf	$16,$9,$16
	ori	$6,$37,0
	shl	$10,$10,$16
	shl	$9,$11,$16
label_20a70:
	or	$17,$8,$10
	rotqmbii	$10,$10,-1
	clgt	$14,$9,$6
	lnop
	sf	$16,$9,$6
	rotqmbii	$9,$9,-1
	selb	$8,$17,$8,$14
	lnop
	selb	$6,$16,$6,$14
label_20a94:
	brnz	$10,label_20a70	# 20a70
	hbrr	label_20adc,label_20660	# 20660
	mpyu	$31,$13,$36
	mpyh	$30,$36,$13
	shli	$32,$35,16
	selb	$18,$32,$34,$33
	a	$17,$30,$31
	a	$24,$18,$12
	clgt	$7,$17,$18
	clgt	$29,$12,$24
	clgt	$28,$17,$24
	a	$25,$24,$12
	ceqi	$23,$29,0
	selb	$22,$24,$25,$28
	ceqi	$20,$7,0
	selb	$21,$24,$22,$23
	selb	$9,$21,$18,$20
	sf	$3,$17,$9
label_20adc:
	br	label_20660	# 20660
label_20ae0:
	il	$13,1
	ila	$15,65535	# ffff
	heqi	$0,$5,0
	hbrr	label_20b34,label_20b10	# 20b10
	clz	$23,$5
	clz	$18,$13
	il	$20,1
	fsmbi	$4,0
	sf	$23,$18,$23
	ori	$3,$13,0
	shl	$20,$20,$23
	shl	$18,$5,$23
label_20b10:
	or	$25,$4,$20
	rotqmbii	$20,$20,-1
	clgt	$21,$18,$3
	lnop
	sf	$23,$18,$3
	rotqmbii	$18,$18,-1
	selb	$4,$25,$4,$21
	lnop
	selb	$3,$23,$3,$21
label_20b34:
	brnz	$20,label_20b10	# 20b10
	hbrr	label_20b60,label_208d0	# 208d0
	ori	$12,$4,0
	ori	$16,$12,0
	rotmi	$11,$12,-16
	clz	$14,$16
	lnop
	and	$13,$12,$15
	fsmbi	$15,0
	sf	$3,$12,$9
	brz	$14,label_20660	# 20660
label_20b60:
	br	label_208d0	# 208d0
label_20b64:
	clz	$70,$5
	ila	$74,65535	# ffff
	fsmbi	$66,0
	shl	$10,$5,$70
	ceqi	$8,$70,0
	sfi	$2,$70,32	# 20
	shl	$79,$9,$70
	selb	$40,$10,$5,$8
	shlqbyi	$77,$8,0
	sfi	$5,$2,0
	rotmi	$49,$40,-16
	rotm	$6,$19,$5
	shl	$76,$19,$70
	and	$48,$40,$74
	ila	$44,65535	# ffff
	or	$78,$79,$6
	selb	$45,$76,$19,$77
	selb	$71,$78,$9,$8
	rotmi	$69,$45,-16
	heqi	$0,$49,0
	hbrr	label_20bfc,label_20bd8	# 20bd8
	clz	$14,$49
	clz	$8,$71
	il	$10,1
	fsmbi	$73,0
	sf	$14,$8,$14
	ori	$72,$71,0
	shl	$10,$10,$14
	shl	$8,$49,$14
label_20bd8:
	or	$15,$73,$10
	rotqmbii	$10,$10,-1
	clgt	$13,$8,$72
	lnop
	sf	$14,$8,$72
	rotqmbii	$8,$8,-1
	selb	$73,$15,$73,$13
	lnop
	selb	$72,$14,$72,$13
label_20bfc:
	brnz	$10,label_20bd8	# 20bd8
	heqi	$0,$49,0
	hbrr	label_20c4c,label_20c28	# 20c28
	clz	$21,$49
	clz	$17,$71
	il	$18,1
	fsmbi	$10,0
	sf	$21,$17,$21
	ori	$16,$71,0
	shl	$18,$18,$21
	shl	$17,$49,$21
label_20c28:
	or	$23,$10,$18
	rotqmbii	$18,$18,-1
	clgt	$20,$17,$16
	lnop
	sf	$21,$17,$16
	rotqmbii	$17,$17,-1
	selb	$10,$23,$10,$20
	lnop
	selb	$16,$21,$16,$20
label_20c4c:
	brnz	$18,label_20c28	# 20c28
	ceqi	$65,$70,0
	mpyu	$64,$40,$73
	mpyh	$63,$73,$40
	shli	$68,$72,16
	selb	$15,$70,$66,$65
	or	$53,$68,$69
	a	$52,$63,$64
	a	$58,$53,$40
	clgt	$59,$52,$53
	clgt	$62,$40,$58
	clgt	$61,$52,$58
	a	$60,$58,$40
	ceqi	$57,$62,0
	selb	$56,$58,$60,$61
	ceqi	$54,$59,0
	selb	$55,$58,$56,$57
	selb	$51,$55,$53,$54
	sf	$50,$52,$51
	heqi	$0,$49,0
	hbrr	label_20ce4,label_20cc0	# 20cc0
	clz	$8,$49
	clz	$25,$50
	il	$28,1
	fsmbi	$47,0
	sf	$8,$25,$8
	ori	$46,$50,0
	shl	$28,$28,$8
	shl	$25,$49,$8
label_20cc0:
	or	$9,$47,$28
	rotqmbii	$28,$28,-1
	clgt	$5,$25,$46
	lnop
	sf	$8,$25,$46
	rotqmbii	$25,$25,-1
	selb	$47,$9,$47,$5
	lnop
	selb	$46,$8,$46,$5
label_20ce4:
	brnz	$28,label_20cc0	# 20cc0
	heqi	$0,$49,0
	hbrr	label_20d34,label_20d10	# 20d10
	clz	$14,$49
	clz	$10,$50
	il	$11,1
	fsmbi	$9,0
	sf	$14,$10,$14
	ori	$8,$50,0
	shl	$11,$11,$14
	shl	$10,$49,$14
label_20d10:
	or	$16,$9,$11
	rotqmbii	$11,$11,-1
	clgt	$13,$10,$8
	lnop
	sf	$14,$10,$8
	rotqmbii	$10,$10,-1
	selb	$9,$16,$9,$13
	lnop
	selb	$8,$14,$8,$13
label_20d34:
	brnz	$11,label_20d10	# 20d10
	hbrr	label_20d7c,label_20830	# 20830
	mpyu	$42,$48,$47
	mpyh	$41,$47,$48
	shli	$43,$46,16
	selb	$31,$43,$45,$44
	a	$29,$41,$42
	a	$36,$31,$40
	clgt	$7,$29,$31
	a	$37,$36,$40
	clgt	$39,$40,$36
	clgt	$38,$29,$36
	ceqi	$34,$39,0
	selb	$35,$36,$37,$38
	ceqi	$32,$7,0
	selb	$33,$36,$35,$34
	selb	$30,$33,$31,$32
	sf	$2,$29,$30
label_20d7c:
	br	label_20830	# 20830
label_20d80:
	ori	$40,$8,0
	clz	$22,$40
	nop	$127
	brnz	$22,label_20e00	# 20e00
	clgt	$64,$5,$19
	hbrr	label_20dfc,label_2085c	# 2085c
	clgt	$63,$9,$8
	cwd	$50,4($1)
	nor	$62,$64,$64
	cwd	$47,0($1)
	sfi	$61,$63,0
	lqd	$42,32($1)	# 20
	sfi	$11,$62,0
	cdd	$44,0($1)
	sf	$58,$5,$19
	or	$60,$61,$11
	ori	$48,$58,0
	ceqbi	$59,$60,0
	sf	$55,$8,$9
	xsbh	$57,$59
	clgt	$56,$58,$19
	ceqhi	$54,$57,0
	a	$52,$55,$56
	fsm	$53,$54
	selb	$49,$19,$58,$53
	selb	$46,$9,$52,$53
	shufb	$45,$49,$48,$50
	shufb	$43,$46,$45,$47
	shufb	$41,$43,$42,$44
	stqd	$41,32($1)	# 20
	nop	$127
label_20dfc:
	br	label_2085c	# 2085c
label_20e00:
	sfi	$77,$22,32	# 20
	lqd	$65,0($26)
	shl	$8,$8,$22
	cdd	$66,0($26)
	sfi	$52,$77,0
	sfi	$13,$77,0
	rotm	$32,$5,$52
	sfi	$15,$77,0
	rotm	$51,$19,$13
	rotm	$15,$9,$15
	or	$32,$8,$32
	shl	$7,$9,$22
	rotmi	$13,$32,-16
	ila	$34,65535	# ffff
	ila	$56,65536	# 10000
	or	$18,$7,$51
	heqi	$0,$13,0
	hbrr	label_20e8c,label_20e68	# 20e68
	clz	$23,$13
	clz	$14,$15
	il	$20,1
	fsmbi	$3,0
	sf	$23,$14,$23
	ori	$50,$15,0
	shl	$20,$20,$23
	shl	$14,$13,$23
label_20e68:
	or	$25,$3,$20
	rotqmbii	$20,$20,-1
	clgt	$21,$14,$50
	lnop
	sf	$23,$14,$50
	rotqmbii	$14,$14,-1
	selb	$3,$25,$3,$21
	lnop
	selb	$50,$23,$50,$21
label_20e8c:
	brnz	$20,label_20e68	# 20e68
	rotmi	$49,$18,-16
	and	$31,$32,$34
	shl	$34,$5,$22
	mpyh	$46,$3,$32
	mpyu	$47,$32,$3
	shli	$48,$50,16
	ai	$35,$3,-1
	ila	$14,65535	# ffff
	ai	$25,$35,-1
	or	$38,$48,$49
	rotmi	$60,$34,-16
	a	$42,$38,$32
	a	$29,$46,$47
	clgt	$45,$32,$42
	clgt	$21,$29,$42
	a	$43,$42,$32
	ceqi	$44,$21,0
	clgt	$33,$29,$38
	ceqi	$28,$45,0
	selb	$41,$43,$42,$44
	ceqi	$39,$33,0
	shlqbyi	$36,$28,0
	selb	$40,$42,$41,$28
	ceqi	$37,$21,0
	selb	$9,$40,$38,$39
	selb	$24,$25,$35,$37
	sf	$29,$29,$9
	selb	$20,$35,$24,$36
	heqi	$0,$13,0
	hbrr	label_20f4c,label_20f28	# 20f28
	clz	$23,$13
	clz	$28,$29
	il	$11,1
	fsmbi	$73,0
	sf	$23,$28,$23
	ori	$30,$29,0
	shl	$11,$11,$23
	shl	$28,$13,$23
label_20f28:
	or	$25,$73,$11
	rotqmbii	$11,$11,-1
	clgt	$21,$28,$30
	lnop
	sf	$23,$28,$30
	rotqmbii	$28,$28,-1
	selb	$73,$25,$73,$21
	lnop
	selb	$30,$23,$30,$21
label_20f4c:
	brnz	$11,label_20f28	# 20f28
	ila	$46,65535	# ffff
	ceqi	$23,$33,0
	mpyh	$10,$73,$31
	mpyu	$5,$31,$73
	shli	$6,$30,16
	ai	$79,$73,-1
	selb	$16,$20,$3,$23
	ai	$4,$79,-1
	selb	$50,$6,$18,$14
	shli	$72,$16,16
	a	$40,$10,$5
	a	$63,$50,$32
	clgt	$17,$40,$50
	clgt	$75,$40,$63
	clgt	$67,$32,$63
	ceqi	$2,$75,0
	ceqi	$78,$67,0
	selb	$76,$4,$79,$2
	ceqi	$64,$17,0
	selb	$74,$79,$76,$78
	ceqi	$69,$75,0
	selb	$71,$74,$73,$64
	a	$70,$63,$32
	or	$68,$71,$72
	selb	$62,$70,$63,$69
	cwd	$72,4($1)
	rotmi	$59,$68,-16
	cwd	$69,0($1)
	mpyu	$45,$68,$34
	mpyu	$61,$68,$60
	ceqi	$11,$67,0
	mpyu	$55,$59,$34
	mpyu	$47,$59,$60
	selb	$52,$63,$62,$11
	shl	$17,$19,$22
	rotmi	$57,$45,-16
	selb	$39,$52,$50,$64
	and	$42,$45,$46
	a	$58,$61,$55
	a	$49,$47,$56
	a	$53,$57,$58
	sf	$6,$40,$39
	clgt	$54,$55,$53
	rotmi	$44,$53,-16
	ceqi	$48,$54,0
	shli	$41,$53,16
	selb	$43,$49,$47,$48
	sfi	$76,$22,0
	a	$4,$43,$44
	a	$3,$41,$42
	ceq	$37,$6,$4
	clgt	$38,$3,$17
	sfi	$35,$37,0
	sfi	$36,$38,0
	sf	$28,$34,$3
	and	$33,$35,$36
	clgt	$25,$28,$3
	shlqbyi	$14,$28,0
	ceqbi	$31,$33,0
	sf	$21,$32,$4
	xsbh	$30,$31
	clgt	$24,$4,$6
	ceqhi	$7,$30,0
	a	$8,$21,$25
	nor	$20,$7,$7
	xshw	$23,$20
	heqi	$0,$13,0
	hbrr	label_210a4,label_21080	# 21080
	clz	$20,$13
	clz	$28,$29
	il	$12,1
	fsmbi	$5,0
	sf	$20,$28,$20
	ori	$2,$29,0
	shl	$12,$12,$20
	shl	$28,$13,$20
label_21080:
	or	$21,$5,$12
	rotqmbii	$12,$12,-1
	clgt	$19,$28,$2
	lnop
	sf	$20,$28,$2
	rotqmbii	$28,$28,-1
	selb	$5,$21,$5,$19
	lnop
	selb	$2,$20,$2,$19
label_210a4:
	brnz	$12,label_21080	# 21080
	andc	$18,$23,$24
	lnop
	heqi	$0,$13,0
	hbrr	label_210fc,label_210d8	# 210d8
	clz	$9,$13
	clz	$23,$15
	il	$25,1
	fsmbi	$5,0
	sf	$9,$23,$9
	ori	$2,$15,0
	shl	$25,$25,$9
	shl	$23,$13,$9
label_210d8:
	or	$10,$5,$25
	rotqmbii	$25,$25,-1
	clgt	$28,$23,$2
	lnop
	sf	$9,$23,$2
	rotqmbii	$23,$23,-1
	selb	$5,$10,$5,$28
	lnop
	selb	$2,$9,$2,$28
label_210fc:
	brnz	$25,label_210d8	# 210d8
	hbrr	label_21144,label_2085c	# 2085c
	ceqi	$9,$18,0
	sfi	$2,$22,0
	selb	$10,$3,$14,$9
	selb	$5,$4,$8,$9
	sf	$79,$10,$17
	sf	$78,$5,$6
	clgt	$70,$79,$17
	rotm	$74,$79,$2
	a	$75,$78,$70
	shl	$73,$75,$77
	rotm	$68,$75,$76
	or	$71,$73,$74
	shufb	$67,$71,$70,$72
	shufb	$12,$68,$67,$69
	shufb	$19,$12,$65,$66
	stqd	$19,0($26)
label_21144:
	br	label_2085c	# 2085c
.global func_21148
func_21148:
	ori	$9,$3,0
	rotqbyi	$5,$3,8
	rotqbyi	$2,$4,8
	shlqbyi	$18,$5,12
	shlqbyi	$12,$2,12
	brnz	$4,label_21398	# 21398
	clgt	$3,$12,$3
	brnz	$3,label_21988	# 21988
	brz	$12,label_21908	# 21908
	ori	$74,$12,0
	ila	$73,65535	# ffff
	clz	$14,$74
	rotmi	$11,$12,-16
	and	$15,$12,$73
	sf	$4,$12,$9
	lnop
	il	$8,1
	brnz	$14,label_216c0	# 216c0
label_21190:
	heqi	$0,$11,0
	hbrr	label_211dc,label_211b8	# 211b8
	clz	$5,$11
	clz	$22,$4
	il	$23,1
	fsmbi	$24,0
	sf	$5,$22,$5
	ori	$35,$4,0
	shl	$23,$23,$5
	shl	$22,$11,$5
label_211b8:
	or	$7,$24,$23
	rotqmbii	$23,$23,-1
	clgt	$3,$22,$35
	lnop
	sf	$5,$22,$35
	rotqmbii	$22,$22,-1
	selb	$24,$7,$24,$3
	lnop
	selb	$35,$5,$35,$3
label_211dc:
	brnz	$23,label_211b8	# 211b8
	rotmi	$34,$18,-16
	lnop
	heqi	$0,$11,0
	hbrr	label_21234,label_21210	# 21210
	clz	$16,$11
	clz	$10,$4
	il	$13,1
	fsmbi	$7,0
	sf	$16,$10,$16
	ori	$9,$4,0
	shl	$13,$13,$16
	shl	$10,$11,$16
label_21210:
	or	$17,$7,$13
	rotqmbii	$13,$13,-1
	clgt	$14,$10,$9
	lnop
	sf	$16,$10,$9
	rotqmbii	$10,$10,-1
	selb	$7,$17,$7,$14
	lnop
	selb	$9,$16,$9,$14
label_21234:
	brnz	$13,label_21210	# 21210
	ila	$79,65535	# ffff
	lnop
	mpyh	$31,$24,$15
	shlqbyi	$17,$8,0
	mpyu	$32,$15,$24
	shli	$33,$35,16
	ai	$26,$24,-1
	ai	$16,$26,-1
	or	$22,$33,$34
	a	$21,$31,$32
	a	$29,$22,$12
	clgt	$25,$21,$22
	clgt	$28,$21,$29
	clgt	$30,$12,$29
	a	$6,$29,$12
	ceqi	$4,$28,0
	ceqi	$8,$30,0
	selb	$5,$6,$29,$4
	ceqi	$23,$25,0
	selb	$27,$29,$5,$8
	ceqi	$13,$28,0
	selb	$19,$27,$22,$23
	selb	$7,$16,$26,$13
	sf	$2,$21,$19
	ceqi	$9,$25,0
	lnop
	heqi	$0,$11,0
	hbrr	label_212ec,label_212c8	# 212c8
	clz	$22,$11
	clz	$19,$2
	il	$20,1
	fsmbi	$65,0
	sf	$22,$19,$22
	ori	$10,$2,0
	shl	$20,$20,$22
	shl	$19,$11,$22
label_212c8:
	or	$23,$65,$20
	rotqmbii	$20,$20,-1
	clgt	$21,$19,$10
	lnop
	sf	$22,$19,$10
	rotqmbii	$19,$19,-1
	selb	$65,$23,$65,$21
	lnop
	selb	$10,$22,$10,$21
label_212ec:
	brnz	$20,label_212c8	# 212c8
	selb	$20,$26,$7,$8
	lnop
	heqi	$0,$11,0
	hbrr	label_21344,label_21320	# 21320
	clz	$16,$11
	clz	$7,$2
	il	$13,1
	fsmbi	$8,0
	sf	$16,$7,$16
	ori	$3,$2,0
	shl	$13,$13,$16
	shl	$7,$11,$16
label_21320:
	or	$19,$8,$13
	rotqmbii	$13,$13,-1
	clgt	$14,$7,$3
	lnop
	sf	$16,$7,$3
	rotqmbii	$7,$7,-1
	selb	$8,$19,$8,$14
	lnop
	selb	$3,$16,$3,$14
label_21344:
	brnz	$13,label_21320	# 21320
	mpyu	$76,$15,$65
	hbrr	label_21394,label_213a8	# 213a8
	mpyh	$75,$65,$15
	shli	$78,$10,16
	ai	$70,$65,-1
	selb	$77,$20,$24,$9
	selb	$74,$78,$18,$79
	shli	$18,$77,16
	a	$73,$12,$74
	a	$14,$75,$76
	clgt	$71,$12,$73
	clgt	$72,$14,$73
	clgt	$7,$14,$74
	a	$69,$70,$72
	ceqi	$68,$71,0
	ceqi	$66,$7,0
	selb	$67,$70,$69,$68
	selb	$12,$67,$65,$66
	or	$5,$12,$18
label_21394:
	br	label_213a8	# 213a8
label_21398:
	clgt	$17,$4,$3
	brz	$17,label_213bc	# 213bc
label_213a0:
	il	$17,0
	fsmbi	$5,0
label_213a8:
	cwd	$18,0($1)
	cwd	$20,4($1)
	shufb	$12,$17,$7,$18
	shufb	$3,$5,$12,$20
	bi	$0
label_213bc:
	ori	$36,$4,0
	clz	$20,$36
	brz	$20,label_21bc8	# 21bc8
	sfi	$66,$20,32	# 20
	shl	$4,$4,$20
	sfi	$68,$66,0
	sfi	$52,$66,0
	rotm	$67,$12,$68
	sfi	$53,$66,0
	rotm	$65,$18,$52
	rotm	$53,$3,$53
	or	$28,$4,$67
	shl	$11,$3,$20
	rotmi	$52,$28,-16
	ila	$64,65535	# ffff
	ila	$35,65535	# ffff
	or	$36,$11,$65
	heqi	$0,$52,0
	hbrr	label_2144c,label_21428	# 21428
	clz	$9,$52
	clz	$2,$53
	il	$3,1
	fsmbi	$37,0
	sf	$9,$2,$9
	ori	$63,$53,0
	shl	$3,$3,$9
	shl	$2,$52,$9
label_21428:
	or	$14,$37,$3
	rotqmbii	$3,$3,-1
	clgt	$8,$2,$63
	lnop
	sf	$9,$2,$63
	rotqmbii	$2,$2,-1
	selb	$37,$14,$37,$8
	lnop
	selb	$63,$9,$63,$8
label_2144c:
	brnz	$3,label_21428	# 21428
	rotmi	$62,$36,-16
	and	$40,$28,$64
	shl	$9,$12,$20
	mpyu	$15,$28,$37
	mpyh	$60,$37,$28
	shli	$61,$63,16
	ai	$44,$37,-1
	rotmi	$79,$9,-16
	ai	$49,$44,-1
	or	$50,$61,$62
	ila	$75,65536	# 10000
	a	$46,$60,$15
	a	$47,$50,$28
	clgt	$41,$46,$50
	clgt	$55,$46,$47
	clgt	$59,$28,$47
	ceqi	$58,$55,0
	a	$57,$47,$28
	ceqi	$45,$59,0
	selb	$56,$57,$47,$58
	ceqi	$51,$41,0
	selb	$54,$47,$56,$45
	ceqi	$48,$55,0
	selb	$7,$54,$50,$51
	selb	$43,$49,$44,$48
	sf	$7,$46,$7
	selb	$38,$44,$43,$45
	lnop
	heqi	$0,$52,0
	hbrr	label_2150c,label_214e8	# 214e8
	clz	$22,$52
	clz	$15,$7
	il	$17,1
	fsmbi	$27,0
	sf	$22,$15,$22
	ori	$39,$7,0
	shl	$17,$17,$22
	shl	$15,$52,$22
label_214e8:
	or	$23,$27,$17
	rotqmbii	$17,$17,-1
	clgt	$19,$15,$39
	lnop
	sf	$22,$15,$39
	rotqmbii	$15,$15,-1
	selb	$27,$23,$27,$19
	lnop
	selb	$39,$22,$39,$19
label_2150c:
	brnz	$17,label_214e8	# 214e8
	shl	$61,$18,$20
	ceqi	$17,$41,0
	ila	$18,65535	# ffff
	mpyh	$8,$27,$40
	mpyu	$34,$40,$27
	shli	$6,$39,16
	ai	$30,$27,-1
	selb	$5,$38,$37,$17
	ai	$33,$30,-1
	selb	$70,$6,$36,$35
	shli	$13,$5,16
	a	$25,$70,$28
	a	$65,$8,$34
	clgt	$26,$28,$25
	clgt	$19,$65,$25
	clgt	$31,$65,$70
	ceqi	$32,$19,0
	ceqi	$23,$26,0
	selb	$29,$33,$30,$32
	ceqi	$71,$31,0
	selb	$22,$30,$29,$23
	ceqi	$2,$19,0
	selb	$16,$22,$27,$71
	a	$21,$25,$28
	or	$16,$16,$13
	selb	$3,$21,$25,$2
	rotmi	$78,$16,-16
	mpyu	$66,$16,$9
	mpyu	$24,$16,$79
	ceqi	$10,$26,0
	mpyu	$74,$78,$9
	mpyu	$67,$78,$79
	selb	$72,$25,$3,$10
	rotmi	$76,$66,-16
	selb	$12,$72,$70,$71
	and	$63,$66,$18
	a	$77,$24,$74
	a	$69,$67,$75
	a	$73,$76,$77
	sf	$58,$65,$12
	clgt	$14,$74,$73
	rotmi	$11,$73,-16
	ceqi	$68,$14,0
	shli	$62,$73,16
	selb	$64,$69,$67,$68
	lnop
	heqi	$0,$52,0
	hbrr	label_21614,label_215f0	# 215f0
	clz	$10,$52
	clz	$3,$7
	il	$8,1
	fsmbi	$5,0
	sf	$10,$3,$10
	ori	$4,$7,0
	shl	$8,$8,$10
	shl	$3,$52,$10
label_215f0:
	or	$12,$5,$8
	rotqmbii	$8,$8,-1
	clgt	$9,$3,$4
	lnop
	sf	$10,$3,$4
	rotqmbii	$3,$3,-1
	selb	$5,$12,$5,$9
	lnop
	selb	$4,$10,$4,$9
label_21614:
	brnz	$8,label_215f0	# 215f0
	a	$57,$64,$11
	a	$15,$62,$63
	ceq	$60,$58,$57
	shlqbyi	$5,$16,0
	clgt	$59,$15,$61
	lnop
	heqi	$0,$52,0
	hbrr	label_2167c,label_21658	# 21658
	clz	$19,$52
	clz	$14,$53
	il	$15,1
	fsmbi	$4,0
	sf	$19,$14,$19
	ori	$3,$53,0
	shl	$15,$15,$19
	shl	$14,$52,$19
label_21658:
	or	$20,$4,$15
	rotqmbii	$15,$15,-1
	clgt	$17,$14,$3
	lnop
	sf	$19,$14,$3
	rotqmbii	$14,$14,-1
	selb	$4,$20,$4,$17
	lnop
	selb	$3,$19,$3,$17
label_2167c:
	brnz	$15,label_21658	# 21658
	sfi	$55,$60,0
	lnop
	sfi	$56,$59,0
	hbrr	label_216bc,label_213a8	# 213a8
	clgt	$47,$57,$58
	fsmbi	$17,0
	and	$54,$55,$56
	ceqbi	$51,$54,0
	xsbh	$50,$51
	ceqhi	$49,$50,0
	nor	$48,$49,$49
	xshw	$46,$48
	andc	$45,$46,$47
	brnz	$45,label_213a8	# 213a8
	ai	$5,$16,-1
label_216bc:
	br	label_213a8	# 213a8
label_216c0:
	shl	$12,$12,$14
	sfi	$64,$14,32	# 20
	shl	$61,$9,$14
	sfi	$11,$64,0
	sfi	$63,$64,0
	rotm	$59,$9,$11
	rotmi	$11,$12,-16
	rotm	$62,$18,$63
	ila	$15,65535	# ffff
	ila	$30,65535	# ffff
	heqi	$0,$11,0
	hbrr	label_21734,label_21710	# 21710
	clz	$23,$11
	clz	$20,$59
	il	$21,1
	fsmbi	$32,0
	sf	$23,$20,$23
	ori	$60,$59,0
	shl	$21,$21,$23
	shl	$20,$11,$23
label_21710:
	or	$2,$32,$21
	rotqmbii	$21,$21,-1
	clgt	$22,$20,$60
	lnop
	sf	$23,$20,$60
	rotqmbii	$20,$20,-1
	selb	$32,$2,$32,$22
	lnop
	selb	$60,$23,$60,$22
label_21734:
	brnz	$21,label_21710	# 21710
	or	$31,$61,$62
	lnop
	heqi	$0,$11,0
	hbrr	label_2178c,label_21768	# 21768
	clz	$20,$11
	clz	$13,$59
	il	$17,1
	fsmbi	$10,0
	sf	$20,$13,$20
	ori	$9,$59,0
	shl	$17,$17,$20
	shl	$13,$11,$20
label_21768:
	or	$21,$10,$17
	rotqmbii	$17,$17,-1
	clgt	$19,$13,$9
	lnop
	sf	$20,$13,$9
	rotqmbii	$13,$13,-1
	selb	$10,$21,$10,$19
	lnop
	selb	$9,$20,$9,$19
label_2178c:
	brnz	$17,label_21768	# 21768
	rotmi	$58,$31,-16
	mpyh	$55,$32,$12
	mpyu	$56,$12,$32
	shli	$57,$60,16
	and	$15,$12,$15
	ai	$40,$32,-1
	shl	$18,$18,$14
	or	$46,$57,$58
	ai	$45,$40,-1
	a	$51,$46,$12
	a	$43,$55,$56
	clgt	$54,$12,$51
	clgt	$49,$43,$51
	a	$52,$51,$12
	ceqi	$53,$49,0
	clgt	$37,$43,$46
	ceqi	$41,$54,0
	selb	$50,$52,$51,$53
	ceqi	$47,$37,0
	selb	$48,$51,$50,$41
	ceqi	$44,$49,0
	selb	$42,$48,$46,$47
	selb	$39,$45,$40,$44
	sf	$36,$43,$42
	selb	$34,$40,$39,$41
	lnop
	heqi	$0,$11,0
	hbrr	label_21844,label_21820	# 21820
	clz	$10,$11
	clz	$22,$36
	il	$23,1
	fsmbi	$79,0
	sf	$10,$22,$10
	ori	$35,$36,0
	shl	$23,$23,$10
	shl	$22,$11,$10
label_21820:
	or	$13,$79,$23
	rotqmbii	$23,$23,-1
	clgt	$9,$22,$35
	lnop
	sf	$10,$22,$35
	rotqmbii	$22,$22,-1
	selb	$79,$13,$79,$9
	lnop
	selb	$35,$10,$35,$9
label_21844:
	brnz	$23,label_21820	# 21820
	heqi	$0,$11,0
	hbrr	label_21894,label_21870	# 21870
	clz	$20,$11
	clz	$16,$36
	il	$17,1
	fsmbi	$9,0
	sf	$20,$16,$20
	ori	$2,$36,0
	shl	$17,$17,$20
	shl	$16,$11,$20
label_21870:
	or	$21,$9,$17
	rotqmbii	$17,$17,-1
	clgt	$19,$16,$2
	lnop
	sf	$20,$16,$2
	rotqmbii	$16,$16,-1
	selb	$9,$21,$9,$19
	lnop
	selb	$2,$20,$2,$19
label_21894:
	brnz	$17,label_21870	# 21870
	ceqi	$33,$37,0
	hbrr	label_21904,label_21190	# 21190
	mpyh	$5,$79,$15
	mpyu	$29,$15,$79
	shli	$4,$35,16
	ai	$13,$79,-1
	selb	$6,$34,$32,$33
	ai	$25,$13,-1
	selb	$7,$4,$31,$30
	shli	$75,$6,16
	a	$21,$7,$12
	a	$78,$5,$29
	clgt	$22,$12,$21
	clgt	$28,$78,$21
	a	$27,$21,$12
	ceqi	$26,$28,0
	ceqi	$20,$22,0
	clgt	$16,$78,$7
	selb	$10,$27,$21,$26
	selb	$24,$25,$13,$26
	ceqi	$8,$16,0
	selb	$9,$21,$10,$20
	selb	$2,$13,$24,$20
	selb	$77,$9,$7,$8
	selb	$76,$2,$79,$8
	sf	$4,$78,$77
	or	$8,$76,$75
label_21904:
	br	label_21190	# 21190
label_21908:
	il	$72,1
	ila	$73,65535	# ffff
	heqi	$0,$12,0
	hbrr	label_2195c,label_21938	# 21938
	clz	$15,$12
	clz	$11,$72
	il	$13,1
	fsmbi	$71,0
	sf	$15,$11,$15
	ori	$3,$72,0
	shl	$13,$13,$15
	shl	$11,$12,$15
label_21938:
	or	$16,$71,$13
	rotqmbii	$13,$13,-1
	clgt	$14,$11,$3
	lnop
	sf	$15,$11,$3
	rotqmbii	$11,$11,-1
	selb	$71,$16,$71,$14
	lnop
	selb	$3,$15,$3,$14
label_2195c:
	brnz	$13,label_21938	# 21938
	hbrr	label_21984,label_216c0	# 216c0
	ori	$12,$71,0
	il	$8,1
	ori	$74,$12,0
	rotmi	$11,$12,-16
	clz	$14,$74
	and	$15,$12,$73
	sf	$4,$12,$9
	brz	$14,label_21190	# 21190
label_21984:
	br	label_216c0	# 216c0
label_21988:
	ori	$17,$12,0
	ila	$59,65535	# ffff
	clz	$64,$17
	fsmbi	$17,0
	ila	$26,65535	# ffff
	sfi	$70,$64,32	# 20
	shl	$68,$12,$64
	sfi	$69,$70,0
	shl	$66,$9,$64
	ceqi	$65,$64,0
	rotm	$67,$18,$69
	selb	$24,$68,$12,$65
	shl	$61,$18,$64
	rotmi	$33,$24,-16
	or	$63,$66,$67
	and	$32,$24,$59
	selb	$57,$63,$9,$65
	selb	$27,$61,$18,$65
	heqi	$0,$33,0
	hbrr	label_21a1c,label_219f8	# 219f8
	clz	$14,$33
	clz	$10,$57
	il	$11,1
	fsmbi	$28,0
	sf	$14,$10,$14
	ori	$58,$57,0
	shl	$11,$11,$14
	shl	$10,$33,$14
label_219f8:
	or	$15,$28,$11
	rotqmbii	$11,$11,-1
	clgt	$13,$10,$58
	lnop
	sf	$14,$10,$58
	rotqmbii	$10,$10,-1
	selb	$28,$15,$28,$13
	lnop
	selb	$58,$14,$58,$13
label_21a1c:
	brnz	$11,label_219f8	# 219f8
	rotmi	$56,$27,-16
	lnop
	heqi	$0,$33,0
	hbrr	label_21a74,label_21a50	# 21a50
	clz	$22,$33
	clz	$19,$57
	il	$20,1
	fsmbi	$10,0
	sf	$22,$19,$22
	ori	$16,$57,0
	shl	$20,$20,$22
	shl	$19,$33,$22
label_21a50:
	or	$23,$10,$20
	rotqmbii	$20,$20,-1
	clgt	$21,$19,$16
	lnop
	sf	$22,$19,$16
	rotqmbii	$19,$19,-1
	selb	$10,$23,$10,$21
	lnop
	selb	$16,$22,$16,$21
label_21a74:
	brnz	$20,label_21a50	# 21a50
	mpyh	$53,$28,$24
	mpyu	$54,$24,$28
	shli	$55,$58,16
	ai	$38,$28,-1
	ai	$43,$38,-1
	or	$44,$55,$56
	a	$41,$53,$54
	a	$49,$44,$24
	clgt	$35,$41,$44
	clgt	$47,$41,$49
	clgt	$52,$24,$49
	ceqi	$51,$47,0
	a	$50,$49,$24
	ceqi	$39,$52,0
	selb	$48,$50,$49,$51
	ceqi	$45,$35,0
	selb	$46,$49,$48,$39
	ceqi	$42,$47,0
	selb	$40,$46,$44,$45
	selb	$37,$43,$38,$42
	sf	$34,$41,$40
	selb	$30,$38,$37,$39
	heqi	$0,$33,0
	hbrr	label_21b1c,label_21af8	# 21af8
	clz	$16,$33
	clz	$10,$34
	il	$13,1
	fsmbi	$7,0
	sf	$16,$10,$16
	ori	$31,$34,0
	shl	$13,$13,$16
	shl	$10,$33,$16
label_21af8:
	or	$19,$7,$13
	rotqmbii	$13,$13,-1
	clgt	$14,$10,$31
	lnop
	sf	$16,$10,$31
	rotqmbii	$10,$10,-1
	selb	$7,$19,$7,$14
	lnop
	selb	$31,$16,$31,$14
label_21b1c:
	brnz	$13,label_21af8	# 21af8
	heqi	$0,$33,0
	hbrr	label_21b6c,label_21b48	# 21b48
	clz	$23,$33
	clz	$20,$34
	il	$21,1
	fsmbi	$10,0
	sf	$23,$20,$23
	ori	$2,$34,0
	shl	$21,$21,$23
	shl	$20,$33,$23
label_21b48:
	or	$9,$10,$21
	rotqmbii	$21,$21,-1
	clgt	$22,$20,$2
	lnop
	sf	$23,$20,$2
	rotqmbii	$20,$20,-1
	selb	$10,$9,$10,$22
	lnop
	selb	$2,$23,$2,$22
label_21b6c:
	brnz	$21,label_21b48	# 21b48
	hbrr	label_21bc4,label_213a8	# 213a8
	ceqi	$29,$35,0
	mpyu	$22,$32,$7
	mpyh	$21,$7,$32
	shli	$25,$31,16
	ai	$6,$7,-1
	selb	$23,$30,$28,$29
	selb	$20,$25,$27,$26
	shli	$8,$23,16
	a	$19,$21,$22
	a	$16,$24,$20
	clgt	$13,$19,$20
	clgt	$15,$19,$16
	clgt	$14,$24,$16
	a	$4,$6,$15
	ceqi	$11,$14,0
	ceqi	$9,$13,0
	selb	$10,$6,$4,$11
	selb	$7,$10,$7,$9
	or	$5,$7,$8
	nop	$127
label_21bc4:
	br	label_213a8	# 213a8
label_21bc8:
	clgt	$44,$12,$18
	hbrr	label_21bf4,label_213a8	# 213a8
	clgt	$43,$3,$4
	fsmbi	$17,0
	nor	$42,$44,$44
	sfi	$40,$43,0
	sfi	$41,$42,0
	il	$5,1
	or	$39,$40,$41
	ceqbi	$38,$39,0
	xsbh	$37,$38
label_21bf4:
	brhz	$37,label_213a8	# 213a8
	br	label_213a0	# 213a0
	lnop
.global func_21c00
func_21c00:
	ori	$9,$3,0
	rotqbyi	$5,$3,8
	rotqbyi	$2,$4,8
	shlqbyi	$5,$5,12
	nop	$127
	shlqbyi	$12,$2,12
	ori	$17,$5,0
	brnz	$4,label_21e40	# 21e40
	clgt	$3,$12,$3
	brnz	$3,label_220f4	# 220f4
	nop	$127
	brz	$12,label_22070	# 22070
	ori	$66,$12,0
	fsmbi	$15,0
	ila	$65,65535	# ffff
	clz	$14,$66
	rotmi	$11,$12,-16
	and	$13,$12,$65
	sf	$3,$12,$9
	brnz	$14,label_21e60	# 21e60
label_21c50:
	heqi	$0,$11,0
	hbrr	label_21c9c,label_21c78	# 21c78
	clz	$23,$11
	clz	$18,$3
	il	$19,1
	fsmbi	$70,0
	sf	$23,$18,$23
	ori	$69,$3,0
	shl	$19,$19,$23
	shl	$18,$11,$23
label_21c78:
	or	$24,$70,$19
	rotqmbii	$19,$19,-1
	clgt	$21,$18,$69
	lnop
	sf	$23,$18,$69
	rotqmbii	$18,$18,-1
	selb	$70,$24,$70,$21
	lnop
	selb	$69,$23,$69,$21
label_21c9c:
	brnz	$19,label_21c78	# 21c78
	heqi	$0,$11,0
	hbrr	label_21cec,label_21cc8	# 21cc8
	clz	$14,$11
	clz	$8,$3
	il	$9,1
	fsmbi	$7,0
	sf	$14,$8,$14
	ori	$6,$3,0
	shl	$9,$9,$14
	shl	$8,$11,$14
label_21cc8:
	or	$16,$7,$9
	rotqmbii	$9,$9,-1
	clgt	$10,$8,$6
	lnop
	sf	$14,$8,$6
	rotqmbii	$8,$8,-1
	selb	$7,$16,$7,$10
	lnop
	selb	$6,$14,$6,$10
label_21cec:
	brnz	$9,label_21cc8	# 21cc8
	rotmi	$68,$17,-16
	cwd	$74,4($1)
	ila	$50,65535	# ffff
	cwd	$72,0($1)
	mpyh	$14,$70,$13
	mpyu	$66,$13,$70
	shli	$67,$69,16
	sfi	$75,$15,0
	il	$15,0
	or	$56,$67,$68
	a	$55,$14,$66
	a	$61,$56,$12
	clgt	$62,$55,$56
	clgt	$65,$12,$61
	a	$63,$61,$12
	clgt	$64,$55,$61
	ceqi	$60,$65,0
	selb	$59,$61,$63,$64
	ceqi	$57,$62,0
	selb	$58,$61,$59,$60
	selb	$54,$58,$56,$57
	sf	$53,$55,$54
	heqi	$0,$11,0
	hbrr	label_21d94,label_21d70	# 21d70
	clz	$23,$11
	clz	$18,$53
	il	$19,1
	fsmbi	$52,0
	sf	$23,$18,$23
	ori	$51,$53,0
	shl	$19,$19,$23
	shl	$18,$11,$23
label_21d70:
	or	$24,$52,$19
	rotqmbii	$19,$19,-1
	clgt	$21,$18,$51
	lnop
	sf	$23,$18,$51
	rotqmbii	$18,$18,-1
	selb	$52,$24,$52,$21
	lnop
	selb	$51,$23,$51,$21
label_21d94:
	brnz	$19,label_21d70	# 21d70
	heqi	$0,$11,0
	hbrr	label_21de4,label_21dc0	# 21dc0
	clz	$10,$11
	clz	$4,$53
	il	$8,1
	fsmbi	$7,0
	sf	$10,$4,$10
	ori	$6,$53,0
	shl	$8,$8,$10
	shl	$4,$11,$10
label_21dc0:
	or	$14,$7,$8
	rotqmbii	$8,$8,-1
	clgt	$9,$4,$6
	lnop
	sf	$10,$4,$6
	rotqmbii	$4,$4,-1
	selb	$7,$14,$7,$9
	lnop
	selb	$6,$10,$6,$9
label_21de4:
	brnz	$8,label_21dc0	# 21dc0
	hbr	label_21e3c,$0
	shli	$49,$51,16
	mpyu	$48,$13,$52
	mpyh	$47,$52,$13
	selb	$38,$49,$17,$50
	a	$42,$38,$12
	clgt	$46,$12,$42
	a	$5,$47,$48
	a	$44,$42,$12
	clgt	$43,$5,$38
	clgt	$45,$5,$42
	lnop
	ceqi	$40,$46,0
	selb	$41,$42,$44,$45
	ceqi	$17,$43,0
	selb	$39,$42,$41,$40
	selb	$12,$39,$38,$17
	sf	$2,$5,$12
	rotm	$73,$2,$75
	shufb	$71,$73,$5,$74
	shufb	$3,$15,$71,$72
label_21e3c:
	bi	$0
label_21e40:
	clgt	$76,$4,$3
	brz	$76,label_22338	# 22338
label_21e48:
	cwd	$24,4($1)
	cwd	$8,0($1)
	shufb	$23,$17,$5,$24
	shufb	$3,$9,$23,$8
	nop	$127
	bi	$0
label_21e60:
	shl	$12,$12,$14
	shlqbyi	$15,$14,0
	sfi	$37,$14,32	# 20
	shl	$34,$9,$14
	sfi	$11,$37,0
	sfi	$36,$37,0
	rotm	$33,$9,$11
	rotmi	$11,$12,-16
	rotm	$35,$17,$36
	ila	$13,65535	# ffff
	shl	$17,$17,$14
	lnop
	heqi	$0,$11,0
	hbrr	label_21edc,label_21eb8	# 21eb8
	clz	$19,$11
	clz	$10,$33
	il	$16,1
	fsmbi	$32,0
	sf	$19,$10,$19
	ori	$31,$33,0
	shl	$16,$16,$19
	shl	$10,$11,$19
label_21eb8:
	or	$21,$32,$16
	rotqmbii	$16,$16,-1
	clgt	$18,$10,$31
	lnop
	sf	$19,$10,$31
	rotqmbii	$10,$10,-1
	selb	$32,$21,$32,$18
	lnop
	selb	$31,$19,$31,$18
label_21edc:
	brnz	$16,label_21eb8	# 21eb8
	or	$7,$34,$35
	lnop
	heqi	$0,$11,0
	hbrr	label_21f34,label_21f10	# 21f10
	clz	$10,$11
	clz	$23,$33
	il	$24,1
	fsmbi	$9,0
	sf	$10,$23,$10
	ori	$8,$33,0
	shl	$24,$24,$10
	shl	$23,$11,$10
label_21f10:
	or	$16,$9,$24
	rotqmbii	$24,$24,-1
	clgt	$3,$23,$8
	lnop
	sf	$10,$23,$8
	rotqmbii	$23,$23,-1
	selb	$9,$16,$9,$3
	lnop
	selb	$8,$10,$8,$3
label_21f34:
	brnz	$24,label_21f10	# 21f10
	rotmi	$30,$7,-16
	mpyu	$28,$12,$32
	mpyh	$27,$32,$12
	shli	$29,$31,16
	and	$13,$12,$13
	ila	$2,65535	# ffff
	or	$16,$29,$30
	a	$10,$27,$28
	a	$21,$16,$12
	clgt	$25,$10,$16
	clgt	$24,$10,$21
	clgt	$26,$12,$21
	a	$23,$21,$12
	ceqi	$8,$26,0
	selb	$19,$21,$23,$24
	ceqi	$18,$25,0
	selb	$9,$21,$19,$8
	selb	$6,$9,$16,$18
	sf	$22,$10,$6
	lnop
	heqi	$0,$11,0
	hbrr	label_21fd4,label_21fb0	# 21fb0
	clz	$23,$11
	clz	$18,$22
	il	$19,1
	fsmbi	$4,0
	sf	$23,$18,$23
	ori	$20,$22,0
	shl	$19,$19,$23
	shl	$18,$11,$23
label_21fb0:
	or	$24,$4,$19
	rotqmbii	$19,$19,-1
	clgt	$21,$18,$20
	lnop
	sf	$23,$18,$20
	rotqmbii	$18,$18,-1
	selb	$4,$24,$4,$21
	lnop
	selb	$20,$23,$20,$21
label_21fd4:
	brnz	$19,label_21fb0	# 21fb0
	heqi	$0,$11,0
	hbrr	label_22024,label_22000	# 22000
	clz	$14,$11
	clz	$5,$22
	il	$9,1
	fsmbi	$8,0
	sf	$14,$5,$14
	ori	$6,$22,0
	shl	$9,$9,$14
	shl	$5,$11,$14
label_22000:
	or	$16,$8,$9
	rotqmbii	$9,$9,-1
	clgt	$10,$5,$6
	lnop
	sf	$14,$5,$6
	rotqmbii	$5,$5,-1
	selb	$8,$16,$8,$10
	lnop
	selb	$6,$14,$6,$10
label_22024:
	brnz	$9,label_22000	# 22000
	hbrr	label_2206c,label_21c50	# 21c50
	mpyu	$5,$13,$4
	mpyh	$79,$4,$13
	shli	$3,$20,16
	selb	$69,$3,$7,$2
	a	$68,$79,$5
	a	$74,$69,$12
	clgt	$75,$68,$69
	clgt	$78,$12,$74
	clgt	$77,$68,$74
	a	$76,$74,$12
	ceqi	$73,$78,0
	selb	$72,$74,$76,$77
	ceqi	$70,$75,0
	selb	$71,$74,$72,$73
	selb	$67,$71,$69,$70
	sf	$3,$68,$67
label_2206c:
	br	label_21c50	# 21c50
label_22070:
	il	$64,1
	ila	$65,65535	# ffff
	heqi	$0,$12,0
	hbrr	label_220c4,label_220a0	# 220a0
	clz	$5,$12
	clz	$23,$64
	il	$24,1
	fsmbi	$63,0
	sf	$5,$23,$5
	ori	$3,$64,0
	shl	$24,$24,$5
	shl	$23,$12,$5
label_220a0:
	or	$6,$63,$24
	rotqmbii	$24,$24,-1
	clgt	$4,$23,$3
	lnop
	sf	$5,$23,$3
	rotqmbii	$23,$23,-1
	selb	$63,$6,$63,$4
	lnop
	selb	$3,$5,$3,$4
label_220c4:
	brnz	$24,label_220a0	# 220a0
	nop	$127
	hbrr	label_220f0,label_21e60	# 21e60
	ori	$12,$63,0
	fsmbi	$15,0
	ori	$66,$12,0
	rotmi	$11,$12,-16
	clz	$14,$66
	and	$13,$12,$65
	sf	$3,$12,$9
	brz	$14,label_21c50	# 21c50
label_220f0:
	br	label_21e60	# 21e60
label_220f4:
	ori	$62,$12,0
	ila	$51,65535	# ffff
	fsmbi	$43,0
	clz	$47,$62
	cwd	$74,4($1)
	ila	$22,65535	# ffff
	cwd	$72,0($1)
	sfi	$59,$47,32	# 20
	shl	$61,$12,$47
	sfi	$58,$59,0
	ceqi	$60,$47,0
	shl	$56,$9,$47
	rotm	$57,$5,$58
	selb	$20,$61,$12,$60
	shl	$53,$5,$47
	rotmi	$27,$20,-16
	or	$55,$56,$57
	and	$26,$20,$51
	selb	$48,$55,$9,$60
	selb	$25,$53,$5,$60
	lnop
	heqi	$0,$27,0
	hbrr	label_22194,label_22170	# 22170
	clz	$14,$27
	clz	$8,$48
	il	$10,1
	fsmbi	$50,0
	sf	$14,$8,$14
	ori	$49,$48,0
	shl	$10,$10,$14
	shl	$8,$27,$14
label_22170:
	or	$15,$50,$10
	rotqmbii	$10,$10,-1
	clgt	$13,$8,$49
	lnop
	sf	$14,$8,$49
	rotqmbii	$8,$8,-1
	selb	$50,$15,$50,$13
	lnop
	selb	$49,$14,$49,$13
label_22194:
	brnz	$10,label_22170	# 22170
	rotmi	$46,$25,-16
	lnop
	heqi	$0,$27,0
	hbrr	label_221ec,label_221c8	# 221c8
	clz	$23,$27
	clz	$18,$48
	il	$19,1
	fsmbi	$10,0
	sf	$23,$18,$23
	ori	$16,$48,0
	shl	$19,$19,$23
	shl	$18,$27,$23
label_221c8:
	or	$24,$10,$19
	rotqmbii	$19,$19,-1
	clgt	$21,$18,$16
	lnop
	sf	$23,$18,$16
	rotqmbii	$18,$18,-1
	selb	$10,$24,$10,$21
	lnop
	selb	$16,$23,$16,$21
label_221ec:
	brnz	$19,label_221c8	# 221c8
	ceqi	$15,$47,0
	mpyu	$42,$20,$50
	mpyh	$41,$50,$20
	shli	$45,$49,16
	selb	$15,$47,$43,$15
	sfi	$75,$15,0
	or	$31,$45,$46
	fsmbi	$15,0
	a	$36,$31,$20
	a	$30,$41,$42
	clgt	$40,$20,$36
	clgt	$39,$30,$36
	a	$38,$36,$20
	clgt	$37,$30,$31
	ceqi	$35,$40,0
	selb	$34,$36,$38,$39
	ceqi	$32,$37,0
	selb	$33,$36,$34,$35
	selb	$29,$33,$31,$32
	sf	$28,$30,$29
	heqi	$0,$27,0
	hbrr	label_2228c,label_22268	# 22268
	clz	$10,$27
	clz	$5,$28
	il	$8,1
	fsmbi	$24,0
	sf	$10,$5,$10
	ori	$23,$28,0
	shl	$8,$8,$10
	shl	$5,$27,$10
label_22268:
	or	$11,$24,$8
	rotqmbii	$8,$8,-1
	clgt	$9,$5,$23
	lnop
	sf	$10,$5,$23
	rotqmbii	$5,$5,-1
	selb	$24,$11,$24,$9
	lnop
	selb	$23,$10,$23,$9
label_2228c:
	brnz	$8,label_22268	# 22268
	heqi	$0,$27,0
	hbrr	label_222dc,label_222b8	# 222b8
	clz	$18,$27
	clz	$13,$28
	il	$14,1
	fsmbi	$9,0
	sf	$18,$13,$18
	ori	$8,$28,0
	shl	$14,$14,$18
	shl	$13,$27,$18
label_222b8:
	or	$19,$9,$14
	rotqmbii	$14,$14,-1
	clgt	$16,$13,$8
	lnop
	sf	$18,$13,$8
	rotqmbii	$13,$13,-1
	selb	$9,$19,$9,$16
	lnop
	selb	$8,$18,$8,$16
label_222dc:
	brnz	$14,label_222b8	# 222b8
	hbr	label_22334,$0
	shli	$21,$23,16
	mpyu	$19,$26,$24
	mpyh	$18,$24,$26
	selb	$10,$21,$25,$22
	a	$8,$10,$20
	clgt	$17,$20,$8
	a	$4,$18,$19
	a	$14,$8,$20
	clgt	$13,$4,$10
	clgt	$16,$4,$8
	lnop
	ceqi	$11,$17,0
	selb	$5,$8,$14,$16
	ceqi	$9,$13,0
	selb	$7,$8,$5,$11
	selb	$6,$7,$10,$9
	sf	$2,$4,$6
	rotm	$73,$2,$75
	shufb	$71,$73,$5,$74
	shufb	$3,$15,$71,$72
label_22334:
	bi	$0
label_22338:
	ori	$77,$4,0
	clz	$20,$77
	nop	$127
	brnz	$20,label_22390	# 22390
	clgt	$25,$12,$5
	hbrr	label_2238c,label_21e48	# 21e48
	clgt	$21,$3,$4
	nor	$19,$25,$25
	sfi	$16,$21,0
	sfi	$18,$19,0
	sf	$22,$12,$5
	or	$10,$16,$18
	sf	$3,$4,$3
	ceqbi	$6,$10,0
	clgt	$4,$22,$17
	xsbh	$5,$6
	a	$79,$3,$4
	ceqhi	$5,$5,0
	fsm	$2,$5
	selb	$17,$17,$22,$2
	selb	$9,$9,$79,$2
label_2238c:
	br	label_21e48	# 21e48
label_22390:
	sfi	$35,$20,32	# 20
	shl	$8,$4,$20
	sfi	$72,$35,0
	sfi	$46,$35,0
	rotm	$58,$12,$72
	sfi	$47,$35,0
	rotm	$71,$5,$46
	rotm	$47,$3,$47
	or	$58,$8,$58
	shl	$15,$3,$20
	rotmi	$46,$58,-16
	ila	$60,65535	# ffff
	ila	$39,65535	# ffff
	or	$40,$15,$71
	heqi	$0,$46,0
	hbrr	label_22414,label_223f0	# 223f0
	clz	$4,$46
	clz	$23,$47
	il	$24,1
	fsmbi	$41,0
	sf	$4,$23,$4
	ori	$70,$47,0
	shl	$24,$24,$4
	shl	$23,$46,$4
label_223f0:
	or	$7,$41,$24
	rotqmbii	$24,$24,-1
	clgt	$2,$23,$70
	lnop
	sf	$4,$23,$70
	rotqmbii	$23,$23,-1
	selb	$41,$7,$41,$2
	lnop
	selb	$70,$4,$70,$2
label_22414:
	brnz	$24,label_223f0	# 223f0
	rotmi	$14,$40,-16
	and	$45,$58,$60
	shl	$60,$12,$20
	mpyh	$67,$41,$58
	mpyu	$68,$58,$41
	shli	$69,$70,16
	ai	$51,$41,-1
	rotmi	$16,$60,-16
	ai	$56,$51,-1
	or	$57,$69,$14
	ila	$2,65536	# 10000
	a	$63,$57,$58
	a	$50,$67,$68
	clgt	$66,$58,$63
	clgt	$62,$50,$63
	a	$64,$63,$58
	ceqi	$65,$62,0
	clgt	$49,$50,$57
	selb	$48,$64,$63,$65
	ceqi	$54,$66,0
	ceqi	$59,$49,0
	selb	$61,$63,$48,$54
	ceqi	$55,$62,0
	selb	$9,$61,$57,$59
	selb	$53,$56,$51,$55
	sf	$50,$50,$9
	selb	$43,$51,$53,$54
	lnop
	heqi	$0,$46,0
	hbrr	label_224d4,label_224b0	# 224b0
	clz	$23,$46
	clz	$11,$50
	il	$19,1
	fsmbi	$29,0
	sf	$23,$11,$23
	ori	$44,$50,0
	shl	$19,$19,$23
	shl	$11,$46,$23
label_224b0:
	or	$24,$29,$19
	rotqmbii	$19,$19,-1
	clgt	$21,$11,$44
	lnop
	sf	$23,$11,$44
	rotqmbii	$11,$11,-1
	selb	$29,$24,$29,$21
	lnop
	selb	$44,$23,$44,$21
label_224d4:
	brnz	$19,label_224b0	# 224b0
	ceqi	$42,$49,0
	ila	$15,65535	# ffff
	selb	$38,$43,$41,$42
	mpyh	$10,$29,$45
	mpyu	$13,$45,$29
	shli	$6,$44,16
	ai	$34,$29,-1
	shli	$28,$38,16
	ai	$11,$34,-1
	selb	$74,$6,$40,$39
	shl	$38,$17,$20
	a	$5,$74,$58
	a	$66,$10,$13
	clgt	$21,$58,$5
	clgt	$31,$66,$5
	ceqi	$33,$21,0
	ceqi	$37,$31,0
	clgt	$36,$66,$74
	selb	$32,$11,$34,$37
	ceqi	$18,$36,0
	selb	$30,$34,$32,$33
	ceqi	$24,$31,0
	selb	$27,$30,$29,$18
	lnop
	a	$26,$5,$58
	cwd	$30,4($1)
	or	$23,$27,$28
	selb	$25,$26,$5,$24
	rotmi	$4,$23,-16
	mpyu	$70,$23,$60
	mpyu	$22,$23,$16
	ceqi	$19,$21,0
	mpyu	$79,$4,$60
	mpyu	$71,$4,$16
	selb	$76,$5,$25,$19
	sfi	$13,$20,0
	rotmi	$3,$70,-16
	selb	$65,$76,$74,$18
	and	$68,$70,$15
	a	$7,$22,$79
	a	$73,$71,$2
	a	$77,$3,$7
	sf	$39,$66,$65
	clgt	$78,$79,$77
	rotmi	$14,$77,-16
	ceqi	$72,$78,0
	shli	$67,$77,16
	selb	$69,$73,$71,$72
	heqi	$0,$46,0
	hbrr	label_225e4,label_225c0	# 225c0
	clz	$19,$46
	clz	$12,$50
	il	$17,1
	fsmbi	$5,0
	sf	$19,$12,$19
	ori	$2,$50,0
	shl	$17,$17,$19
	shl	$12,$46,$19
label_225c0:
	or	$21,$5,$17
	rotqmbii	$17,$17,-1
	clgt	$18,$12,$2
	lnop
	sf	$19,$12,$2
	rotqmbii	$12,$12,-1
	selb	$5,$21,$5,$18
	lnop
	selb	$2,$19,$2,$18
label_225e4:
	brnz	$17,label_225c0	# 225c0
	a	$40,$69,$14
	a	$43,$67,$68
	ceq	$63,$39,$40
	clgt	$64,$43,$38
	sfi	$61,$63,0
	sfi	$62,$64,0
	sf	$55,$60,$43
	and	$59,$61,$62
	clgt	$48,$40,$39
	ceqbi	$57,$59,0
	sf	$52,$58,$40
	xsbh	$56,$57
	clgt	$53,$55,$43
	ceqhi	$54,$56,0
	heqi	$0,$46,0
	hbrr	label_2266c,label_22648	# 22648
	clz	$10,$46
	clz	$23,$47
	il	$24,1
	fsmbi	$5,0
	sf	$10,$23,$10
	ori	$2,$47,0
	shl	$24,$24,$10
	shl	$23,$46,$10
label_22648:
	or	$12,$5,$24
	rotqmbii	$24,$24,-1
	clgt	$9,$23,$2
	lnop
	sf	$10,$23,$2
	rotqmbii	$23,$23,-1
	selb	$5,$12,$5,$9
	lnop
	selb	$2,$10,$2,$9
label_2266c:
	brnz	$24,label_22648	# 22648
	nor	$51,$54,$54
	hbr	label_226c4,$0
	a	$42,$52,$53
	cwd	$9,0($1)
	xshw	$49,$51
	sfi	$34,$20,0
	andc	$45,$49,$48
	ceqi	$28,$45,0
	selb	$17,$43,$55,$28
	selb	$12,$40,$42,$28
	sf	$11,$17,$38
	lnop
	sf	$36,$12,$39
	clgt	$37,$11,$38
	rotm	$32,$11,$13
	a	$33,$36,$37
	shl	$31,$33,$35
	rotm	$26,$33,$34
	or	$29,$31,$32
	shufb	$27,$29,$28,$30
	shufb	$3,$26,$27,$9
label_226c4:
	bi	$0
