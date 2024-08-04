(module
  (import "wasi:cli/stdout@0.2.0" "get-stdout" (func $get_stdout (result i32)))
  (import "wasi:io/streams@0.2.0" "[method]output-stream.blocking-write-and-flush" (func $output_stream_write_flush (param i32 i32 i32 i32)))

  (data (i32.const 0) "") ;; 4
  (data (i32.const 4) "Hi\n") ;; 3
  (data (i32.const 8) "0x00000000\n") ;; 18

  (global $__ret__literal_ptr_raw i32 (i32.const 0))
  (global $__hi__literal_ptr_raw i32 (i32.const 4))
  (global $__buffer__literal_ptr_raw i32 (i32.const 8))

  (global $__free_mem (mut i32) (i32.const 26))

  (func $write_flush (param $stream i32) (param $ptr i32) (param $len i32) (result i32)
      ;; pass four args to write method
      ;; stdout handle, memory pointer, lentgh of data and mem pointer to store result
      (call $output_stream_write_flush (local.get $stream) (local.get $ptr) (local.get $len) (global.get $__ret__literal_ptr_raw))
      (i32.load (global.get $__ret__literal_ptr_raw))
  )

  (func $log (param $ptr i32) (param $len i32) (result i32)
      (local $stdout i32)

      ;; get stdout handle because you cant just assume its 0
      ;; everyone knows that magic constants are bad and unix isnt
      ;; well designed in this department
      (local.set $stdout (call $get_stdout))

      (call $write_flush (local.get $stdout) (local.get $ptr) (local.get $len))
  )
  (export "erdump#log" (func $log))

  (func $hexlog (param $value i32) (result i32)
      (local $buf i32)
      (local $temp i32)
      (local $buflen i32)
      (local $len i32)
      (local.set $buf (i32.add (i32.const 9) (global.get $__buffer__literal_ptr_raw)))
      (local.set $len (i32.const 8))

      (loop $loop
      (local.get $value)
      (i32.and (i32.const 0xF))
      (local.set $temp)
      (if (i32.le_u (local.get $temp) (i32.const 9))
          (then
            (i32.store8 (local.get $buf) (i32.add (i32.const 0x30) (local.get $temp)))
          )
          (else
            (i32.store8 (local.get $buf) (i32.add (i32.const 0x37) (local.get $temp)))
          )
      )
      (local.set $buf (i32.sub (local.get $buf) (i32.const 1)))
      (local.set $value (i32.shr_u (local.get $value) (i32.const 4)))

      (local.set $len (i32.sub (local.get $len) (i32.const 1)))
      (local.get $len)
      (if (i32.eqz) (then) (else (br $loop)))
      )

      (call $log (global.get $__buffer__literal_ptr_raw ) (i32.const 11))
  )

  (export "erdump#hexlog_1" (func $hexlog))

  (func $alloc (param $align i32) (param $size i32) (result i32)
      (local $tmp i32)
      (local $ret i32)
      (local.set $ret (global.get $__free_mem))

      (local.set $tmp (i32.ctz (local.get $align)))
      (i32.shl
        (i32.shr_u (local.get $ret) (local.get $tmp))
        (local.get $tmp)
      )
      (local.set $ret)
      (local.set $ret (i32.add (local.get $ret) (local.get $align)))
      (global.set $__free_mem (i32.add (local.get $ret) (local.get $size)))
      (local.get $ret)
  )
  (export "erdump#alloc" (func $alloc))

  (func $read_erl_mem (param $erl_val i32) (param $mem_buffer i32) (result i32)
    (local $their_ptr i32)
    (local $len i32)
    (local $int_v i32)
    (local $mem_start i32)
    (local.set $mem_start (local.get $mem_buffer))

    (loop $loop
    (block $find_type
    ;; 0xF is int
    (if (i32.eq (i32.const 0xF) (i32.and (i32.const 0xF) (local.get $erl_val)))
      (then
        (local.set $int_v (i32.shr_u (local.get $erl_val) (i32.const 4)))
        (i32.store (local.get $mem_buffer) (local.get $int_v))
        (i32.const 4)
        (local.set $mem_buffer (i32.add (local.get $mem_buffer)))
        (br $find_type)
      )
    )
    ;; 0b10 is mem pointer
    (if (i32.eq (i32.const 0x2) (i32.and (i32.const 0x3) (local.get $erl_val)))
      (then
        (local.set $their_ptr (i32.shr_u (local.get $erl_val) (i32.const 2)))
        (local.set $erl_val (i32.load (local.get $their_ptr)))
        (br $loop)
      )
    )
    ;; 0b01 is list head pointer
    (if (i32.eq (i32.const 0x1) (i32.and (i32.const 0x3) (local.get $erl_val)))
      (then
        (call
          $read_erl_mem
          (i32.load (i32.add (i32.const 4) (local.get $their_ptr)))
          (local.get $mem_buffer)
        )
        (local.set $mem_buffer (i32.add (local.get $mem_buffer)))

        (local.set
          $their_ptr
          (i32.shr_u (local.get $erl_val) (i32.const 2))
        )
        (local.set $erl_val (i32.load (local.get $their_ptr)))

        (if (i32.eq (local.get $erl_val) (i32.const 0x3b))
          (then (br $find_type))
        )

        (br $loop)
        ;; (br $find_type)
      )
    )

    (if (i32.eq (i32.const 0x3b) (local.get $erl_val))
      (then
        ;; null
        (i32.store (local.get $mem_buffer) (i32.const 0x4C4C554E))
        (i32.const 4)
        (local.set $mem_buffer (i32.add (local.get $mem_buffer)))
        (br $find_type)
      )
    )

    ;; type is unknow to us, dump it!
    ;;; (i32.store (local.get $mem_buffer) (local.get $erl_val)) ;; this should be a trap
    ;;; (local.set $mem_buffer (i32.add (local.get $mem_buffer) (i32.const 4)))

    (unreachable)

    );; end find_type
    );; end loop

    (local.set $len (i32.sub (local.get $mem_buffer) (local.get $mem_start)))
    (local.get $len)
  )
  (export "erdump#dump" (func $read_erl_mem ))

  (func $write_str (param $mem i32) (param $len i32) (result i32)
    (local $idx i32)
    (local $ptr i32)
    (local $ret i32)
    (local $erlen i32)
    (local.set $ptr (global.get $__free_mem))
    (local.set $idx (i32.const 0))
    (local.set $ret (local.get $ptr))

    ;; For N len string, allocate (N+1) * 8 mem
    (local.set
      $erlen
      (i32.mul (i32.const 8) (i32.add (i32.const 1) (local.get $len)))
    )

    (global.set $__free_mem
      (i32.add (local.get $ptr) (local.get $erlen))
    )
    (loop $loop
      (if (i32.eqz (local.get $len))
        (then (nop))
        (else
          (i32.store
            (local.get $ptr)
            ;; list pointer to skip over next 4 bytes
            (i32.or (i32.shl (i32.const 4) (i32.const 2)) (i32.const 1))
          )
          (local.set $ptr (i32.add (i32.const 4) (local.get $ptr)))

          (i32.store
            (local.get $ptr)
            (i32.or
              (i32.const 0xF)
              (i32.shl
                (i32.and (i32.load (local.get $mem)) (i32.const 0xFF))
                (i32.const 4)
              )
            )
          )
          (local.set $ptr (i32.add (i32.const 4) (local.get $ptr)))
          (local.set $mem (i32.add (i32.const 1) (local.get $mem)))

          (local.set $len (i32.sub (local.get $len) (i32.const 1)))
          (br $loop)
        )
      )
    )
    (i32.store (local.get $ptr) (i32.const 0x3b))
    (local.set $ptr (i32.add (i32.const 4) (local.get $ptr)))
    (i32.store (local.get $ptr) (i32.const 0x0))

    (i32.or (i32.shl (local.get $ret) (i32.const 2)) (i32.const 2))
    ;; (local.get $ret)
  )

  (export "erdump#write_str" (func $write_str))

  (func $write_buf (param $mem i32) (param $len i32) (result i32)
    (local $ptr i32)
    (local $ret i32)
    (local $erlen i32)

    ;; For N len string, allocate (N + (2 * 4)) mem
    (local.set $erlen (i32.add (i32.const 8) (local.get $len)))

    ;; word align size
    (i32.shl
      (i32.shr_u (local.get $erlen) (i32.const 2))
      (i32.const 2)
    )
    (i32.add (i32.const 4))
    (local.set $erlen)

    (local.set $ptr (call $alloc (i32.const 4) (local.get $erlen)))
    (local.set $ret (local.get $ptr))

    ;; write header
    (i32.store (local.get $ptr) (i32.const 0x24)) ;; 0 tag heap binary
    (local.set $ptr (i32.add (i32.const 4) (local.get $ptr)))

    (i32.store ;; 1 binary size in bits
      (local.get $ptr)
      (i32.shl (local.get $len) (i32.const 3))
    )
    (local.set $ptr (i32.add (i32.const 4) (local.get $ptr)))

    (block $exit
    (loop $loop
      (if (i32.eqz (local.get $len))
        (then (br $exit))
      )

      (i32.store8 (local.get $ptr) (i32.load8_u (local.get $mem)))

      (local.set $ptr (i32.add (i32.const 1) (local.get $ptr)))
      (local.set $mem (i32.add (i32.const 1) (local.get $mem)))

      (local.set $len (i32.sub (local.get $len) (i32.const 1)))
      (br $loop)
    )
    )

    (i32.or (i32.shl (local.get $ret) (i32.const 2)) (i32.const 2))
  )
  (export "erdump#write_buf" (func $write_buf))

)

