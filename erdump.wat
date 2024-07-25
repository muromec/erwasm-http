(module
  (global $__free_mem (mut i32) (i32.const 0))

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

  (export "erdump#write_str", (func $write_str))
)

