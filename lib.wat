(module

;;  (import "example:host/qa" "question-a0" (func $question (result i32)))
;;  (import "example:host/qa" "answer-a0" (func $answer (result i32)))

  (type $func (func))       ;; [] -> []
  (type $cont (cont $func)) ;; cont ([] -> [])
  (type $func-32 (func (result i32)))       ;; [] -> [i32]
  (type $cont-32 (cont $func-32)) ;; cont ([] -> [i32])
  (tag $yield)                   ;; [i32]
  (tag $yield-i32 (param i32))                   ;; [i32]

  (type $i32-i32 (func (param i32) (result i32)))
  (type $r32 (func (result i32)))
 
  (table $dispatch_table 2 funcref)
  (export "example:host/runlib#table" (table $dispatch_table))

  (memory 1)


  (func $target
  )
  (elem declare funcref (ref.func $target))
;;  (elem (i32.const 0) $question)
;;  (elem (i32.const 1) $answer)

  (func $rungen (result i32)
      (local $ret i32)
      (local $yret i32)
      (local $cont1 (ref null $cont)) ;; Declare local variable referencing suspended function
      (local.set $cont1 (cont.new $cont (ref.func $target))) ;; create suspended function for $thread

      ;; Quick refresher on WASM:
      ;; doing br $loop_name from inside the loop jump to the start of the loop
      ;; doing br $block_name from inside of the block jumps OUT of the block to
      ;; the next command.
      ;; You cannot jump into the loop or into the block from outside a-la goto.

      (loop $scheduler_loop   ;; main loop
        (block $on_yield  (result i32) (result (ref null $cont))
          ;; we get here normally through the loop
          ;; it looks like suspend will bring us to this line,
          ;; but this is not true

          ;; we run resume twice and the value of cont1
          ;; after each run is invalidated.
          ;; we tull resume to jump OUT of this block when yield happend
          (resume $cont (tag $yield-i32 $on_yield) (local.get $cont1))
          ;; we end up here once continuation is fully consumed
          ;; so we return empty reference
          (i32.const 0)
          (ref.null $cont)
        )
        ;; we jump to here when suspend $yield is called.
        ;; we also end up here when block $on_yield exits normally (with ref.null)
        ;; in both cases, set cont1 to the result of block
        (local.set $cont1)
        (local.set $yret)

        (if (ref.is_null (local.get $cont1))
          (then nop)
          (else (local.set $ret (local.get $yret)))
        )

        ;; if cont1 is NOT set to null, enter the next iteration of the loop
        (ref.is_null (local.get $cont1))
        (if (i32.eqz) (then (br $scheduler_loop)))
      )
      ;; br main jumps to here
    (local.get $ret)
  )

  (func $schedule (param $fn_ref i32) (result i32)
    (call_indirect (type $r32) (local.get $fn_ref))
  )

  (export "example:host/runlib#schedule" (func $schedule))

  (func $yield_fn
    (i32.const 0)
    (suspend $yield-i32)
  )
  (export "example:host/runlib#yield" (func $yield_fn))

  (func $register (param $r i32)
  )
  (export "example:host/runlib#register" (func $register))

)
