# RampUpErlang
A repo dedicated to all sort of things I came across during my Erlang journey

##Useful Tools
Explaining what dollar signs are in erlang string matching
http://www.evanmiller.org/joy-of-erlang.html

##Explain how to use debugger
https://vimeo.com/32724400

Usually add the debug_into as a compile arg:
```
2> c(calculator,[debug_info]).
{ok,calculator}

4> debugger:start().
{ok,<0.74.0>}
```
