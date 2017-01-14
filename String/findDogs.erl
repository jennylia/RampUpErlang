-module(findDogs).
-export([findDogs/1]).

%find how many times dog appeared in my sentence:
findDogs(S) when is_list(S) ->
	findDogs(S, 0).

findDogs([], _Pos)-> [];
findDogs([$d, $o, $g | Tail], Pos) -> [Pos| findDogs(Tail, Pos + 3)];
findDogs([_|Tail], Pos)-> findDogs(Tail, Pos + 1).

		      
