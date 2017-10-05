-module(myrecord).
%-export([test/0]).
-compile(export_all).

-record(name,{field1 = "bla",flied2 , field3}).

stuff(Value1, Value2) ->
    %#name{field1=Value1},
    #name{field1=Value2}.

%changevalue(Field, Value)  when is_atom(Field) ->
%changevalue(Field=#name.field1, Value) ->
%    #name{Field=Value}.

%queryFieldname(Fieldname) ->
queryFieldname(Fieldname) ->
    P = #name{field1 = "asdasdasd",field3="ddd"},
    Name = element(4,P).

