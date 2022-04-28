# pierce-fullpoly

The `fullpoly` implementation from 
[Benjamin C. Pierce's book Types and Programming Languages](https://www.cis.upenn.edu/~bcpierce/tapl).

I've made small changes to:
1. Compile it with current OCaml versions, and
2. Build with Dune.

Dependencies are locked. Install them:

```
$ opam install . --locked --deps-only
```

Build the binary:

```
$ dune clean; dune build

$ ./_build/default/bin/main.exe
Error: You must specify an input file
```

Or, build and execute in one command:

```
dune exec ./bin/main.exe -- test/test.f
```
