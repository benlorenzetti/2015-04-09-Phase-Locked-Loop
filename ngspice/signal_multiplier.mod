** signal_multiplier.mod **
*
*	Logarithmic Multiplication Module
*	Connections:
*	vcc - positive DC supply
*	vee - negative DC supply
*	x1, x2 - differential input X
*	y1, y2 - differential input Y
*	out - output of product XY
*
.subckt signal_multiplier vcc vee x1 x2 y1 y2 out
Xlnx cc ee x1 gnd node1 node2 floating_ln
Xlny cc ee y1 gnd node2 node3 floating_ln
Q1 cc node3 ibias model1
Q2 out node1 ibias model1
Q3 m1 m1 e3 model1
Q4 ibias m1 e4 model1
Rref gnd m1 1k
Re3 e3 ee 10
Re4 e4 ee 10
Rc out cc 36k
.model model1 npn (BF=100 CJC=3p CJE=5p IS=1E-16 VAF=120 NF=1)
.include floating_ln.mod
.ends
*
** signal_multiplier.mod **
