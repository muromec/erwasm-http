
(module
    (import      "wasi:io/streams@0.2.0"       "[method]input-stream.read" 
        (func          $module_http_fn_input_stream_read 
            (param              i32               i64               i32 
            )
        )
    )
    (import      "wasi:io/streams@0.2.0"       "[method]output-stream.write" 
        (func          $module_http_fn_output_stream_write 
            (param              i32               i32               i32               i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[method]incoming-request.method" 
        (func          $module_http_fn_get_method 
            (param              i32               i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[method]incoming-request.consume" 
        (func          $module_http_fn_consume_body 
            (param              i32               i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[method]incoming-body.stream" 
        (func          $module_http_fn_get_input_stream 
            (param              i32               i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[static]response-outparam.set" 
        (func          $module_http_fn_response_set 
            (param              i32               i32               i32               i32               i64               i32               i32               i32               i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[constructor]outgoing-response" 
        (func          $module_http_fn_response_make 
            (param              i32 
            )
            (result              i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[constructor]fields" 
        (func          $module_http_fn_fields_make 
            (result              i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[method]outgoing-response.body" 
        (func          $module_http_fn_get_response_body 
            (param              i32               i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[method]outgoing-body.write" 
        (func          $module_http_fn_body_write 
            (param              i32               i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[static]outgoing-body.finish" 
        (func          $module_http_fn_body_finish 
            (param              i32               i32               i32               i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[method]fields.append" 
        (func          $module_http_fn_fields_append 
            (param              i32               i32               i32               i32               i32               i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[resource-drop]outgoing-response" 
        (func          $module_http_fn_drop_response 
            (param              i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[resource-drop]response-outparam" 
        (func          $module_http_fn_drop_res 
            (param              i32 
            )
        )
    )
    (import      "wasi:http/types@0.2.0"       "[resource-drop]fields" 
        (func          $module_http_fn_drop_fields 
            (param              i32 
            )
        )
    )
    (import      "wasi:io/streams@0.2.0"       "[resource-drop]output-stream" 
        (func          $module_http_fn_drop_stream 
            (param              i32 
            )
        )
    )
    (import      "wasi:cli/stdout@0.2.0"       "get-stdout" 
        (func          $module_erdump_fn_get_stdout 
            (result              i32 
            )
        )
    )
    (import      "wasi:io/streams@0.2.0"       "[method]output-stream.blocking-write-and-flush" 
        (func          $module_erdump_fn_output_stream_write_flush 
            (param              i32               i32               i32               i32 
            )
        )
    )
    (memory      1 
    )
    (export      "memory" 
        (memory          0 
        )
    )
    (global      $__free_mem 
        (mut          i32 
        )
        (i32.const          1318 
        )
    )
    (global      $module_http_fn___head__literal_ptr_raw       i32 
        (i32.const          50 
        )
    )
    (global      $module_http_fn___post__literal_ptr_raw       i32 
        (i32.const          60 
        )
    )
    (data
        (i32.const          4 
        )      "Hello world!\n" 
    )
    (data
        (i32.const          40 
        )      "GET\n" 
    )
    (data
        (i32.const          50 
        )      "HEAD\n" 
    )
    (data
        (i32.const          60 
        )      "POST\n" 
    )
    (data
        (i32.const          70 
        )      "PUT\n" 
    )
    (data
        (i32.const          80 
        )      "DELETE\n" 
    )
    (data
        (i32.const          90 
        )      "CONNECT\n" 
    )
    (data
        (i32.const          100 
        )      "OPTIONS\n" 
    )
    (data
        (i32.const          110 
        )      "TRACE\n" 
    )
    (data
        (i32.const          120 
        )      "PATCH\n" 
    )
    (data
        (i32.const          130 
        )      "Content-Type" 
    )
    (data
        (i32.const          142 
        )      "text/html" 
    )
    (data
        (i32.const          152 
        )      "Content-Length" 
    )
    (data
        (i32.const          166 
        )      "0" 
    )
    (global      $module_erdump_fn___ret__literal_ptr_raw       i32 
        (i32.const          200 
        )
    )
    (global      $module_erdump_fn___hi__literal_ptr_raw       i32 
        (i32.const          204 
        )
    )
    (global      $module_erdump_fn___buffer__literal_ptr_raw       i32 
        (i32.const          208 
        )
    )
    (data
        (i32.const          0 
        )      "" 
    )
    (data
        (i32.const          4 
        )      "Hi\n" 
    )
    (data
        (i32.const          8 
        )      "0x00000000\n" 
    )
    (global      $module_jsonepart_fn___4__literal_ptr_raw       i32 
        (i32.const          230 
        )
    )
    (global      $module_jsonepart_fn___4__literal_ptr_e       i32 
        (i32.const          922 
        )
    )
    (global      $module_jsonepart_fn___12__literal_ptr_raw       i32 
        (i32.const          238 
        )
    )
    (global      $module_jsonepart_fn___12__literal_ptr_e       i32 
        (i32.const          954 
        )
    )
    (global      $module_jsonepart_fn___20__literal_ptr_raw       i32 
        (i32.const          246 
        )
    )
    (global      $module_jsonepart_fn___20__literal_ptr_e       i32 
        (i32.const          986 
        )
    )
    (global      $module_jsonepart_fn___52__literal_ptr_raw       i32 
        (i32.const          278 
        )
    )
    (global      $module_jsonepart_fn___52__literal_ptr_e       i32 
        (i32.const          1114 
        )
    )
    (global      $module_jsonepart_fn___64__literal_ptr_raw       i32 
        (i32.const          290 
        )
    )
    (global      $module_jsonepart_fn___64__literal_ptr_e       i32 
        (i32.const          1162 
        )
    )
    (global      $module_jsonepart_fn___80__literal_ptr_raw       i32 
        (i32.const          306 
        )
    )
    (global      $module_jsonepart_fn___80__literal_ptr_e       i32 
        (i32.const          1226 
        )
    )
    (global      $module_jsonepart_fn___88__literal_ptr_raw       i32 
        (i32.const          314 
        )
    )
    (global      $module_jsonepart_fn___88__literal_ptr_e       i32 
        (i32.const          1258 
        )
    )
    (global      $module_jsonepart_fn___96__literal_ptr_raw       i32 
        (i32.const          322 
        )
    )
    (global      $module_jsonepart_fn___96__literal_ptr_e       i32 
        (i32.const          1290 
        )
    )
    (global      $module_jsonepart_fn___136__literal_ptr_raw       i32 
        (i32.const          362 
        )
    )
    (global      $module_jsonepart_fn___136__literal_ptr_e       i32 
        (i32.const          1450 
        )
    )
    (global      $module_jsonepart_fn___148__literal_ptr_raw       i32 
        (i32.const          374 
        )
    )
    (global      $module_jsonepart_fn___148__literal_ptr_e       i32 
        (i32.const          1498 
        )
    )
    (global      $module_jsonepart_fn___164__literal_ptr_raw       i32 
        (i32.const          390 
        )
    )
    (global      $module_jsonepart_fn___164__literal_ptr_e       i32 
        (i32.const          1562 
        )
    )
    (global      $module_jsonepart_fn___172__literal_ptr_raw       i32 
        (i32.const          398 
        )
    )
    (global      $module_jsonepart_fn___172__literal_ptr_e       i32 
        (i32.const          1594 
        )
    )
    (global      $module_jsonepart_fn___180__literal_ptr_raw       i32 
        (i32.const          406 
        )
    )
    (global      $module_jsonepart_fn___180__literal_ptr_e       i32 
        (i32.const          1626 
        )
    )
    (global      $module_jsonepart_fn___220__literal_ptr_raw       i32 
        (i32.const          446 
        )
    )
    (global      $module_jsonepart_fn___220__literal_ptr_e       i32 
        (i32.const          1786 
        )
    )
    (global      $module_jsonepart_fn___232__literal_ptr_raw       i32 
        (i32.const          458 
        )
    )
    (global      $module_jsonepart_fn___232__literal_ptr_e       i32 
        (i32.const          1834 
        )
    )
    (global      $module_jsonepart_fn___248__literal_ptr_raw       i32 
        (i32.const          474 
        )
    )
    (global      $module_jsonepart_fn___248__literal_ptr_e       i32 
        (i32.const          1898 
        )
    )
    (global      $module_jsonepart_fn___256__literal_ptr_raw       i32 
        (i32.const          482 
        )
    )
    (global      $module_jsonepart_fn___256__literal_ptr_e       i32 
        (i32.const          1930 
        )
    )
    (global      $module_jsonepart_fn___264__literal_ptr_raw       i32 
        (i32.const          490 
        )
    )
    (global      $module_jsonepart_fn___264__literal_ptr_e       i32 
        (i32.const          1962 
        )
    )
    (global      $module_jsonepart_fn___304__literal_ptr_raw       i32 
        (i32.const          530 
        )
    )
    (global      $module_jsonepart_fn___304__literal_ptr_e       i32 
        (i32.const          2122 
        )
    )
    (global      $module_jsonepart_fn___316__literal_ptr_raw       i32 
        (i32.const          542 
        )
    )
    (global      $module_jsonepart_fn___316__literal_ptr_e       i32 
        (i32.const          2170 
        )
    )
    (global      $__unique_atom__ok       i32 
        (i32.const          1 
        )
    )
    (global      $__unique_atom__nil       i32 
        (i32.const          2 
        )
    )
    (global      $__unique_atom__jsone_part       i32 
        (i32.const          3 
        )
    )
    (global      $__unique_atom__number_integer_part       i32 
        (i32.const          4 
        )
    )
    (global      $__unique_atom__line       i32 
        (i32.const          5 
        )
    )
    (global      $__unique_atom__badarg       i32 
        (i32.const          6 
        )
    )
    (global      $__unique_atom__error       i32 
        (i32.const          7 
        )
    )
    (global      $__unique_atom__number_fraction_part_rest       i32 
        (i32.const          8 
        )
    )
    (global      $__unique_atom__true       i32 
        (i32.const          9 
        )
    )
    (global      $__unique_atom__false       i32 
        (i32.const          10 
        )
    )
    (global      $__unique_atom__number_exponation_part       i32 
        (i32.const          11 
        )
    )
    (global      $__unique_atom__badarith       i32 
        (i32.const          12 
        )
    )
    (data
        (i32.const          230 
        )      "\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          238 
        )      "\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          246 
        )      "\f9\03\00\00\9a\03\00\00\19\04\00\00\8b\00\00\00\39\04\00\00\ba\03\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          278 
        )      "\80\00\00\00\4b\01\00\00\bf\04\00\00" 
    )
    (data
        (i32.const          290 
        )      "\a9\04\00\00\5a\04\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          306 
        )      "\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          314 
        )      "\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          322 
        )      "\29\05\00\00\0f\00\00\00\49\05\00\00\ca\04\00\00\69\05\00\00\8b\00\00\00\89\05\00\00\ea\04\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          362 
        )      "\80\00\00\00\4b\01\00\00\3f\06\00\00" 
    )
    (data
        (i32.const          374 
        )      "\f9\05\00\00\aa\05\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          390 
        )      "\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          398 
        )      "\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          406 
        )      "\79\06\00\00\4b\02\00\00\99\06\00\00\1a\06\00\00\b9\06\00\00\8b\00\00\00\d9\06\00\00\3a\06\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          446 
        )      "\80\00\00\00\4b\01\00\00\5f\09\00\00" 
    )
    (data
        (i32.const          458 
        )      "\49\07\00\00\fa\06\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          474 
        )      "\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          482 
        )      "\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          490 
        )      "\c9\07\00\00\8b\02\00\00\e9\07\00\00\6a\07\00\00\09\08\00\00\8b\00\00\00\29\08\00\00\8a\07\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          530 
        )      "\80\00\00\00\4b\01\00\00\2f\09\00\00" 
    )
    (data
        (i32.const          542 
        )      "\99\08\00\00\4a\08\00\00\3b\00\00\00\00\00\00\00" 
    )
    (global      $module_elib_fn___4__literal_ptr_raw       i32 
        (i32.const          562 
        )
    )
    (global      $module_elib_fn___4__literal_ptr_e       i32 
        (i32.const          2250 
        )
    )
    (global      $module_elib_fn___116__literal_ptr_raw       i32 
        (i32.const          674 
        )
    )
    (global      $module_elib_fn___116__literal_ptr_e       i32 
        (i32.const          2698 
        )
    )
    (global      $module_elib_fn___348__literal_ptr_raw       i32 
        (i32.const          906 
        )
    )
    (global      $module_elib_fn___348__literal_ptr_e       i32 
        (i32.const          3626 
        )
    )
    (global      $module_elib_fn___360__literal_ptr_raw       i32 
        (i32.const          918 
        )
    )
    (global      $module_elib_fn___360__literal_ptr_e       i32 
        (i32.const          3674 
        )
    )
    (global      $module_elib_fn___520__literal_ptr_raw       i32 
        (i32.const          1078 
        )
    )
    (global      $module_elib_fn___520__literal_ptr_e       i32 
        (i32.const          4314 
        )
    )
    (global      $module_elib_fn___560__literal_ptr_raw       i32 
        (i32.const          1118 
        )
    )
    (global      $module_elib_fn___560__literal_ptr_e       i32 
        (i32.const          4474 
        )
    )
    (global      $module_elib_fn___672__literal_ptr_raw       i32 
        (i32.const          1230 
        )
    )
    (global      $module_elib_fn___672__literal_ptr_e       i32 
        (i32.const          4922 
        )
    )
    (global      $module_elib_fn___712__literal_ptr_raw       i32 
        (i32.const          1270 
        )
    )
    (global      $module_elib_fn___712__literal_ptr_e       i32 
        (i32.const          5082 
        )
    )
    (global      $module_elib_fn___728__literal_ptr_raw       i32 
        (i32.const          1286 
        )
    )
    (global      $module_elib_fn___728__literal_ptr_e       i32 
        (i32.const          5146 
        )
    )
    (global      $module_elib_fn___744__literal_ptr_raw       i32 
        (i32.const          1302 
        )
    )
    (global      $module_elib_fn___744__literal_ptr_e       i32 
        (i32.const          5210 
        )
    )
    (global      $__unique_atom__answer       i32 
        (i32.const          13 
        )
    )
    (global      $__unique_atom__elib       i32 
        (i32.const          14 
        )
    )
    (data
        (i32.const          562 
        )      "\e9\08\00\00\9f\04\00\00\09\09\00\00\4f\07\00\00\29\09\00\00\3f\07\00\00\49\09\00\00\0f\02\00\00\69\09\00\00\ef\06\00\00\89\09\00\00\ff\06\00\00\a9\09\00\00\4f\07\00\00\c9\09\00\00\0f\02\00\00\e9\09\00\00\2f\07\00\00\09\0a\00\00\5f\06\00\00\29\0a\00\00\1f\06\00\00\49\0a\00\00\cf\06\00\00\69\0a\00\00\af\00\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          674 
        )      "\a9\0a\00\00\4f\05\00\00\c9\0a\00\00\8f\06\00\00\e9\0a\00\00\9f\06\00\00\09\0b\00\00\3f\07\00\00\29\0b\00\00\0f\02\00\00\49\0b\00\00\9f\06\00\00\69\0b\00\00\3f\07\00\00\89\0b\00\00\0f\02\00\00\a9\0b\00\00\3f\06\00\00\c9\0b\00\00\ff\06\00\00\e9\0b\00\00\ff\06\00\00\09\0c\00\00\cf\06\00\00\29\0c\00\00\cf\02\00\00\49\0c\00\00\0f\02\00\00\69\0c\00\00\2f\06\00\00\89\0c\00\00\5f\07\00\00\a9\0c\00\00\4f\07\00\00\c9\0c\00\00\0f\02\00\00\e9\0c\00\00\7f\07\00\00\09\0d\00\00\8f\06\00\00\29\0d\00\00\1f\06\00\00\49\0d\00\00\4f\07\00\00\69\0d\00\00\0f\02\00\00\89\0d\00\00\6f\06\00\00\a9\0d\00\00\ff\06\00\00\c9\0d\00\00\2f\07\00\00\e9\0d\00\00\ff\03\00\00\09\0e\00\00\af\00\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          906 
        )      "\80\00\00\00\4b\03\00\00\9f\04\00\00" 
    )
    (data
        (i32.const          918 
        )      "\79\0e\00\00\4f\05\00\00\99\0e\00\00\8f\06\00\00\b9\0e\00\00\9f\06\00\00\d9\0e\00\00\3f\07\00\00\f9\0e\00\00\0f\02\00\00\19\0f\00\00\9f\06\00\00\39\0f\00\00\3f\07\00\00\59\0f\00\00\0f\02\00\00\79\0f\00\00\4f\07\00\00\99\0f\00\00\8f\06\00\00\b9\0f\00\00\5f\06\00\00\d9\0f\00\00\0f\02\00\00\f9\0f\00\00\1f\06\00\00\19\10\00\00\ef\06\00\00\39\10\00\00\3f\07\00\00\59\10\00\00\7f\07\00\00\79\10\00\00\5f\06\00\00\99\10\00\00\2f\07\00\00\b9\10\00\00\af\00\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          1078 
        )      "\f9\10\00\00\8f\04\00\00\19\11\00\00\ff\06\00\00\39\11\00\00\9f\06\00\00\59\11\00\00\af\00\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          1118 
        )      "\99\11\00\00\4f\05\00\00\b9\11\00\00\8f\06\00\00\d9\11\00\00\9f\06\00\00\f9\11\00\00\3f\07\00\00\19\12\00\00\0f\02\00\00\39\12\00\00\9f\06\00\00\59\12\00\00\3f\07\00\00\79\12\00\00\0f\02\00\00\99\12\00\00\6f\06\00\00\b9\12\00\00\9f\06\00\00\d9\12\00\00\ef\06\00\00\f9\12\00\00\5f\06\00\00\19\13\00\00\af\00\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          1230 
        )      "\59\13\00\00\8f\04\00\00\79\13\00\00\9f\06\00\00\99\13\00\00\1f\02\00\00\b9\13\00\00\af\00\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          1270 
        )      "\f9\13\00\00\9f\04\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          1286 
        )      "\39\14\00\00\1f\04\00\00\3b\00\00\00\00\00\00\00" 
    )
    (data
        (i32.const          1302 
        )      "\79\14\00\00\8f\05\00\00\3b\00\00\00\00\00\00\00" 
    )
    (func      $module_http_fn_ishead 
        (param          $module_http_fn_ptr           i32 
        )
        (result          i32 
        )
        (i32.eq
            (i32.load
                (local.get                  $module_http_fn_ptr 
                )
            )
            (i32.load
                (global.get                  $module_http_fn___head__literal_ptr_raw 
                )
            )
        )
    )
    (func      $module_http_fn_ispost 
        (param          $module_http_fn_ptr           i32 
        )
        (result          i32 
        )
        (i32.eq
            (i32.load
                (local.get                  $module_http_fn_ptr 
                )
            )
            (i32.load
                (global.get                  $module_http_fn___post__literal_ptr_raw 
                )
            )
        )
    )
    (func      $module_http_fn_write 
        (param          $module_http_fn_stream           i32 
        )
        (param          $module_http_fn_ptr           i32 
        )
        (param          $module_http_fn_len           i32 
        )
        (result          i32 
        )
        (call          $module_http_fn_output_stream_write 
            (local.get              $module_http_fn_stream 
            )
            (local.get              $module_http_fn_ptr 
            )
            (local.get              $module_http_fn_len 
            )
            (i32.const              0 
            )
        )
        (i32.load
            (i32.const              0 
            )
        )
    )
    (func      $module_http_fn_write_erl_ref 
        (param          $module_http_fn_stream           i32 
        )
        (param          $module_http_fn_erl_val           i32 
        )
        (result          i32 
        )
        (local          $module_http_fn_len           i32 
        )
        (call          $module_erdump_fn_read_erl_mem 
            (local.get              $module_http_fn_erl_val 
            )
            (global.get              $__free_mem 
            )
        )
        (local.set          $module_http_fn_len 
        )
        (if
            (i32.eqz
                (local.get                  $module_http_fn_len 
                )
            )
            (then
                (return
                    (i32.const                      0 
                    )
                )
            )
        )
        (return
            (call              $module_http_fn_write 
                (local.get                  $module_http_fn_stream 
                )
                (global.get                  $__free_mem 
                )
                (local.get                  $module_http_fn_len 
                )
            )
        )
    )
    (func      $module_http_fn_cabi_realloc 
        (param          $module_http_fn_old_ptr           i32 
        )
        (param          $module_http_fn_old_size           i32 
        )
        (param          $module_http_fn_align           i32 
        )
        (param          $module_http_fn_size           i32 
        )
        (result          i32 
        )
        (i32.eqz
            (local.get              $module_http_fn_old_ptr 
            )
        )
        (i32.eqz
            (local.get              $module_http_fn_old_size 
            )
        )
        (i32.and
        )
        (if
            (then
                (return
                    (call                      $module_erdump_fn_alloc 
                        (local.get                          $module_http_fn_align 
                        )
                        (local.get                          $module_http_fn_size 
                        )
                    )
                )
            )
        )
        (unreachable
        )
    )
    (export      "cabi_realloc" 
        (func          $module_http_fn_cabi_realloc 
        )
    )
    (func      $module_http_fn_handle 
        (param          $module_http_fn_req           i32 
        )
        (param          $module_http_fn_res           i32 
        )
        (local          $module_http_fn_tmp_ptr           i32 
        )
        (local          $module_http_fn_method           i32 
        )
        (local          $module_http_fn_response           i32 
        )
        (local          $module_http_fn_headers           i32 
        )
        (local          $module_http_fn_trailers           i32 
        )
        (local          $module_http_fn_body           i32 
        )
        (local          $module_http_fn_body_stream           i32 
        )
        (local          $module_http_fn_req_body           i32 
        )
        (local          $module_http_fn_req_body_ptr           i32 
        )
        (local          $module_http_fn_req_body_len           i32 
        )
        (local          $module_http_fn_input_stream           i32 
        )
        (local.set          $module_http_fn_tmp_ptr 
            (call              $module_erdump_fn_alloc 
                (i32.const                  8 
                )
                (i32.const                  16 
                )
            )
        )
        (call          $module_http_fn_get_method 
            (local.get              $module_http_fn_res 
            )
            (local.get              $module_http_fn_tmp_ptr 
            )
        )
        (i32.load
            (local.get              $module_http_fn_tmp_ptr 
            )
        )
        (i32.mul
            (i32.const              10 
            )
        )
        (i32.add
            (i32.const              40 
            )
        )
        (local.set          $module_http_fn_method 
        )
        (local.set          $module_http_fn_headers 
            (call              $module_http_fn_fields_make 
            )
        )
        (call          $module_http_fn_fields_append 
            (local.get              $module_http_fn_headers 
            )
            (i32.const              130 
            )
            (i32.const              12 
            )
            (i32.const              142 
            )
            (i32.const              9 
            )
            (i32.const              32 
            )
        )
        (if
            (call              $module_http_fn_ispost 
                (local.get                  $module_http_fn_method 
                )
            )
            (then
                (call                  $module_http_fn_consume_body 
                    (local.get                      $module_http_fn_res 
                    )
                    (local.get                      $module_http_fn_tmp_ptr 
                    )
                )
                (if
                    (i32.eqz
                        (i32.load
                            (local.get                              $module_http_fn_tmp_ptr 
                            )
                        )
                    )
                    (then                      nop 
                    )
                    (else                      return 
                    )
                )
                (i32.load
                    (i32.add
                        (i32.const                          4 
                        )
                        (local.get                          $module_http_fn_tmp_ptr 
                        )
                    )
                )
                (local.set                  $module_http_fn_req_body 
                )
                (call                  $module_http_fn_get_input_stream 
                    (local.get                      $module_http_fn_req_body 
                    )
                    (local.get                      $module_http_fn_tmp_ptr 
                    )
                )
                (if
                    (i32.eqz
                        (i32.load
                            (local.get                              $module_http_fn_tmp_ptr 
                            )
                        )
                    )
                    (then                      nop 
                    )
                    (else                      return 
                    )
                )
                (i32.load
                    (i32.add
                        (i32.const                          4 
                        )
                        (local.get                          $module_http_fn_tmp_ptr 
                        )
                    )
                )
                (local.set                  $module_http_fn_input_stream 
                )
                (call                  $module_http_fn_input_stream_read 
                    (local.get                      $module_http_fn_input_stream 
                    )
                    (i64.const                      16 
                    )
                    (local.get                      $module_http_fn_tmp_ptr 
                    )
                )
                (if
                    (i32.eqz
                        (i32.load
                            (local.get                              $module_http_fn_tmp_ptr 
                            )
                        )
                    )
                    (then                      nop 
                    )
                    (else                      return 
                    )
                )
                (i32.load
                    (i32.add
                        (i32.const                          4 
                        )
                        (local.get                          $module_http_fn_tmp_ptr 
                        )
                    )
                )
                (local.set                  $module_http_fn_req_body_ptr 
                )
                (i32.load
                    (i32.add
                        (i32.const                          8 
                        )
                        (local.get                          $module_http_fn_tmp_ptr 
                        )
                    )
                )
                (local.set                  $module_http_fn_req_body_len 
                )
                (local.set                  $module_http_fn_tmp_ptr 
                    (call                      $module_erdump_fn_alloc 
                        (i32.const                          8 
                        )
                        (i32.const                          16 
                        )
                    )
                )
            )
        )
        (if
            (call              $module_http_fn_ishead 
                (local.get                  $module_http_fn_method 
                )
            )
            (then
                (call                  $module_http_fn_fields_append 
                    (local.get                      $module_http_fn_headers 
                    )
                    (i32.const                      152 
                    )
                    (i32.const                      14 
                    )
                    (i32.const                      166 
                    )
                    (i32.const                      1 
                    )
                    (local.get                      $module_http_fn_tmp_ptr 
                    )
                )
            )
        )
        (local.set          $module_http_fn_response 
            (call              $module_http_fn_response_make 
                (local.get                  $module_http_fn_headers 
                )
            )
        )
        (call          $module_http_fn_get_response_body 
            (local.get              $module_http_fn_response 
            )
            (local.get              $module_http_fn_tmp_ptr 
            )
        )
        (if
            (i32.eqz
                (i32.load
                    (local.get                      $module_http_fn_tmp_ptr 
                    )
                )
            )
            (then              nop 
            )
            (else              return 
            )
        )
        (i32.load
            (i32.add
                (i32.const                  4 
                )
                (local.get                  $module_http_fn_tmp_ptr 
                )
            )
        )
        (local.set          $module_http_fn_body 
        )
        (call          $module_http_fn_body_write 
            (local.get              $module_http_fn_body 
            )
            (local.get              $module_http_fn_tmp_ptr 
            )
        )
        (if
            (i32.eqz
                (i32.load
                    (local.get                      $module_http_fn_tmp_ptr 
                    )
                )
            )
            (then              nop 
            )
            (else              return 
            )
        )
        (i32.load
            (i32.add
                (i32.const                  4 
                )
                (local.get                  $module_http_fn_tmp_ptr 
                )
            )
        )
        (local.set          $module_http_fn_body_stream 
        )
        (if
            (call              $module_http_fn_ishead 
                (local.get                  $module_http_fn_method 
                )
            )
            (then              nop 
            )
            (else
                (call                  $module_http_fn_write_erl_ref 
                    (local.get                      $module_http_fn_body_stream 
                    )
                    (call                      $module_syncentry_fn_dispatch 
                        (call                          $module_erdump_fn_write_buf 
                            (local.get                              $module_http_fn_req_body_ptr 
                            )
                            (local.get                              $module_http_fn_req_body_len 
                            )
                        )
                    )
                )
                (drop
                )
            )
        )
        (call          $module_http_fn_drop_stream 
            (local.get              $module_http_fn_body_stream 
            )
        )
        (call          $module_http_fn_body_finish 
            (local.get              $module_http_fn_body 
            )
            (i32.const              0 
            )
            (local.get              $module_http_fn_trailers 
            )
            (local.get              $module_http_fn_tmp_ptr 
            )
        )
        (if
            (i32.eqz
                (i32.load
                    (local.get                      $module_http_fn_tmp_ptr 
                    )
                )
            )
            (then              nop 
            )
            (else              return 
            )
        )
        (call          $module_http_fn_response_set 
            (local.get              $module_http_fn_res 
            )
            (i32.const              0 
            )
            (local.get              $module_http_fn_response 
            )
            (i32.const              0 
            )
            (i64.const              0 
            )
            (i32.const              0 
            )
            (i32.const              0 
            )
            (i32.const              0 
            )
            (i32.const              0 
            )
        )
    )
    (export      "wasi:http/incoming-handler@0.2.0#handle" 
        (func          $module_http_fn_handle 
        )
    )
    (func      $module_erdump_fn_write_flush 
        (param          $module_erdump_fn_stream           i32 
        )
        (param          $module_erdump_fn_ptr           i32 
        )
        (param          $module_erdump_fn_len           i32 
        )
        (result          i32 
        )
        (call          $module_erdump_fn_output_stream_write_flush 
            (local.get              $module_erdump_fn_stream 
            )
            (local.get              $module_erdump_fn_ptr 
            )
            (local.get              $module_erdump_fn_len 
            )
            (global.get              $module_erdump_fn___ret__literal_ptr_raw 
            )
        )
        (i32.load
            (global.get              $module_erdump_fn___ret__literal_ptr_raw 
            )
        )
    )
    (func      $module_erdump_fn_log 
        (param          $module_erdump_fn_ptr           i32 
        )
        (param          $module_erdump_fn_len           i32 
        )
        (result          i32 
        )
        (local          $module_erdump_fn_stdout           i32 
        )
        (local.set          $module_erdump_fn_stdout 
            (call              $module_erdump_fn_get_stdout 
            )
        )
        (call          $module_erdump_fn_write_flush 
            (local.get              $module_erdump_fn_stdout 
            )
            (local.get              $module_erdump_fn_ptr 
            )
            (local.get              $module_erdump_fn_len 
            )
        )
    )
    (export      "erdump#log" 
        (func          $module_erdump_fn_log 
        )
    )
    (func      $module_erdump_fn_hexlog 
        (param          $module_erdump_fn_value           i32 
        )
        (result          i32 
        )
        (local          $module_erdump_fn_buf           i32 
        )
        (local          $module_erdump_fn_temp           i32 
        )
        (local          $module_erdump_fn_buflen           i32 
        )
        (local          $module_erdump_fn_len           i32 
        )
        (local.set          $module_erdump_fn_buf 
            (i32.add
                (i32.const                  9 
                )
                (global.get                  $module_erdump_fn___buffer__literal_ptr_raw 
                )
            )
        )
        (local.set          $module_erdump_fn_len 
            (i32.const              8 
            )
        )
        (loop          $module_erdump_fn_loop 
            (local.get              $module_erdump_fn_value 
            )
            (i32.and
                (i32.const                  0xF 
                )
            )
            (local.set              $module_erdump_fn_temp 
            )
            (if
                (i32.le_u
                    (local.get                      $module_erdump_fn_temp 
                    )
                    (i32.const                      9 
                    )
                )
                (then
                    (i32.store8
                        (local.get                          $module_erdump_fn_buf 
                        )
                        (i32.add
                            (i32.const                              0x30 
                            )
                            (local.get                              $module_erdump_fn_temp 
                            )
                        )
                    )
                )
                (else
                    (i32.store8
                        (local.get                          $module_erdump_fn_buf 
                        )
                        (i32.add
                            (i32.const                              0x37 
                            )
                            (local.get                              $module_erdump_fn_temp 
                            )
                        )
                    )
                )
            )
            (local.set              $module_erdump_fn_buf 
                (i32.sub
                    (local.get                      $module_erdump_fn_buf 
                    )
                    (i32.const                      1 
                    )
                )
            )
            (local.set              $module_erdump_fn_value 
                (i32.shr_u
                    (local.get                      $module_erdump_fn_value 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (local.set              $module_erdump_fn_len 
                (i32.sub
                    (local.get                      $module_erdump_fn_len 
                    )
                    (i32.const                      1 
                    )
                )
            )
            (local.get              $module_erdump_fn_len 
            )
            (if
                (i32.eqz
                )
                (then
                )
                (else
                    (br                      $module_erdump_fn_loop 
                    )
                )
            )
        )
        (call          $module_erdump_fn_log 
            (global.get              $module_erdump_fn___buffer__literal_ptr_raw 
            )
            (i32.const              11 
            )
        )
    )
    (export      "erdump#hexlog_1" 
        (func          $module_erdump_fn_hexlog 
        )
    )
    (func      $module_erdump_fn_alloc 
        (param          $module_erdump_fn_align           i32 
        )
        (param          $module_erdump_fn_size           i32 
        )
        (result          i32 
        )
        (local          $module_erdump_fn_tmp           i32 
        )
        (local          $module_erdump_fn_ret           i32 
        )
        (local.set          $module_erdump_fn_ret 
            (global.get              $__free_mem 
            )
        )
        (local.set          $module_erdump_fn_tmp 
            (i32.ctz
                (local.get                  $module_erdump_fn_align 
                )
            )
        )
        (i32.shl
            (i32.shr_u
                (local.get                  $module_erdump_fn_ret 
                )
                (local.get                  $module_erdump_fn_tmp 
                )
            )
            (local.get              $module_erdump_fn_tmp 
            )
        )
        (local.set          $module_erdump_fn_ret 
        )
        (local.set          $module_erdump_fn_ret 
            (i32.add
                (local.get                  $module_erdump_fn_ret 
                )
                (local.get                  $module_erdump_fn_align 
                )
            )
        )
        (global.set          $__free_mem 
            (i32.add
                (local.get                  $module_erdump_fn_ret 
                )
                (local.get                  $module_erdump_fn_size 
                )
            )
        )
        (local.get          $module_erdump_fn_ret 
        )
    )
    (export      "erdump#alloc" 
        (func          $module_erdump_fn_alloc 
        )
    )
    (func      $module_erdump_fn_read_erl_mem 
        (param          $module_erdump_fn_erl_val           i32 
        )
        (param          $module_erdump_fn_mem_buffer           i32 
        )
        (result          i32 
        )
        (local          $module_erdump_fn_their_ptr           i32 
        )
        (local          $module_erdump_fn_len           i32 
        )
        (local          $module_erdump_fn_int_v           i32 
        )
        (local          $module_erdump_fn_mem_start           i32 
        )
        (local.set          $module_erdump_fn_mem_start 
            (local.get              $module_erdump_fn_mem_buffer 
            )
        )
        (loop          $module_erdump_fn_loop 
            (block              $module_erdump_fn_find_type 
                (if
                    (i32.eq
                        (i32.const                          0xF 
                        )
                        (i32.and
                            (i32.const                              0xF 
                            )
                            (local.get                              $module_erdump_fn_erl_val 
                            )
                        )
                    )
                    (then
                        (local.set                          $module_erdump_fn_int_v 
                            (i32.shr_u
                                (local.get                                  $module_erdump_fn_erl_val 
                                )
                                (i32.const                                  4 
                                )
                            )
                        )
                        (i32.store
                            (local.get                              $module_erdump_fn_mem_buffer 
                            )
                            (local.get                              $module_erdump_fn_int_v 
                            )
                        )
                        (i32.const                          4 
                        )
                        (local.set                          $module_erdump_fn_mem_buffer 
                            (i32.add
                                (local.get                                  $module_erdump_fn_mem_buffer 
                                )
                            )
                        )
                        (br                          $module_erdump_fn_find_type 
                        )
                    )
                )
                (if
                    (i32.eq
                        (i32.const                          0x2 
                        )
                        (i32.and
                            (i32.const                              0x3 
                            )
                            (local.get                              $module_erdump_fn_erl_val 
                            )
                        )
                    )
                    (then
                        (local.set                          $module_erdump_fn_their_ptr 
                            (i32.shr_u
                                (local.get                                  $module_erdump_fn_erl_val 
                                )
                                (i32.const                                  2 
                                )
                            )
                        )
                        (local.set                          $module_erdump_fn_erl_val 
                            (i32.load
                                (local.get                                  $module_erdump_fn_their_ptr 
                                )
                            )
                        )
                        (br                          $module_erdump_fn_loop 
                        )
                    )
                )
                (if
                    (i32.eq
                        (i32.const                          0x1 
                        )
                        (i32.and
                            (i32.const                              0x3 
                            )
                            (local.get                              $module_erdump_fn_erl_val 
                            )
                        )
                    )
                    (then
                        (call                          $module_erdump_fn_read_erl_mem 
                            (i32.load
                                (i32.add
                                    (i32.const                                      4 
                                    )
                                    (local.get                                      $module_erdump_fn_their_ptr 
                                    )
                                )
                            )
                            (local.get                              $module_erdump_fn_mem_buffer 
                            )
                        )
                        (local.set                          $module_erdump_fn_mem_buffer 
                            (i32.add
                                (local.get                                  $module_erdump_fn_mem_buffer 
                                )
                            )
                        )
                        (local.set                          $module_erdump_fn_their_ptr 
                            (i32.shr_u
                                (local.get                                  $module_erdump_fn_erl_val 
                                )
                                (i32.const                                  2 
                                )
                            )
                        )
                        (local.set                          $module_erdump_fn_erl_val 
                            (i32.load
                                (local.get                                  $module_erdump_fn_their_ptr 
                                )
                            )
                        )
                        (if
                            (i32.eq
                                (local.get                                  $module_erdump_fn_erl_val 
                                )
                                (i32.const                                  0x3b 
                                )
                            )
                            (then
                                (br                                  $module_erdump_fn_find_type 
                                )
                            )
                        )
                        (br                          $module_erdump_fn_loop 
                        )
                    )
                )
                (if
                    (i32.eq
                        (i32.const                          0x3b 
                        )
                        (local.get                          $module_erdump_fn_erl_val 
                        )
                    )
                    (then
                        (i32.store
                            (local.get                              $module_erdump_fn_mem_buffer 
                            )
                            (i32.const                              0x4C4C554E 
                            )
                        )
                        (i32.const                          4 
                        )
                        (local.set                          $module_erdump_fn_mem_buffer 
                            (i32.add
                                (local.get                                  $module_erdump_fn_mem_buffer 
                                )
                            )
                        )
                        (br                          $module_erdump_fn_find_type 
                        )
                    )
                )
                (unreachable
                )
            )
        )
        (local.set          $module_erdump_fn_len 
            (i32.sub
                (local.get                  $module_erdump_fn_mem_buffer 
                )
                (local.get                  $module_erdump_fn_mem_start 
                )
            )
        )
        (local.get          $module_erdump_fn_len 
        )
    )
    (export      "erdump#dump" 
        (func          $module_erdump_fn_read_erl_mem 
        )
    )
    (func      $module_erdump_fn_write_str 
        (param          $module_erdump_fn_mem           i32 
        )
        (param          $module_erdump_fn_len           i32 
        )
        (result          i32 
        )
        (local          $module_erdump_fn_idx           i32 
        )
        (local          $module_erdump_fn_ptr           i32 
        )
        (local          $module_erdump_fn_ret           i32 
        )
        (local          $module_erdump_fn_erlen           i32 
        )
        (local.set          $module_erdump_fn_ptr 
            (global.get              $__free_mem 
            )
        )
        (local.set          $module_erdump_fn_idx 
            (i32.const              0 
            )
        )
        (local.set          $module_erdump_fn_ret 
            (local.get              $module_erdump_fn_ptr 
            )
        )
        (local.set          $module_erdump_fn_erlen 
            (i32.mul
                (i32.const                  8 
                )
                (i32.add
                    (i32.const                      1 
                    )
                    (local.get                      $module_erdump_fn_len 
                    )
                )
            )
        )
        (global.set          $__free_mem 
            (i32.add
                (local.get                  $module_erdump_fn_ptr 
                )
                (local.get                  $module_erdump_fn_erlen 
                )
            )
        )
        (loop          $module_erdump_fn_loop 
            (if
                (i32.eqz
                    (local.get                      $module_erdump_fn_len 
                    )
                )
                (then
                    (nop
                    )
                )
                (else
                    (i32.store
                        (local.get                          $module_erdump_fn_ptr 
                        )
                        (i32.or
                            (i32.shl
                                (i32.const                                  4 
                                )
                                (i32.const                                  2 
                                )
                            )
                            (i32.const                              1 
                            )
                        )
                    )
                    (local.set                      $module_erdump_fn_ptr 
                        (i32.add
                            (i32.const                              4 
                            )
                            (local.get                              $module_erdump_fn_ptr 
                            )
                        )
                    )
                    (i32.store
                        (local.get                          $module_erdump_fn_ptr 
                        )
                        (i32.or
                            (i32.const                              0xF 
                            )
                            (i32.shl
                                (i32.and
                                    (i32.load
                                        (local.get                                          $module_erdump_fn_mem 
                                        )
                                    )
                                    (i32.const                                      0xFF 
                                    )
                                )
                                (i32.const                                  4 
                                )
                            )
                        )
                    )
                    (local.set                      $module_erdump_fn_ptr 
                        (i32.add
                            (i32.const                              4 
                            )
                            (local.get                              $module_erdump_fn_ptr 
                            )
                        )
                    )
                    (local.set                      $module_erdump_fn_mem 
                        (i32.add
                            (i32.const                              1 
                            )
                            (local.get                              $module_erdump_fn_mem 
                            )
                        )
                    )
                    (local.set                      $module_erdump_fn_len 
                        (i32.sub
                            (local.get                              $module_erdump_fn_len 
                            )
                            (i32.const                              1 
                            )
                        )
                    )
                    (br                      $module_erdump_fn_loop 
                    )
                )
            )
        )
        (i32.store
            (local.get              $module_erdump_fn_ptr 
            )
            (i32.const              0x3b 
            )
        )
        (local.set          $module_erdump_fn_ptr 
            (i32.add
                (i32.const                  4 
                )
                (local.get                  $module_erdump_fn_ptr 
                )
            )
        )
        (i32.store
            (local.get              $module_erdump_fn_ptr 
            )
            (i32.const              0x0 
            )
        )
        (i32.or
            (i32.shl
                (local.get                  $module_erdump_fn_ret 
                )
                (i32.const                  2 
                )
            )
            (i32.const              2 
            )
        )
    )
    (export      "erdump#write_str" 
        (func          $module_erdump_fn_write_str 
        )
    )
    (func      $module_erdump_fn_write_buf 
        (param          $module_erdump_fn_mem           i32 
        )
        (param          $module_erdump_fn_len           i32 
        )
        (result          i32 
        )
        (local          $module_erdump_fn_ptr           i32 
        )
        (local          $module_erdump_fn_ret           i32 
        )
        (local          $module_erdump_fn_erlen           i32 
        )
        (local.set          $module_erdump_fn_erlen 
            (i32.add
                (i32.const                  8 
                )
                (local.get                  $module_erdump_fn_len 
                )
            )
        )
        (i32.shl
            (i32.shr_u
                (local.get                  $module_erdump_fn_erlen 
                )
                (i32.const                  2 
                )
            )
            (i32.const              2 
            )
        )
        (i32.add
            (i32.const              4 
            )
        )
        (local.set          $module_erdump_fn_erlen 
        )
        (local.set          $module_erdump_fn_ptr 
            (call              $module_erdump_fn_alloc 
                (i32.const                  4 
                )
                (local.get                  $module_erdump_fn_erlen 
                )
            )
        )
        (local.set          $module_erdump_fn_ret 
            (local.get              $module_erdump_fn_ptr 
            )
        )
        (i32.store
            (local.get              $module_erdump_fn_ptr 
            )
            (i32.const              0x24 
            )
        )
        (local.set          $module_erdump_fn_ptr 
            (i32.add
                (i32.const                  4 
                )
                (local.get                  $module_erdump_fn_ptr 
                )
            )
        )
        (i32.store
            (local.get              $module_erdump_fn_ptr 
            )
            (i32.shl
                (local.get                  $module_erdump_fn_len 
                )
                (i32.const                  3 
                )
            )
        )
        (local.set          $module_erdump_fn_ptr 
            (i32.add
                (i32.const                  4 
                )
                (local.get                  $module_erdump_fn_ptr 
                )
            )
        )
        (block          $module_erdump_fn_exit 
            (loop              $module_erdump_fn_loop 
                (if
                    (i32.eqz
                        (local.get                          $module_erdump_fn_len 
                        )
                    )
                    (then
                        (br                          $module_erdump_fn_exit 
                        )
                    )
                )
                (i32.store8
                    (local.get                      $module_erdump_fn_ptr 
                    )
                    (i32.load8_u
                        (local.get                          $module_erdump_fn_mem 
                        )
                    )
                )
                (local.set                  $module_erdump_fn_ptr 
                    (i32.add
                        (i32.const                          1 
                        )
                        (local.get                          $module_erdump_fn_ptr 
                        )
                    )
                )
                (local.set                  $module_erdump_fn_mem 
                    (i32.add
                        (i32.const                          1 
                        )
                        (local.get                          $module_erdump_fn_mem 
                        )
                    )
                )
                (local.set                  $module_erdump_fn_len 
                    (i32.sub
                        (local.get                          $module_erdump_fn_len 
                        )
                        (i32.const                          1 
                        )
                    )
                )
                (br                  $module_erdump_fn_loop 
                )
            )
        )
        (i32.or
            (i32.shl
                (local.get                  $module_erdump_fn_ret 
                )
                (i32.const                  2 
                )
            )
            (i32.const              2 
            )
        )
    )
    (export      "erdump#write_buf" 
        (func          $module_erdump_fn_write_buf 
        )
    )
    (func      $module_jsonepart_fn_next_5 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (param          $module_jsonepart_fn_in_1           i32 
        )
        (param          $module_jsonepart_fn_in_2           i32 
        )
        (param          $module_jsonepart_fn_in_3           i32 
        )
        (param          $module_jsonepart_fn_in_4           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_4_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_4       local.set       $module_jsonepart_fn_var_xreg_4_val       local.get       $module_jsonepart_fn_in_3       local.set       $module_jsonepart_fn_var_xreg_3_val       local.get       $module_jsonepart_fn_in_2       local.set       $module_jsonepart_fn_var_xreg_2_val       local.get       $module_jsonepart_fn_in_1       local.set       $module_jsonepart_fn_var_xreg_1_val       local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_2 
                (block                  $module_jsonepart_fn_label_1 
                    (br_table                      0                       1 
                        (local.get                          $module_jsonepart_fn_jump 
                        )
                    )                  unreachable 
                )
                (unreachable
                )
            )
            (call              $module_erwasmminibeamminibeambs_fn_bs_get_tail 
                (local.get                  $module_jsonepart_fn_var_xreg_0_val 
                )
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )
            (call              $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                (i32.const                  3 
                )
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  4 
                )
            )
            (global.get              $__unique_atom__ok 
            )
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  8 
                )
            )          local.get           $module_jsonepart_fn_var_xreg_1_val 
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  12 
                )
            )          local.get           $module_jsonepart_fn_var_xreg_0_val 
            (i32.store
            )
            (i32.or
                (i32.shl
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )          local.set           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_0_val           return 
        )      unreachable 
    )
    (export      "jsone_part#parse_1" 
        (func          $module_jsonepart_fn_parse_1 
        )
    )
    (func      $module_jsonepart_fn_parse_1 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_4 
                (block                  $module_jsonepart_fn_label_3 
                    (br_table                      0                       1 
                        (local.get                          $module_jsonepart_fn_jump 
                        )
                    )                  unreachable 
                )
                (unreachable
                )
            )
            (global.get              $__unique_atom__nil 
            )
            (local.set              $module_jsonepart_fn_var_xreg_2_val 
            )
            (i32.const              0x3b 
            )
            (local.set              $module_jsonepart_fn_var_xreg_3_val 
            )
            (i32.const              0x3b 
            )
            (local.set              $module_jsonepart_fn_var_xreg_1_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_1_val           local.get           $module_jsonepart_fn_var_xreg_2_val           local.get           $module_jsonepart_fn_var_xreg_3_val           call           $module_jsonepart_fn_number_4           return 
        )      unreachable 
    )
    (func      $module_jsonepart_fn_number_4 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (param          $module_jsonepart_fn_in_1           i32 
        )
        (param          $module_jsonepart_fn_in_2           i32 
        )
        (param          $module_jsonepart_fn_in_3           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_4_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_5_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_3       local.set       $module_jsonepart_fn_var_xreg_3_val       local.get       $module_jsonepart_fn_in_2       local.set       $module_jsonepart_fn_var_xreg_2_val       local.get       $module_jsonepart_fn_in_1       local.set       $module_jsonepart_fn_var_xreg_1_val       local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_8 
                (block                  $module_jsonepart_fn_label_7 
                    (block                      $module_jsonepart_fn_label_6 
                        (block                          $module_jsonepart_fn_label_5 
                            (br_table                              0                               1                               2                               3 
                                (local.get                                  $module_jsonepart_fn_jump 
                                )
                            )                          unreachable 
                        )
                        (unreachable
                        )
                    )
                    (local.set                      $module_jsonepart_fn_jump 
                        (i32.const                          0 
                        )
                    )
                    (local.get                      $module_jsonepart_fn_var_xreg_0_val 
                    )
                    (i32.const                      0 
                    )
                    (call                      $module_erwasmminibeamminibeambs_fn_make_match_context 
                    )
                    (local.set                      $module_jsonepart_fn_temp 
                    )
                    (if
                        (i32.eqz
                            (local.get                              $module_jsonepart_fn_temp 
                            )
                        )
                        (then
                            (nop
                            )
                        )
                        (else
                            (local.get                              $module_jsonepart_fn_temp 
                            )                          local.set                           $module_jsonepart_fn_var_xreg_4_val 
                        )
                    )
                    (i32.eqz
                        (local.get                          $module_jsonepart_fn_temp 
                        )
                    )
                    (i32.eqz
                    )
                    (i32.eqz
                    )
                    (br_if                      $module_jsonepart_fn_start 
                    )
                    (i32.shl
                        (call                          $module_erwasmminibeamminibeambs_fn_bs_get_position 
                            (local.get                              $module_jsonepart_fn_var_xreg_4_val 
                            )
                        )
                        (i32.const                          4 
                        )
                    )
                    (i32.or
                        (i32.const                          0xF 
                        )
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_0_val 
                    )
                    (local.set                      $module_jsonepart_fn_jump 
                        (i32.const                          2 
                        )
                    )
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                        (local.get                          $module_jsonepart_fn_var_xreg_4_val 
                        )
                        (i32.const                          8 
                        )
                        (i32.const                          1 
                        )
                    )
                    (if
                        (i32.eqz
                        )
                        (then
                            (br                              $module_jsonepart_fn_start 
                            )
                        )
                    )
                    (i32.shl
                        (call                          $module_erwasmminibeamminibeambs_fn_bs_integer 
                            (local.get                              $module_jsonepart_fn_var_xreg_4_val 
                            )
                            (i32.const                              8 
                            )
                        )
                        (i32.const                          4 
                        )
                    )
                    (i32.or
                        (i32.const                          0xF 
                        )
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_5_val 
                    )
                    (i32.const                      1 
                    )
                    (if
                        (i32.eqz
                        )
                        (then
                            (br                              $module_jsonepart_fn_start 
                            )
                        )
                    )
                    (local.set                      $module_jsonepart_fn_jump 
                        (i32.const                          2 
                        )
                    )                  local.get                   $module_jsonepart_fn_var_xreg_5_val 
                    (i32.const                      735 
                    )
                    (call                      $module_erwasmminibeamminibeameq_fn_test_eq_exact 
                    )
                    (i32.eqz
                    )
                    (br_if                      $module_jsonepart_fn_start 
                    )
                    (local.set                      $module_jsonepart_fn_jump 
                        (i32.const                          2 
                        )
                    )
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                        (local.get                          $module_jsonepart_fn_var_xreg_4_val 
                        )
                        (i32.const                          0 
                        )
                        (i32.const                          8 
                        )
                    )
                    (if
                        (i32.eqz
                        )
                        (then
                            (br                              $module_jsonepart_fn_start 
                            )
                        )
                    )
                    (i32.const                      0x3b 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_2_val 
                    )
                    (i32.const                      31 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_1_val 
                    )
                    (global.get                      $__unique_atom__nil 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_3_val 
                    )                  local.get                   $module_jsonepart_fn_var_xreg_4_val 
                    (local.set                      $module_jsonepart_fn_var_xreg_0_val 
                    )
                    (i32.const                      0x3b 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_4_val 
                    )                  local.get                   $module_jsonepart_fn_var_xreg_0_val                   local.get                   $module_jsonepart_fn_var_xreg_1_val                   local.get                   $module_jsonepart_fn_var_xreg_2_val                   local.get                   $module_jsonepart_fn_var_xreg_3_val                   local.get                   $module_jsonepart_fn_var_xreg_4_val                   call                   $module_jsonepart_fn_number_integer_part_5                   return 
                )
                (call                  $module_erwasmminibeamminibeambs_fn_bs_set_position 
                    (local.get                      $module_jsonepart_fn_var_xreg_4_val 
                    )
                    (i32.shr_u
                        (local.get                          $module_jsonepart_fn_var_xreg_0_val 
                        )
                        (i32.const                          4 
                        )
                    )
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      3 
                    )
                )
                (call                  $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                    (local.get                      $module_jsonepart_fn_var_xreg_4_val 
                    )
                    (i32.const                      0 
                    )
                    (i32.const                      8 
                    )
                )
                (if
                    (i32.eqz
                    )
                    (then
                        (br                          $module_jsonepart_fn_start 
                        )
                    )
                )
                (call                  $module_erwasmminibeamminibeambs_fn_bs_set_position 
                    (local.get                      $module_jsonepart_fn_var_xreg_4_val 
                    )
                    (i32.shr_u
                        (local.get                          $module_jsonepart_fn_var_xreg_0_val 
                        )
                        (i32.const                          4 
                        )
                    )
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_2_val 
                )
                (i32.const                  31 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_1_val 
                )
                (global.get                  $__unique_atom__nil 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_3_val 
                )              local.get               $module_jsonepart_fn_var_xreg_4_val 
                (local.set                  $module_jsonepart_fn_var_xreg_0_val 
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_4_val 
                )              local.get               $module_jsonepart_fn_var_xreg_0_val               local.get               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_2_val               local.get               $module_jsonepart_fn_var_xreg_3_val               local.get               $module_jsonepart_fn_var_xreg_4_val               call               $module_jsonepart_fn_number_integer_part_5               return 
            )
            (call              $module_erwasmminibeamminibeambs_fn_bs_set_position 
                (local.get                  $module_jsonepart_fn_var_xreg_4_val 
                )
                (i32.shr_u
                    (local.get                      $module_jsonepart_fn_var_xreg_0_val 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (call              $module_erwasmminibeamminibeambs_fn_bs_get_tail 
                (local.get                  $module_jsonepart_fn_var_xreg_4_val 
                )
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )
            (local.set              $module_jsonepart_fn_jump 
                (i32.const                  0 
                )
            )
            (br              $module_jsonepart_fn_start 
            )
        )      unreachable 
    )
    (func      $module_jsonepart_fn_number_integer_part_5 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (param          $module_jsonepart_fn_in_1           i32 
        )
        (param          $module_jsonepart_fn_in_2           i32 
        )
        (param          $module_jsonepart_fn_in_3           i32 
        )
        (param          $module_jsonepart_fn_in_4           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_4_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_5_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_4       local.set       $module_jsonepart_fn_var_xreg_4_val       local.get       $module_jsonepart_fn_in_3       local.set       $module_jsonepart_fn_var_xreg_3_val       local.get       $module_jsonepart_fn_in_2       local.set       $module_jsonepart_fn_var_xreg_2_val       local.get       $module_jsonepart_fn_in_1       local.set       $module_jsonepart_fn_var_xreg_1_val       local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_12 
                (block                  $module_jsonepart_fn_label_11 
                    (block                      $module_jsonepart_fn_label_10 
                        (block                          $module_jsonepart_fn_label_9 
                            (br_table                              0                               1                               2                               3 
                                (local.get                                  $module_jsonepart_fn_jump 
                                )
                            )                          unreachable 
                        )
                        (unreachable
                        )
                    )
                    (i32.shl
                        (call                          $module_erwasmminibeamminibeambs_fn_bs_get_position 
                            (local.get                              $module_jsonepart_fn_var_xreg_0_val 
                            )
                        )
                        (i32.const                          4 
                        )
                    )
                    (i32.or
                        (i32.const                          0xF 
                        )
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_2_val 
                    )
                    (local.set                      $module_jsonepart_fn_jump 
                        (i32.const                          3 
                        )
                    )
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                        (local.get                          $module_jsonepart_fn_var_xreg_0_val 
                        )
                        (i32.const                          8 
                        )
                        (i32.const                          1 
                        )
                    )
                    (if
                        (i32.eqz
                        )
                        (then
                            (br                              $module_jsonepart_fn_start 
                            )
                        )
                    )
                    (i32.shl
                        (call                          $module_erwasmminibeamminibeambs_fn_bs_integer 
                            (local.get                              $module_jsonepart_fn_var_xreg_0_val 
                            )
                            (i32.const                              8 
                            )
                        )
                        (i32.const                          4 
                        )
                    )
                    (i32.or
                        (i32.const                          0xF 
                        )
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_3_val 
                    )
                    (i32.const                      1 
                    )
                    (if
                        (i32.eqz
                        )
                        (then
                            (br                              $module_jsonepart_fn_start 
                            )
                        )
                    )
                    (local.set                      $module_jsonepart_fn_jump 
                        (i32.const                          2 
                        )
                    )                  local.get                   $module_jsonepart_fn_var_xreg_3_val 
                    (i32.const                      783 
                    )
                    (call                      $module_erwasmminibeamminibeameq_fn_test_eq_exact 
                    )
                    (i32.eqz
                    )
                    (br_if                      $module_jsonepart_fn_start 
                    )
                    (global.get                      $__unique_atom__nil 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_0_val 
                    )                  local.get                   $module_jsonepart_fn_var_xreg_0_val                   return 
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      3 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_3_val 
                (i32.const                  799 
                )              i32.ge_u 
                (i32.eqz
                )
                (br_if                  $module_jsonepart_fn_start 
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      3 
                    )
                )
                (i32.const                  927 
                )              local.get               $module_jsonepart_fn_var_xreg_3_val               i32.ge_u 
                (i32.eqz
                )
                (br_if                  $module_jsonepart_fn_start 
                )              local.get               $module_jsonepart_fn_var_xreg_3_val 
                (i32.const                  783 
                )
                (i32.xor
                    (i32.const                      0xF 
                    )
                )
                (i32.sub
                )              local.set               $module_jsonepart_fn_var_xreg_2_val 
                (global.get                  $__unique_atom__nil 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_4_val 
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_5_val 
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_3_val 
                )
                (local.get                  $module_jsonepart_fn_var_xreg_1_val 
                )
                (local.set                  $module_jsonepart_fn_temp 
                )
                (local.get                  $module_jsonepart_fn_var_xreg_2_val 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_1_val 
                )
                (local.get                  $module_jsonepart_fn_temp 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_2_val 
                )              local.get               $module_jsonepart_fn_var_xreg_0_val               local.get               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_2_val               local.get               $module_jsonepart_fn_var_xreg_3_val               local.get               $module_jsonepart_fn_var_xreg_4_val               local.get               $module_jsonepart_fn_var_xreg_5_val               call               $module_jsonepart_fn_number_integer_part_rest_6               return 
            )          local.get           $module_jsonepart_fn_var_xreg_1_val 
            (global.get              $module_jsonepart_fn___20__literal_ptr_e 
            )
            (call              $module_erwasmminibeamminibeamlist_fn_put_list 
            )
            (local.set              $module_jsonepart_fn_var_xreg_1_val 
            )
            (call              $module_erwasmminibeamminibeambs_fn_bs_set_position 
                (local.get                  $module_jsonepart_fn_var_xreg_0_val 
                )
                (i32.shr_u
                    (local.get                      $module_jsonepart_fn_var_xreg_2_val 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (call              $module_erwasmminibeamminibeambs_fn_bs_get_tail 
                (local.get                  $module_jsonepart_fn_var_xreg_0_val 
                )
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_1_val 
            (call              $module_erwasmminibeamminibeamlist_fn_put_list 
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )
            (call              $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                (i32.const                  4 
                )
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  4 
                )
            )
            (global.get              $__unique_atom__jsone_part 
            )
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  8 
                )
            )
            (global.get              $__unique_atom__number_integer_part 
            )
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  12 
                )
            )          local.get           $module_jsonepart_fn_var_xreg_0_val 
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  16 
                )
            )
            (global.get              $module_jsonepart_fn___64__literal_ptr_e 
            )
            (i32.store
            )
            (i32.or
                (i32.shl
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )          local.set           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_0_val 
            (i32.const              0x3b 
            )
            (call              $module_erwasmminibeamminibeamlist_fn_put_list 
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )
            (call              $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                (i32.const                  2 
                )
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  4 
                )
            )
            (global.get              $__unique_atom__badarg 
            )
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  8 
                )
            )          local.get           $module_jsonepart_fn_var_xreg_0_val 
            (i32.store
            )
            (i32.or
                (i32.shl
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )          local.set           $module_jsonepart_fn_var_xreg_0_val 
            (call              $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                (i32.const                  2 
                )
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  4 
                )
            )
            (global.get              $__unique_atom__error 
            )
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  8 
                )
            )          local.get           $module_jsonepart_fn_var_xreg_0_val 
            (i32.store
            )
            (i32.or
                (i32.shl
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )          local.set           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_0_val           return 
        )      unreachable 
    )
    (func      $module_jsonepart_fn_number_integer_part_rest_6 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (param          $module_jsonepart_fn_in_1           i32 
        )
        (param          $module_jsonepart_fn_in_2           i32 
        )
        (param          $module_jsonepart_fn_in_3           i32 
        )
        (param          $module_jsonepart_fn_in_4           i32 
        )
        (param          $module_jsonepart_fn_in_5           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_4_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_5_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_6_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_7_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_5       local.set       $module_jsonepart_fn_var_xreg_5_val       local.get       $module_jsonepart_fn_in_4       local.set       $module_jsonepart_fn_var_xreg_4_val       local.get       $module_jsonepart_fn_in_3       local.set       $module_jsonepart_fn_var_xreg_3_val       local.get       $module_jsonepart_fn_in_2       local.set       $module_jsonepart_fn_var_xreg_2_val       local.get       $module_jsonepart_fn_in_1       local.set       $module_jsonepart_fn_var_xreg_1_val       local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_15 
                (block                  $module_jsonepart_fn_label_14 
                    (block                      $module_jsonepart_fn_label_13 
                        (br_table                          0                           1                           2 
                            (local.get                              $module_jsonepart_fn_jump 
                            )
                        )                      unreachable 
                    )
                    (unreachable
                    )
                )
                (i32.shl
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_get_position 
                        (local.get                          $module_jsonepart_fn_var_xreg_0_val 
                        )
                    )
                    (i32.const                      4 
                    )
                )
                (i32.or
                    (i32.const                      0xF 
                    )
                )
                (local.set                  $module_jsonepart_fn_var_xreg_6_val 
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      2 
                    )
                )
                (call                  $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                    (local.get                      $module_jsonepart_fn_var_xreg_0_val 
                    )
                    (i32.const                      8 
                    )
                    (i32.const                      1 
                    )
                )
                (if
                    (i32.eqz
                    )
                    (then
                        (br                          $module_jsonepart_fn_start 
                        )
                    )
                )
                (i32.shl
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_integer 
                        (local.get                          $module_jsonepart_fn_var_xreg_0_val 
                        )
                        (i32.const                          8 
                        )
                    )
                    (i32.const                      4 
                    )
                )
                (i32.or
                    (i32.const                      0xF 
                    )
                )
                (local.set                  $module_jsonepart_fn_var_xreg_7_val 
                )
                (i32.const                  1 
                )
                (if
                    (i32.eqz
                    )
                    (then
                        (br                          $module_jsonepart_fn_start 
                        )
                    )
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      2 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_7_val 
                (i32.const                  783 
                )              i32.ge_u 
                (i32.eqz
                )
                (br_if                  $module_jsonepart_fn_start 
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      2 
                    )
                )
                (i32.const                  927 
                )              local.get               $module_jsonepart_fn_var_xreg_7_val               i32.ge_u 
                (i32.eqz
                )
                (br_if                  $module_jsonepart_fn_start 
                )              local.get               $module_jsonepart_fn_var_xreg_1_val 
                (i32.const                  175 
                )
                (i32.shr_u
                    (i32.xor
                        (i32.const                          0xF 
                        )
                    )
                    (i32.const                      4 
                    )
                )
                (local.set                  $module_jsonepart_fn_temp 
                )
                (i32.shr_u
                    (i32.xor
                        (i32.const                          0xF 
                        )
                    )
                    (i32.const                      4 
                    )
                )
                (i32.mul
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                )
                (local.set                  $module_jsonepart_fn_temp 
                )
                (i32.shl
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      4 
                    )
                )
                (i32.or
                    (i32.const                      0xF 
                    )
                )              local.set               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_7_val 
                (i32.xor
                    (i32.const                      0xF 
                    )
                )
                (i32.add
                )              local.set               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_1_val 
                (i32.const                  783 
                )
                (i32.xor
                    (i32.const                      0xF 
                    )
                )
                (i32.sub
                )              local.set               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_0_val               local.get               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_2_val               local.get               $module_jsonepart_fn_var_xreg_3_val               local.get               $module_jsonepart_fn_var_xreg_4_val               local.get               $module_jsonepart_fn_var_xreg_5_val               call               $module_jsonepart_fn_number_integer_part_rest_6               return 
            )
            (call              $module_erwasmminibeamminibeambs_fn_bs_set_position 
                (local.get                  $module_jsonepart_fn_var_xreg_0_val 
                )
                (i32.shr_u
                    (local.get                      $module_jsonepart_fn_var_xreg_6_val 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (local.get              $module_jsonepart_fn_var_xreg_1_val 
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (local.get              $module_jsonepart_fn_var_xreg_2_val 
            )
            (local.set              $module_jsonepart_fn_var_xreg_1_val 
            )
            (local.get              $module_jsonepart_fn_temp 
            )
            (local.set              $module_jsonepart_fn_var_xreg_2_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_1_val           local.get           $module_jsonepart_fn_var_xreg_2_val           local.get           $module_jsonepart_fn_var_xreg_3_val           local.get           $module_jsonepart_fn_var_xreg_4_val           local.get           $module_jsonepart_fn_var_xreg_5_val           call           $module_jsonepart_fn_number_fraction_part_6           return 
        )      unreachable 
    )
    (func      $module_jsonepart_fn_number_fraction_part_6 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (param          $module_jsonepart_fn_in_1           i32 
        )
        (param          $module_jsonepart_fn_in_2           i32 
        )
        (param          $module_jsonepart_fn_in_3           i32 
        )
        (param          $module_jsonepart_fn_in_4           i32 
        )
        (param          $module_jsonepart_fn_in_5           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_4_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_5_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_6_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_7_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_5       local.set       $module_jsonepart_fn_var_xreg_5_val       local.get       $module_jsonepart_fn_in_4       local.set       $module_jsonepart_fn_var_xreg_4_val       local.get       $module_jsonepart_fn_in_3       local.set       $module_jsonepart_fn_var_xreg_3_val       local.get       $module_jsonepart_fn_in_2       local.set       $module_jsonepart_fn_var_xreg_2_val       local.get       $module_jsonepart_fn_in_1       local.set       $module_jsonepart_fn_var_xreg_1_val       local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_18 
                (block                  $module_jsonepart_fn_label_17 
                    (block                      $module_jsonepart_fn_label_16 
                        (br_table                          0                           1                           2 
                            (local.get                              $module_jsonepart_fn_jump 
                            )
                        )                      unreachable 
                    )
                    (unreachable
                    )
                )
                (i32.shl
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_get_position 
                        (local.get                          $module_jsonepart_fn_var_xreg_0_val 
                        )
                    )
                    (i32.const                      4 
                    )
                )
                (i32.or
                    (i32.const                      0xF 
                    )
                )
                (local.set                  $module_jsonepart_fn_var_xreg_6_val 
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      2 
                    )
                )
                (call                  $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                    (local.get                      $module_jsonepart_fn_var_xreg_0_val 
                    )
                    (i32.const                      8 
                    )
                    (i32.const                      1 
                    )
                )
                (if
                    (i32.eqz
                    )
                    (then
                        (br                          $module_jsonepart_fn_start 
                        )
                    )
                )
                (i32.shl
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_integer 
                        (local.get                          $module_jsonepart_fn_var_xreg_0_val 
                        )
                        (i32.const                          8 
                        )
                    )
                    (i32.const                      4 
                    )
                )
                (i32.or
                    (i32.const                      0xF 
                    )
                )
                (local.set                  $module_jsonepart_fn_var_xreg_7_val 
                )
                (i32.const                  1 
                )
                (if
                    (i32.eqz
                    )
                    (then
                        (br                          $module_jsonepart_fn_start 
                        )
                    )
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      2 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_7_val 
                (i32.const                  751 
                )
                (call                  $module_erwasmminibeamminibeameq_fn_test_eq_exact 
                )
                (i32.eqz
                )
                (br_if                  $module_jsonepart_fn_start 
                )
                (global.get                  $__unique_atom__nil 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_5_val 
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_4_val 
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_6_val 
                )
                (i32.const                  15 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_3_val 
                )              local.get               $module_jsonepart_fn_var_xreg_0_val               local.get               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_2_val               local.get               $module_jsonepart_fn_var_xreg_3_val               local.get               $module_jsonepart_fn_var_xreg_4_val               local.get               $module_jsonepart_fn_var_xreg_5_val               local.get               $module_jsonepart_fn_var_xreg_6_val               call               $module_jsonepart_fn_number_fraction_part_rest_7               return 
            )          local.get           $module_jsonepart_fn_var_xreg_1_val           local.get           $module_jsonepart_fn_var_xreg_2_val 
            (i32.shr_u
                (i32.xor
                    (i32.const                      0xF 
                    )
                )
                (i32.const                  4 
                )
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (i32.shr_u
                (i32.xor
                    (i32.const                      0xF 
                    )
                )
                (i32.const                  4 
                )
            )
            (i32.mul
                (local.get                  $module_jsonepart_fn_temp 
                )
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (i32.shl
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  4 
                )
            )
            (i32.or
                (i32.const                  0xF 
                )
            )          local.set           $module_jsonepart_fn_var_xreg_1_val 
            (call              $module_erwasmminibeamminibeambs_fn_bs_set_position 
                (local.get                  $module_jsonepart_fn_var_xreg_0_val 
                )
                (i32.shr_u
                    (local.get                      $module_jsonepart_fn_var_xreg_6_val 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (i32.const              15 
            )
            (local.set              $module_jsonepart_fn_var_xreg_2_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_1_val           local.get           $module_jsonepart_fn_var_xreg_2_val           local.get           $module_jsonepart_fn_var_xreg_3_val           local.get           $module_jsonepart_fn_var_xreg_4_val           local.get           $module_jsonepart_fn_var_xreg_5_val           call           $module_jsonepart_fn_number_exponation_part_6           return 
        )      unreachable 
    )
    (func      $module_jsonepart_fn_number_fraction_part_rest_7 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (param          $module_jsonepart_fn_in_1           i32 
        )
        (param          $module_jsonepart_fn_in_2           i32 
        )
        (param          $module_jsonepart_fn_in_3           i32 
        )
        (param          $module_jsonepart_fn_in_4           i32 
        )
        (param          $module_jsonepart_fn_in_5           i32 
        )
        (param          $module_jsonepart_fn_in_6           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_4_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_5_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_6_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_7_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_8_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_6       local.set       $module_jsonepart_fn_var_xreg_6_val       local.get       $module_jsonepart_fn_in_5       local.set       $module_jsonepart_fn_var_xreg_5_val       local.get       $module_jsonepart_fn_in_4       local.set       $module_jsonepart_fn_var_xreg_4_val       local.get       $module_jsonepart_fn_in_3       local.set       $module_jsonepart_fn_var_xreg_3_val       local.get       $module_jsonepart_fn_in_2       local.set       $module_jsonepart_fn_var_xreg_2_val       local.get       $module_jsonepart_fn_in_1       local.set       $module_jsonepart_fn_var_xreg_1_val       local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_22 
                (block                  $module_jsonepart_fn_label_21 
                    (block                      $module_jsonepart_fn_label_20 
                        (block                          $module_jsonepart_fn_label_19 
                            (br_table                              0                               1                               2                               3 
                                (local.get                                  $module_jsonepart_fn_jump 
                                )
                            )                          unreachable 
                        )
                        (unreachable
                        )
                    )
                    (i32.shl
                        (call                          $module_erwasmminibeamminibeambs_fn_bs_get_position 
                            (local.get                              $module_jsonepart_fn_var_xreg_0_val 
                            )
                        )
                        (i32.const                          4 
                        )
                    )
                    (i32.or
                        (i32.const                          0xF 
                        )
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_7_val 
                    )
                    (local.set                      $module_jsonepart_fn_jump 
                        (i32.const                          2 
                        )
                    )
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                        (local.get                          $module_jsonepart_fn_var_xreg_0_val 
                        )
                        (i32.const                          8 
                        )
                        (i32.const                          1 
                        )
                    )
                    (if
                        (i32.eqz
                        )
                        (then
                            (br                              $module_jsonepart_fn_start 
                            )
                        )
                    )
                    (i32.shl
                        (call                          $module_erwasmminibeamminibeambs_fn_bs_integer 
                            (local.get                              $module_jsonepart_fn_var_xreg_0_val 
                            )
                            (i32.const                              8 
                            )
                        )
                        (i32.const                          4 
                        )
                    )
                    (i32.or
                        (i32.const                          0xF 
                        )
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_8_val 
                    )
                    (i32.const                      1 
                    )
                    (if
                        (i32.eqz
                        )
                        (then
                            (br                              $module_jsonepart_fn_start 
                            )
                        )
                    )
                    (local.set                      $module_jsonepart_fn_jump 
                        (i32.const                          2 
                        )
                    )                  local.get                   $module_jsonepart_fn_var_xreg_8_val 
                    (i32.const                      783 
                    )                  i32.ge_u 
                    (i32.eqz
                    )
                    (br_if                      $module_jsonepart_fn_start 
                    )
                    (local.set                      $module_jsonepart_fn_jump 
                        (i32.const                          2 
                        )
                    )
                    (i32.const                      927 
                    )                  local.get                   $module_jsonepart_fn_var_xreg_8_val                   i32.ge_u 
                    (i32.eqz
                    )
                    (br_if                      $module_jsonepart_fn_start 
                    )                  local.get                   $module_jsonepart_fn_var_xreg_2_val 
                    (i32.const                      175 
                    )
                    (i32.shr_u
                        (i32.xor
                            (i32.const                              0xF 
                            )
                        )
                        (i32.const                          4 
                        )
                    )
                    (local.set                      $module_jsonepart_fn_temp 
                    )
                    (i32.shr_u
                        (i32.xor
                            (i32.const                              0xF 
                            )
                        )
                        (i32.const                          4 
                        )
                    )
                    (i32.mul
                        (local.get                          $module_jsonepart_fn_temp 
                        )
                    )
                    (local.set                      $module_jsonepart_fn_temp 
                    )
                    (i32.shl
                        (local.get                          $module_jsonepart_fn_temp 
                        )
                        (i32.const                          4 
                        )
                    )
                    (i32.or
                        (i32.const                          0xF 
                        )
                    )                  local.set                   $module_jsonepart_fn_var_xreg_2_val                   local.get                   $module_jsonepart_fn_var_xreg_2_val                   local.get                   $module_jsonepart_fn_var_xreg_8_val 
                    (i32.xor
                        (i32.const                          0xF 
                        )
                    )
                    (i32.add
                    )                  local.set                   $module_jsonepart_fn_var_xreg_2_val                   local.get                   $module_jsonepart_fn_var_xreg_2_val 
                    (i32.const                      783 
                    )
                    (i32.xor
                        (i32.const                          0xF 
                        )
                    )
                    (i32.sub
                    )                  local.set                   $module_jsonepart_fn_var_xreg_2_val                   local.get                   $module_jsonepart_fn_var_xreg_3_val 
                    (i32.const                      31 
                    )
                    (i32.xor
                        (i32.const                          0xF 
                        )
                    )
                    (i32.add
                    )                  local.set                   $module_jsonepart_fn_var_xreg_3_val                   local.get                   $module_jsonepart_fn_var_xreg_0_val                   local.get                   $module_jsonepart_fn_var_xreg_1_val                   local.get                   $module_jsonepart_fn_var_xreg_2_val                   local.get                   $module_jsonepart_fn_var_xreg_3_val                   local.get                   $module_jsonepart_fn_var_xreg_4_val                   local.get                   $module_jsonepart_fn_var_xreg_5_val                   local.get                   $module_jsonepart_fn_var_xreg_6_val                   call                   $module_jsonepart_fn_number_fraction_part_rest_7                   return 
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      3 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_3_val 
                (i32.const                  31 
                )              i32.ge_u 
                (i32.eqz
                )
                (br_if                  $module_jsonepart_fn_start 
                )              local.get               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_2_val 
                (i32.shr_u
                    (i32.xor
                        (i32.const                          0xF 
                        )
                    )
                    (i32.const                      4 
                    )
                )
                (local.set                  $module_jsonepart_fn_temp 
                )
                (i32.shr_u
                    (i32.xor
                        (i32.const                          0xF 
                        )
                    )
                    (i32.const                      4 
                    )
                )
                (i32.mul
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                )
                (local.set                  $module_jsonepart_fn_temp 
                )
                (i32.shl
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      4 
                    )
                )
                (i32.or
                    (i32.const                      0xF 
                    )
                )              local.set               $module_jsonepart_fn_var_xreg_1_val 
                (call                  $module_erwasmminibeamminibeambs_fn_bs_set_position 
                    (local.get                      $module_jsonepart_fn_var_xreg_0_val 
                    )
                    (i32.shr_u
                        (local.get                          $module_jsonepart_fn_var_xreg_7_val 
                        )
                        (i32.const                          4 
                        )
                    )
                )
                (global.get                  $__unique_atom__nil 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_4_val 
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_5_val 
                )              local.get               $module_jsonepart_fn_var_xreg_3_val 
                (local.set                  $module_jsonepart_fn_var_xreg_2_val 
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_3_val 
                )              local.get               $module_jsonepart_fn_var_xreg_0_val               local.get               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_2_val               local.get               $module_jsonepart_fn_var_xreg_3_val               local.get               $module_jsonepart_fn_var_xreg_4_val               local.get               $module_jsonepart_fn_var_xreg_5_val               call               $module_jsonepart_fn_number_exponation_part_6               return 
            )          local.get           $module_jsonepart_fn_var_xreg_2_val 
            (global.get              $module_jsonepart_fn___96__literal_ptr_e 
            )
            (call              $module_erwasmminibeamminibeamlist_fn_put_list 
            )
            (local.set              $module_jsonepart_fn_var_xreg_2_val 
            )          local.get           $module_jsonepart_fn_var_xreg_1_val           local.get           $module_jsonepart_fn_var_xreg_2_val 
            (call              $module_erwasmminibeamminibeamlist_fn_put_list 
            )
            (local.set              $module_jsonepart_fn_var_xreg_1_val 
            )
            (call              $module_erwasmminibeamminibeambs_fn_bs_set_position 
                (local.get                  $module_jsonepart_fn_var_xreg_0_val 
                )
                (i32.shr_u
                    (local.get                      $module_jsonepart_fn_var_xreg_7_val 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (call              $module_erwasmminibeamminibeambs_fn_bs_get_tail 
                (local.get                  $module_jsonepart_fn_var_xreg_0_val 
                )
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_1_val 
            (call              $module_erwasmminibeamminibeamlist_fn_put_list 
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )
            (call              $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                (i32.const                  4 
                )
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  4 
                )
            )
            (global.get              $__unique_atom__jsone_part 
            )
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  8 
                )
            )
            (global.get              $__unique_atom__number_fraction_part_rest 
            )
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  12 
                )
            )          local.get           $module_jsonepart_fn_var_xreg_0_val 
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  16 
                )
            )
            (global.get              $module_jsonepart_fn___148__literal_ptr_e 
            )
            (i32.store
            )
            (i32.or
                (i32.shl
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )          local.set           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_0_val 
            (i32.const              0x3b 
            )
            (call              $module_erwasmminibeamminibeamlist_fn_put_list 
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )
            (call              $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                (i32.const                  2 
                )
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  4 
                )
            )
            (global.get              $__unique_atom__badarg 
            )
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  8 
                )
            )          local.get           $module_jsonepart_fn_var_xreg_0_val 
            (i32.store
            )
            (i32.or
                (i32.shl
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )          local.set           $module_jsonepart_fn_var_xreg_0_val 
            (call              $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                (i32.const                  2 
                )
            )
            (local.set              $module_jsonepart_fn_temp 
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  4 
                )
            )
            (global.get              $__unique_atom__error 
            )
            (i32.store
            )
            (i32.add
                (local.get                  $module_jsonepart_fn_temp 
                )
                (i32.const                  8 
                )
            )          local.get           $module_jsonepart_fn_var_xreg_0_val 
            (i32.store
            )
            (i32.or
                (i32.shl
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )          local.set           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_0_val           return 
        )      unreachable 
    )
    (func      $module_jsonepart_fn_number_exponation_part_6 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (param          $module_jsonepart_fn_in_1           i32 
        )
        (param          $module_jsonepart_fn_in_2           i32 
        )
        (param          $module_jsonepart_fn_in_3           i32 
        )
        (param          $module_jsonepart_fn_in_4           i32 
        )
        (param          $module_jsonepart_fn_in_5           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_4_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_5_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_6_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_7_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_8_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_5       local.set       $module_jsonepart_fn_var_xreg_5_val       local.get       $module_jsonepart_fn_in_4       local.set       $module_jsonepart_fn_var_xreg_4_val       local.get       $module_jsonepart_fn_in_3       local.set       $module_jsonepart_fn_var_xreg_3_val       local.get       $module_jsonepart_fn_in_2       local.set       $module_jsonepart_fn_var_xreg_2_val       local.get       $module_jsonepart_fn_in_1       local.set       $module_jsonepart_fn_var_xreg_1_val       local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_30 
                (block                  $module_jsonepart_fn_label_29 
                    (block                      $module_jsonepart_fn_label_28 
                        (block                          $module_jsonepart_fn_label_27 
                            (block                              $module_jsonepart_fn_label_26 
                                (block                                  $module_jsonepart_fn_label_25 
                                    (block                                      $module_jsonepart_fn_label_24 
                                        (block                                          $module_jsonepart_fn_label_23 
                                            (br_table                                              0                                               1                                               2                                               3                                               4                                               5                                               6                                               7 
                                                (local.get                                                  $module_jsonepart_fn_jump 
                                                )
                                            )                                          unreachable 
                                        )
                                        (unreachable
                                        )
                                    )
                                    (i32.shl
                                        (call                                          $module_erwasmminibeamminibeambs_fn_bs_get_position 
                                            (local.get                                              $module_jsonepart_fn_var_xreg_0_val 
                                            )
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                    (i32.or
                                        (i32.const                                          0xF 
                                        )
                                    )
                                    (local.set                                      $module_jsonepart_fn_var_xreg_3_val 
                                    )
                                    (local.set                                      $module_jsonepart_fn_jump 
                                        (i32.const                                          6 
                                        )
                                    )
                                    (call                                      $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                                        (local.get                                          $module_jsonepart_fn_var_xreg_0_val 
                                        )
                                        (i32.const                                          8 
                                        )
                                        (i32.const                                          1 
                                        )
                                    )
                                    (if
                                        (i32.eqz
                                        )
                                        (then
                                            (br                                              $module_jsonepart_fn_start 
                                            )
                                        )
                                    )
                                    (i32.shl
                                        (call                                          $module_erwasmminibeamminibeambs_fn_bs_integer 
                                            (local.get                                              $module_jsonepart_fn_var_xreg_0_val 
                                            )
                                            (i32.const                                              8 
                                            )
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                    (i32.or
                                        (i32.const                                          0xF 
                                        )
                                    )
                                    (local.set                                      $module_jsonepart_fn_var_xreg_4_val 
                                    )
                                    (i32.const                                      1 
                                    )
                                    (if
                                        (i32.eqz
                                        )
                                        (then
                                            (br                                              $module_jsonepart_fn_start 
                                            )
                                        )
                                    )
                                    (i32.shl
                                        (call                                          $module_erwasmminibeamminibeambs_fn_bs_get_position 
                                            (local.get                                              $module_jsonepart_fn_var_xreg_0_val 
                                            )
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                    (i32.or
                                        (i32.const                                          0xF 
                                        )
                                    )
                                    (local.set                                      $module_jsonepart_fn_var_xreg_5_val 
                                    )
                                    (local.set                                      $module_jsonepart_fn_jump 
                                        (i32.const                                          2 
                                        )
                                    )                                  local.get                                   $module_jsonepart_fn_var_xreg_4_val 
                                    (i32.const                                      1119 
                                    )
                                    (i32.eq
                                    )
                                    (br_if                                      $module_jsonepart_fn_start 
                                    )
                                    (local.set                                      $module_jsonepart_fn_jump 
                                        (i32.const                                          2 
                                        )
                                    )                                  local.get                                   $module_jsonepart_fn_var_xreg_4_val 
                                    (i32.const                                      1631 
                                    )
                                    (i32.eq
                                    )
                                    (br_if                                      $module_jsonepart_fn_start 
                                    )
                                    (local.set                                      $module_jsonepart_fn_jump 
                                        (i32.const                                          6 
                                        )
                                    )
                                    (br                                      $module_jsonepart_fn_start 
                                    )
                                )
                                (local.set                                  $module_jsonepart_fn_jump 
                                    (i32.const                                      5 
                                    )
                                )
                                (call                                  $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                                    (local.get                                      $module_jsonepart_fn_var_xreg_0_val 
                                    )
                                    (i32.const                                      8 
                                    )
                                    (i32.const                                      1 
                                    )
                                )
                                (if
                                    (i32.eqz
                                    )
                                    (then
                                        (br                                          $module_jsonepart_fn_start 
                                        )
                                    )
                                )
                                (i32.shl
                                    (call                                      $module_erwasmminibeamminibeambs_fn_bs_integer 
                                        (local.get                                          $module_jsonepart_fn_var_xreg_0_val 
                                        )
                                        (i32.const                                          8 
                                        )
                                    )
                                    (i32.const                                      4 
                                    )
                                )
                                (i32.or
                                    (i32.const                                      0xF 
                                    )
                                )
                                (local.set                                  $module_jsonepart_fn_var_xreg_3_val 
                                )
                                (i32.const                                  1 
                                )
                                (if
                                    (i32.eqz
                                    )
                                    (then
                                        (br                                          $module_jsonepart_fn_start 
                                        )
                                    )
                                )
                                (local.set                                  $module_jsonepart_fn_jump 
                                    (i32.const                                      4 
                                    )
                                )                              local.get                               $module_jsonepart_fn_var_xreg_3_val 
                                (i32.const                                  703 
                                )
                                (i32.eq
                                )
                                (br_if                                  $module_jsonepart_fn_start 
                                )
                                (local.set                                  $module_jsonepart_fn_jump 
                                    (i32.const                                      3 
                                    )
                                )                              local.get                               $module_jsonepart_fn_var_xreg_3_val 
                                (i32.const                                  735 
                                )
                                (i32.eq
                                )
                                (br_if                                  $module_jsonepart_fn_start 
                                )
                                (local.set                                  $module_jsonepart_fn_jump 
                                    (i32.const                                      5 
                                    )
                                )
                                (br                                  $module_jsonepart_fn_start 
                                )
                            )
                            (i32.const                              0x3b 
                            )
                            (local.set                              $module_jsonepart_fn_var_xreg_6_val 
                            )
                            (global.get                              $__unique_atom__true 
                            )
                            (local.set                              $module_jsonepart_fn_var_xreg_5_val 
                            )
                            (global.get                              $__unique_atom__nil 
                            )
                            (local.set                              $module_jsonepart_fn_var_xreg_7_val 
                            )
                            (i32.const                              15 
                            )
                            (local.set                              $module_jsonepart_fn_var_xreg_4_val 
                            )
                            (i32.const                              0x3b 
                            )
                            (local.set                              $module_jsonepart_fn_var_xreg_8_val 
                            )
                            (i32.const                              31 
                            )
                            (local.set                              $module_jsonepart_fn_var_xreg_3_val 
                            )                          local.get                           $module_jsonepart_fn_var_xreg_0_val                           local.get                           $module_jsonepart_fn_var_xreg_1_val                           local.get                           $module_jsonepart_fn_var_xreg_2_val                           local.get                           $module_jsonepart_fn_var_xreg_3_val                           local.get                           $module_jsonepart_fn_var_xreg_4_val                           local.get                           $module_jsonepart_fn_var_xreg_5_val                           local.get                           $module_jsonepart_fn_var_xreg_6_val                           local.get                           $module_jsonepart_fn_var_xreg_7_val                           local.get                           $module_jsonepart_fn_var_xreg_8_val                           call                           $module_jsonepart_fn_number_exponation_part_9                           return 
                        )
                        (i32.const                          0x3b 
                        )
                        (local.set                          $module_jsonepart_fn_var_xreg_6_val 
                        )
                        (global.get                          $__unique_atom__true 
                        )
                        (local.set                          $module_jsonepart_fn_var_xreg_5_val 
                        )
                        (global.get                          $__unique_atom__nil 
                        )
                        (local.set                          $module_jsonepart_fn_var_xreg_7_val 
                        )
                        (i32.const                          15 
                        )
                        (local.set                          $module_jsonepart_fn_var_xreg_4_val 
                        )
                        (i32.const                          0x3b 
                        )
                        (local.set                          $module_jsonepart_fn_var_xreg_8_val 
                        )
                        (i32.const                          31 
                        )
                        (local.set                          $module_jsonepart_fn_var_xreg_3_val 
                        )                      local.get                       $module_jsonepart_fn_var_xreg_0_val                       local.get                       $module_jsonepart_fn_var_xreg_1_val                       local.get                       $module_jsonepart_fn_var_xreg_2_val                       local.get                       $module_jsonepart_fn_var_xreg_3_val                       local.get                       $module_jsonepart_fn_var_xreg_4_val                       local.get                       $module_jsonepart_fn_var_xreg_5_val                       local.get                       $module_jsonepart_fn_var_xreg_6_val                       local.get                       $module_jsonepart_fn_var_xreg_7_val                       local.get                       $module_jsonepart_fn_var_xreg_8_val                       call                       $module_jsonepart_fn_number_exponation_part_9                       return 
                    )
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_set_position 
                        (local.get                          $module_jsonepart_fn_var_xreg_0_val 
                        )
                        (i32.shr_u
                            (local.get                              $module_jsonepart_fn_var_xreg_5_val 
                            )
                            (i32.const                              4 
                            )
                        )
                    )
                    (i32.const                      0x3b 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_6_val 
                    )
                    (global.get                      $__unique_atom__true 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_5_val 
                    )
                    (global.get                      $__unique_atom__nil 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_7_val 
                    )
                    (i32.const                      15 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_4_val 
                    )
                    (i32.const                      0x3b 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_8_val 
                    )
                    (i32.const                      31 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_3_val 
                    )                  local.get                   $module_jsonepart_fn_var_xreg_0_val                   local.get                   $module_jsonepart_fn_var_xreg_1_val                   local.get                   $module_jsonepart_fn_var_xreg_2_val                   local.get                   $module_jsonepart_fn_var_xreg_3_val                   local.get                   $module_jsonepart_fn_var_xreg_4_val                   local.get                   $module_jsonepart_fn_var_xreg_5_val                   local.get                   $module_jsonepart_fn_var_xreg_6_val                   local.get                   $module_jsonepart_fn_var_xreg_7_val                   local.get                   $module_jsonepart_fn_var_xreg_8_val                   call                   $module_jsonepart_fn_number_exponation_part_9                   return 
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      7 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_2_val 
                (i32.const                  15 
                )
                (call                  $module_erwasmminibeamminibeameq_fn_test_eq_exact 
                )
                (i32.eqz
                )
                (br_if                  $module_jsonepart_fn_start 
                )
                (call                  $module_erwasmminibeamminibeambs_fn_bs_set_position 
                    (local.get                      $module_jsonepart_fn_var_xreg_0_val 
                    )
                    (i32.shr_u
                        (local.get                          $module_jsonepart_fn_var_xreg_3_val 
                        )
                        (i32.const                          4 
                        )
                    )
                )
                (global.get                  $__unique_atom__nil 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_3_val 
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_4_val 
                )
                (i32.const                  0x3b 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_2_val 
                )              local.get               $module_jsonepart_fn_var_xreg_0_val               local.get               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_2_val               local.get               $module_jsonepart_fn_var_xreg_3_val               local.get               $module_jsonepart_fn_var_xreg_4_val               call               $module_jsonepart_fn_next_5               return 
            )          local.get           $module_jsonepart_fn_var_xreg_3_val 
            (local.set              $module_jsonepart_fn_var_yreg_0_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val 
            (local.set              $module_jsonepart_fn_var_yreg_1_val 
            )          local.get           $module_jsonepart_fn_var_xreg_1_val 
            (local.set              $module_jsonepart_fn_var_yreg_2_val 
            )          local.get           $module_jsonepart_fn_var_xreg_2_val 
            (local.set              $module_jsonepart_fn_var_xreg_1_val 
            )
            (i32.const              175 
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_1_val           call           $module_erwasmminibeammath_fn_pow           local.set           $module_jsonepart_fn_var_xreg_0_val 
            (call              $module_erwasmminibeamminibeambs_fn_bs_set_position 
                (local.get                  $module_jsonepart_fn_var_yreg_1_val 
                )
                (i32.shr_u
                    (local.get                      $module_jsonepart_fn_var_yreg_0_val 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (global.get              $__unique_atom__nil 
            )
            (local.set              $module_jsonepart_fn_var_xreg_3_val 
            )
            (i32.const              0x3b 
            )
            (local.set              $module_jsonepart_fn_var_xreg_2_val 
            )
            (i32.const              0x3b 
            )
            (local.set              $module_jsonepart_fn_var_xreg_4_val 
            )          local.get           $module_jsonepart_fn_var_yreg_1_val 
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_1_val           local.get           $module_jsonepart_fn_var_xreg_2_val           local.get           $module_jsonepart_fn_var_xreg_3_val           local.get           $module_jsonepart_fn_var_xreg_4_val           call           $module_jsonepart_fn_next_5           return 
        )      unreachable 
    )
    (func      $module_jsonepart_fn_number_exponation_part_9 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (param          $module_jsonepart_fn_in_1           i32 
        )
        (param          $module_jsonepart_fn_in_2           i32 
        )
        (param          $module_jsonepart_fn_in_3           i32 
        )
        (param          $module_jsonepart_fn_in_4           i32 
        )
        (param          $module_jsonepart_fn_in_5           i32 
        )
        (param          $module_jsonepart_fn_in_6           i32 
        )
        (param          $module_jsonepart_fn_in_7           i32 
        )
        (param          $module_jsonepart_fn_in_8           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_4_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_5_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_6_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_7_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_8_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_9_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_10_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_2_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_3_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_4_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_5_val           i32 
        )
        (local          $module_jsonepart_fn_var_yreg_6_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_8       local.set       $module_jsonepart_fn_var_xreg_8_val       local.get       $module_jsonepart_fn_in_7       local.set       $module_jsonepart_fn_var_xreg_7_val       local.get       $module_jsonepart_fn_in_6       local.set       $module_jsonepart_fn_var_xreg_6_val       local.get       $module_jsonepart_fn_in_5       local.set       $module_jsonepart_fn_var_xreg_5_val       local.get       $module_jsonepart_fn_in_4       local.set       $module_jsonepart_fn_var_xreg_4_val       local.get       $module_jsonepart_fn_in_3       local.set       $module_jsonepart_fn_var_xreg_3_val       local.get       $module_jsonepart_fn_in_2       local.set       $module_jsonepart_fn_var_xreg_2_val       local.get       $module_jsonepart_fn_in_1       local.set       $module_jsonepart_fn_var_xreg_1_val       local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_38 
                (block                  $module_jsonepart_fn_label_37 
                    (block                      $module_jsonepart_fn_label_36 
                        (block                          $module_jsonepart_fn_label_35 
                            (block                              $module_jsonepart_fn_label_34 
                                (block                                  $module_jsonepart_fn_label_33 
                                    (block                                      $module_jsonepart_fn_label_32 
                                        (block                                          $module_jsonepart_fn_label_31 
                                            (br_table                                              0                                               1                                               2                                               3                                               4                                               5                                               6                                               7 
                                                (local.get                                                  $module_jsonepart_fn_jump 
                                                )
                                            )                                          unreachable 
                                        )
                                        (unreachable
                                        )
                                    )
                                    (i32.shl
                                        (call                                          $module_erwasmminibeamminibeambs_fn_bs_get_position 
                                            (local.get                                              $module_jsonepart_fn_var_xreg_0_val 
                                            )
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                    (i32.or
                                        (i32.const                                          0xF 
                                        )
                                    )
                                    (local.set                                      $module_jsonepart_fn_var_xreg_9_val 
                                    )
                                    (local.set                                      $module_jsonepart_fn_jump 
                                        (i32.const                                          2 
                                        )
                                    )
                                    (call                                      $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                                        (local.get                                          $module_jsonepart_fn_var_xreg_0_val 
                                        )
                                        (i32.const                                          8 
                                        )
                                        (i32.const                                          1 
                                        )
                                    )
                                    (if
                                        (i32.eqz
                                        )
                                        (then
                                            (br                                              $module_jsonepart_fn_start 
                                            )
                                        )
                                    )
                                    (i32.shl
                                        (call                                          $module_erwasmminibeamminibeambs_fn_bs_integer 
                                            (local.get                                              $module_jsonepart_fn_var_xreg_0_val 
                                            )
                                            (i32.const                                              8 
                                            )
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                    (i32.or
                                        (i32.const                                          0xF 
                                        )
                                    )
                                    (local.set                                      $module_jsonepart_fn_var_xreg_10_val 
                                    )
                                    (i32.const                                      1 
                                    )
                                    (if
                                        (i32.eqz
                                        )
                                        (then
                                            (br                                              $module_jsonepart_fn_start 
                                            )
                                        )
                                    )
                                    (local.set                                      $module_jsonepart_fn_jump 
                                        (i32.const                                          2 
                                        )
                                    )                                  local.get                                   $module_jsonepart_fn_var_xreg_10_val 
                                    (i32.const                                      783 
                                    )                                  i32.ge_u 
                                    (i32.eqz
                                    )
                                    (br_if                                      $module_jsonepart_fn_start 
                                    )
                                    (local.set                                      $module_jsonepart_fn_jump 
                                        (i32.const                                          2 
                                        )
                                    )
                                    (i32.const                                      927 
                                    )                                  local.get                                   $module_jsonepart_fn_var_xreg_10_val                                   i32.ge_u 
                                    (i32.eqz
                                    )
                                    (br_if                                      $module_jsonepart_fn_start 
                                    )                                  local.get                                   $module_jsonepart_fn_var_xreg_4_val 
                                    (i32.const                                      175 
                                    )
                                    (i32.shr_u
                                        (i32.xor
                                            (i32.const                                              0xF 
                                            )
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                    (local.set                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.shr_u
                                        (i32.xor
                                            (i32.const                                              0xF 
                                            )
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                    (i32.mul
                                        (local.get                                          $module_jsonepart_fn_temp 
                                        )
                                    )
                                    (local.set                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.shl
                                        (local.get                                          $module_jsonepart_fn_temp 
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                    (i32.or
                                        (i32.const                                          0xF 
                                        )
                                    )                                  local.set                                   $module_jsonepart_fn_var_xreg_4_val                                   local.get                                   $module_jsonepart_fn_var_xreg_4_val                                   local.get                                   $module_jsonepart_fn_var_xreg_10_val 
                                    (i32.xor
                                        (i32.const                                          0xF 
                                        )
                                    )
                                    (i32.add
                                    )                                  local.set                                   $module_jsonepart_fn_var_xreg_4_val                                   local.get                                   $module_jsonepart_fn_var_xreg_4_val 
                                    (i32.const                                      783 
                                    )
                                    (i32.xor
                                        (i32.const                                          0xF 
                                        )
                                    )
                                    (i32.sub
                                    )                                  local.set                                   $module_jsonepart_fn_var_xreg_4_val 
                                    (global.get                                      $__unique_atom__false 
                                    )
                                    (local.set                                      $module_jsonepart_fn_var_xreg_5_val 
                                    )                                  local.get                                   $module_jsonepart_fn_var_xreg_0_val                                   local.get                                   $module_jsonepart_fn_var_xreg_1_val                                   local.get                                   $module_jsonepart_fn_var_xreg_2_val                                   local.get                                   $module_jsonepart_fn_var_xreg_3_val                                   local.get                                   $module_jsonepart_fn_var_xreg_4_val                                   local.get                                   $module_jsonepart_fn_var_xreg_5_val                                   local.get                                   $module_jsonepart_fn_var_xreg_6_val                                   local.get                                   $module_jsonepart_fn_var_xreg_7_val                                   local.get                                   $module_jsonepart_fn_var_xreg_8_val                                   call                                   $module_jsonepart_fn_number_exponation_part_9                                   return 
                                )
                                (local.set                                  $module_jsonepart_fn_jump 
                                    (i32.const                                      3 
                                    )
                                )                              local.get                               $module_jsonepart_fn_var_xreg_5_val 
                                (global.get                                  $__unique_atom__true 
                                )
                                (call                                  $module_erwasmminibeamminibeameq_fn_test_eq_exact 
                                )
                                (i32.eqz
                                )
                                (br_if                                  $module_jsonepart_fn_start 
                                )                              local.get                               $module_jsonepart_fn_var_xreg_4_val 
                                (global.get                                  $module_jsonepart_fn___180__literal_ptr_e 
                                )
                                (call                                  $module_erwasmminibeamminibeamlist_fn_put_list 
                                )
                                (local.set                                  $module_jsonepart_fn_var_xreg_4_val 
                                )                              local.get                               $module_jsonepart_fn_var_xreg_3_val                               local.get                               $module_jsonepart_fn_var_xreg_4_val 
                                (call                                  $module_erwasmminibeamminibeamlist_fn_put_list 
                                )
                                (local.set                                  $module_jsonepart_fn_var_xreg_3_val 
                                )                              local.get                               $module_jsonepart_fn_var_xreg_2_val                               local.get                               $module_jsonepart_fn_var_xreg_3_val 
                                (call                                  $module_erwasmminibeamminibeamlist_fn_put_list 
                                )
                                (local.set                                  $module_jsonepart_fn_var_xreg_2_val 
                                )                              local.get                               $module_jsonepart_fn_var_xreg_1_val                               local.get                               $module_jsonepart_fn_var_xreg_2_val 
                                (call                                  $module_erwasmminibeamminibeamlist_fn_put_list 
                                )
                                (local.set                                  $module_jsonepart_fn_var_xreg_1_val 
                                )
                                (call                                  $module_erwasmminibeamminibeambs_fn_bs_set_position 
                                    (local.get                                      $module_jsonepart_fn_var_xreg_0_val 
                                    )
                                    (i32.shr_u
                                        (local.get                                          $module_jsonepart_fn_var_xreg_9_val 
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                )
                                (call                                  $module_erwasmminibeamminibeambs_fn_bs_get_tail 
                                    (local.get                                      $module_jsonepart_fn_var_xreg_0_val 
                                    )
                                )
                                (local.set                                  $module_jsonepart_fn_var_xreg_0_val 
                                )                              local.get                               $module_jsonepart_fn_var_xreg_0_val                               local.get                               $module_jsonepart_fn_var_xreg_1_val 
                                (call                                  $module_erwasmminibeamminibeamlist_fn_put_list 
                                )
                                (local.set                                  $module_jsonepart_fn_var_xreg_0_val 
                                )
                                (call                                  $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                                    (i32.const                                      4 
                                    )
                                )
                                (local.set                                  $module_jsonepart_fn_temp 
                                )
                                (i32.add
                                    (local.get                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.const                                      4 
                                    )
                                )
                                (global.get                                  $__unique_atom__jsone_part 
                                )
                                (i32.store
                                )
                                (i32.add
                                    (local.get                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.const                                      8 
                                    )
                                )
                                (global.get                                  $__unique_atom__number_exponation_part 
                                )
                                (i32.store
                                )
                                (i32.add
                                    (local.get                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.const                                      12 
                                    )
                                )                              local.get                               $module_jsonepart_fn_var_xreg_0_val 
                                (i32.store
                                )
                                (i32.add
                                    (local.get                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.const                                      16 
                                    )
                                )
                                (global.get                                  $module_jsonepart_fn___232__literal_ptr_e 
                                )
                                (i32.store
                                )
                                (i32.or
                                    (i32.shl
                                        (local.get                                          $module_jsonepart_fn_temp 
                                        )
                                        (i32.const                                          2 
                                        )
                                    )
                                    (i32.const                                      2 
                                    )
                                )                              local.set                               $module_jsonepart_fn_var_xreg_0_val                               local.get                               $module_jsonepart_fn_var_xreg_0_val 
                                (i32.const                                  0x3b 
                                )
                                (call                                  $module_erwasmminibeamminibeamlist_fn_put_list 
                                )
                                (local.set                                  $module_jsonepart_fn_var_xreg_0_val 
                                )
                                (call                                  $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                                    (i32.const                                      2 
                                    )
                                )
                                (local.set                                  $module_jsonepart_fn_temp 
                                )
                                (i32.add
                                    (local.get                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.const                                      4 
                                    )
                                )
                                (global.get                                  $__unique_atom__badarg 
                                )
                                (i32.store
                                )
                                (i32.add
                                    (local.get                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.const                                      8 
                                    )
                                )                              local.get                               $module_jsonepart_fn_var_xreg_0_val 
                                (i32.store
                                )
                                (i32.or
                                    (i32.shl
                                        (local.get                                          $module_jsonepart_fn_temp 
                                        )
                                        (i32.const                                          2 
                                        )
                                    )
                                    (i32.const                                      2 
                                    )
                                )                              local.set                               $module_jsonepart_fn_var_xreg_0_val 
                                (call                                  $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                                    (i32.const                                      2 
                                    )
                                )
                                (local.set                                  $module_jsonepart_fn_temp 
                                )
                                (i32.add
                                    (local.get                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.const                                      4 
                                    )
                                )
                                (global.get                                  $__unique_atom__error 
                                )
                                (i32.store
                                )
                                (i32.add
                                    (local.get                                      $module_jsonepart_fn_temp 
                                    )
                                    (i32.const                                      8 
                                    )
                                )                              local.get                               $module_jsonepart_fn_var_xreg_0_val 
                                (i32.store
                                )
                                (i32.or
                                    (i32.shl
                                        (local.get                                          $module_jsonepart_fn_temp 
                                        )
                                        (i32.const                                          2 
                                        )
                                    )
                                    (i32.const                                      2 
                                    )
                                )                              local.set                               $module_jsonepart_fn_var_xreg_0_val                               local.get                               $module_jsonepart_fn_var_xreg_0_val                               return 
                            )                          local.get                           $module_jsonepart_fn_var_xreg_3_val                           local.get                           $module_jsonepart_fn_var_xreg_4_val 
                            (i32.shr_u
                                (i32.xor
                                    (i32.const                                      0xF 
                                    )
                                )
                                (i32.const                                  4 
                                )
                            )
                            (local.set                              $module_jsonepart_fn_temp 
                            )
                            (i32.shr_u
                                (i32.xor
                                    (i32.const                                      0xF 
                                    )
                                )
                                (i32.const                                  4 
                                )
                            )
                            (i32.mul
                                (local.get                                  $module_jsonepart_fn_temp 
                                )
                            )
                            (local.set                              $module_jsonepart_fn_temp 
                            )
                            (i32.shl
                                (local.get                                  $module_jsonepart_fn_temp 
                                )
                                (i32.const                                  4 
                                )
                            )
                            (i32.or
                                (i32.const                                  0xF 
                                )
                            )                          local.set                           $module_jsonepart_fn_var_xreg_5_val                           local.get                           $module_jsonepart_fn_var_xreg_5_val                           local.get                           $module_jsonepart_fn_var_xreg_2_val 
                            (i32.xor
                                (i32.const                                  0xF 
                                )
                            )
                            (i32.sub
                            )                          local.set                           $module_jsonepart_fn_var_xreg_5_val                           local.get                           $module_jsonepart_fn_var_xreg_9_val 
                            (local.set                              $module_jsonepart_fn_var_yreg_0_val 
                            )                          local.get                           $module_jsonepart_fn_var_xreg_0_val 
                            (local.set                              $module_jsonepart_fn_var_yreg_1_val 
                            )                          local.get                           $module_jsonepart_fn_var_xreg_4_val 
                            (local.set                              $module_jsonepart_fn_var_yreg_2_val 
                            )                          local.get                           $module_jsonepart_fn_var_xreg_3_val 
                            (local.set                              $module_jsonepart_fn_var_yreg_3_val 
                            )                          local.get                           $module_jsonepart_fn_var_xreg_2_val 
                            (local.set                              $module_jsonepart_fn_var_yreg_4_val 
                            )                          local.get                           $module_jsonepart_fn_var_xreg_1_val 
                            (local.set                              $module_jsonepart_fn_var_yreg_5_val 
                            )
                            (local.set                              $module_jsonepart_fn_jump 
                                (i32.const                                  4 
                                )
                            )                          local.get                           $module_jsonepart_fn_var_xreg_5_val 
                            (i32.const                              15 
                            )                          i32.ge_u 
                            (i32.eqz
                            )
                            (br_if                              $module_jsonepart_fn_start 
                            )                          local.get                           $module_jsonepart_fn_var_xreg_5_val 
                            (local.set                              $module_jsonepart_fn_var_xreg_1_val 
                            )
                            (i32.const                              175 
                            )
                            (local.set                              $module_jsonepart_fn_var_xreg_0_val 
                            )                          local.get                           $module_jsonepart_fn_var_xreg_0_val                           local.get                           $module_jsonepart_fn_var_xreg_1_val                           call                           $module_erwasmminibeammath_fn_pow                           local.set                           $module_jsonepart_fn_var_xreg_0_val 
                            (local.set                              $module_jsonepart_fn_jump 
                                (i32.const                                  5 
                                )
                            )
                            (br                              $module_jsonepart_fn_start 
                            )
                        )
                        (i32.const                          0 
                        )                      local.get                       $module_jsonepart_fn_var_xreg_5_val 
                        (i32.xor
                            (i32.const                              0xF 
                            )
                        )
                        (i32.sub
                        )                      local.set                       $module_jsonepart_fn_var_xreg_1_val 
                        (i32.const                          175 
                        )
                        (local.set                          $module_jsonepart_fn_var_xreg_0_val 
                        )                      local.get                       $module_jsonepart_fn_var_xreg_0_val                       local.get                       $module_jsonepart_fn_var_xreg_1_val                       call                       $module_erwasmminibeammath_fn_pow                       local.set                       $module_jsonepart_fn_var_xreg_0_val 
                    )
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_set_position 
                        (local.get                          $module_jsonepart_fn_var_yreg_1_val 
                        )
                        (i32.shr_u
                            (local.get                              $module_jsonepart_fn_var_yreg_0_val 
                            )
                            (i32.const                              4 
                            )
                        )
                    )
                    (i32.const                      0x3b 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_2_val 
                    )
                    (global.get                      $__unique_atom__nil 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_3_val 
                    )                  local.get                   $module_jsonepart_fn_var_xreg_0_val 
                    (local.set                      $module_jsonepart_fn_var_xreg_1_val 
                    )
                    (i32.const                      0x3b 
                    )
                    (local.set                      $module_jsonepart_fn_var_xreg_4_val 
                    )                  local.get                   $module_jsonepart_fn_var_yreg_1_val 
                    (local.set                      $module_jsonepart_fn_var_xreg_0_val 
                    )                  local.get                   $module_jsonepart_fn_var_xreg_0_val                   local.get                   $module_jsonepart_fn_var_xreg_1_val                   local.get                   $module_jsonepart_fn_var_xreg_2_val                   local.get                   $module_jsonepart_fn_var_xreg_3_val                   local.get                   $module_jsonepart_fn_var_xreg_4_val                   call                   $module_jsonepart_fn_next_5                   return 
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      7 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_0_val 
                (global.get                  $__unique_atom__error 
                )
                (call                  $module_erwasmminibeamminibeameq_fn_test_eq_exact 
                )
                (i32.eqz
                )
                (br_if                  $module_jsonepart_fn_start 
                )
                (local.set                  $module_jsonepart_fn_jump 
                    (i32.const                      7 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_1_val 
                (global.get                  $__unique_atom__badarith 
                )
                (call                  $module_erwasmminibeamminibeameq_fn_test_eq_exact 
                )
                (i32.eqz
                )
                (br_if                  $module_jsonepart_fn_start 
                )              local.get               $module_jsonepart_fn_var_yreg_2_val 
                (global.get                  $module_jsonepart_fn___264__literal_ptr_e 
                )
                (call                  $module_erwasmminibeamminibeamlist_fn_put_list 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_0_val 
                )              local.get               $module_jsonepart_fn_var_yreg_3_val               local.get               $module_jsonepart_fn_var_xreg_0_val 
                (call                  $module_erwasmminibeamminibeamlist_fn_put_list 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_0_val 
                )              local.get               $module_jsonepart_fn_var_yreg_4_val               local.get               $module_jsonepart_fn_var_xreg_0_val 
                (call                  $module_erwasmminibeamminibeamlist_fn_put_list 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_0_val 
                )              local.get               $module_jsonepart_fn_var_yreg_5_val               local.get               $module_jsonepart_fn_var_xreg_0_val 
                (call                  $module_erwasmminibeamminibeamlist_fn_put_list 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_0_val 
                )
                (call                  $module_erwasmminibeamminibeambs_fn_bs_set_position 
                    (local.get                      $module_jsonepart_fn_var_yreg_1_val 
                    )
                    (i32.shr_u
                        (local.get                          $module_jsonepart_fn_var_yreg_0_val 
                        )
                        (i32.const                          4 
                        )
                    )
                )
                (call                  $module_erwasmminibeamminibeambs_fn_bs_get_tail 
                    (local.get                      $module_jsonepart_fn_var_yreg_1_val 
                    )
                )
                (local.set                  $module_jsonepart_fn_var_xreg_1_val 
                )              local.get               $module_jsonepart_fn_var_xreg_1_val               local.get               $module_jsonepart_fn_var_xreg_0_val 
                (call                  $module_erwasmminibeamminibeamlist_fn_put_list 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_0_val 
                )
                (call                  $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                    (i32.const                      4 
                    )
                )
                (local.set                  $module_jsonepart_fn_temp 
                )
                (i32.add
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      4 
                    )
                )
                (global.get                  $__unique_atom__jsone_part 
                )
                (i32.store
                )
                (i32.add
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      8 
                    )
                )
                (global.get                  $__unique_atom__number_exponation_part 
                )
                (i32.store
                )
                (i32.add
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      12 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_0_val 
                (i32.store
                )
                (i32.add
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      16 
                    )
                )
                (global.get                  $module_jsonepart_fn___316__literal_ptr_e 
                )
                (i32.store
                )
                (i32.or
                    (i32.shl
                        (local.get                          $module_jsonepart_fn_temp 
                        )
                        (i32.const                          2 
                        )
                    )
                    (i32.const                      2 
                    )
                )              local.set               $module_jsonepart_fn_var_xreg_0_val               local.get               $module_jsonepart_fn_var_xreg_0_val 
                (i32.const                  0x3b 
                )
                (call                  $module_erwasmminibeamminibeamlist_fn_put_list 
                )
                (local.set                  $module_jsonepart_fn_var_xreg_0_val 
                )
                (call                  $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                    (i32.const                      2 
                    )
                )
                (local.set                  $module_jsonepart_fn_temp 
                )
                (i32.add
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      4 
                    )
                )
                (global.get                  $__unique_atom__badarg 
                )
                (i32.store
                )
                (i32.add
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      8 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_0_val 
                (i32.store
                )
                (i32.or
                    (i32.shl
                        (local.get                          $module_jsonepart_fn_temp 
                        )
                        (i32.const                          2 
                        )
                    )
                    (i32.const                      2 
                    )
                )              local.set               $module_jsonepart_fn_var_xreg_0_val 
                (call                  $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                    (i32.const                      2 
                    )
                )
                (local.set                  $module_jsonepart_fn_temp 
                )
                (i32.add
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      4 
                    )
                )
                (global.get                  $__unique_atom__error 
                )
                (i32.store
                )
                (i32.add
                    (local.get                      $module_jsonepart_fn_temp 
                    )
                    (i32.const                      8 
                    )
                )              local.get               $module_jsonepart_fn_var_xreg_0_val 
                (i32.store
                )
                (i32.or
                    (i32.shl
                        (local.get                          $module_jsonepart_fn_temp 
                        )
                        (i32.const                          2 
                        )
                    )
                    (i32.const                      2 
                    )
                )              local.set               $module_jsonepart_fn_var_xreg_0_val               local.get               $module_jsonepart_fn_var_xreg_0_val               return 
            )
        )      unreachable 
    )
    (export      "jsone_part#module_info_0" 
        (func          $module_jsonepart_fn_module_info_0 
        )
    )
    (func      $module_jsonepart_fn_module_info_0 
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_40 
                (block                  $module_jsonepart_fn_label_39 
                    (br_table                      0                       1 
                        (local.get                          $module_jsonepart_fn_jump 
                        )
                    )                  unreachable 
                )
                (unreachable
                )
            )
            (global.get              $__unique_atom__jsone_part 
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val           return 
        )      unreachable 
    )
    (export      "jsone_part#module_info_1" 
        (func          $module_jsonepart_fn_module_info_1 
        )
    )
    (func      $module_jsonepart_fn_module_info_1 
        (param          $module_jsonepart_fn_in_0           i32 
        )
        (result          i32 
        )
        (local          $module_jsonepart_fn_var_xreg_0_val           i32 
        )
        (local          $module_jsonepart_fn_var_xreg_1_val           i32 
        )
        (local          $module_jsonepart_fn_temp           i32 
        )
        (local          $module_jsonepart_fn_jump           i32 
        )      local.get       $module_jsonepart_fn_in_0       local.set       $module_jsonepart_fn_var_xreg_0_val 
        (local.set          $module_jsonepart_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_jsonepart_fn_start 
            (block              $module_jsonepart_fn_label_42 
                (block                  $module_jsonepart_fn_label_41 
                    (br_table                      0                       1 
                        (local.get                          $module_jsonepart_fn_jump 
                        )
                    )                  unreachable 
                )
                (unreachable
                )
            )          local.get           $module_jsonepart_fn_var_xreg_0_val 
            (local.set              $module_jsonepart_fn_var_xreg_1_val 
            )
            (global.get              $__unique_atom__jsone_part 
            )
            (local.set              $module_jsonepart_fn_var_xreg_0_val 
            )          local.get           $module_jsonepart_fn_var_xreg_0_val           local.get           $module_jsonepart_fn_var_xreg_1_val           return 
        )      unreachable 
    )
    (func      $module_elib_fn_answer_0 
        (result          i32 
        )
        (local          $module_elib_fn_var_xreg_0_val           i32 
        )
        (local          $module_elib_fn_temp           i32 
        )
        (local          $module_elib_fn_jump           i32 
        )
        (local.set          $module_elib_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_elib_fn_start 
            (block              $module_elib_fn_label_2 
                (block                  $module_elib_fn_label_1 
                    (br_table                      0                       1 
                        (local.get                          $module_elib_fn_jump 
                        )
                    )                  unreachable 
                )
                (unreachable
                )
            )
            (global.get              $module_elib_fn___4__literal_ptr_e 
            )
            (local.set              $module_elib_fn_var_xreg_0_val 
            )          local.get           $module_elib_fn_var_xreg_0_val           return 
        )      unreachable 
    )
    (func      $module_elib_fn_huh_0 
        (result          i32 
        )
        (local          $module_elib_fn_var_xreg_0_val           i32 
        )
        (local          $module_elib_fn_temp           i32 
        )
        (local          $module_elib_fn_jump           i32 
        )
        (local.set          $module_elib_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_elib_fn_start 
            (block              $module_elib_fn_label_4 
                (block                  $module_elib_fn_label_3 
                    (br_table                      0                       1 
                        (local.get                          $module_elib_fn_jump 
                        )
                    )                  unreachable 
                )
                (unreachable
                )
            )
            (global.get              $module_elib_fn___116__literal_ptr_e 
            )
            (local.set              $module_elib_fn_var_xreg_0_val 
            )          local.get           $module_elib_fn_var_xreg_0_val           return 
        )      unreachable 
    )
    (func      $module_elib_fn_question_1 
        (param          $module_elib_fn_in_0           i32 
        )
        (result          i32 
        )
        (local          $module_elib_fn_var_xreg_0_val           i32 
        )
        (local          $module_elib_fn_var_yreg_0_val           i32 
        )
        (local          $module_elib_fn_var_yreg_1_val           i32 
        )
        (local          $module_elib_fn_temp           i32 
        )
        (local          $module_elib_fn_jump           i32 
        )      local.get       $module_elib_fn_in_0       local.set       $module_elib_fn_var_xreg_0_val 
        (local.set          $module_elib_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_elib_fn_start 
            (block              $module_elib_fn_label_13 
                (block                  $module_elib_fn_label_12 
                    (block                      $module_elib_fn_label_11 
                        (block                          $module_elib_fn_label_10 
                            (block                              $module_elib_fn_label_9 
                                (block                                  $module_elib_fn_label_8 
                                    (block                                      $module_elib_fn_label_7 
                                        (block                                          $module_elib_fn_label_6 
                                            (block                                              $module_elib_fn_label_5 
                                                (br_table                                                  0                                                   1                                                   2                                                   3                                                   4                                                   5                                                   6                                                   7                                                   8 
                                                    (local.get                                                      $module_elib_fn_jump 
                                                    )
                                                )                                              unreachable 
                                            )
                                            (unreachable
                                            )
                                        )
                                        (local.set                                          $module_elib_fn_jump 
                                            (i32.const                                              8 
                                            )
                                        )                                      local.get                                       $module_elib_fn_var_xreg_0_val 
                                        (local.set                                          $module_elib_fn_temp 
                                        )
                                        (local.get                                          $module_elib_fn_temp 
                                        )
                                        (i32.and
                                            (i32.const                                              3 
                                            )
                                        )
                                        (if
                                            (i32.eq
                                                (i32.const                                                  2 
                                                )
                                            )
                                            (then
                                                (local.get                                                  $module_elib_fn_temp 
                                                )
                                                (i32.shr_u
                                                    (i32.const                                                      2 
                                                    )
                                                )
                                                (i32.load
                                                )
                                                (i32.eq
                                                    (i32.const                                                      0x3b 
                                                    )
                                                )
                                                (i32.eqz
                                                )
                                                (local.set                                                  $module_elib_fn_temp 
                                                )
                                            )
                                            (else
                                                (i32.const                                                  0 
                                                )
                                                (local.set                                                  $module_elib_fn_temp 
                                                )
                                            )
                                        )
                                        (local.get                                          $module_elib_fn_temp 
                                        )
                                        (i32.eqz
                                        )
                                        (br_if                                          $module_elib_fn_start 
                                        )
                                        (block                                          $module_elib_fn_get_list                                           local.get                                           $module_elib_fn_var_xreg_0_val 
                                            (i32.and
                                                (i32.const                                                  3 
                                                )
                                            )
                                            (if
                                                (i32.eq
                                                    (i32.const                                                      2 
                                                    )
                                                )
                                                (then                                                  local.get                                                   $module_elib_fn_var_xreg_0_val 
                                                    (i32.shr_u
                                                        (i32.const                                                          2 
                                                        )
                                                    )
                                                    (local.set                                                      $module_elib_fn_temp 
                                                    )
                                                    (i32.load
                                                        (local.get                                                          $module_elib_fn_temp 
                                                        )
                                                    )
                                                    (i32.and
                                                        (i32.const                                                          3 
                                                        )
                                                    )
                                                    (if
                                                        (i32.eq
                                                            (i32.const                                                              1 
                                                            )
                                                        )
                                                        (then
                                                            (i32.load
                                                                (i32.add
                                                                    (i32.const                                                                      4 
                                                                    )
                                                                    (local.get                                                                      $module_elib_fn_temp 
                                                                    )
                                                                )
                                                            )                                                          local.set                                                           $module_elib_fn_var_yreg_1_val 
                                                            (i32.load
                                                                (local.get                                                                  $module_elib_fn_temp 
                                                                )
                                                            )
                                                            (i32.xor
                                                                (i32.const                                                                  3 
                                                                )
                                                            )                                                          local.set                                                           $module_elib_fn_var_yreg_0_val 
                                                            (br                                                              $module_elib_fn_get_list 
                                                            )
                                                        )
                                                    )
                                                    (i32.load
                                                        (local.get                                                          $module_elib_fn_temp 
                                                        )
                                                    )
                                                    (if
                                                        (i32.eq
                                                            (i32.const                                                              0x3b 
                                                            )
                                                        )
                                                        (then
                                                            (i32.const                                                              0x3b 
                                                            )                                                          local.set                                                           $module_elib_fn_var_yreg_0_val 
                                                            (br                                                              $module_elib_fn_get_list 
                                                            )
                                                        )
                                                    )
                                                )
                                            )
                                            (unreachable
                                            )
                                        )                                      local.get                                       $module_elib_fn_var_yreg_1_val 
                                        (local.set                                          $module_elib_fn_var_xreg_0_val 
                                        )                                      local.get                                       $module_elib_fn_var_xreg_0_val                                       call                                       $module_erdump_fn_hexlog                                       local.set                                       $module_elib_fn_var_xreg_0_val 
                                        (local.set                                          $module_elib_fn_jump 
                                            (i32.const                                              2 
                                            )
                                        )                                      local.get                                       $module_elib_fn_var_yreg_1_val 
                                        (global.get                                          $module_elib_fn___348__literal_ptr_e 
                                        )
                                        (call                                          $module_erwasmminibeamminibeameq_fn_test_eq_exact 
                                        )
                                        (i32.eqz
                                        )
                                        (br_if                                          $module_elib_fn_start 
                                        )
                                        (global.get                                          $module_elib_fn___360__literal_ptr_e 
                                        )
                                        (local.set                                          $module_elib_fn_var_xreg_0_val 
                                        )                                      local.get                                       $module_elib_fn_var_xreg_0_val                                       return 
                                    )
                                    (local.set                                      $module_elib_fn_jump 
                                        (i32.const                                          6 
                                        )
                                    )                                  local.get                                   $module_elib_fn_var_yreg_1_val 
                                    (i32.const                                      1055 
                                    )
                                    (i32.eq
                                    )
                                    (br_if                                      $module_elib_fn_start 
                                    )
                                    (local.set                                      $module_elib_fn_jump 
                                        (i32.const                                          5 
                                        )
                                    )                                  local.get                                   $module_elib_fn_var_yreg_1_val 
                                    (i32.const                                      1135 
                                    )
                                    (i32.eq
                                    )
                                    (br_if                                      $module_elib_fn_start 
                                    )
                                    (local.set                                      $module_elib_fn_jump 
                                        (i32.const                                          4 
                                        )
                                    )                                  local.get                                   $module_elib_fn_var_yreg_1_val 
                                    (i32.const                                      1183 
                                    )
                                    (i32.eq
                                    )
                                    (br_if                                      $module_elib_fn_start 
                                    )
                                    (local.set                                      $module_elib_fn_jump 
                                        (i32.const                                          3 
                                        )
                                    )                                  local.get                                   $module_elib_fn_var_yreg_1_val 
                                    (i32.const                                      1975311 
                                    )
                                    (i32.eq
                                    )
                                    (br_if                                      $module_elib_fn_start 
                                    )
                                    (local.set                                      $module_elib_fn_jump 
                                        (i32.const                                          7 
                                        )
                                    )
                                    (br                                      $module_elib_fn_start 
                                    )
                                )
                                (global.get                                  $module_elib_fn___520__literal_ptr_e 
                                )
                                (local.set                                  $module_elib_fn_var_xreg_0_val 
                                )                              local.get                               $module_elib_fn_var_xreg_0_val                               return 
                            )                          call                           $module_elib_fn_answer_0                           return 
                        )
                        (global.get                          $module_elib_fn___560__literal_ptr_e 
                        )
                        (local.set                          $module_elib_fn_var_xreg_0_val 
                        )                      local.get                       $module_elib_fn_var_xreg_0_val                       return 
                    )
                    (global.get                      $module_elib_fn___672__literal_ptr_e 
                    )
                    (local.set                      $module_elib_fn_var_xreg_0_val 
                    )                  local.get                   $module_elib_fn_var_xreg_0_val                   return 
                )              local.get               $module_elib_fn_var_yreg_0_val 
                (local.set                  $module_elib_fn_var_xreg_0_val 
                )              local.get               $module_elib_fn_var_xreg_0_val               call               $module_elib_fn_question_1               return 
            )          call           $module_elib_fn_huh_0           return 
        )      unreachable 
    )
    (export      "elib#parse_1" 
        (func          $module_elib_fn_parse_1 
        )
    )
    (func      $module_elib_fn_parse_1 
        (param          $module_elib_fn_in_0           i32 
        )
        (result          i32 
        )
        (local          $module_elib_fn_var_xreg_0_val           i32 
        )
        (local          $module_elib_fn_var_xreg_1_val           i32 
        )
        (local          $module_elib_fn_var_xreg_2_val           i32 
        )
        (local          $module_elib_fn_temp           i32 
        )
        (local          $module_elib_fn_jump           i32 
        )      local.get       $module_elib_fn_in_0       local.set       $module_elib_fn_var_xreg_0_val 
        (local.set          $module_elib_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_elib_fn_start 
            (block              $module_elib_fn_label_22 
                (block                  $module_elib_fn_label_21 
                    (block                      $module_elib_fn_label_20 
                        (block                          $module_elib_fn_label_19 
                            (block                              $module_elib_fn_label_18 
                                (block                                  $module_elib_fn_label_17 
                                    (block                                      $module_elib_fn_label_16 
                                        (block                                          $module_elib_fn_label_15 
                                            (block                                              $module_elib_fn_label_14 
                                                (br_table                                                  0                                                   1                                                   2                                                   3                                                   4                                                   5                                                   6                                                   7                                                   8 
                                                    (local.get                                                      $module_elib_fn_jump 
                                                    )
                                                )                                              unreachable 
                                            )
                                            (unreachable
                                            )
                                        )
                                        (local.set                                          $module_elib_fn_jump 
                                            (i32.const                                              7 
                                            )
                                        )
                                        (local.get                                          $module_elib_fn_var_xreg_0_val 
                                        )
                                        (i32.const                                          0 
                                        )
                                        (call                                          $module_erwasmminibeamminibeambs_fn_make_match_context 
                                        )
                                        (local.set                                          $module_elib_fn_temp 
                                        )
                                        (if
                                            (i32.eqz
                                                (local.get                                                  $module_elib_fn_temp 
                                                )
                                            )
                                            (then
                                                (nop
                                                )
                                            )
                                            (else
                                                (local.get                                                  $module_elib_fn_temp 
                                                )                                              local.set                                               $module_elib_fn_var_xreg_1_val 
                                            )
                                        )
                                        (i32.eqz
                                            (local.get                                              $module_elib_fn_temp 
                                            )
                                        )
                                        (i32.eqz
                                        )
                                        (i32.eqz
                                        )
                                        (br_if                                          $module_elib_fn_start 
                                        )
                                        (i32.shl
                                            (call                                              $module_erwasmminibeamminibeambs_fn_bs_get_position 
                                                (local.get                                                  $module_elib_fn_var_xreg_1_val 
                                                )
                                            )
                                            (i32.const                                              4 
                                            )
                                        )
                                        (i32.or
                                            (i32.const                                              0xF 
                                            )
                                        )
                                        (local.set                                          $module_elib_fn_var_xreg_0_val 
                                        )
                                        (local.set                                          $module_elib_fn_jump 
                                            (i32.const                                              5 
                                            )
                                        )
                                        (call                                          $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                                            (local.get                                              $module_elib_fn_var_xreg_1_val 
                                            )
                                            (i32.const                                              8 
                                            )
                                            (i32.const                                              1 
                                            )
                                        )
                                        (if
                                            (i32.eqz
                                            )
                                            (then
                                                (br                                                  $module_elib_fn_start 
                                                )
                                            )
                                        )
                                        (i32.shl
                                            (call                                              $module_erwasmminibeamminibeambs_fn_bs_integer 
                                                (local.get                                                  $module_elib_fn_var_xreg_1_val 
                                                )
                                                (i32.const                                                  8 
                                                )
                                            )
                                            (i32.const                                              4 
                                            )
                                        )
                                        (i32.or
                                            (i32.const                                              0xF 
                                            )
                                        )
                                        (local.set                                          $module_elib_fn_var_xreg_2_val 
                                        )
                                        (i32.const                                          1 
                                        )
                                        (if
                                            (i32.eqz
                                            )
                                            (then
                                                (br                                                  $module_elib_fn_start 
                                                )
                                            )
                                        )
                                        (local.set                                          $module_elib_fn_jump 
                                            (i32.const                                              4 
                                            )
                                        )                                      local.get                                       $module_elib_fn_var_xreg_2_val 
                                        (i32.const                                          1055 
                                        )
                                        (i32.eq
                                        )
                                        (br_if                                          $module_elib_fn_start 
                                        )
                                        (local.set                                          $module_elib_fn_jump 
                                            (i32.const                                              3 
                                            )
                                        )                                      local.get                                       $module_elib_fn_var_xreg_2_val 
                                        (i32.const                                          1183 
                                        )
                                        (i32.eq
                                        )
                                        (br_if                                          $module_elib_fn_start 
                                        )
                                        (local.set                                          $module_elib_fn_jump 
                                            (i32.const                                              2 
                                            )
                                        )                                      local.get                                       $module_elib_fn_var_xreg_2_val 
                                        (i32.const                                          1423 
                                        )
                                        (i32.eq
                                        )
                                        (br_if                                          $module_elib_fn_start 
                                        )
                                        (local.set                                          $module_elib_fn_jump 
                                            (i32.const                                              5 
                                            )
                                        )
                                        (br                                          $module_elib_fn_start 
                                        )
                                    )
                                    (local.set                                      $module_elib_fn_jump 
                                        (i32.const                                          6 
                                        )
                                    )
                                    (call                                      $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                                        (local.get                                          $module_elib_fn_var_xreg_1_val 
                                        )
                                        (i32.const                                          24 
                                        )
                                        (i32.const                                          1 
                                        )
                                    )
                                    (if
                                        (i32.eqz
                                        )
                                        (then
                                            (br                                              $module_elib_fn_start 
                                            )
                                        )
                                    )
                                    (i32.shl
                                        (call                                          $module_erwasmminibeamminibeambs_fn_bs_integer 
                                            (local.get                                              $module_elib_fn_var_xreg_1_val 
                                            )
                                            (i32.const                                              24 
                                            )
                                        )
                                        (i32.const                                          4 
                                        )
                                    )
                                    (i32.or
                                        (i32.const                                          0xF 
                                        )
                                    )
                                    (local.set                                      $module_elib_fn_var_xreg_2_val 
                                    )
                                    (i32.const                                      1 
                                    )
                                    (if
                                        (i32.eqz
                                        )
                                        (then
                                            (br                                              $module_elib_fn_start 
                                            )
                                        )
                                    )
                                    (local.set                                      $module_elib_fn_jump 
                                        (i32.const                                          5 
                                        )
                                    )
                                    (call                                      $module_erwasmminibeamminibeambs_fn_bs_ensure_exactly 
                                        (local.get                                          $module_elib_fn_var_xreg_1_val 
                                        )
                                        (i32.const                                          0 
                                        )
                                    )
                                    (if
                                        (i32.eqz
                                        )
                                        (then
                                            (br                                              $module_elib_fn_start 
                                            )
                                        )
                                    )                                  local.get                                   $module_elib_fn_var_xreg_2_val 
                                    (local.set                                      $module_elib_fn_var_xreg_0_val 
                                    )                                  local.get                                   $module_elib_fn_var_xreg_0_val                                   call                                   $module_elib_fn_parse_1                                   return 
                                )
                                (local.set                                  $module_elib_fn_jump 
                                    (i32.const                                      6 
                                    )
                                )
                                (call                                  $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                                    (local.get                                      $module_elib_fn_var_xreg_1_val 
                                    )
                                    (i32.const                                      16 
                                    )
                                    (i32.const                                      8 
                                    )
                                )
                                (if
                                    (i32.eqz
                                    )
                                    (then
                                        (br                                          $module_elib_fn_start 
                                        )
                                    )
                                )
                                (call                                  $module_erwasmminibeamminibeambs_fn_bs_skip 
                                    (local.get                                      $module_elib_fn_var_xreg_1_val 
                                    )
                                    (i32.const                                      8 
                                    )
                                )
                                (if
                                    (i32.eqz
                                    )
                                    (then
                                        (br                                          $module_elib_fn_start 
                                        )
                                    )
                                )
                                (call                                  $module_erwasmminibeamminibeambs_fn_bs_integer 
                                    (local.get                                      $module_elib_fn_var_xreg_1_val 
                                    )
                                    (i32.const                                      8 
                                    )
                                )
                                (i32.const                                  67 
                                )
                                (i32.eq
                                )
                                (if
                                    (i32.eqz
                                    )
                                    (then
                                        (br                                          $module_elib_fn_start 
                                        )
                                    )
                                )
                                (global.get                                  $module_elib_fn___712__literal_ptr_e 
                                )
                                (local.set                                  $module_elib_fn_var_xreg_0_val 
                                )                              local.get                               $module_elib_fn_var_xreg_0_val                               return 
                            )
                            (local.set                              $module_elib_fn_jump 
                                (i32.const                                  6 
                                )
                            )
                            (call                              $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
                                (local.get                                  $module_elib_fn_var_xreg_1_val 
                                )
                                (i32.const                                  16 
                                )
                                (i32.const                                  8 
                                )
                            )
                            (if
                                (i32.eqz
                                )
                                (then
                                    (br                                      $module_elib_fn_start 
                                    )
                                )
                            )
                            (call                              $module_erwasmminibeamminibeambs_fn_bs_skip 
                                (local.get                                  $module_elib_fn_var_xreg_1_val 
                                )
                                (i32.const                                  8 
                                )
                            )
                            (if
                                (i32.eqz
                                )
                                (then
                                    (br                                      $module_elib_fn_start 
                                    )
                                )
                            )
                            (call                              $module_erwasmminibeamminibeambs_fn_bs_integer 
                                (local.get                                  $module_elib_fn_var_xreg_1_val 
                                )
                                (i32.const                                  8 
                                )
                            )
                            (i32.const                              67 
                            )
                            (i32.eq
                            )
                            (if
                                (i32.eqz
                                )
                                (then
                                    (br                                      $module_elib_fn_start 
                                    )
                                )
                            )
                            (global.get                              $module_elib_fn___728__literal_ptr_e 
                            )
                            (local.set                              $module_elib_fn_var_xreg_0_val 
                            )                          local.get                           $module_elib_fn_var_xreg_0_val                           return 
                        )
                        (call                          $module_erwasmminibeamminibeambs_fn_bs_set_position 
                            (local.get                              $module_elib_fn_var_xreg_1_val 
                            )
                            (i32.shr_u
                                (local.get                                  $module_elib_fn_var_xreg_0_val 
                                )
                                (i32.const                                  4 
                                )
                            )
                        )
                        (local.set                          $module_elib_fn_jump 
                            (i32.const                              6 
                            )
                        )
                        (call                          $module_erwasmminibeamminibeambs_fn_bs_ensure_exactly 
                            (local.get                              $module_elib_fn_var_xreg_1_val 
                            )
                            (i32.const                              0 
                            )
                        )
                        (if
                            (i32.eqz
                            )
                            (then
                                (br                                  $module_elib_fn_start 
                                )
                            )
                        )
                        (global.get                          $module_elib_fn___744__literal_ptr_e 
                        )
                        (local.set                          $module_elib_fn_var_xreg_0_val 
                        )                      local.get                       $module_elib_fn_var_xreg_0_val                       return 
                    )
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_set_position 
                        (local.get                          $module_elib_fn_var_xreg_1_val 
                        )
                        (i32.shr_u
                            (local.get                              $module_elib_fn_var_xreg_0_val 
                            )
                            (i32.const                              4 
                            )
                        )
                    )
                    (call                      $module_erwasmminibeamminibeambs_fn_bs_get_tail 
                        (local.get                          $module_elib_fn_var_xreg_1_val 
                        )
                    )
                    (local.set                      $module_elib_fn_var_xreg_0_val 
                    )                  local.get                   $module_elib_fn_var_xreg_0_val                   call                   $module_jsonepart_fn_parse_1                   local.set                   $module_elib_fn_var_xreg_0_val 
                    (local.set                      $module_elib_fn_jump 
                        (i32.const                          8 
                        )
                    )
                    (local.get                      $module_elib_fn_var_xreg_0_val 
                    )
                    (local.set                      $module_elib_fn_temp 
                    )
                    (local.get                      $module_elib_fn_temp 
                    )
                    (i32.and
                        (i32.const                          3 
                        )
                    )
                    (if
                        (i32.eq
                            (i32.const                              2 
                            )
                        )
                        (then
                            (local.get                              $module_elib_fn_temp 
                            )
                            (i32.shr_u
                                (i32.const                                  2 
                                )
                            )
                            (local.set                              $module_elib_fn_temp 
                            )
                            (i32.load
                                (local.get                                  $module_elib_fn_temp 
                                )
                            )
                            (i32.and
                                (i32.const                                  0x3f 
                                )
                            )
                            (if
                                (i32.eqz
                                )
                                (then
                                    (i32.load
                                        (local.get                                          $module_elib_fn_temp 
                                        )
                                    )
                                    (i32.const                                      6 
                                    )
                                    (i32.shr_u
                                    )
                                    (if
                                        (i32.eq
                                            (i32.const                                              3 
                                            )
                                        )
                                        (then
                                            (i32.load
                                                (i32.add
                                                    (local.get                                                      $module_elib_fn_temp 
                                                    )
                                                    (i32.const                                                      4 
                                                    )
                                                )
                                            )
                                            (global.get                                              $__unique_atom__ok 
                                            )
                                            (local.set                                              $module_elib_fn_temp 
                                                (i32.eq
                                                )
                                            )
                                        )
                                        (else
                                            (local.set                                              $module_elib_fn_temp 
                                                (i32.const                                                  0 
                                                )
                                            )
                                        )
                                    )
                                )
                                (else
                                    (local.set                                      $module_elib_fn_temp 
                                        (i32.const                                          0 
                                        )
                                    )
                                )
                            )
                        )
                        (else
                            (local.set                              $module_elib_fn_temp 
                                (i32.const                                  0 
                                )
                            )
                        )
                    )
                    (local.get                      $module_elib_fn_temp 
                    )
                    (i32.eqz
                    )
                    (br_if                      $module_elib_fn_start 
                    )                  local.get                   $module_elib_fn_var_xreg_0_val 
                    (local.set                      $module_elib_fn_temp 
                    )
                    (local.get                      $module_elib_fn_temp 
                    )
                    (i32.and
                        (i32.const                          3 
                        )
                    )
                    (if
                        (i32.eq
                            (i32.const                              2 
                            )
                        )
                        (then
                            (i32.shr_u
                                (local.get                                  $module_elib_fn_temp 
                                )
                                (i32.const                                  2 
                                )
                            )
                            (local.set                              $module_elib_fn_temp 
                            )
                            (i32.load
                                (local.get                                  $module_elib_fn_temp 
                                )
                            )
                            (i32.and
                                (i32.const                                  0x3f 
                                )
                            )
                            (if
                                (i32.eqz
                                )
                                (then
                                    (local.get                                      $module_elib_fn_temp 
                                    )
                                    (i32.const                                      8 
                                    )
                                    (i32.add
                                    )
                                    (i32.load
                                    )
                                    (local.set                                      $module_elib_fn_temp 
                                    )
                                )
                                (else
                                    (unreachable
                                    )
                                )
                            )
                        )
                        (else
                            (unreachable
                            )
                        )
                    )
                    (local.get                      $module_elib_fn_temp 
                    )                  local.set                   $module_elib_fn_var_xreg_0_val                   local.get                   $module_elib_fn_var_xreg_0_val 
                    (i32.const                      0x3b 
                    )
                    (call                      $module_erwasmminibeamminibeamlist_fn_put_list 
                    )
                    (local.set                      $module_elib_fn_var_xreg_1_val 
                    )
                    (call                      $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                        (i32.const                          2 
                        )
                    )
                    (local.set                      $module_elib_fn_temp 
                    )
                    (i32.add
                        (local.get                          $module_elib_fn_temp 
                        )
                        (i32.const                          4 
                        )
                    )
                    (global.get                      $__unique_atom__answer 
                    )
                    (i32.store
                    )
                    (i32.add
                        (local.get                          $module_elib_fn_temp 
                        )
                        (i32.const                          8 
                        )
                    )                  local.get                   $module_elib_fn_var_xreg_0_val 
                    (i32.store
                    )
                    (i32.or
                        (i32.shl
                            (local.get                              $module_elib_fn_temp 
                            )
                            (i32.const                              2 
                            )
                        )
                        (i32.const                          2 
                        )
                    )                  local.set                   $module_elib_fn_var_xreg_0_val                   local.get                   $module_elib_fn_var_xreg_0_val                   local.get                   $module_elib_fn_var_xreg_1_val 
                    (call                      $module_erwasmminibeamminibeamlist_fn_put_list 
                    )
                    (local.set                      $module_elib_fn_var_xreg_0_val 
                    )                  local.get                   $module_elib_fn_var_xreg_0_val                   return 
                )              local.get               $module_elib_fn_var_xreg_0_val               call               $module_jsonepart_fn_parse_1               local.set               $module_elib_fn_var_xreg_0_val 
                (local.set                  $module_elib_fn_jump 
                    (i32.const                      8 
                    )
                )
                (local.get                  $module_elib_fn_var_xreg_0_val 
                )
                (local.set                  $module_elib_fn_temp 
                )
                (local.get                  $module_elib_fn_temp 
                )
                (i32.and
                    (i32.const                      3 
                    )
                )
                (if
                    (i32.eq
                        (i32.const                          2 
                        )
                    )
                    (then
                        (local.get                          $module_elib_fn_temp 
                        )
                        (i32.shr_u
                            (i32.const                              2 
                            )
                        )
                        (local.set                          $module_elib_fn_temp 
                        )
                        (i32.load
                            (local.get                              $module_elib_fn_temp 
                            )
                        )
                        (i32.and
                            (i32.const                              0x3f 
                            )
                        )
                        (if
                            (i32.eqz
                            )
                            (then
                                (i32.load
                                    (local.get                                      $module_elib_fn_temp 
                                    )
                                )
                                (i32.const                                  6 
                                )
                                (i32.shr_u
                                )
                                (if
                                    (i32.eq
                                        (i32.const                                          3 
                                        )
                                    )
                                    (then
                                        (i32.load
                                            (i32.add
                                                (local.get                                                  $module_elib_fn_temp 
                                                )
                                                (i32.const                                                  4 
                                                )
                                            )
                                        )
                                        (global.get                                          $__unique_atom__ok 
                                        )
                                        (local.set                                          $module_elib_fn_temp 
                                            (i32.eq
                                            )
                                        )
                                    )
                                    (else
                                        (local.set                                          $module_elib_fn_temp 
                                            (i32.const                                              0 
                                            )
                                        )
                                    )
                                )
                            )
                            (else
                                (local.set                                  $module_elib_fn_temp 
                                    (i32.const                                      0 
                                    )
                                )
                            )
                        )
                    )
                    (else
                        (local.set                          $module_elib_fn_temp 
                            (i32.const                              0 
                            )
                        )
                    )
                )
                (local.get                  $module_elib_fn_temp 
                )
                (i32.eqz
                )
                (br_if                  $module_elib_fn_start 
                )              local.get               $module_elib_fn_var_xreg_0_val 
                (local.set                  $module_elib_fn_temp 
                )
                (local.get                  $module_elib_fn_temp 
                )
                (i32.and
                    (i32.const                      3 
                    )
                )
                (if
                    (i32.eq
                        (i32.const                          2 
                        )
                    )
                    (then
                        (i32.shr_u
                            (local.get                              $module_elib_fn_temp 
                            )
                            (i32.const                              2 
                            )
                        )
                        (local.set                          $module_elib_fn_temp 
                        )
                        (i32.load
                            (local.get                              $module_elib_fn_temp 
                            )
                        )
                        (i32.and
                            (i32.const                              0x3f 
                            )
                        )
                        (if
                            (i32.eqz
                            )
                            (then
                                (local.get                                  $module_elib_fn_temp 
                                )
                                (i32.const                                  8 
                                )
                                (i32.add
                                )
                                (i32.load
                                )
                                (local.set                                  $module_elib_fn_temp 
                                )
                            )
                            (else
                                (unreachable
                                )
                            )
                        )
                    )
                    (else
                        (unreachable
                        )
                    )
                )
                (local.get                  $module_elib_fn_temp 
                )              local.set               $module_elib_fn_var_xreg_0_val               local.get               $module_elib_fn_var_xreg_0_val 
                (i32.const                  0x3b 
                )
                (call                  $module_erwasmminibeamminibeamlist_fn_put_list 
                )
                (local.set                  $module_elib_fn_var_xreg_1_val 
                )
                (call                  $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
                    (i32.const                      2 
                    )
                )
                (local.set                  $module_elib_fn_temp 
                )
                (i32.add
                    (local.get                      $module_elib_fn_temp 
                    )
                    (i32.const                      4 
                    )
                )
                (global.get                  $__unique_atom__answer 
                )
                (i32.store
                )
                (i32.add
                    (local.get                      $module_elib_fn_temp 
                    )
                    (i32.const                      8 
                    )
                )              local.get               $module_elib_fn_var_xreg_0_val 
                (i32.store
                )
                (i32.or
                    (i32.shl
                        (local.get                          $module_elib_fn_temp 
                        )
                        (i32.const                          2 
                        )
                    )
                    (i32.const                      2 
                    )
                )              local.set               $module_elib_fn_var_xreg_0_val               local.get               $module_elib_fn_var_xreg_0_val               local.get               $module_elib_fn_var_xreg_1_val 
                (call                  $module_erwasmminibeamminibeamlist_fn_put_list 
                )
                (local.set                  $module_elib_fn_var_xreg_0_val 
                )              local.get               $module_elib_fn_var_xreg_0_val               return 
            )
            (call              $module_erdump_fn_hexlog 
                (i32.const                  0xDEAD_0BAD 
                )
            )
            (unreachable
            )
        )      unreachable 
    )
    (export      "elib#dispatch_2" 
        (func          $module_elib_fn_dispatch_2 
        )
    )
    (func      $module_elib_fn_dispatch_2 
        (param          $module_elib_fn_in_0           i32 
        )
        (param          $module_elib_fn_in_1           i32 
        )
        (result          i32 
        )
        (local          $module_elib_fn_var_xreg_0_val           i32 
        )
        (local          $module_elib_fn_var_xreg_1_val           i32 
        )
        (local          $module_elib_fn_temp           i32 
        )
        (local          $module_elib_fn_jump           i32 
        )      local.get       $module_elib_fn_in_1       local.set       $module_elib_fn_var_xreg_1_val       local.get       $module_elib_fn_in_0       local.set       $module_elib_fn_var_xreg_0_val 
        (local.set          $module_elib_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_elib_fn_start 
            (block              $module_elib_fn_label_24 
                (block                  $module_elib_fn_label_23 
                    (br_table                      0                       1 
                        (local.get                          $module_elib_fn_jump 
                        )
                    )                  unreachable 
                )
                (unreachable
                )
            )          local.get           $module_elib_fn_var_xreg_0_val           call           $module_elib_fn_parse_1           local.set           $module_elib_fn_var_xreg_0_val           local.get           $module_elib_fn_var_xreg_0_val           call           $module_elib_fn_question_1           return 
        )      unreachable 
    )
    (export      "elib#module_info_0" 
        (func          $module_elib_fn_module_info_0 
        )
    )
    (func      $module_elib_fn_module_info_0 
        (result          i32 
        )
        (local          $module_elib_fn_var_xreg_0_val           i32 
        )
        (local          $module_elib_fn_temp           i32 
        )
        (local          $module_elib_fn_jump           i32 
        )
        (local.set          $module_elib_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_elib_fn_start 
            (block              $module_elib_fn_label_26 
                (block                  $module_elib_fn_label_25 
                    (br_table                      0                       1 
                        (local.get                          $module_elib_fn_jump 
                        )
                    )                  unreachable 
                )
                (unreachable
                )
            )
            (global.get              $__unique_atom__elib 
            )
            (local.set              $module_elib_fn_var_xreg_0_val 
            )          local.get           $module_elib_fn_var_xreg_0_val           return 
        )      unreachable 
    )
    (export      "elib#module_info_1" 
        (func          $module_elib_fn_module_info_1 
        )
    )
    (func      $module_elib_fn_module_info_1 
        (param          $module_elib_fn_in_0           i32 
        )
        (result          i32 
        )
        (local          $module_elib_fn_var_xreg_0_val           i32 
        )
        (local          $module_elib_fn_var_xreg_1_val           i32 
        )
        (local          $module_elib_fn_temp           i32 
        )
        (local          $module_elib_fn_jump           i32 
        )      local.get       $module_elib_fn_in_0       local.set       $module_elib_fn_var_xreg_0_val 
        (local.set          $module_elib_fn_jump 
            (i32.const              1 
            )
        )
        (loop          $module_elib_fn_start 
            (block              $module_elib_fn_label_28 
                (block                  $module_elib_fn_label_27 
                    (br_table                      0                       1 
                        (local.get                          $module_elib_fn_jump 
                        )
                    )                  unreachable 
                )
                (unreachable
                )
            )          local.get           $module_elib_fn_var_xreg_0_val 
            (local.set              $module_elib_fn_var_xreg_1_val 
            )
            (global.get              $__unique_atom__elib 
            )
            (local.set              $module_elib_fn_var_xreg_0_val 
            )          local.get           $module_elib_fn_var_xreg_0_val           local.get           $module_elib_fn_var_xreg_1_val           return 
        )      unreachable 
    )
    (func      $module_erwasmminibeammath_fn_pow 
        (param          $module_erwasmminibeammath_fn_value_a           i32 
        )
        (param          $module_erwasmminibeammath_fn_value_b           i32 
        )
        (result          i32 
        )
        (local.get          $module_erwasmminibeammath_fn_value_a 
        )
    )
    (export      "math#pow_2" 
        (func          $module_erwasmminibeammath_fn_pow 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_i16_flip 
        (param          $module_erwasmminibeamminibeambs_fn_value           i32 
        )
        (result          i32 
        )
        (i32.or
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_value 
                )
                (i32.const                  8 
                )
            )
            (i32.and
                (i32.shl
                    (local.get                      $module_erwasmminibeamminibeambs_fn_value 
                    )
                    (i32.const                      8 
                    )
                )
                (i32.const                  0xFF00 
                )
            )
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_i32_flip 
        (param          $module_erwasmminibeamminibeambs_fn_value           i32 
        )
        (result          i32 
        )
        (i32.or
            (i32.or
                (i32.shr_u
                    (local.get                      $module_erwasmminibeamminibeambs_fn_value 
                    )
                    (i32.const                      24 
                    )
                )
                (i32.and
                    (i32.shr_u
                        (local.get                          $module_erwasmminibeamminibeambs_fn_value 
                        )
                        (i32.const                          8 
                        )
                    )
                    (i32.const                      0xFF_00 
                    )
                )
            )
            (i32.or
                (i32.and
                    (i32.shl
                        (local.get                          $module_erwasmminibeamminibeambs_fn_value 
                        )
                        (i32.const                          8 
                        )
                    )
                    (i32.const                      0xFF_00_00 
                    )
                )
                (i32.and
                    (i32.shl
                        (local.get                          $module_erwasmminibeamminibeambs_fn_value 
                        )
                        (i32.const                          24 
                        )
                    )
                    (i32.const                      0xFF_00_00_00 
                    )
                )
            )
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_make_match_context 
        (param          $module_erwasmminibeamminibeambs_fn_mem           i32 
        )
        (param          $module_erwasmminibeamminibeambs_fn_offset           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ret           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_mem 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_mem 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  4 
                )
            )
            (then
                (return
                    (local.get                      $module_erwasmminibeamminibeambs_fn_mem 
                    )
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (call              $module_erdump_fn_alloc 
                (i32.const                  4 
                )
                (i32.const                  16 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ret 
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.store
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
            (i32.const              0x04 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.add
                (i32.const                  4 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
            )
        )
        (i32.store
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
            (local.get              $module_erwasmminibeamminibeambs_fn_mem 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.add
                (i32.const                  4 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
            )
        )
        (i32.store
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
            (local.get              $module_erwasmminibeamminibeambs_fn_offset 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.add
                (i32.const                  4 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
            )
        )
        (i32.store
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
            (i32.const              0x00 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.add
                (i32.const                  4 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
            )
        )
        (i32.or
            (i32.shl
                (local.get                  $module_erwasmminibeamminibeambs_fn_ret 
                )
                (i32.const                  2 
                )
            )
            (i32.const              2 
            )
        )
    )
    (export      "minibeam#make_match_context_1" 
        (func          $module_erwasmminibeamminibeambs_fn_make_match_context 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_bs_integer 
        (param          $module_erwasmminibeamminibeambs_fn_ctx           i32 
        )
        (param          $module_erwasmminibeamminibeambs_fn_bits_number           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_bin_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_temp           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_offset           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_ctx 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_ctx 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  4 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bin_ptr 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_bin_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  0x24 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.add
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_offset 
                )
                (i32.const                  3 
                )
            )
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  8 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_temp 
        )
        (block          $module_erwasmminibeamminibeambs_fn_load 
            (if
                (i32.eq
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bits_number 
                    )
                    (i32.const                      8 
                    )
                )
                (then
                    (i32.load8_u
                        (local.get                          $module_erwasmminibeamminibeambs_fn_temp 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeambs_fn_temp 
                    )
                    (br                      $module_erwasmminibeamminibeambs_fn_load 
                    )
                )
            )
            (if
                (i32.eq
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bits_number 
                    )
                    (i32.const                      16 
                    )
                )
                (then
                    (local.set                      $module_erwasmminibeamminibeambs_fn_temp 
                        (call                          $module_erwasmminibeamminibeambs_fn_i16_flip 
                            (i32.load16_u
                                (local.get                                  $module_erwasmminibeamminibeambs_fn_temp 
                                )
                            )
                        )
                    )
                    (br                      $module_erwasmminibeamminibeambs_fn_load 
                    )
                )
            )
            (if
                (i32.eq
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bits_number 
                    )
                    (i32.const                      32 
                    )
                )
                (then
                    (i32.load
                        (local.get                          $module_erwasmminibeamminibeambs_fn_temp 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeambs_fn_temp 
                        (call                          $module_erwasmminibeamminibeambs_fn_i32_flip 
                            (i32.load
                                (local.get                                  $module_erwasmminibeamminibeambs_fn_temp 
                                )
                            )
                        )
                    )
                    (br                      $module_erwasmminibeamminibeambs_fn_load 
                    )
                )
            )
            (unreachable
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_offset 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_bits_number 
                )
            )
        )
        (i32.store
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
            (local.get              $module_erwasmminibeamminibeambs_fn_offset 
            )
        )
        (local.get          $module_erwasmminibeamminibeambs_fn_temp 
        )
    )
    (export      "minibeam#bs_load_integer_1" 
        (func          $module_erwasmminibeamminibeambs_fn_bs_integer 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
        (param          $module_erwasmminibeamminibeambs_fn_ctx           i32 
        )
        (param          $module_erwasmminibeamminibeambs_fn_unit_size_bits           i32 
        )
        (param          $module_erwasmminibeamminibeambs_fn_unit_round           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_bin_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_size           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_offset           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_ctx 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_ctx 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  4 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bin_ptr 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_bin_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  0x24 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_size 
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_size 
            (i32.sub
                (local.get                  $module_erwasmminibeamminibeambs_fn_size 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_offset 
                )
            )
        )
        (i32.and
            (i32.ge_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_size 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_unit_size_bits 
                )
            )
            (i32.eqz
                (i32.rem_u
                    (local.get                      $module_erwasmminibeamminibeambs_fn_size 
                    )
                    (local.get                      $module_erwasmminibeamminibeambs_fn_unit_round 
                    )
                )
            )
        )
    )
    (export      "minibeam#bs_ensure_at_least_2" 
        (func          $module_erwasmminibeamminibeambs_fn_bs_ensure_at_least 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_bs_ensure_exactly 
        (param          $module_erwasmminibeamminibeambs_fn_ctx           i32 
        )
        (param          $module_erwasmminibeamminibeambs_fn_unit_size_bits           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_bin_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_size           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_offset           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_ctx 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_ctx 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  4 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bin_ptr 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_bin_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  0x24 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_size 
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_size 
            (i32.sub
                (local.get                  $module_erwasmminibeamminibeambs_fn_size 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_offset 
                )
            )
        )
        (i32.eq
            (local.get              $module_erwasmminibeamminibeambs_fn_size 
            )
            (local.get              $module_erwasmminibeamminibeambs_fn_unit_size_bits 
            )
        )
    )
    (export      "minibeam#bs_ensure_exactly_1" 
        (func          $module_erwasmminibeamminibeambs_fn_bs_ensure_exactly 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_bs_skip 
        (param          $module_erwasmminibeamminibeambs_fn_ctx           i32 
        )
        (param          $module_erwasmminibeamminibeambs_fn_bits_number           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_bin_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_temp           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_offset           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_ctx 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_ctx 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  4 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_offset 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_bits_number 
                )
            )
        )
        (i32.store
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
            (local.get              $module_erwasmminibeamminibeambs_fn_offset 
            )
        )
        (i32.const          1 
        )
    )
    (export      "minibeam#bs_skip_1" 
        (func          $module_erwasmminibeamminibeambs_fn_bs_skip 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_bs_get_position 
        (param          $module_erwasmminibeamminibeambs_fn_ctx           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_bin_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_offset           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_ctx 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_ctx 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  4 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
        )
    )
    (export      "minibeam#bs_get_position_0" 
        (func          $module_erwasmminibeamminibeambs_fn_bs_get_position 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_bs_set_position 
        (param          $module_erwasmminibeamminibeambs_fn_ctx           i32 
        )
        (param          $module_erwasmminibeamminibeambs_fn_offset           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_bin_ptr           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_ctx 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_ctx 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  4 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.store
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
            (local.get              $module_erwasmminibeamminibeambs_fn_offset 
            )
        )
        (i32.const          1 
        )
    )
    (export      "minibeam#bs_set_position_1" 
        (func          $module_erwasmminibeamminibeambs_fn_bs_set_position 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_bs_get_binary 
        (param          $module_erwasmminibeamminibeambs_fn_ctx           i32 
        )
        (param          $module_erwasmminibeamminibeambs_fn_read_size           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_bin_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_size           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_offset           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ret           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_ctx 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_ctx 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  4 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.get          $module_erwasmminibeamminibeambs_fn_read_size 
        )
        (i32.and
            (i32.const              0xF 
            )
        )
        (if
            (i32.eq
                (i32.const                  0xF 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_read_size 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_read_size 
                )
                (i32.const                  4 
                )
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bin_ptr 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_bin_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  0x24 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_size 
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_size 
            (i32.sub
                (local.get                  $module_erwasmminibeamminibeambs_fn_size 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_offset 
                )
            )
        )
        (call          $module_erdump_fn_write_buf 
            (i32.add
                (i32.shr_u
                    (local.get                      $module_erwasmminibeamminibeambs_fn_offset 
                    )
                    (i32.const                      3 
                    )
                )
                (i32.add
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bin_ptr 
                    )
                    (i32.const                      8 
                    )
                )
            )
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_read_size 
                )
                (i32.const                  3 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ret 
        )
        (if
            (i32.eqz
                (local.get                  $module_erwasmminibeamminibeambs_fn_ret 
                )
            )
            (then
                (return
                    (i32.const                      0 
                    )
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_offset 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_read_size 
                )
            )
        )
        (i32.store
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
            (local.get              $module_erwasmminibeamminibeambs_fn_offset 
            )
        )
        (local.get          $module_erwasmminibeamminibeambs_fn_ret 
        )
    )
    (export      "minibeam#get_binary_from_ctx_1" 
        (func          $module_erwasmminibeamminibeambs_fn_bs_get_binary 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_bs_get_tail 
        (param          $module_erwasmminibeamminibeambs_fn_ctx           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_bin_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_size           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_offset           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ret           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_ctx 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_ctx 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  4 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bin_ptr 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_bin_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_bin_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  0x24 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_bin_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_size 
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_size 
            (i32.sub
                (local.get                  $module_erwasmminibeamminibeambs_fn_size 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_offset 
                )
            )
        )
        (call          $module_erdump_fn_write_buf 
            (i32.add
                (i32.shr_u
                    (local.get                      $module_erwasmminibeamminibeambs_fn_offset 
                    )
                    (i32.const                      3 
                    )
                )
                (i32.add
                    (local.get                      $module_erwasmminibeamminibeambs_fn_bin_ptr 
                    )
                    (i32.const                      8 
                    )
                )
            )
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_size 
                )
                (i32.const                  3 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ret 
        )
        (if
            (i32.eqz
                (local.get                  $module_erwasmminibeamminibeambs_fn_ret 
                )
            )
            (then
                (return
                    (i32.const                      0 
                    )
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_offset 
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_offset 
                )
                (local.get                  $module_erwasmminibeamminibeambs_fn_size 
                )
            )
        )
        (i32.store
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  8 
                )
            )
            (local.get              $module_erwasmminibeamminibeambs_fn_offset 
            )
        )
        (local.get          $module_erwasmminibeamminibeambs_fn_ret 
        )
    )
    (export      "minibeam#bs_get_tail_0" 
        (func          $module_erwasmminibeamminibeambs_fn_bs_get_tail 
        )
    )
    (func      $module_erwasmminibeamminibeambs_fn_get_byte_size 
        (param          $module_erwasmminibeamminibeambs_fn_mem           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeambs_fn_size           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeambs_fn_mem 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.const                  2 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_ptr 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeambs_fn_mem 
                )
                (i32.const                  2 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeambs_fn_ptr 
            )
        )
        (i32.and
            (i32.const              0x3F 
            )
        )
        (if
            (i32.eq
                (i32.const                  0x24 
                )
            )
            (then              nop 
            )
            (else              unreachable 
            )
        )
        (i32.load
            (i32.add
                (local.get                  $module_erwasmminibeamminibeambs_fn_ptr 
                )
                (i32.const                  4 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeambs_fn_size 
        )
        (i32.shr_u
            (local.get              $module_erwasmminibeamminibeambs_fn_size 
            )
            (i32.const              3 
            )
        )
    )
    (export      "minibeam#get_byte_size_1" 
        (func          $module_erwasmminibeamminibeambs_fn_get_byte_size 
        )
    )
    (func      $module_erwasmminibeamminibeamlist_fn_put_list 
        (param          $module_erwasmminibeamminibeamlist_fn_head           i32 
        )
        (param          $module_erwasmminibeamminibeamlist_fn_tail           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeamlist_fn_ret           i32 
        )
        (local          $module_erwasmminibeamminibeamlist_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeamlist_fn_tail_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeamlist_fn_temp           i32 
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeamlist_fn_tail 
                    )
                    (i32.const                      3 
                    )
                )
                (i32.const                  2 
                )
            )
            (then
                (local.set                  $module_erwasmminibeamminibeamlist_fn_tail_ptr 
                    (i32.shr_u
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_tail 
                        )
                        (i32.const                          2 
                        )
                    )
                )
                (i32.load
                    (local.get                      $module_erwasmminibeamminibeamlist_fn_tail_ptr 
                    )
                )
                (local.set                  $module_erwasmminibeamminibeamlist_fn_tail 
                )
            )
        )
        (block          $module_erwasmminibeamminibeamlist_fn_switch 
            (if
                (i32.eq
                    (local.get                      $module_erwasmminibeamminibeamlist_fn_tail 
                    )
                    (i32.const                      0x3b 
                    )
                )
                (then
                    (call                      $module_erdump_fn_alloc 
                        (i32.const                          4 
                        )
                        (i32.const                          16 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_ptr 
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_ret 
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_ptr 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_tail_ptr 
                        (i32.add
                            (local.get                              $module_erwasmminibeamminibeamlist_fn_tail_ptr 
                            )
                            (i32.const                              8 
                            )
                        )
                    )
                    (i32.shl
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_tail_ptr 
                        )
                        (i32.const                          2 
                        )
                    )
                    (i32.or
                        (i32.const                          1 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_tail 
                    )
                    (i32.store
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_ptr 
                        )
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_tail 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_ptr 
                        (i32.add
                            (i32.const                              4 
                            )
                            (local.get                              $module_erwasmminibeamminibeamlist_fn_ptr 
                            )
                        )
                    )
                    (i32.store
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_ptr 
                        )
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_head 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_ptr 
                        (i32.add
                            (i32.const                              4 
                            )
                            (local.get                              $module_erwasmminibeamminibeamlist_fn_ptr 
                            )
                        )
                    )
                    (i32.store
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_ptr 
                        )
                        (i32.const                          0x3b 
                        )
                    )
                    (br                      $module_erwasmminibeamminibeamlist_fn_switch 
                    )
                )
            )
            (if
                (i32.eq
                    (i32.and
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_tail 
                        )
                        (i32.const                          3 
                        )
                    )
                    (i32.const                      1 
                    )
                )
                (then
                    (call                      $module_erdump_fn_alloc 
                        (i32.const                          4 
                        )
                        (i32.const                          8 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_ptr 
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_ret 
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_ptr 
                        )
                    )
                    (i32.shl
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_tail_ptr 
                        )
                        (i32.const                          2 
                        )
                    )
                    (i32.or
                        (i32.const                          1 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_tail 
                    )
                    (i32.store
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_ptr 
                        )
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_tail 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeamlist_fn_ptr 
                        (i32.add
                            (i32.const                              4 
                            )
                            (local.get                              $module_erwasmminibeamminibeamlist_fn_ptr 
                            )
                        )
                    )
                    (i32.store
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_ptr 
                        )
                        (local.get                          $module_erwasmminibeamminibeamlist_fn_head 
                        )
                    )
                    (br                      $module_erwasmminibeamminibeamlist_fn_switch 
                    )
                )
            )
            (unreachable
            )
        )
        (i32.or
            (i32.shl
                (local.get                  $module_erwasmminibeamminibeamlist_fn_ret 
                )
                (i32.const                  2 
                )
            )
            (i32.const              2 
            )
        )
    )
    (export      "minibeam#list_put_2" 
        (func          $module_erwasmminibeamminibeamlist_fn_put_list 
        )
    )
    (func      $module_erwasmminibeamminibeameq_fn_test_eq_helper 
        (param          $module_erwasmminibeamminibeameq_fn_ptr_a           i32 
        )
        (param          $module_erwasmminibeamminibeameq_fn_ptr_b           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeameq_fn_element_a           i32 
        )
        (local          $module_erwasmminibeamminibeameq_fn_element_b           i32 
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeameq_fn_ptr_a 
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_element_a 
        )
        (if
            (i32.eqz
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeameq_fn_element_a 
                    )
                    (i32.const                      0x3F 
                    )
                )
            )
            (then
                (i32.shl
                    (local.get                      $module_erwasmminibeamminibeameq_fn_ptr_a 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.or
                    (i32.const                      2 
                    )
                )
                (local.set                  $module_erwasmminibeamminibeameq_fn_element_a 
                )
            )
        )
        (i32.load
            (local.get              $module_erwasmminibeamminibeameq_fn_ptr_b 
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_element_b 
        )
        (if
            (i32.eqz
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeameq_fn_element_b 
                    )
                    (i32.const                      0x3F 
                    )
                )
            )
            (then
                (i32.shl
                    (local.get                      $module_erwasmminibeamminibeameq_fn_ptr_b 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.or
                    (i32.const                      2 
                    )
                )
                (local.set                  $module_erwasmminibeamminibeameq_fn_element_b 
                )
            )
        )
        (call          $module_erwasmminibeamminibeameq_fn_test_eq_exact 
            (local.get              $module_erwasmminibeamminibeameq_fn_element_a 
            )
            (local.get              $module_erwasmminibeamminibeameq_fn_element_b 
            )
        )
    )
    (func      $module_erwasmminibeamminibeameq_fn_test_eq_exact_list 
        (param          $module_erwasmminibeamminibeameq_fn_ptr_a           i32 
        )
        (param          $module_erwasmminibeamminibeameq_fn_head_a           i32 
        )
        (param          $module_erwasmminibeamminibeameq_fn_ptr_b           i32 
        )
        (param          $module_erwasmminibeamminibeameq_fn_head_b           i32 
        )
        (result          i32 
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_ptr_a 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeameq_fn_ptr_a 
                )
                (i32.const                  2 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_ptr_b 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeameq_fn_ptr_b 
                )
                (i32.const                  2 
                )
            )
        )
        (loop          $module_erwasmminibeamminibeameq_fn_elements 
            (call              $module_erwasmminibeamminibeameq_fn_test_eq_helper 
                (i32.add
                    (local.get                      $module_erwasmminibeamminibeameq_fn_ptr_a 
                    )
                    (i32.const                      4 
                    )
                )
                (i32.add
                    (local.get                      $module_erwasmminibeamminibeameq_fn_ptr_b 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (if
                (i32.eqz
                )
                (then
                    (return
                        (i32.const                          0 
                        )
                    )
                )
            )
            (if
                (i32.eq
                    (local.get                      $module_erwasmminibeamminibeameq_fn_head_a 
                    )
                    (i32.const                      0x3b 
                    )
                )
                (then
                    (nop
                    )
                )
                (else
                    (i32.shr_u
                        (local.get                          $module_erwasmminibeamminibeameq_fn_head_a 
                        )
                        (i32.const                          2 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeameq_fn_ptr_a 
                    )
                    (local.set                      $module_erwasmminibeamminibeameq_fn_head_a 
                        (i32.load
                            (local.get                              $module_erwasmminibeamminibeameq_fn_ptr_a 
                            )
                        )
                    )
                    (i32.shr_u
                        (local.get                          $module_erwasmminibeamminibeameq_fn_head_b 
                        )
                        (i32.const                          2 
                        )
                    )
                    (local.set                      $module_erwasmminibeamminibeameq_fn_ptr_b 
                    )
                    (local.set                      $module_erwasmminibeamminibeameq_fn_head_b 
                        (i32.load
                            (local.get                              $module_erwasmminibeamminibeameq_fn_ptr_b 
                            )
                        )
                    )
                    (br                      $module_erwasmminibeamminibeameq_fn_elements 
                    )
                )
            )
        )
        (i32.const          1 
        )
    )
    (func      $module_erwasmminibeamminibeameq_fn_test_eq_exact_tuple 
        (param          $module_erwasmminibeamminibeameq_fn_ptr_a           i32 
        )
        (param          $module_erwasmminibeamminibeameq_fn_head_a           i32 
        )
        (param          $module_erwasmminibeamminibeameq_fn_ptr_b           i32 
        )
        (param          $module_erwasmminibeamminibeameq_fn_head_b           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeameq_fn_size           i32 
        )
        (if
            (i32.eq
                (local.get                  $module_erwasmminibeamminibeameq_fn_head_a 
                )
                (local.get                  $module_erwasmminibeamminibeameq_fn_head_b 
                )
            )
            (then
            )
            (else
                (return
                    (i32.const                      0 
                    )
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_size 
            (i32.shr_u
                (local.get                  $module_erwasmminibeamminibeameq_fn_head_a 
                )
                (i32.const                  6 
                )
            )
        )
        (i32.shr_u
            (local.get              $module_erwasmminibeamminibeameq_fn_ptr_a 
            )
            (i32.const              2 
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_ptr_a 
        )
        (i32.shr_u
            (local.get              $module_erwasmminibeamminibeameq_fn_ptr_b 
            )
            (i32.const              2 
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_ptr_b 
        )
        (if
            (i32.eqz
                (local.get                  $module_erwasmminibeamminibeameq_fn_size 
                )
            )
            (then
                (return
                    (i32.const                      1 
                    )
                )
            )
        )
        (loop          $module_erwasmminibeamminibeameq_fn_elements 
            (local.set              $module_erwasmminibeamminibeameq_fn_ptr_a 
                (i32.add
                    (local.get                      $module_erwasmminibeamminibeameq_fn_ptr_a 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (local.set              $module_erwasmminibeamminibeameq_fn_ptr_b 
                (i32.add
                    (local.get                      $module_erwasmminibeamminibeameq_fn_ptr_b 
                    )
                    (i32.const                      4 
                    )
                )
            )
            (call              $module_erwasmminibeamminibeameq_fn_test_eq_exact 
                (i32.load
                    (local.get                      $module_erwasmminibeamminibeameq_fn_ptr_a 
                    )
                )
                (i32.load
                    (local.get                      $module_erwasmminibeamminibeameq_fn_ptr_b 
                    )
                )
            )
            (if
                (i32.eqz
                )
                (then
                    (return
                        (i32.const                          0 
                        )
                    )
                )
            )
            (local.set              $module_erwasmminibeamminibeameq_fn_size 
                (i32.sub
                    (local.get                      $module_erwasmminibeamminibeameq_fn_size 
                    )
                    (i32.const                      1 
                    )
                )
            )
            (if
                (local.get                  $module_erwasmminibeamminibeameq_fn_size 
                )
                (then
                    (br                      $module_erwasmminibeamminibeameq_fn_elements 
                    )
                )
            )
        )
        (i32.const          1 
        )
    )
    (func      $module_erwasmminibeamminibeameq_fn_test_eq_exact 
        (param          $module_erwasmminibeamminibeameq_fn_value_a           i32 
        )
        (param          $module_erwasmminibeamminibeameq_fn_value_b           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeameq_fn_tag_a           i32 
        )
        (local          $module_erwasmminibeamminibeameq_fn_tag_b           i32 
        )
        (local          $module_erwasmminibeamminibeameq_fn_head_a           i32 
        )
        (local          $module_erwasmminibeamminibeameq_fn_head_b           i32 
        )
        (if
            (i32.eq
                (local.get                  $module_erwasmminibeamminibeameq_fn_value_a 
                )
                (local.get                  $module_erwasmminibeamminibeameq_fn_value_b 
                )
            )
            (then
                (return
                    (i32.const                      1 
                    )
                )
            )
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeameq_fn_value_a 
                    )
                    (i32.const                      3 
                    )
                )
                (i32.const                  2 
                )
            )
            (then
                (i32.shr_u
                    (local.get                      $module_erwasmminibeamminibeameq_fn_value_a 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.load
                )
                (local.set                  $module_erwasmminibeamminibeameq_fn_head_a 
                )
            )
            (else
                (local.set                  $module_erwasmminibeamminibeameq_fn_head_a 
                    (local.get                      $module_erwasmminibeamminibeameq_fn_value_a 
                    )
                )
            )
        )
        (if
            (i32.eq
                (i32.and
                    (local.get                      $module_erwasmminibeamminibeameq_fn_value_b 
                    )
                    (i32.const                      3 
                    )
                )
                (i32.const                  2 
                )
            )
            (then
                (i32.shr_u
                    (local.get                      $module_erwasmminibeamminibeameq_fn_value_b 
                    )
                    (i32.const                      2 
                    )
                )
                (i32.load
                )
                (local.set                  $module_erwasmminibeamminibeameq_fn_head_b 
                )
            )
            (else
                (local.set                  $module_erwasmminibeamminibeameq_fn_head_b 
                    (local.get                      $module_erwasmminibeamminibeameq_fn_value_b 
                    )
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_tag_a 
            (i32.and
                (i32.const                  0x3f 
                )
                (local.get                  $module_erwasmminibeamminibeameq_fn_head_a 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_tag_b 
            (i32.and
                (i32.const                  0x3f 
                )
                (local.get                  $module_erwasmminibeamminibeameq_fn_head_b 
                )
            )
        )
        (if
            (i32.eq
                (local.get                  $module_erwasmminibeamminibeameq_fn_tag_a 
                )
                (local.get                  $module_erwasmminibeamminibeameq_fn_tag_b 
                )
            )
            (then
                (if
                    (i32.eq
                        (local.get                          $module_erwasmminibeamminibeameq_fn_tag_a 
                        )
                        (i32.const                          0 
                        )
                    )
                    (then
                        (return
                            (call                              $module_erwasmminibeamminibeameq_fn_test_eq_exact_tuple 
                                (local.get                                  $module_erwasmminibeamminibeameq_fn_value_a 
                                )
                                (local.get                                  $module_erwasmminibeamminibeameq_fn_head_a 
                                )
                                (local.get                                  $module_erwasmminibeamminibeameq_fn_value_b 
                                )
                                (local.get                                  $module_erwasmminibeamminibeameq_fn_head_b 
                                )
                            )
                        )
                    )
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_tag_a 
            (i32.and
                (i32.const                  0x3 
                )
                (local.get                  $module_erwasmminibeamminibeameq_fn_head_a 
                )
            )
        )
        (local.set          $module_erwasmminibeamminibeameq_fn_tag_b 
            (i32.and
                (i32.const                  0x3 
                )
                (local.get                  $module_erwasmminibeamminibeameq_fn_head_b 
                )
            )
        )
        (if
            (i32.eq
                (local.get                  $module_erwasmminibeamminibeameq_fn_tag_a 
                )
                (local.get                  $module_erwasmminibeamminibeameq_fn_tag_b 
                )
            )
            (then
                (if
                    (i32.eq
                        (local.get                          $module_erwasmminibeamminibeameq_fn_tag_a 
                        )
                        (i32.const                          1 
                        )
                    )
                    (then
                        (return
                            (call                              $module_erwasmminibeamminibeameq_fn_test_eq_exact_list 
                                (local.get                                  $module_erwasmminibeamminibeameq_fn_value_a 
                                )
                                (local.get                                  $module_erwasmminibeamminibeameq_fn_head_a 
                                )
                                (local.get                                  $module_erwasmminibeamminibeameq_fn_value_b 
                                )
                                (local.get                                  $module_erwasmminibeamminibeameq_fn_head_b 
                                )
                            )
                        )
                    )
                )
            )
        )
        (i32.const          0 
        )
    )
    (export      "minibeam#test_eq_exact_2" 
        (func          $module_erwasmminibeamminibeameq_fn_test_eq_exact 
        )
    )
    (func      $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
        (param          $module_erwasmminibeamminibeamtuple_fn_size           i32 
        )
        (result          i32 
        )
        (local          $module_erwasmminibeamminibeamtuple_fn_ptr           i32 
        )
        (local          $module_erwasmminibeamminibeamtuple_fn_temp           i32 
        )
        (i32.mul
            (local.get              $module_erwasmminibeamminibeamtuple_fn_size 
            )
            (i32.const              4 
            )
        )
        (i32.add
            (i32.const              4 
            )
        )
        (local.set          $module_erwasmminibeamminibeamtuple_fn_temp 
        )
        (call          $module_erdump_fn_alloc 
            (i32.const              4 
            )
            (local.get              $module_erwasmminibeamminibeamtuple_fn_temp 
            )
        )
        (local.set          $module_erwasmminibeamminibeamtuple_fn_ptr 
        )
        (i32.store
            (local.get              $module_erwasmminibeamminibeamtuple_fn_ptr 
            )
            (i32.shl
                (local.get                  $module_erwasmminibeamminibeamtuple_fn_size 
                )
                (i32.const                  6 
                )
            )
        )
        (local.get          $module_erwasmminibeamminibeamtuple_fn_ptr 
        )
    )
    (export      "minibeam#tuple_alloc_1" 
        (func          $module_erwasmminibeamminibeamtuple_fn_tuple_alloc 
        )
    )
    (func      $module_erwasmminibeamshim_fn_nop_1 
        (param          $module_erwasmminibeamshim_fn_arg1           i32 
        )
        (result          i32 
        )
        (call          $module_erdump_fn_hexlog 
            (i32.const              0xDEAD_0001 
            )
        )
        (drop
        )
        (unreachable
        )
    )
    (func      $module_erwasmminibeamshim_fn_nop_2 
        (param          $module_erwasmminibeamshim_fn_arg1           i32 
        )
        (param          $module_erwasmminibeamshim_fn_arg2           i32 
        )
        (result          i32 
        )
        (call          $module_erdump_fn_hexlog 
            (i32.const              0xDEAD_0002 
            )
        )
        (drop
        )
        (unreachable
        )
    )
    (func      $module_erwasmminibeamshim_fn_nop_3 
        (param          $module_erwasmminibeamshim_fn_arg1           i32 
        )
        (param          $module_erwasmminibeamshim_fn_arg2           i32 
        )
        (param          $module_erwasmminibeamshim_fn_arg3           i32 
        )
        (result          i32 
        )
        (call          $module_erdump_fn_hexlog 
            (i32.const              0xDEAD_0003 
            )
        )
        (drop
        )
        (unreachable
        )
    )
    (export      "maps#from_list_1" 
        (func          $module_erwasmminibeamshim_fn_nop_1 
        )
    )
    (export      "lists#reverse_1" 
        (func          $module_erwasmminibeamshim_fn_nop_1 
        )
    )
    (export      "erlang#binary_to_integer_2" 
        (func          $module_erwasmminibeamshim_fn_nop_2 
        )
    )
    (export      "erlang#binary_to_atom_2" 
        (func          $module_erwasmminibeamshim_fn_nop_2 
        )
    )
    (export      "erlang#binary_to_existing_atom_2" 
        (func          $module_erwasmminibeamshim_fn_nop_2 
        )
    )
    (export      "erlang#error_2" 
        (func          $module_erwasmminibeamshim_fn_nop_2 
        )
    )
    (export      "binary#part_3" 
        (func          $module_erwasmminibeamshim_fn_nop_3 
        )
    )
    (func      $module_syncentry_fn_dispatch 
        (param          $module_syncentry_fn_arg0           i32 
        )
        (result          i32 
        )
        (call          $module_elib_fn_dispatch_2 
            (local.get              $module_syncentry_fn_arg0 
            )
            (i32.const              0x3B 
            )
        )
    )
    (export      "lib#dispatch" 
        (func          $module_syncentry_fn_dispatch 
        )
    )
)