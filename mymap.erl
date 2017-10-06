-module(mymap).
%-export([test/0]).
-compile(export_all).

%test() ->
% ok.
mapfunction() ->
    M1 = #{"Key" => value},
    Variable = "Key",
    maps:get(Variable, M1).