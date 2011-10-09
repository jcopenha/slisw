-module(wordcount).
-export([count/0]).
-export([msg/1]).

count()   -> count(1).
count(10) -> 10;
count(N)  -> count(N+1).

msg(success) -> success;
msg({error, Message}) -> Message.
