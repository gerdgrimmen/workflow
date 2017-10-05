-module(myrecord).
%-export([test/0]).
-compile(export_all).

-record(zname,
        {
        field1 = "bla",
        flied2, 
        field3
        }).
stuff(Value1, Value2) ->
    %#name{field1=Value1},
    #zname{field1=Value2}.

%changevalue(Field, Value)  when is_atom(Field) ->
%changevalue(Field=#name.field1, Value) ->
%    #name{Field=Value}.

%queryFieldname(Fieldname) ->
queryFieldname(Fieldname) ->
    P = #zname{field1 = "asdasdasd",field3="ddd"},
    Name = element(4,P).

record_fields() ->
    %record_info(size, name).
    record_info(fields, name).

setFieldsToVariables() ->
    List = record_fields().

recurseList([H|D],List) ->
    Field = H,
    recurseList(D,[Field|List]);
recurseList([],List) ->
    List.

this_element() ->
    P = #zname{field1 = "asdasdasd",field3="ddd"},
    P2 = setelement(#zname.field1,P,"setted").

recurseElements([H|D],List) ->
    Testname = #zname{field1 = "testfield1",field3="testfield3"},
    Scopename = setelement(1,Testname,"setted"),
    io:format("rec ~p~n",     [Scopename]),
    Field = H,
    recurseElements(D,[Field|List]);
recurseElements([],List) ->
    List.