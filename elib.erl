-module(elib).

-export([dispatch/2]).

wat() -> 42.

answer() -> "Its not real\n".

huh() -> "This is cool, but what for?\n".

question([]) ->
  "This is fine\n";

question([X|Tail]) ->
  case X of
    $A -> "Hi!\n";
    $I -> answer();
    $F -> "This is fine\n";
    _Else -> question(Tail)
  end.

question() ->
  question(wat()).

parse(<<$A, _Bin/binary>>) -> [$A];

parse(<<$I, _Bin/binary>>) -> [$I];

parse(<<_Other, Bin/binary>>) -> parse(Bin);

parse(_Else) -> [$F].

dispatch(Value, ParentPid) ->
  Ret = question(parse(Value)),
  ParentPid ! Ret,
  nil.
