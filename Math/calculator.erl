%module name and file name has to match
-module(calculator).
-export([calculate_avg/1]).

calculate_avg(X) ->
	calculate_avg(X,0,0).

%usually the props wrap these in tail recursive helper functions
%following Bryan Hunter example
%
calculate_avg([H|T], Length, Sum) ->
	calculate_avg(T, Length + 1, H + Sum);
calculate_avg([], Length, Sum) ->
	Sum / Length.



