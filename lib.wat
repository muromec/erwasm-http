(module
  (import "eractor" "run-actor" (func $run-actor (param (ref $cont-0))))
  (import "eractor" "new-mb" (func $new-mb (result i32)))
  (import "eractor" "recv-from-mb" (func $recv-from-mb (param i32) (result i32)))

  (import "elib" "dispatch_2" (func $dispatch2 (param i32 i32) (result i32)))

  (type $func (func))
  (type $cont (cont $func))

  (type $func-2 (func (param i32 i32))) ;; [i32, i32] -> [i32]
  (type $cont-2 (cont $func-2)) ;; cont ([i32 i32] -> [i32])

  (func $__dispatch (param $arg0 i32) (param $arg1 i32)
    (call $dispatch2 (local.get $arg0) (local.get $arg1)) (drop)
  )
  (elem declare func $__dispatch)

  (func $dispatch (param $arg0 i32) (result i32)
    (local $ret i32)
    (local $self i32)
    (local.set $self (call $new-mb))
    (
      cont.bind $cont-2 $cont
      (local.get $arg0)
      (local.get $self)
      (cont.new $cont-2 (ref.func $__dispatch))
    )
    (call $run-actor)
    (call $recv-from-mb (local.get $self))
  )
  (export "lib#dispatch" (func $dispatch))
)
