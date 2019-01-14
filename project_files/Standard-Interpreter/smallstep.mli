(* smallstep.mli *)
open Abstract_Syntax
open Labels
open Env
(* program states *)
type state = label * env
(* small-step o�peration semantics of commands *)
val trans : com -> state -> state
(* run-tme errors *)
exception Error of string
