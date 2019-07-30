-module(record_test).

-include("record1.hrl").

-export([clear_status/1]).
-export([is_todo/1]).

clear_status(#todo{status=S, who=W} = R) -> 
    R#todo{status=finished}.

is_todo(X) when is_record(X, todo) -> true;
is_todo(X) -> false.