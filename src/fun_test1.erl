-module(fun_test1).

-export([sum/1]).
-export([sum/2]).

sum(L) -> sum(L, 0).

sum([], N) -> N;
sum([H | T], N) -> sum(T, H + N).