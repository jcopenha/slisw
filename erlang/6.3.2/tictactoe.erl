-module(tictactoe).
-export([row/2]).
-export([col/2]).
-export([diag/2]).
-export([row_winner/2]).
-export([col_winner/2]).
-export([diag_winner/2]).
-export([winner/2]).

row(Board, N) -> 
    L = [element((N-1)*3+1, Board), element((N-1)*3+2, Board), element((N-1)*3+3, Board)].

col(Board, N) -> 
    L = [element(N, Board), element(N+3, Board), element(N+6, Board)].

diag(Board, 1) -> 
    L = [element(1, Board), element(5, Board), element(9, Board)];
diag(Board, 2) -> 
    L = [element(3, Board), element(5, Board), element(7, Board)].

row_winner(Board,M) ->
    lists:map(fun(X) -> lists:all(fun(Y) -> Y == M end, row(Board, X)) end, 
                        [1,2,3]).
col_winner(Board,M) ->
    lists:map(fun(X) -> lists:all(fun(Y) -> Y == M end, col(Board, X)) end, 
                        [1,2,3]).

diag_winner(Board,M) ->
    lists:map(fun(X) -> lists:all(fun(Y) -> Y == M end, diag(Board, X)) end, 
                        [1,2]).

winner(Board,M) ->
    lists:any(fun(Y)->Y end, row_winner(Board, M)) or 
    lists:any(fun(Y)->Y end, col_winner(Board, M)) or 
    lists:any(fun(Y)->Y end, diag_winner(Board, M)).

