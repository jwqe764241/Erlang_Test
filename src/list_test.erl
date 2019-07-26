-module(list_test).

-export([sum/1]).
-export([map/2]).
-export([map2/ 2]).
-export([qsort/1]).
-export([pythag/1]).
-export([perms/1]).

sum([H | T]) -> H + sum(T);
sum([]) -> 0.

map(_, []) -> [];
map(F, [H | T]) -> [F(H) | map (F, T)].

map2(F, L) -> [F(X) || X <- L].

qsort([]) -> [];
qsort([Pivot | T]) ->
    qsort([X || X <- T, X < Pivot])
    ++ [Pivot] ++
    qsort([X || X <- T, X >= Pivot]).

pythag(N) -> [{A, B, C} ||
    A <- lists:seq(1, N),
    B <- lists:seq(1, N),
    C <- lists:seq(1, N), 
    A + B + C =< N,
    A*A + B*B =:= C*C
].

perms([]) -> [[]];
perms(L) -> [[H | T] || H <- L, T <- perms(L--[H])].