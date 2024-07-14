WORLD=example:host/host

main.wasm: main.wat
	wasm-tools component embed ./wit/ $< -o $@ --world $(WORLD)

main.component.wasm: main.wasm
	wasm-tools component new $< -o $@

run: main.component.wasm
	wasmtime run -S cli=y $<
	echo $$?
