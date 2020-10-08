inv(0,1).
inv(1,0).

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).

and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

decoder(A,B,C,D, Aout, Bout, Cout, Dout, Eout, Fout, Gout) :-
	inv(B, Bi),
	inv(C, Ci),
	inv(D, Di),
	and(Bi, Di, BiDi),
	and(B,D, BD),
	and(B, Di, BDi),
	and(C, D, CD),
	and(Ci,Di, CiDi),
	and(C, Di, CDi),
	and(B, Ci, BCi),
	and(BCi, D, BCiD),
  and(Bi, C, BiC), 
  or(A, BiDi, Tempa1),
  or(BD, C, Tempa2),
  or(Tempa1, Tempa2, Aout),
  or(A, Bi, Tempb1),
  or(CD, CiDi, Tempb2),
  or(Tempb1, Tempb2, Bout),
  or(B, D, Tempc1),
  or(Tempc1, CiDi, Cout),
  or(A, BiDi, Tempd1),
  or(BCiD, BiC, Tempd2),
  or(Tempd1, Tempd2, Tempd3),
  or(Tempd3, CDi, Dout),
  or(BiDi, CDi, Eout),
  or(A, BDi, Tempf1),
  or(CiDi, BCi, Tempf2),
  or(Tempf1, Tempf2, Fout),
  or(A, CDi, Tempg1),
  or(BiC, BCi, Tempg2),
  or(Tempg1, Tempg2, Gout).

