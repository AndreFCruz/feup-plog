:- include('board.pl').
:- include('display.pl').
:- include('utils.pl').
:- include('menus.pl').
:- use_module(library(lists)).

% Utils
boardSize(9).
boardSize(11).

initGame:-
    boardSize(N),
    initGame(N).
initGame(N) :-
    boardSize(N),
    createBoard(B, N),
<<<<<<< HEAD
    printFabrik(B, N).
=======
    printFabrik(B, N).
>>>>>>> dbe53fab344b637934d40cb3a437e05d32c4e37d