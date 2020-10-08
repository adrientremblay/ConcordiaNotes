	lectures(turing, 9020).
	lectures(codd, 9311).
	lectures(backus, 9021).
	lectures(ritchie, 9201).
	lectures(minsky, 9414).
	lectures(codd, 9314).


	studies(fred, 9020).
	studies(jack, 9311).
	studies(jill, 9314).
	studies(jill, 9414).
	studies(henry, 9414).
	studies(henry, 9314).

    %year(X, Y): person X is in year Y
	year(fred, 1).
	year(jack, 2).
	year(jill, 2).
	year(henry, 4).
         
	
more_advanced(S1, S2) :- year(S1, Year1), year(S2, Year2),
Year1 > Year2.

