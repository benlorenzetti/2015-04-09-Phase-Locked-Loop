** voc.mod **
*
*	Voltage Controlled Oscillator Module
*	Connections:
*	cc - positive DC supply rail
*	ee - negative DC supply rail
*	vin - controls the mirror currents
*	vout - oscillating output
*
.subckt emitter_coupled_oscillator cc ee in out
*
R0 in bmirror 5000
C0 e1 e2 1.5uF
*
R1 cc c1 200
R2 cc c2 200
R3 out b1 500
R4 b1 ee 1000
R5 e3 b2 500
R6 b2 ee 1000
R7 e5 ee 10
R8 e6 ee 10
R9 e7 ee 10
Q1 c1 b1 e1 model1
Q2 c2 b2 e2 model2
Q3 cc c1 e3 model1
Q4 cc c2 out model1
Q5 bmirror bmirror e5 model1
Q6 e1 bmirror e6 model1
Q7 e2 bmirror e7 model1
*
.model model1 npn (BF=100 CJC=3p CJE=5p IS=1E-16 VAF=120 NF=1)
.model model2 npn (BF=120 CJC=3pF CJE=5pF IS=1E-16 VAF=120 NF=1)
*
.ends
*
** vco.mod **
