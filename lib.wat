(module

  (import "erdump" "alloc" (func $alloc (param i32 i32) (result i32)))
  (import "erdump" "hexlog" (func $hexlog (param i32) (result i32)))

  (import "elib" "dispatch-a2" (func $dispatch2 (param i32 i32) (result i32)))

  (type $func-a0 (func (result i32)))       ;; [] -> [i32]
  (type $cont-a0 (cont $func-a0)) ;; cont ([] -> [i32])

  (type $func-a2 (func (param i32 i32) (result i32))) ;; [i32, i32] -> [i32]
  (type $cont-a2 (cont $func-a2)) ;; cont ([i32 i32] -> [i32])

  (tag $yield-i32 (param i32))                   ;; [i32]

  (table $dispatch_table 2 funcref)

  (memory 1)

  (func $rungen (param $cref (ref $cont-a0)) (result i32)
      (local $ret i32)
      (local $yret i32)
      (local $cont (ref null $cont-a0))
      (local.set $cont (local.get $cref))
      (local.set $ret (i32.const 0x3b))

      ;; Quick refresher on WASM:
      ;; doing br $loop_name from inside the loop jump to the start of the loop
      ;; doing br $block_name from inside of the block jumps OUT of the block to
      ;; the next command.
      ;; You cannot jump into the loop or into the block from outside a-la goto.

      (loop $scheduler_loop   ;; main loop
        (block $on_yield  (result i32) (result (ref null $cont-a0))
          ;; we get here normally through the loop
          ;; it looks like suspend will bring us to this line,
          ;; but this is not true

          ;; we run resume twice and the value of cont
          ;; after each run is invalidated.
          ;; we tull resume to jump OUT of this block when yield happend
          (resume $cont-a0 (tag $yield-i32 $on_yield) (local.get $cont))
          ;; we end up here once continuation is fully consumed
          ;; so we return empty reference
          (ref.null $cont-a0)
        )
        ;; we jump to here when suspend $yield is called.
        ;; we also end up here when block $on_yield exits normally (with ref.null)
        ;; in both cases, set cont to the result of block
        (local.set $cont)
        (local.set $yret)

        (if (ref.is_null (local.get $cont))
          (then nop)
          (else (local.set $ret (local.get $yret)))
        )

        ;; if cont is NOT set to null, enter the next iteration of the loop
        (ref.is_null (local.get $cont))
        (if (i32.eqz) (then (br $scheduler_loop)))
      )
      ;; br main jumps to here
      (local.get $ret)
  )

  (func $dispatch (param $arg0 i32) (param $arg1 i32) (result i32)
    (
      cont.bind $cont-a2 $cont-a0
      (local.get $arg0)
      (local.get $arg1)
      (cont.new $cont-a2 (ref.func $dispatch2))
    )
    (call $rungen)
  )
  (export "lib#dispatch" (func $dispatch))


  (func $make_match_context (param $mem i32) (param $offset i32) (result i32)
    (local $ptr i32)
    (local $ret i32)

    (if (i32.eq (i32.and (local.get $mem) (i32.const 2)) (i32.const 2))
        (then nop)
        (else unreachable)
    )
    (i32.load (i32.shr_u (local.get $mem) (i32.const 2)))
    (i32.and (i32.const 0x3F))

    ;; reufe existing context
    (if (i32.eq (i32.const 4))
      (then
        (return (local.get $mem))
      )
    )

    (local.set $ptr (call $alloc (i32.const 4) (i32.const 16)))
    (local.set $ret (local.get $ptr))

    ;; write header
    (i32.store (local.get $ptr) (i32.const 0x04)) ;; 0 tag match context
    (local.set $ptr (i32.add (i32.const 4) (local.get $ptr)))

    (i32.store (local.get $ptr) (local.get $mem)) ;; 1 binary ref
    (local.set $ptr (i32.add (i32.const 4) (local.get $ptr)))

    (i32.store (local.get $ptr) (local.get $offset)) ;; 2 offset
    (local.set $ptr (i32.add (i32.const 4) (local.get $ptr)))

    (i32.store (local.get $ptr) (i32.const 0x00)) ;; 3 saved state
    (local.set $ptr (i32.add (i32.const 4) (local.get $ptr)))

    (i32.or (i32.shl (local.get $ret) (i32.const 2)) (i32.const 2))
  )
  (export "lib#make_match_context" (func $make_match_context))

  (func $bs_integer (param $ctx i32) (result i32)
    (local $ptr i32)
    (local $bin_ptr i32)
    (local $temp i32)
    (local $offset i32)

    (if (i32.eq (i32.and (local.get $ctx) (i32.const 2)) (i32.const 2))
        (then nop)
        (else unreachable)
    )
    (local.set $ptr (i32.shr_u (local.get $ctx) (i32.const 2)))

    (i32.load (local.get $ptr))
    (i32.and (i32.const 0x3F))
    (if (i32.eq (i32.const 4)) ;; has to be match ctx
        (then nop)
        (else unreachable)
    )

    (i32.load (i32.add (local.get $ptr) (i32.const 4)))
    (local.set $bin_ptr)

    (i32.load (i32.add (local.get $ptr) (i32.const 8)))
    (local.set $offset)

    (if (i32.eq (i32.and (local.get $bin_ptr) (i32.const 2)) (i32.const 2))
        (then nop)
        (else unreachable)
    )
    (local.set $bin_ptr (i32.shr_u (local.get $bin_ptr) (i32.const 2)))

    (i32.load (local.get $bin_ptr))
    (i32.and (i32.const 0x3F))
    (if (i32.eq (i32.const 0x24)) ;; has to be heap binary
        (then nop)
        (else unreachable)
    )
    (i32.add (local.get $offset) (i32.add (local.get $bin_ptr) (i32.const 8)))

    (i32.load8_u) 
    (local.set $temp)

    (local.set $offset (i32.add (local.get $offset) (i32.const 1)))
    (i32.store (i32.add (local.get $ptr) (i32.const 8)) (local.get $offset))

    (i32.shl (local.get $temp) (i32.const 4))
    (i32.or (i32.const 0xF))
  )

  (func $bs_ensure_at_least (param $ctx i32) (param $unit_size_bits i32) (param $unit_count i32) (result i32)
    (local $ptr i32)
    (local $bin_ptr i32)
    (local $size i32)
    (local $offset i32)
    (local $expect_size i32);

    (if (i32.eq (i32.and (local.get $ctx) (i32.const 2)) (i32.const 2))
        (then nop)
        (else unreachable)
    )
    (local.set $ptr (i32.shr_u (local.get $ctx) (i32.const 2)))

    (i32.load (local.get $ptr))
    (i32.and (i32.const 0x3F))
    (if (i32.eq (i32.const 4)) ;; has to be match ctx
        (then nop)
        (else unreachable)
    )

    (i32.load (i32.add (local.get $ptr) (i32.const 4)))
    (local.set $bin_ptr)

    (if (i32.eq (i32.and (local.get $bin_ptr) (i32.const 2)) (i32.const 2))
        (then nop)
        (else unreachable)
    )
    (local.set $bin_ptr (i32.shr_u (local.get $bin_ptr) (i32.const 2)))

    (i32.load (i32.add (local.get $ptr) (i32.const 8)))
    (local.set $offset)
    ;; (call $hexlog (local.get $offset)) (drop)

    (i32.load (local.get $bin_ptr))
    (i32.and (i32.const 0x3F))
    (if (i32.eq (i32.const 0x24)) ;; has to be heap binary
        (then nop)
        (else unreachable)
    )
    (i32.load (i32.add (local.get $bin_ptr) (i32.const 4)))
    (local.set $size)
    (local.set $size (i32.sub (local.get $size) (local.get $offset)))

    ;; get the size in bits
    (local.set $size (i32.shl (local.get $size) (i32.const 3)))

    (local.set $expect_size (i32.mul (local.get $unit_size_bits) (local.get $unit_count)))

    (i32.ge_u (local.get $size) (local.get $expect_size))
  )

)
