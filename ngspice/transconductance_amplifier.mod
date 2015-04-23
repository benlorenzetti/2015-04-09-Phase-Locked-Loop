** transconductance_amplifier.mod **
*
*	Voltage to Current Amplifier Module, G = -1/R1
*	Connections:
*	in - input voltage
*	out - output current
*	common - common to both in and out
*
.subckt transconductance_amplifier in out common
Gopamp out n2 n1 in 10000
R1 n2 common 10
R2 n2 n1 10
R3 common n1 10k
.ends
*
** tranconductance_amplifier.mod
