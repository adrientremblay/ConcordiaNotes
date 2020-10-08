initial(s1).
final(s1).


transition(s1, a, s2).

transition(s2, a, s2).
transition(s2, b, s1).
transition(s2, c, s4).

transition(s3, a, s1).
transition(s3, b, s4).

transition(s4, d, s3).


test(Words) :- initial(State), recognize(State, Words).

recognize(State, []) :- final(State).

recognize(FromState,[Character|NewString]) :- 
	transition(FromState,Character,ToState),
	recognize(ToState,NewString).
