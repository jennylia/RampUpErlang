### RampUpErlang
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

Another useful site for debugging
http://erlang-tutorial.blogspot.ca/2010/03/erlang-debugging.html
```
1> im(). %This starts the monitor from terminal
<0.59.0>
2> ii(calculator). %tells which module to debug
{module,calculator}
3> iaa([init]). %start debugging from init
true
4> ib(calculator, 12). %set a breakpoint at line 12 for calculator module
ok
5> calculator:calculate_avg([1,2,3,4]). %run the program, watch breakpoints gets hit
```
