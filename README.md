# pierce-fullpoly

The `fullpoly` implementation from 
[Benjamin C. Pierce's book Types and Programming Languages](https://www.cis.upenn.edu/~bcpierce/tapl).

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

A note from the book:

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
