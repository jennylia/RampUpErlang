-module(dolphins).
-compile(export_all).

dolphin1()->
	receive
		do_a_flip ->
			io:format("How about no?~n");
		fish ->
			io:format("So long and thats for the fish!");
		_ ->
			io:format("heh, we are smarter than human")
	end.

dolphin2()->
	receive
		{From, do_a_flip} ->
			From ! "How about no";
		{From, fish} ->
			From ! "So long and thanks for all the fish";
		_ ->
			io:format("we are smarter than humans")
	end.

%The following would not actually terminate after each message... It keeps goin
dolphin3()->
	receive
		{From, do_a_flip} ->
			From ! "How about no",
			dolphin3();
		{From, fish} ->
			From ! "So long and thanks for all the fish",
			dolphin3();
		_ ->
			io:format("we are smarter than humans"),
			dolphin3()
	end.
