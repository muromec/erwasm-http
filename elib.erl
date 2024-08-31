-module(elib).

-export([dispatch/2, parse/1]).

question(X) ->
  case X of
    { raw, $I } -> "This is the answer\n";
    { raw, $A } -> "Hi!\n";
    { raw, $X } -> "200 X!\n";

    { q, 123456 } -> "Ok, 7890\n";
    { q, [1,2] } -> "Jo!\n";
    { q, 11 } -> "Nope\n";
    {q, <<"Hi">>} -> "Sup\n";
    {q, [<<"HiHi">>]} -> "Nice!\n";
    {q, [<<"HiHi">>, 1]} -> "Very nice!\n";
    {q, {[{<<$x>>, 1}]}} -> "key x is set to 1\n";

    { error } -> "400 This was not a json\n";

    _Else -> "I dunno\n"
  end.

parse(<<$I, _X, $C, _Bin/binary>>) -> { raw, $I };

parse(<<$A, _X, $C, _Bin/binary>>) -> { raw, $A };

parse(<<$X, Bin:24>>) -> parse(Bin);

parse(<<>>) -> { raw, $X };

parse(Bin) ->
  case jsone_decode:decode(Bin) of
    { ok, Payload, _NextBin } -> { q, Payload};
    _Else -> { error }
  end.



dispatch(Value, ParentPid) ->
  Ret = question(parse(Value)),
  ParentPid ! Ret,
  nil.
