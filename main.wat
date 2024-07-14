(module
  (import "wasi:cli/stdout@0.2.0" "get-stdout" (func $get_stdout (result i32)))
  (import "wasi:io/streams@0.2.0" "[method]output-stream.blocking-write-and-flush" (func $output_stream_write_flush (param i32 i32 i32 i32)))

  (memory 1)
  (export "memory" (memory 0))

  (data (i32.const 0) "\00\00\00\00")
  (data (i32.const 4) "Hello world!\n")

  (func $run (result i32)
      (local $stdout i32)

      ;; get stdout handle because you cant just assume its 0
      ;; everyone knows that magic constants are bad and unix isnt
      ;; well designed in this department
      (local.set $stdout (call $get_stdout))

      ;; pass four args to write method
      ;; stdout handle, memory pointer, lentgh of data and mem pointer to store result
      (call $output_stream_write_flush (local.get $stdout) (i32.const 4) (i32.const 13) (i32.const 0))

      ;; check that result of write operation stored at mem offset 0
      ;; is indeed 0 which means its a ok
      ;; disregard the above comment about magic constants and proceed to return
      ;; zero as a success code conforming to cli interface
      (i32.eqz (i32.load (i32.const 0)))
      (i32.eqz)
  )
  (export "wasi:cli/run@0.2.0#run" (func $run))
)
