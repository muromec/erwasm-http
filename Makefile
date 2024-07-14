CLI_WORLD=example:host

%.wasm: %.wat wit/world.wit
	wasm-tools component embed ./wit/ $< -o $@ --world $(CLI_WORLD)/$*

%.component.wasm: %.wasm
	wasm-tools component new $< -o $@

serve: http.component.wasm
	wasmtime serve -S cli=y $<
	echo $$?
