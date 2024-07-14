CLI_WORLD=example:host

%.wasm: %.wat
	wasm-tools component embed ./wit/ $< -o $@ --world $(CLI_WORLD)/$*

%.component.wasm: %.wasm
	wasm-tools component new $< -o $@

run: cli.component.wasm
	wasmtime run -S cli=y $<
	echo $$?

serve: http.component.wasm
	wasmtime serve -S cli=y $<
	echo $$?
