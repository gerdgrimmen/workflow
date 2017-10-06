-module(mymap).
%-export([test/0]).
-compile(export_all).
-include("./mapname.hrl").
%test() ->
% ok.
mapfunction() ->
    M1 = #{"Key" => value},
    Variable = "Key",
    maps:get(Variable, M1).

mymapfunction(Variable) ->
    Variable.