-module(combo).
-export([combinations/1]).

combinations([]) ->
	    [];
combinations([H | T]) ->
	    CT = combinations(T),
	        [[H]] ++ [[H | L] || L <- CT] ++ CT.
