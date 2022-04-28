(* module Core

   Core typechecking and evaluation functions
*)

open Syntax

val eval : context -> term -> term
val typeof : context -> term -> ty
val tyeqv : context -> ty -> ty -> bool
val simplifyty : context -> ty -> ty
val evalbinding : context -> binding -> binding
