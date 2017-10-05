-module(workflow).
%-export([test/0]).
-compile(export_all).
test() ->
    error.
% Data
-record(name,{field1,field2}).
% Conditions
condition() ->
    ok.
% Actions
action(set, Field, Value) ->
    ok;
action(delete, Field,Value) ->
    action(set, Field, ""),
    ok;
action(move, Field, Field2) ->
    action(set, Field2, Field),
    action(delete, Field, dalue),
    ok;
action(swap, Field, Field2) ->
    Temp = Field2,
    action(set, Field2, Field),
    action(set, Field, Field2),
    ok;

action(add,Value1, Value2) ->
    Value1 = Value1 + Value2,
    ok;
action(subtract,Value1, Value2) ->
    Value1 = Value1 - Value2,
    ok;    
action(multiply,Value1, Value2) ->
    Value1 = Value1 * Value2,
    ok;
action(divide,Value1, Value2) ->
    Value1 = Value1 / Value2,
    ok.


%%% 
%   fundamentals:
%   set
%   delete
%   move
%   swap
%   
%   cals:
%   add
%   subtract
%   sum
%   multiply
%   divide
