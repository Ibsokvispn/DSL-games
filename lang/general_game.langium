grammar TicTacToe

entry Game:
    'Board:' boardSize=DIGIT
    ('Pieces:' pieces+=Piece+)?
    ('Rules:' rules+=Rule+)? 
    (moves+=MovePlayer1 moves+=MovePlayer2)* (moves+=MovePlayer1)?;

Rule:
    '(' (
        'when' when=STRING
        'then' then=STRING
    )')';

Piece:
    '(' name=STRING ':' symbole=STRING ')';

MovePlayer1:
    case=Square (won?='+')?;
MovePlayer2:
    case=Square (won?='+')?;

terminal Square: /[a-z][1-9]/;
terminal STRING: /"[^"]*"/;
terminal DIGIT: /[1-9]/;


hidden terminal WS: /\s+/;
hidden terminal ML_COMMENT: /\/\*[\s\S]*?\*\//;
hidden terminal SL_COMMENT: /\/\/[^\n\r]*/;
