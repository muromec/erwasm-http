-module(elib).

-export([answer/0, question/0, wat/0, question/1]).

wat() -> 42.

answer() -> "Its not real\n".

huh() -> "This is cool, but what for?\n".

question([]) ->
  "This is fine\n";

question([X|_Ignore]) ->
  case X of
    $A -> "Hi!\n";
    $I -> answer();
    _Else -> huh()
  end.

question() ->
  question(wat()).
