(module
  (import "wasi:cli/stdout@0.2.0" "get-stdout" (func $get_stdout (result i32)))
  (import "wasi:io/streams@0.2.0" "[method]output-stream.write" (func $output_stream_write (param i32 i32 i32 i32)))
  (import "wasi:io/streams@0.2.0" "[method]output-stream.blocking-write-and-flush" (func $output_stream_write_flush (param i32 i32 i32 i32)))
  (import "wasi:http/types@0.2.0" "[method]incoming-request.method" (func $get_method (param i32 i32)))
  (import "wasi:http/types@0.2.0" "[static]response-outparam.set" (func $response_set (param i32 i32 i32 i32 i64 i32 i32 i32 i32)))
  (import "wasi:http/types@0.2.0" "[constructor]outgoing-response" (func $response_make (param i32) (result i32)))
  (import "wasi:http/types@0.2.0" "[constructor]fields" (func $fields_make (result i32)))
  (import "wasi:http/types@0.2.0" "[method]outgoing-response.body" (func $get_response_body (param i32 i32)))
  (import "wasi:http/types@0.2.0" "[method]outgoing-body.write" (func $body_write (param i32 i32)))
  (import "wasi:http/types@0.2.0" "[static]outgoing-body.finish" (func $body_finish (param i32 i32 i32 i32)))
  (import "wasi:http/types@0.2.0" "[method]fields.append" (func $fields_append (param i32 i32 i32 i32 i32 i32)))
  (import "wasi:http/types@0.2.0" "[resource-drop]outgoing-response" (func $drop_response (param i32)))
  (import "wasi:http/types@0.2.0" "[resource-drop]response-outparam" (func $drop_res (param i32)))
  (import "wasi:http/types@0.2.0" "[resource-drop]fields" (func $drop_fields (param i32)))
  (import "wasi:io/streams@0.2.0" "[resource-drop]output-stream" (func $drop_stream (param i32)))


  (memory 1)
  (export "memory" (memory 0))

  (data (i32.const 0) "\00\00\00\00") ;; ret

  (data (i32.const 4) "Hello world!\n") ;; 13
  (data (i32.const 18) "->realloc\n") ;; 10

  (data (i32.const 40) "GET\n")
  (data (i32.const 50) "HEAD\n")
  (data (i32.const 60) "POST\n")
  (data (i32.const 70) "PUT\n") 
  (data (i32.const 80) "DELETE\n")
  (data (i32.const 90) "CONNECT\n")
  (data (i32.const 100) "OPTIONS\n")
  (data (i32.const 110) "TRACE\n")
  (data (i32.const 120) "PATCH\n")
  (data (i32.const 130) "Content-Type") ;; 12
  (data (i32.const 142) "text/html") ;; 9
  (data (i32.const 152) "Content-Length") ;; 14
  (data (i32.const 166) "0") ;; 1

  (func $strlen (param $ptr i32) (param $limit i32) (result i32)
    (local $len i32)
    (local.set $len (i32.const 0))
    ;; (call $log (local.get $ptr) (i32.const 1)) (drop)

    (loop $l
      (i32.load8_u (local.get $ptr))
      (if (i32.eqz) 
        (then
          (local.get $len)
          return
        )
      )
      (local.set $len (i32.add (local.get $len) (i32.const 1)))
      (local.set $ptr (i32.add (local.get $ptr) (i32.const 1)))
      ;; (call $log (local.get $ptr) (i32.const 1))
 
      (if (i32.ge_u (local.get $len) (local.get $limit))
        (then
          (local.get $len)
          return
        )
      )
      br $l
    )
    (local.get $ptr)
  )

  (func $ishead (param $ptr i32) (result i32)
      ;; HEAD is 4 bytes, exactly one i32 value
      (i32.eq (i32.load (local.get $ptr)) (i32.load (i32.const 50)))
  )

  (func $write (param $stream i32) (param $ptr i32) (param $len i32) (result i32)
      ;; pass four args to write method
      ;; stdout handle, memory pointer, lentgh of data and mem pointer to store result
      (call $output_stream_write (local.get $stream) (local.get $ptr) (local.get $len) (i32.const 0))
      (i32.load (i32.const 0))
  )
  (func $write_flush (param $stream i32) (param $ptr i32) (param $len i32) (result i32)
      ;; pass four args to write method
      ;; stdout handle, memory pointer, lentgh of data and mem pointer to store result
      (call $output_stream_write_flush (local.get $stream) (local.get $ptr) (local.get $len) (i32.const 0))
      (i32.load (i32.const 0))
  )

  (func $log (param $ptr i32) (param $len i32) (result i32)
      (local $stdout i32)

      ;; get stdout handle because you cant just assume its 0
      ;; everyone knows that magic constants are bad and unix isnt
      ;; well designed in this department
      (local.set $stdout (call $get_stdout))

      (call $write_flush (local.get $stdout) (local.get $ptr) (local.get $len))
  )

  ;; what realloc
  (func $cabi_realloc (param i32 i32 i32 i32) (result i32)
      (call $log (i32.const 18) (i32.const 10))
      (drop)
      (i32.const 0)
  )
  (export "cabi_realloc" (func $cabi_realloc))


  (func $hello
      (call $log (i32.const 4) (i32.const 13))
      (drop)
  )

  (func $handle (param $req i32) (param $res i32)
      (local $method i32)
      (local $response i32)
      (local $headers i32)
      (local $trailers i32)
      (local $body i32)
      (local $body_stream i32)

      (call $get_method (local.get $res) (i32.const 32))
      (i32.load (i32.const 32))
      (i32.mul (i32.const 10))
      (i32.add (i32.const 40))
      (local.set $method)

      (local.set $headers (call $fields_make))
      ;; (local.set $trailers (call $fields_make))

      (call $fields_append
        (local.get $headers)
        (i32.const 130) (i32.const 12)
        (i32.const 142) (i32.const 9)
        (i32.const 32)
      )
      (if (call $ishead (local.get $method))
        (then
          ;;; set length to 0
          (call $fields_append
            (local.get $headers)
            (i32.const 152) (i32.const 14)
            (i32.const 166) (i32.const 1)
            (i32.const 32)
          )
        )
      )

      (local.set $response (call $response_make (local.get $headers)))
      (call $get_response_body (local.get $response) (i32.const 32))

      ;; response get_response_body accepts memory offset (i32.const 32)
      ;; where it stores result type
      ;; first check that result at offset 32 is marked as ok (fourt bytes zero)
      ;; then load the handle to the body from offset 36 (after four zero bytes)
      (if (i32.eqz (i32.load (i32.const 32))) (then nop) (else return))
      (i32.load (i32.const 36))
      (local.set $body)

      (call $body_write (local.get $body) (i32.const 32))
      ;; see above regarding result
      (if (i32.eqz (i32.load (i32.const 32))) (then nop) (else return))
      (i32.load (i32.const 36))
      (local.set $body_stream)

      (if (call $ishead (local.get $method))
        (then nop)
        (else
          (call $write_flush (local.get $body_stream) (i32.const 4) (i32.const 13)) (drop)
        )
      )

      (call $drop_stream (local.get $body_stream))
      (call $body_finish (local.get $body) (i32.const 0) (local.get $trailers) (i32.const 32))
      (if (i32.eqz (i32.load (i32.const 32))) (then nop) (else return))

      (call
        $response_set
        (local.get $res)
        (i32.const 0) (local.get $response) (i32.const 0)
        (i64.const 0)
        (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0)
      )

      ;; (call $drop_res (local.get $res))
      ;; (call $drop_response (local.get $response))
      ;; (call $drop_fields (local.get $headers))
      (call $hello)
  )
  (export "wasi:http/incoming-handler@0.2.0#handle" (func $handle))
)
