CLI_WORLD=example:host
WFLAGS=-Wfunction-references=y
WFLAGSFX=-Wfunction-references=y -Wexceptions=y -Wtyped-continuations=y

SOURCES=http.wat erdump.wat jsone_decode.wat elib.wat

DEPS=erwasm/minibeam/math.wat erwasm/minibeam/minibeam_bs.wat erwasm/minibeam/minibeam_list.wat erwasm/minibeam/minibeam_eq.wat erwasm/minibeam/minibeam_tuple.wat erwasm/minibeam/shim.wat

SOURCES_SYNC=$(SOURCES) $(DEPS) sync-entry.wat
SOURCES_ASYNC=$(SOURCES) $(DEPS) async-entry.wat erwasm/minibeam/minibeam_proc.wat

%.S: %.erl
	erlc -S $<

%.wat: %.S
	python erwasm/erwasmc.py $< $@

%.wasm: %.wat wit/world.wit
	wasm-tools component embed ./wit/ $< -o $@ --world $(CLI_WORLD)/$*

%-component.wasm: %.wasm
	wasm-tools component new $< -o $@

runtime-sync.wat: $(SOURCES_SYNC)
	python watcat/watmerge.py $@ $^

runtime-async.wat: $(SOURCES_ASYNC)
	python watcat/watmerge.py $@ $^

serve: runtime-sync-component.wasm
	wasmtime serve -S cli=y $< $(WFLAGS)
	echo $$?

servefx: runtime-async-component.wasm
	wasmtime serve -S cli=y $< $(WFLAGSFX)
	echo $$?
