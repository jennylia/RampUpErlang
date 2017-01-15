-module(hhfuns).
-compile(export_all).

map(_,[]) -> [];
map(F, [H|T]) ->
	[F(H)| map(F, T)].

% Prepare alarm, demo of closures, the second anonymous function also gets some variable from the parents.

%PrepareAlarm = fun (Room) ->
%			       io:format("Alarm is set in ~s.~n", [Room]),
%			       fun() -> io:format("Alarm tripped in ~s!" [Room]) end
%						  end.
%						  

%closures
a() ->
	Secret = "pony",
	fun() -> Secret end.

b(F) ->
	"a's password is " ++ F().

			       
