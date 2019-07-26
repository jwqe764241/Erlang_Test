-module(list_test).

-export([sum/1]).
-export([map/2]).
-export([map2/ 2]).

sum([H | T]) -> H + sum(T);
sum([]) -> 0.

map(_, []) -> [];
map(F, [H | T]) -> [F(H) | map (F, T)].

map2(F, L) -> [F(X) || X <- L].