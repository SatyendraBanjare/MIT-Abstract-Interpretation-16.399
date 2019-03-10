type token =
  | EOL
  | SEMICOLON
  | ASSIGN
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | LPAREN
  | RPAREN
  | IDENT of ( string )
  | NUM of ( int )

val prog :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> unit
