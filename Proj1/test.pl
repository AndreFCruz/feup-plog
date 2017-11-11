
%% Board configurations for testing

board1([
      [none, none, none, none, none, none, none, worker, none],
      [white, white, white, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, white, white, white, white, none, none, none],
      [none, none, white, none, white, none, worker, none, none],
      [none, none, black, none, none, none, none, none, none],
      [none, none, white, worker, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none]
]).

board2([
      [black, black, black, black, black, none, none, none, none],
      [none, black, black, none, none, none, worker, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, black, black, white, black, none, none, none],
      [none, none, black, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, black, none, none, none, none, none, none],
      [none, none, black, none, none, worker, none, none, none],
      [none, none, none, none, none, none, none, none, none]
]).

board3([
      [none, black, black, white, none, none, none, none, none],
      [none, black, black, none, none, none, none, none, none],
      [none, none, black, none, none, none, none, none, none],
      [none, none, black, black, white, black, black, none, none],
      [none, none, none, none, white, none, none, none, none],
      [none, none, none, none, white, none, none, none, none],
      [none, worker, none, none, white, none, none, none, none],
      [none, none, none, none, white, worker, none, none, none],
      [none, none, none, none, none, none, none, none, none]
]).

board4([
      [none, none, none, none, black, none, white, none, none],
      [none, white, none, white, none, black, none, none, none],
      [none, none, black, none, none, none, none, none, none],
      [none, none, none, black, none, none, none, black, none],
      [white, none, none, none, black, none, none, none, black],
      [none, white, none, none, none, black, none, none, none],
      [none, none, white, none, none, none, black, none, none],
      [none, none, none, worker, none, none, none, worker, none],
      [none, none, none, none, white, none, none, none, none]
]).

board5([
      [none, none, none, none, black, none, none, none, none],
      [none, none, none, none, none, black, none, none, none],
      [none, none, black, none, none, none, black, none, none],
      [none, none, worker, none, none, worker, none, black, none],
      [white, none, none, none, none, none, none, none, black],
      [none, white, none, none, none, white, none, none, none],
      [none, none, white, none, none, none, black, none, none],
      [none, none, black, none, none, none, none, none, none],
      [none, none, none, none, white, white, white, none, none]
]).
%board5(B), checkDiagonalWin(black, B).
%yes
%board5(B), checkDiagonalWin(white, B).
%no

board6([
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, white, none, none, none, none],
      [none, none, none, white, none, none, none, none, none],
      [none, none, white, none, none, none, black, none, none],
      [none, white, none, none, none, black, none, none, none],
      [white, none, none, none, black, none, none, none, none],
      [none, none, none, black, none, none, none, none, none],
      [none, none, black, none, none, none, none, none, none]
]).
%board6(B), checkDiagonalWin(black, B).
%yes
%board6(B), checkDiagonalWin(white, B).
%yes

board7([
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, white],
      [none, none, none, none, none, none, none, black, none],
      [none, none, none, none, none, none, black, none, none],
      [none, none, none, none, worker, white, none, none, none],
      [none, none, none, none, black, black, none, none, none],
      [none, none, none, none, white, none, none, none, none],
      [none, none, none, none, white, none, none, none, worker]
]).


smallBoard([
      [worker, none, none],
      [none, none, none],
      [none, none, worker]
]).

boardE1([
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, black, black, black, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, white, white, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none]
]).
%BoardE1(B), horizontalEvaluation(black, B, V)
%V = 9

boardE2([
      [none, none, none, none, none, none, none, none, none],
      [none, none, white, black, black, black, black, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, none, none, none, none, none, none, none],
      [none, none, white, none, black, none, none, none, none],
      [none, none, none, black, none, black, none, black, none],
      [none, none, none, none, black, none, black, black, none],
      [none, none, none, none, none, none, none, white, none],
      [none, none, none, none, none, none, none, none, none]
]).
%boardE2(B), diagonalEvaluation(black, B, V).
%V = 39
%boardE2(B), defensiveEvaluation(white, B, V).
%V = 27