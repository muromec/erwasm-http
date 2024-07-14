# Readme

This is a minimal example of WASI component implementing wasi:cli/run@0.2.0 interface in WASM.

Normally this will be a compilation target for rust and friends, but you can of course
run your normal `.wat` files like this too.

## Why

Wasmtime documentation ends with a cliffhandger here:

    Write your command component. The component's world (.wit file) must import 
    the interface exported from the library. Write the command to call 
    the library's API.
    See the language support guide for how to call an imported interface.


and doesn't go further exmplaining how to write command component and call your library component from it. Here is is how


## How

See Makefile for reference. You can clone the repo and do `make run` to see the result, which is command executing successfully or failing depending on what constant you put in `main.wat`. Constant can be only 0 and 1 because people who wrote don't UNIX (alternatively they UNIXed too much and figured out nobody logs exact error codes anyway).

## Dependencies

You need wasm-tool and wasmtime to run this.
