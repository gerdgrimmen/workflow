-module(workflow).
%-export([test/0]).
-compile(export_all).
test() ->
    error.
% Data
%-record(name,{field1,field2}).
% Conditions
condition() ->
    ok.

%Mapstuff - 
%maps:get(Variable, M1).
%maps:get(Variable, M1, Default).
%maps:is_key(Key, Map). -> true || false
%maps:keys(Map).
%maps:put(Key,Value,Map).
%maps:update(Key, Value, Map). -> Map2

%prolist -> configs


% concitions meet actions ?!
condition(equals, Value1, Value2, Action) ->
    Value1 = Value2;
condition(lessthan, Value1, Value2, Action) ->
    Value1 < Value2;
condition(greaterthan, Value1, Value2, Action) ->
    condition(lessthan, Value2, Value1, Action).

% Actions

action(set, Field, Value) ->
    ok;
action(reset, Field,Value) ->
    action(set, Field, ""),
    ok;
action(move, Field, Field2) ->
    action(set, Field2, Field),
    action(reset, Field, dalue),
    ok;
action(swap, Field, Field2) ->
    Temp = Field2,                  % Value of Field 2
    action(set, Field2, Field),
    action(set, Field, Temp),
    ok;

% Calculations
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
%   reset
%   move
%   swap
%   
%   calcs:
%   add
%   subtract
%   sum
%   multiply
%   divide
