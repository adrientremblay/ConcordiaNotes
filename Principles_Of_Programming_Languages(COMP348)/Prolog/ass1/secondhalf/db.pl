second_half(L, X) :-
  length(L, Length),
  Half is ceiling(Length / 2),
  remove(L, Half, X).

remove(L, 0, L).
remove([_|T], I, R) :-
  Inew is I - 1,
  remove(T, Inew, R).
 

% second_half(L, X) :-
% 	append(FirstHalf, SecondHalf, L),
% 	length(FirstHalf, FirstLength),
% 	length(SecondHalf, SecondLength),
% 	SecondHalf = X,
% 	((FirstLength-1)=:=SecondLength;FirstLength=:=SecondLength),
% 	!. 
