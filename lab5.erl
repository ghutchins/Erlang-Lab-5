
% CSC 231 Lab 5 - Introduction to Erlang
% Georgina Hutchins

-module(lab5).
-export([fourthPower/1, square/1, fourthPower2/1, median3/1, factorial/1, cycleOnce/1, getNth/2, logarithm/2, largest/1, contains/2]).


%problem 1a
fourthPower(N) -> N*N*N*N.


square(N) -> N*N.

%problem 1b
fourthPower2(N) -> square(N)*square(N).


%problem 1c
median3({A,B,C}) ->	
	if
		(A-B)*(C-A) >= 0 -> A;
		(B-A)*(C-B) >= 0 -> B;
		true -> C
	end.


%problem 2a
factorial(N) ->
	if
		N =< 1 -> 1;
		true -> N*factorial(N-1)
	end.


cycleOnce(L) ->
	tl(L) ++ [hd(L) | []].

%problem 2b
getNth(L,N) ->
	if	
		L == [] -> [];
		N == 1 -> hd(L);
		true -> getNth(cycleOnce(L), N-1)
	end.


%problem 2c
logarithm(X,Y) ->
	if
		Y == 1 -> 0;
		X == Y -> 1;
		true -> 1 + logarithm(X, (Y/X))
	end.


%problem 2d
largest(L) ->
	if
		tl(L) == [] -> hd(L);
		true -> if
			hd(L) > hd(tl(L)) -> largest([hd(L) | []] ++ tl(tl(L)));
			
			true-> largest(tl(L))
			end
	end.


%problem 2e
contains(N,L) ->
	if
		L == [] -> false;		
		N == hd(L) -> true;
		true -> if
			N /= hd(L) -> contains(N, tl(L));
			true -> false
			end
	end.
			
		
	

