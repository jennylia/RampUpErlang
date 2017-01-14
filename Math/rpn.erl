-module(rpn).
-export([rpn/1]).

%pro Mark would use a tail recursive helper function.
rpn(InputList)->rpn(InputList, []).

rpn([], Stack) -> Stack;
rpn([X| InputTail], Stack) when is_number(X) ->
	rpn(InputTail,[X|Stack]);

%The following patterns are for operators...
rpn(['+' | InputTail], [V1, V2 | StackTail])->
	rpn(InputTail, [V1 + V2 | StackTail]);
rpn(['-' | InputTail], [V1, V2 | StackTail])->
	rpn(InputTail, [V1 - V2 | StackTail]);
rpn(['*' | InputTail], [V1, V2 | StackTail])->
	rpn(InputTail, [V1 * V2 | StackTail]);
rpn(['/' | InputTail], [V1, V2 | StackTail]) when V2 /= 0->
	rpn(InputTail, [V1 / V2 | StackTail]);
rpn(['/' | _], [V2 | _]) when V2 == 0->
	rpn_error_divide_by_zero. %rpn_error_divide_by_zero is an atom, it will be okay to return atom even unassigned.

