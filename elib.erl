-module(elib).

-export([dispatch/2, parse/1]).

answer() -> "Its not real\n".

huh() -> "This is cool, but what for?\n".

question([]) -> huh();

question([X|Tail]) ->
  case X of
    $A -> "Hi!\n";
    123456 -> "Hoi\n";
    {answer, $I} -> "This is the answer\n";
    $I -> answer();
    $F -> "This is fine\n";
    _Else -> question(Tail)
  end.

parse(<<$I, _X, $C, _Bin/binary>>) -> [$I];

parse(<<$A, _X, $C, _Bin/binary>>) -> [$A];

parse(<<$X, Bin:24>>) -> parse(Bin);

parse(<<>>) -> [$X];

parse(Bin) ->
  { ok, Num, _NextBin } = jsone_decode:decode(Bin),
  [{answer, Num}, Num].

% parse(<<BitLen:8, Bin:BitLen/binary>>) -> parse(Bin);


dispatch(Value, ParentPid) ->
  Ret = question(parse(Value)),
  ParentPid ! Ret,
  nil.
