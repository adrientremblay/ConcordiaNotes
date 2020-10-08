:- use_module(library(lists)).

course(comp,348).
course(mana,202).
course(engr,213).
course(comp,352).
course(soen,287).
course(comp,335).
course(engr,301).

student(gabriel,40120255).
student(william,40134234).
student(adrien,40923832).

enrolled(gabriel,course(comp,348)).
enrolled(gabriel,course(engr,213)).
enrolled(gabriel,course(mana,202)).
enrolled(gabriel,course(soen,287)).
enrolled(gabriel,course(comp,352)).
enrolled(adrien,course(comp,348)).
enrolled(adrien,course(comp,352)).
enrolled(adrien,course(comp,335)).
enrolled(adrien,course(engr,213)).
enrolled(william,course(engr,213)).
enrolled(william,course(comp,348)).
enrolled(william,course(comp,352)).
enrolled(william,course(comp,335)).
enrolled(william,course(engr,301)).


% Query to return list of courses taken by each person

list_courses(G,W,A) :-
student(X,_),
student(Y,_),
student(Z,_),
X\=Y,X\=Z,Y\=Z,
findall(C,enrolled(X,C),G),
findall(C,enrolled(Y,C),W),
findall(C,enrolled(Z,C),A).

% Query to return the team size

team_size(T) :-
findall(X, student(X,_) ,L),
length(L, T).

% Query to return the unique courses taken by the whole team

common_courses(U) :-
list_courses(X,Y,Z),
list_to_set(X, S1),
list_to_set(Y, S2),
list_to_set(Z, S3),
intersection(S1, S2, S4),
intersection(S1, S3, S5), !,
intersection(S4, S5, U).


% Sort previous result

sort_courses(Sorted) :-
common_courses(X),
sort(X,Sorted).

% Unify expressions

unify([A,B|C]) :-
common_courses(X),
sort(X,[A,B|C]).
