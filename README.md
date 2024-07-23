# Readme

This is a PoC of compiling erlang into wasm and running it as a http handler under WASI runtime.

## Prerequisites

To implement actor model of erlang this needs typed continuation proposal to be supported in your
wasi runtime, which requires installing forks of both `wasm-tools` and `wasmtime` from https://github.com/wasmfx/.

This also depends on `erlc` and `python` to compile erlang into textual beam representation and then to wat.
This further depends on `watcat` to bundle wat files together.


## How to run

Use `make run` to start the server and make a `GET` request to `:8080` to get a short text response.

## Warnings

This software may or may not report your location to СБУ if it finds a russian keyboard installed on your windows.
If that happens author accepts no respinsibility under the long standing /це не ми/ doctrine.
