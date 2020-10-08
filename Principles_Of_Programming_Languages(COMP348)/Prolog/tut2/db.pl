first_element(F, [F|_]).

last_element(L, [L]).
last_element(L, [_|T]) :- last_element(L, T).

list_length([], 0).
list_length([_|T], R1) :- list_length(T, R), R1 is R + 1.

append_list([], L, L).
append_list([H|T], L,[H|R]) :- append_list(T, L, R).

prefix(P, L) :- append(P, _ , L).
suffix(S, L) :- append( _ , S, L).

sublist(S, L) :- append(_, S, LEFT), append(LEFT, _, L).

reverse_list([], []).
reverse_list([H|T], R) :- reverse_list(T, R1), append_list(R1,[H], R).

nth_element(0, X, [X|_ ]).
nth_element(N, R, [_|T]) :- M is N-1 , nth_element(M, R, T).

insert_element(E, L, [E|L]).

insert_nth(R, 0, L, [R|L]). 
insert_nth(R, N, [H|L], [H|NL]) :- M is N-1, insert_nth(R,M,L,NL).

delete_nth(0, [ _|T], T).
delete_nth(N, [H|T], [H|R]) :- M is N-1 , delete_nth(M, T, R).

delete_element( _ , [ ], [ ]).
delete_element(X, [X|T], R) :- delete_element(X, T, R).
delete_element(X,[Y|T],[Y|T1]) :- X\=Y , delete_element(X, T, T1).
