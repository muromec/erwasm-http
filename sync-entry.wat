(module
  (import "elib" "dispatch_2" (func $dispatch2 (param i32 i32) (result i32)))

  (func $dispatch (param $arg0 i32) (result i32)
    (call $dispatch2 (local.get $arg0) (i32.const 0x3B))
  )
  (export "lib#dispatch" (func $dispatch))
)
