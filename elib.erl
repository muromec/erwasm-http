-module(elib).

-export([dispatch/2, parse/1, parse/1]).

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

parse(<<$I, _X, $C, _Bin/binary>>) -> [$I];

parse(<<$A, _X, $C, _Bin/binary>>) -> [$A];

parse(<<$X, _Bin:24>>) -> [$X];

parse(<<_BitLen, Bin/binary>>) -> parse(Bin);

% parse(<<BitLen:8, Bin:BitLen/binary>>) -> parse(Bin);

parse(_Else) -> [$F].

dispatch(Value, ParentPid) ->
  Ret = question(parse(Value)),
  ParentPid ! Ret,
  nil.
