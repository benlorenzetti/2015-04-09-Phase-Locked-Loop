** floating_ln.mod **
*
*	Floating Output Natural Logarithm Module
*	Connections:
*	vcc - positive voltage supply
*	vee - negative voltage supply
*	vin1, vin2 - differential input
*	out1, out2 - differential output
*
.subckt floating_ln vcc vee vin1 vin2 out1 out2
Rref1 vin1 m1 10k
Rref2 vin2 m2 10k
Re1 e1 ee 10
Re2 e2 ee 10
Re3 e3 cc 10
Re4 e4 cc 10
Re5 e5 ee 10
Re6 e6 ee 10
Re7 e7 ee 10
Re8 e8 cc 10
Re9 e9 cc 10
Re10 e10 ee 10
Q1 m1 m1 e1 model1
Q2 iin1 m1 e2 model1
Q3 iin1 m3 e3 model2
Q4 iin11 m3 e4 model2
Q5 ibias m1 e5 model1
Q6 m2 m2 e6 model1
Q7 iin2 m2 e7 model1
Q8 iin2 m4 e8 model2
Q9 iin22 m4 e9 model2
Q10 ibias m2 e10 model1
Q11 iin22 out2 ibias model1
Q12 iin11 out1 ibias model1
.model model1 npn (BF=100 CJC=3p CJE=5p IS=1E-16 VAF=120 NF=1)
.model model2 pnp (BF=100 CJC=3p CJE=5p IS=1E-16 VAF=120 NF=1)
.ends
*
** floating_ln.mod **
