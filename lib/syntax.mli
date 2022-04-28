(* module Syntax: syntax trees and associated support functions *)

open Support.Error

(* Data type definitions *)
type ty =
  | TyVar of int * int
  | TyString
  | TySome of string * ty
  | TyArr of ty * ty
  | TyAll of string * ty
  | TyRecord of (string * ty) list
  | TyBool
  | TyNat
  | TyUnit
  | TyId of string
  | TyFloat

type term =
  | TmAscribe of info * term * ty
  | TmString of info * string
  | TmPack of info * ty * term * ty
  | TmUnpack of info * string * string * term * term
  | TmVar of info * int * int
  | TmAbs of info * string * ty * term
  | TmApp of info * term * term
  | TmTAbs of info * string * term
  | TmTApp of info * term * ty
  | TmRecord of info * (string * term) list
  | TmProj of info * term * string
  | TmTrue of info
  | TmFalse of info
  | TmIf of info * term * term * term
  | TmZero of info
  | TmSucc of info * term
  | TmPred of info * term
  | TmIsZero of info * term
  | TmUnit of info
  | TmFloat of info * float
  | TmTimesfloat of info * term * term
  | TmLet of info * string * term * term
  | TmInert of info * ty
  | TmFix of info * term

type binding =
  | NameBind
  | TyVarBind
  | VarBind of ty
  | TyAbbBind of ty
  | TmAbbBind of term * ty option

type command =
  | Import of string
  | Eval of info * term
  | Bind of info * string * binding
  | SomeBind of info * string * string * term

(* Contexts *)
type context

val emptycontext : context
val ctxlength : context -> int
val addbinding : context -> string -> binding -> context
val addname : context -> string -> context
val index2name : info -> context -> int -> string
val getbinding : info -> context -> int -> binding
val name2index : info -> context -> string -> int
val isnamebound : context -> string -> bool
val getTypeFromContext : info -> context -> int -> ty

(* Shifting and substitution *)
val termShift : int -> term -> term
val termSubstTop : term -> term -> term
val typeShift : int -> ty -> ty
val typeSubstTop : ty -> ty -> ty
val tytermSubstTop : ty -> term -> term

(* Printing *)
val printtm : context -> term -> unit
val printtm_ATerm : bool -> context -> term -> unit
val printty : context -> ty -> unit
val prbinding : context -> binding -> unit

(* Misc *)
val tmInfo : term -> info
