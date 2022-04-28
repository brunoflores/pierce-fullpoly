# pierce-fullpoly

The `fullpoly` implementation from [^1].

The system studied in this chapter is pure System F.

I've made small changes to:
1. Compile it with current OCaml versions, and
2. Build with Dune.

Install locked dependencies:

```
$ opam install . --locked --deps-only
```

Build binary:

```
$ dune clean; dune build

$ ./_build/default/bin/main.exe
Error: You must specify an input file
```

Or, build and execute in one command:

```
dune exec ./bin/main.exe -- test/test.f
```

A note from [^1]:

> _Parametric polymorphism_, the topic of this chapter, allows a single piece of
> code to be typed "generically", using variables in place of actual types, and
> then instantiated with particular types as needed. Parametric definitions
> are _uniform_: all of their instances behave the same.
>
> The most powerful form of parametric polymorphism is the _impredicative_
> or _first-class polymorphism_ developed in this chapter. More common
> in practice is the form known as _ML-style_ or _let-polymorphism_, which
> restricts polymorphism to top-level `let`-bindings, disallowing functions that
> take polymorphic values as arguments, and obtains in return a convenient
> and natural form of automatic _type reconstruction_.

Notes from [^2]:

> However, the practicality of this language is far from proven. To say that any reasonable
> function can be expressed by some program is not to say that it can be expressed by the
> most reasonable program. It is clear that the language requires a novel programming style.
> Moreover, it is likely that certain important functions cannot be expressed by their most
> efficient algorithms. Also, the guarantee of termination precludes interesting computations
> that never terminate, such as those involving lazy computation with infinite data structures.
> (These reservations apply to the pure polymorphic calculus; if a fixed-point operator is
> added to provide general recursion, the language expands to include conventional functional
> programming, including lazy computation, but the guarantee of termination is lost.)

> The polymorphic lambda calculus also raises the problem of type inference. 
> Although type inference is straightforward for the explicitly typed form of 
> the calculus, the explicit statement of types whenever a variable is bound 
> is a serious burden for the programmer. Ideally, one would like an algorithm 
> that could examine an expression of the untyped lambda calculus and decide 
> whether there is any assignment of types to variables that makes the 
> expression well-typed.

[^1]: [Types and Programming Languages by Benjamin C. Pierce](https://www.cis.upenn.edu/~bcpierce/tapl)
[^2]: [An Introduction to Polymorphic Lambda Calculus by John C. Reynolds](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.7.9916)
