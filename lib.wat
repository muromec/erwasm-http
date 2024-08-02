(module
  (import "elib" "dispatch_2" (func $dispatch2 (param i32 i32) (result i32)))

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
)
