% Generate a board predicate with N x N empty spaces
createBoard(Board, N) :-
        createBoard(Board, N , 0).

createBoard(_, N, N).
createBoard([FirstRow | OtherRows], N, Lines) :-
        Lines1 is (Lines+1),
        createBoardLine(FirstRow, N),
        createBoard(OtherRows, N, Lines1).
        
createBoardLine(_, 0).
createBoardLine([FirstEle | OtherEle], N) :-
        FirstEle = none,
        N1 is (N-1),
        createBoardLine(OtherEle, N1).


% Access the element in the [Row,Col] position of the given board
getElementAux(0, [Elem | _], Element):-
        Element = Elem, !. % added a cut

getElementAux(Col, [_ | RemainderOfLine], Element) :-
        Col1 is (Col-1),
        getElementAux(Col1, RemainderOfLine, Element).

getElement(0, Col, [Line | _], Element):-
        getElementAux(Col, Line, Element).

getElement(Row, Col, [_ | RemainderRows], Element):-
        Row1 is (Row-1),
        getElement(Row1, Col, RemainderRows, Element).


%% Validation Predicates
% Worker can be played if [Row,Col]=none
isValidPlay(worker, Row, Col, Board) :-
        getElement(Row, Col, Board, El),
        El = none.

% White/Black pieces can be played if [Row,Col] is in intersection of Workers' lines of sight
isValidPlay(white, Row, Col, Board) :-
        isIntersection(Row, Col, Board).
isValidPlay(black, Row, Col, Board) :-
        isIntersection(Row, Col, Board).

% PLACEHOLDER - probably receive [Row1,Col1],[Row2,Col2] positions of workers 
isIntersection(_Row, _Col, _Board).

% Set piece on board -- not yet validating move
% Sets the piece of the given type in the given position, in the given Board
/*
setPiece(PieceType, Row, Col, Board, NewBoard) :-
        RealRow is (Row-1), % TODO zero indexed ?
        RealCol is (Col-1),
        %First remove the old piece
        nth0(RealRow, Board, BoardWOLine, TempBoard),
        nth0(RealCol, BoardWOLine, _, TempLine),
        %Inserting the new piece
        nth0(RealCol, NewLine, PieceType, TempLine),
        nth0(RealRow, NewBoard, NewLine, TempBoard).
*/
setPiece(Piece, Row, Col, Board, NewBoard) :-
        isValidPlay(Piece, Row, Col, Board),
        !. % TODO
        
        



