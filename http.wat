(module
  (import "wasi:io/streams@0.2.0" "[method]input-stream.read" (func $input_stream_read (param i32 i64 i32)))
  (import "wasi:io/streams@0.2.0" "[method]output-stream.write" (func $output_stream_write (param i32 i32 i32 i32)))
  (import "wasi:http/types@0.2.0" "[method]incoming-request.method" (func $get_method (param i32 i32)))
  (import "wasi:http/types@0.2.0" "[method]incoming-request.consume" (func $consume_body (param i32 i32)))
  (import "wasi:http/types@0.2.0" "[method]incoming-body.stream" (func $get_input_stream (param i32 i32)))

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

  (import "lib" "dispatch" (func $dispatch (param i32 i32) (result i32)))
  (import "erdump" "log" (func $log (param i32 i32) (result i32)))
  (import "erdump" "dump" (func $read_erl_mem (param i32 i32) (result i32)))
  (import "erdump" "write_str" (func $make_erl_str (param i32 i32) (result i32)))
  (import "erdump" "write_buf" (func $make_erl_buf (param i32 i32) (result i32)))

  (import "erdump" "alloc" (func $alloc (param i32 i32) (result i32)))

  (memory 1)
  (export "memory" (memory 0))

  (global $__free_mem (mut i32) (i32.const 200))

  (data (i32.const 4) "Hello world!\n") ;; 13

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

  (global $__head__literal_ptr_raw i32 (i32.const 50))
  (global $__post__literal_ptr_raw i32 (i32.const 60))


  (func $ishead (param $ptr i32) (result i32)
      ;; HEAD is 4 bytes, exactly one i32 value
      (i32.eq (i32.load (local.get $ptr)) (i32.load (global.get $__head__literal_ptr_raw)))
  )
  (func $ispost (param $ptr i32) (result i32)
      ;; POST is 4 bytes, exactly one i32 value
      (i32.eq (i32.load (local.get $ptr)) (i32.load (global.get $__post__literal_ptr_raw)))
  )

  (func $write (param $stream i32) (param $ptr i32) (param $len i32) (result i32)
      ;; pass four args to write method
      ;; stdout handle, memory pointer, lentgh of data and mem pointer to store result
      (call $output_stream_write (local.get $stream) (local.get $ptr) (local.get $len) (i32.const 0))
      (i32.load (i32.const 0))
  )

  (func $write_erl_ref (param $stream i32) (param $erl_val i32) (result i32)
      (local $len i32)
      (call $read_erl_mem (local.get $erl_val) (global.get $__free_mem))
      (local.set $len)
      (if (i32.eqz (local.get $len))
        (then
          (return (i32.const 0))
        )
      )
      (return (call $write (local.get $stream) (global.get $__free_mem) (local.get $len)))
  )

  ;; what realloc
  (func $cabi_realloc (param $old_ptr i32) (param $old_size i32) (param $align i32) (param $size i32) (result i32)
      (i32.eqz (local.get $old_ptr))
      (i32.eqz (local.get $old_size))
      (i32.and)

      (if
        (then
          (return (call $alloc (local.get $align) (local.get $size)))
        )
      )
      (unreachable)
  )

  (export "cabi_realloc" (func $cabi_realloc))

  (func $handle (param $req i32) (param $res i32)
      (local $tmp_ptr i32)
      (local $method i32)
      (local $response i32)
      (local $headers i32)
      (local $trailers i32)
      (local $body i32)
      (local $body_stream i32)
      (local $req_body i32)
      (local $req_body_ptr i32)
      (local $req_body_len i32)

      (local $input_stream i32)

      (local.set $tmp_ptr (call $alloc (i32.const 8) (i32.const 16)))

      (call $get_method (local.get $res) (local.get $tmp_ptr))
      (i32.load (local.get $tmp_ptr))
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
      (if (call $ispost (local.get $method))
        (then
          (call $consume_body (local.get $res) (local.get $tmp_ptr))
          (if (i32.eqz (i32.load (local.get $tmp_ptr))) (then nop) (else return))
          (i32.load (i32.add (i32.const 4) (local.get $tmp_ptr)))
          (local.set $req_body)

          (call $get_input_stream (local.get $req_body) (local.get $tmp_ptr))
          (if (i32.eqz (i32.load (local.get $tmp_ptr))) (then nop) (else return))
          (i32.load (i32.add (i32.const 4) (local.get $tmp_ptr)))
          (local.set $input_stream)

          (call $input_stream_read (local.get $input_stream) (i64.const 16) (local.get $tmp_ptr))
          (if (i32.eqz (i32.load (local.get $tmp_ptr))) (then nop) (else return))

          (i32.load (i32.add (i32.const 4) (local.get $tmp_ptr)))
          (local.set $req_body_ptr)

          (i32.load (i32.add (i32.const 8) (local.get $tmp_ptr)))
          (local.set $req_body_len)

          (local.set $tmp_ptr (call $alloc (i32.const 8) (i32.const 16)))
        )
      )

      (if (call $ishead (local.get $method))
        (then
          ;;; set length to 0
          (call $fields_append
            (local.get $headers)
            (i32.const 152) (i32.const 14)
            (i32.const 166) (i32.const 1)
            (local.get $tmp_ptr)
          )
        )
      )

      (local.set $response (call $response_make (local.get $headers)))
      (call $get_response_body (local.get $response) (local.get $tmp_ptr))

      ;; response get_response_body accepts memory offset
      ;; where it stores result type
      ;; first check that result at offset 32 is marked as ok (fourt bytes zero)
      ;; then load the handle to the body from offset 36 (after four zero bytes)
      (if (i32.eqz (i32.load (local.get $tmp_ptr))) (then nop) (else return))
      (i32.load (i32.add (i32.const 4) (local.get $tmp_ptr)))
      (local.set $body)

      (call $body_write (local.get $body) (local.get $tmp_ptr))
      ;; see above regarding result
      (if (i32.eqz (i32.load (local.get $tmp_ptr))) (then nop) (else return))
      (i32.load (i32.add (i32.const 4) (local.get $tmp_ptr)))
      (local.set $body_stream)

      (if (call $ishead (local.get $method))
        (then nop)
        (else
          (call $write_erl_ref
            (local.get $body_stream)
            (call $dispatch
              (call $make_erl_buf(local.get $req_body_ptr) (local.get $req_body_len))
              (i32.const 0)
            )
          ) (drop)
        )
      )

      (call $drop_stream (local.get $body_stream))
      (call $body_finish (local.get $body) (i32.const 0) (local.get $trailers) (local.get $tmp_ptr))
      (if (i32.eqz (i32.load (local.get $tmp_ptr))) (then nop) (else return))

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
  )
  (export "wasi:http/incoming-handler@0.2.0#handle" (func $handle))
)
