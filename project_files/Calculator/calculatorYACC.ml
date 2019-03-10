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

open Parsing;;
let _ = parse_error;;
# 3 "calculatorYACC.mly"
 (* header *)
  
type symbTable = (string * int) list ;;

let sb = ref([] : symbTable) ;;

let getvalue x =
   if (List.mem_assoc x !sb) then 
     (List.assoc x !sb)
   else
     0;;

let rec except x l = match l with
  []   -> []
| h::t -> if (h = x) then t
            else h::(except x t)

let setvalue x v =
  (print_string (x ^ " = "); print_int (v);
   print_string ";\n"; flush stdout;
   if (List.mem_assoc x !sb) then
     sb := (x, v) :: (except (x, (List.assoc x !sb)) !sb)
   else
     sb := (x, v) :: !sb 
  );;

# 44 "calculatorYACC.ml"
let yytransl_const = [|
  257 (* EOL *);
  258 (* SEMICOLON *);
  259 (* ASSIGN *);
  260 (* PLUS *);
  261 (* MINUS *);
  262 (* TIMES *);
  263 (* DIV *);
  264 (* LPAREN *);
  265 (* RPAREN *);
    0|]

let yytransl_block = [|
  266 (* IDENT *);
  267 (* NUM *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\004\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\000\000"

let yylen = "\002\000\
\002\000\003\000\001\000\001\000\001\000\003\000\003\000\003\000\
\003\000\003\000\002\000\003\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\014\000\015\000\000\000\
\000\000\004\000\000\000\013\000\011\000\000\000\000\000\001\000\
\000\000\000\000\000\000\000\000\000\000\012\000\000\000\002\000\
\000\000\000\000\009\000\010\000"

let yydgoto = "\002\000\
\007\000\008\000\009\000\010\000\011\000"

let yysindex = "\003\000\
\003\255\000\000\027\255\027\255\004\255\000\000\000\000\008\255\
\019\255\000\000\041\255\000\000\000\000\035\255\027\255\000\000\
\003\255\027\255\027\255\027\255\027\255\000\000\041\255\000\000\
\043\255\043\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\024\255\000\000\000\000\000\000\
\023\255\000\000\032\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\050\255\000\000\
\001\255\018\255\000\000\000\000"

let yygindex = "\000\000\
\000\000\019\000\000\000\000\000\253\255"

let yytablesize = 52
let yytable = "\013\000\
\014\000\007\000\007\000\001\000\007\000\007\000\015\000\003\000\
\016\000\007\000\004\000\023\000\005\000\006\000\025\000\026\000\
\027\000\028\000\008\000\008\000\017\000\008\000\008\000\003\000\
\013\000\013\000\008\000\013\000\013\000\013\000\013\000\003\000\
\005\000\005\000\004\000\024\000\012\000\006\000\018\000\019\000\
\020\000\021\000\000\000\022\000\018\000\019\000\020\000\021\000\
\020\000\021\000\006\000\006\000"

let yycheck = "\003\000\
\004\000\001\001\002\001\001\000\004\001\005\001\003\001\005\001\
\001\001\009\001\008\001\015\000\010\001\011\001\018\000\019\000\
\020\000\021\000\001\001\002\001\002\001\004\001\005\001\001\001\
\001\001\002\001\009\001\004\001\005\001\006\001\007\001\005\001\
\001\001\002\001\008\001\017\000\010\001\011\001\004\001\005\001\
\006\001\007\001\255\255\009\001\004\001\005\001\006\001\007\001\
\006\001\007\001\001\001\002\001"

let yynames_const = "\
  EOL\000\
  SEMICOLON\000\
  ASSIGN\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  LPAREN\000\
  RPAREN\000\
  "

let yynames_block = "\
  IDENT\000\
  NUM\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 48 "calculatorYACC.mly"
              ( print_int _1 ; print_newline(); flush stdout; () )
# 137 "calculatorYACC.ml"
               : unit))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 51 "calculatorYACC.mly"
                        ( _3 )
# 145 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 52 "calculatorYACC.mly"
                        ( _1 )
# 152 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 55 "calculatorYACC.mly"
            ( _1 )
# 159 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 56 "calculatorYACC.mly"
            ( _1 )
# 166 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 :  string ) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 59 "calculatorYACC.mly"
                       ( (setvalue _1 _3) ; _3 )
# 174 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 62 "calculatorYACC.mly"
                             ( _1 + _3 )
# 182 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 63 "calculatorYACC.mly"
                             ( _1 - _3 )
# 190 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 64 "calculatorYACC.mly"
                             ( _1 * _3 )
# 198 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 65 "calculatorYACC.mly"
                             ( _1 / _3 )
# 206 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 66 "calculatorYACC.mly"
                             ( - _2 )
# 213 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 67 "calculatorYACC.mly"
                             ( _2 )
# 220 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  string ) in
    Obj.repr(
# 68 "calculatorYACC.mly"
                             ( (getvalue _1) )
# 227 "calculatorYACC.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  int ) in
    Obj.repr(
# 69 "calculatorYACC.mly"
                             ( _1 )
# 234 "calculatorYACC.ml"
               : int))
(* Entry prog *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let prog (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : unit)
;;
# 71 "calculatorYACC.mly"
 (* trailer *)
# 261 "calculatorYACC.ml"
