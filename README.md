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
