-module(recursion1).

-export([fac/1]).
-export([len/1]).
-export([tail_len/1, tail_len/2]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N * fac(N - 1).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

tail_len(L) -> tail_len(L, 0).
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc + 1). 