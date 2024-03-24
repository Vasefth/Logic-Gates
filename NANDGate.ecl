
%%% and/3
%%% Definition of the and operation
and(0,1,0).
and(0,0,0).
and(1,0,0).
and(1,1,1).

%%% not/2
%%% definition of the not operation
not(1,0).
not(0,1).

%%% nand/3
nand(X,Y,Output):-
	and(X,Y,ANDResult),
	not(ANDResult,Output).

%%% xor/3
xor_gate(0,0,0).
xor_gate(0,1,1).
xor_gate(1,0,1).
xor_gate(1,1,0).

%%% adder
adder(X,Y,S,C):-
	xor_gate(X,Y,S),
	and(X,Y,C).

%%% full-adder
full_adder(Ci,Xi,Yi,Si,C):-
	xor_gate(Xi,Yi,XY),
	xor_gate(Ci,XY,Si),
	and(Ci,XY,AndCXY),
	and(Xi,Yi,AndXY),
	and(AndCXY,AndXY,C).

binary_addition(0,0,0,0,0).
binary_addition(0,1,0,1,0).
binary_addition(1,0,0,1,0).
binary_addition(0,1,1,0,1).
binary_addition(1,0,1,0,1).
binary_addition(1,1,0,0,1).
binary_addition(0,0,1,1,0).
binary_addition(1,1,1,1,0).

binary_adder(X0,X1,X2,Y0,Y1,Y2,C0,S0,S1,S2,C3):-
	binary_addition(X0,Y0,C0,S0,C1),
	binary_addition(X1,Y1,C1,S1,C2),
	binary_addition(X2,Y2,C2,S2,C3).
	


