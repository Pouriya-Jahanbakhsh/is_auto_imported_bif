# is_auto_imported_bif
## How to use
```erlang
Erlang/OTP 19 [erts-8.3] [source-d5c06c6] [64-bit] [smp:8:8] [async-threads:0] [hipe] [kernel-poll:false]

Eshell V8.3  (abort with ^G)

1> is_auto_imported_bif:is(is_atom, 1).
true

2> is_auto_imported_bif:is(erlang, list_to_binary, 2).
true

3> is_auto_imported_bif:is(is_process_alive, 1).
true

4> localtime(). %% Does not export from erlang module and you have to call erlang:localtime()
** exception error: undefined shell command localtime/0

5> erlang:localtime().
{{2017,8,24},{16,40,53}}

6> is_auto_imported_bif:is(localtime, 0).
false

7> Fun = fun erlang:disconnect_node/2.
#Fun<erlang.disconnect_node.2>

8> is_auto_imported_bif:is(Fun).
true
```
I used this in one of my library in parsing Erlang's ASTs.
