(module
  (global $__free_mem i32 (i32.const 0))

  (func $write_erl_mem (param $erl_val i32) (param $mem_buffer i32) (result i32)
    (local $their_ptr i32)
    (local $len i32)
    (local $int_v i32)
    (local $mem_start i32)
    (local.set $mem_start (local.get $mem_buffer))

    (loop $loop
    (block $find_type
    ;; 0xF is string
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
          $write_erl_mem
          (i32.load (i32.add (i32.const 4) (local.get $their_ptr)))
          (local.get $mem_buffer)
        )
        (local.set $mem_buffer (i32.add (local.get $mem_buffer)))

        (local.set
          $their_ptr
          (i32.add 
            (local.get $their_ptr)
            (i32.shr_u (local.get $erl_val) (i32.const 2))
          )
        )
        (local.set $erl_val (i32.load (local.get $their_ptr)))

        (if (i32.eq (local.get $erl_val) (i32.const 0x3b))
          (then (br $find_type))
        )

        (br $loop)
        ;; (br $find_type)
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
  (export "erdump#dump" (func $write_erl_mem ))
)

