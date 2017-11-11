unknownInput:-
        write('Invalid option chosen.'), nl,
        getEnter.

% TODO: Change this to handle strings and not only 1 char
%Ask the User for a int
getInt(Input):-
        get_code(KbInput),
        Input is KbInput - 48,  %Because of ASCII table
        get_char(_), !.         %for the Enter

%Ask The User for a char
getChar(Input):-
        get_char(Input),
        get_char(_), !.

%'Press enter to continue' function
getEnter:-
        write('Press enter to continue.'), nl,
        get_char(_).

%Ask the User for a piece's row and column.
getPosition(PieceType, Row, Col):-
        getRow(PieceType, Row),
        getCol(PieceType, Col), !.

%Ask User for the Piece's row
getRow(PieceType, Row):-
        write('Choose '), write(PieceType), write('\'s row:'), nl,
        getInt(TempRow),
        Row is  (TempRow - 1), !.

%Ask User for the Piece's column
getCol(PieceType, Col):-
        write('Choose '), write(PieceType), write('\'s column:'), nl,
        getChar(ColLabel),
        getLabel(Col, ColLabel), !.

%User interface for placing a new piece on the board
pieceInput(PieceType, Side, Board, UpdatedBoard):-
        currentSideDisplay(Side),
        getPosition(PieceType, InputRow, InputCol),
        setPiece(PieceType, InputRow, InputCol, Board, UpdatedBoard).
pieceInput(PieceType, Side, Board, UpdatedBoard):-
        write('That play is not valid. Try again.'), nl, nl,
        pieceInput(PieceType, Side, Board, UpdatedBoard).

%User chooses who starts playing
getFirstPlayer(Side):-
        decidePlayerMsg,
        getInt(Choice),
        getFirstPlayerChoice(Choice, Side).
getFirstPlayer(Side):-
        write('Unrecognized choice. Try again.'), nl, nl,
        getFirstPlayer(Side).

getFirstPlayerChoice(1, white).
getFirstPlayerChoice(2, black).
decidePlayerMsg:-
        write('Black Player, decide who goes first:'), nl,
        write('\t1. White Player'), nl,
        write('\t2. BlackPlayer'), nl, nl,
        write('Choose an option:'), nl.


%User chooses if he wishes to update the worker position
workerUpdate(Side, Board, UpdatedBoard):-
        currentSideDisplay(Side), workerUpdateMsg,
        getInt(Choice),
        workerUpdateChoice(Choice, Side, Board, UpdatedBoard).

workerUpdateChoice(1, Side, Board, UpdatedBoard):-
        moveWorkerInput(Side, Board, UpdatedBoard), !.
workerUpdateChoice(2, _Side, Board, Board):-
        nl, write('Worker kept in place!'), nl,
        getEnter.
workerUpdateChoice(_, Side, Board, UpdatedBoard):-
        unknownInput,
        workerUpdate(Side, Board, UpdatedBoard).

workerUpdateMsg:-
        write('Do you wish to move a worker?'), nl,
        write('\t1. Yes'), nl,
        write('\t2. No'), nl, nl,
        write('Choose an option:'), nl. 

%Asks the User for worker's current and new positions and moves it
moveWorkerInput(Side, Board, UpdatedBoard):-
        currentSideDisplay(Side),
        write('\tWorker current position'), nl,
        getPosition(worker, CurrRow, CurrCol),
        write('\tWorker new position'), nl,
        getPosition(worker, DestRow, DestCol),
        moveWorker(Board, CurrRow, CurrCol, DestRow, DestCol, UpdatedBoard).
moveWorkerInput(Side, Board, UpdatedBoard):-
        write('That play is not valid. Try again.'), nl, 
        write('Help:'), nl,
        write('\t * To maintain the worker in the same place, keep the new position equal to the old one.'), nl,
        write('\t * The Worker must be moved to an empty cell.'), nl, nl,
        moveWorkerInput(Side, Board, UpdatedBoard).