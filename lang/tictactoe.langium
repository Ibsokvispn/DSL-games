grammar TicTacToe

entry Game:
    (moves+=MovePlayer1 moves+=MovePlayer2)* (moves+=MovePlayer1)?;

MovePlayer1:
    case=Square;

MovePlayer2:
    case=Square;

terminal Square: /[a-c][1-3]/;

hidden terminal WS: /\s+/;

hidden terminal ML_COMMENT: /\/\*[\s\S]*?\*\//;
hidden terminal SL_COMMENT: /\/\/[^\n\r]*/;