CLI_WORLD=example:host
WFLAGS=-Wfunction-references=y -Wexceptions=y -Wtyped-continuations=y


%.S: %.erl
	erlc -S $<

%.wat: %.S
	python erwasm/erwasmc.py $< $@

%.wasm: %.wat wit/world.wit
	wasm-tools component embed ./wit/ $< -o $@ --world $(CLI_WORLD)/$*

%-component.wasm: %.wasm
	wasm-tools component new $< -o $@

runtime.wat: http.wat elib.wat erdump.wat lib.wat
	python watcat/watmerge.py $@ $^

serve: runtime-component.wasm
	wasmtime serve -S cli=y $< $(WFLAGS)
	echo $$?
