-module(elib).

-export([dispatch/2, parse/1, parse/1]).

answer() -> "Its not real\n".

huh() -> "This is cool, but what for?\n".

question([]) ->
  "Non\n";

question([X|Tail]) ->
  % erdump:hexlog(X),
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

% parse(<<Bin/binary>>) -> jsone_part:parse(Bin);

% parse(<<>>) -> [$X];

parse(Bin) ->
  Num = jsone_part:parse(Bin),
  [Num, {answer, $I}, $A].

% parse(<<BitLen:8, Bin:BitLen/binary>>) -> parse(Bin);


dispatch(Value, ParentPid) ->
  Ret = question(parse(Value)),
  ParentPid ! Ret,
  nil.
