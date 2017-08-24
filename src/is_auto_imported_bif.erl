%%% --------------------------------------------------------------------
%%% BSD 3-Clause License
%%%
%%% Copyright (c) 2017-2018, Pouriya Jahanbakhsh
%%% (pouriya.jahanbakhsh@gmail.com)
%%% All rights reserved.
%%%
%%% Redistribution and use in source and binary forms, with or without
%%% modification, are permitted provided that the following conditions
%%% are met:
%%%
%%% 1. Redistributions of source code must retain the above copyright
%%% notice, this list of conditions and the following disclaimer.
%%%
%%% 2. Redistributions in binary form must reproduce the above copyright
%%% notice, this list of conditions and the following disclaimer in the
%%% documentation and/or other materials provided with the distribution.
%%%
%%% 3. Neither the name of the copyright holder nor the names of its
%%% contributors may be used to endorse or promote products derived from
%%% this software without specific prior written permission.
%%%
%%% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
%%% "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
%%% LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
%%% FOR A  PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
%%% COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
%%% INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
%%% BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
%%% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
%%% CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
%%% LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
%%% ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
%%% POSSIBILITY OF SUCH DAMAGE.
%%% --------------------------------------------------------------------
%% @author   Pouriya Jahanbakhsh <pouriya.jahanbakhsh@gmail.com>
%% @version  17.8.24
%% @doc
%%           This module can tell us that a function is an Erlang auto
%%           imported BIF or not.
%% @end
%% ---------------------------------------------------------------------

-module(is_auto_imported_bif).
-author("pouriya.jahanbakhsh@gmail.com").

%% ---------------------------------------------------------------------
%% Exports:





%% API:
-export([is/1
        ,is/2
        ,is/3]).





%% ---------------------------------------------------------------------
%% API:







-spec
is(fun()) ->
    boolean().
%% @doc
%%      Accepts a fun and tells that is this fun an erlang auto imported
%%      BIF or not
%% @end
is(Fun) when erlang:is_function(Fun) ->
    Info = erlang:fun_info(Fun),
    case proplists:get_value(name, Info) of
        [] ->
            false;
        Name ->
            Mod = proplists:get_value(module, Info),
            Arity = proplists:get_value(arity, Info),
            is(Mod, Name, Arity)
    end.






-spec
is(atom(), non_neg_integer()) ->
    boolean().
%% @doc
%%      First argument should be function name and second should be its
%%      arity.
%% @end
is(abs, 1) ->
    true;
is(apply, 2) ->
    true;
is(apply, 3) ->
    true;
is(atom_to_binary, 2) ->
    true;
is(atom_to_list, 1) ->
    true;
is(binary_part, 2) ->
    true;
is(binary_part, 3) ->
    true;
is(binary_to_atom, 2) ->
    true;
is(binary_to_existing_atom, 2) ->
    true;
is(binary_to_integer, 1) ->
    true;
is(binary_to_float, 1) ->
    true;
is(binary_to_integer, 2) ->
    true;
is(binary_to_list, 1) ->
    true;
is(binary_to_term, 1) ->
    true;
is(binary_to_term, 2) ->
    true;
is(bit_size, 1) ->
    true;
is(bitstring_to_list, 1) ->
    true;
is(byte_size, 1) ->
    true;
is(ceil, 1) ->
    true;
is(check_old_code, 1) ->
    true;
is(check_process_code, 2) ->
    true;
is(check_process_code, 3) ->
    true;
is(date, 0) ->
    true;
is(delete_module, 1) ->
    true;
is(demonitor, 1) ->
    true;
is(demonitor, 2) ->
    true;
is(disconnect_node, 2) ->
    true;
is(element, 2) ->
    true;
is(erase, 0) ->
    true;
is(erase, 1) ->
    true;
is(error, 1) ->
    true;
is(error, 2) ->
    true;
is(exit, 1) ->
    true;
is(exit, 2) ->
    true;
is(float, 1) ->
    true;
is(float_to_binary, 1) ->
    true;
is(float_to_binary, 2) ->
    true;
is(float_to_list, 1) ->
    true;
is(float_to_list, 2) ->
    true;
is(floor, 1) ->
    true;
is(garbage_collect, 0) ->
    true;
is(garbage_collect, 1) ->
    true;
is(get, 0) ->
    true;
is(get, 1) ->
    true;
is(get_keys, 0) ->
    true;
is(get_keys, 1) ->
    true;
is(group_leader, 0) ->
    true;
is(group_leader, 2) ->
    true;
is(halt, 0) ->
    true;
is(halt, 1) ->
    true;
is(halt, 2) ->
    true;
is(hd, 1) ->
    true;
is(integer_to_binary, 1) ->
    true;
is(integer_to_binary, 2) ->
    true;
is(integer_to_list, 1) ->
    true;
is(integer_to_list, 2) ->
    true;
is(iolist_size, 1) ->
    true;
is(iolist_to_binary, 1) ->
    true;
is(is_alive, 0) ->
    true;
is(is_atom, 1) ->
    true;
is(is_binary, 1) ->
    true;
is(is_bitstring, 1) ->
    true;
is(is_boolean, 1) ->
    true;
is(is_float, 1) ->
    true;
is(is_function, 1) ->
    true;
is(is_function, 2) ->
    true;
is(is_integer, 1) ->
    true;
is(is_list, 1) ->
    true;
is(is_map, 1) ->
    true;
is(is_number, 1) ->
    true;
is(is_pid, 1) ->
    true;
is(is_port, 1) ->
    true;
is(is_process_alive, 1) ->
    true;
is(is_record, 2) ->
    true;
is(is_record, 3) ->
    true;
is(is_reference, 1) ->
    true;
is(is_tuple, 1) ->
    true;
is(length, 1) ->
    true;
is(link, 1) ->
    true;
is(list_to_atom, 1) ->
    true;
is(list_to_binary, 1) ->
    true;
is(list_to_bitstring, 1) ->
    true;
is(list_to_existing_atom, 1) ->
    true;
is(list_to_float, 1) ->
    true;
is(list_to_integer, 1) ->
    true;
is(list_to_integer, 2) ->
    true;
is(list_to_pid, 1) ->
    true;
is(list_to_port, 1) ->
    true;
is(list_to_ref, 1) ->
    true;
is(list_to_tuple, 1) ->
    true;
is(load_module, 2) ->
    true;
is(make_ref, 0) ->
    true;
is(map_size, 1) ->
    true;
is(max, 2) ->
    true;
is(min, 2) ->
    true;
is(module_loaded, 1) ->
    true;
is(monitor, 2) ->
    true;
is(monitor_node, 2) ->
    true;
is(node, 0) ->
    true;
is(node, 1) ->
    true;
is(nodes, 0) ->
    true;
is(nodes, 1) ->
    true;
is(now, 0) ->
    true;
is(open_port, 2) ->
    true;
is(pid_to_list, 1) ->
    true;
is(port_close, 1) ->
    true;
is(port_command, 2) ->
    true;
is(port_command, 3) ->
    true;
is(port_connect, 2) ->
    true;
is(port_control, 3) ->
    true;
is(port_to_list, 1) ->
    true;
is(pre_loaded, 0) ->
    true;
is(process_flag, 2) ->
    true;
is(process_info, 1) ->
    true;
is(process_info, 2) ->
    true;
is(processes, 0) ->
    true;
is(purge_module, 1) ->
    true;
is(put, 2) ->
    true;
is(ref_to_list, 1) ->
    true;
is(register, 2) ->
    true;
is(registered, 0) ->
    true;
is(round, 1) ->
    true;
is(self, 0) ->
    true;
is(setelement, 3) ->
    true;
is(size, 1) ->
    true;
is(spawn, 1) ->
    true;
is(spawn, 2) ->
    true;
is(spawn, 3) ->
    true;
is(spawn, 4) ->
    true;
is(spawn_link, 1) ->
    true;
is(spawn_link, 2) ->
    true;
is(spawn_link, 3) ->
    true;
is(spawn_link, 4) ->
    true;
is(spawn_monitor, 1) ->
    true;
is(spawn_monitor, 3) ->
    true;
is(spawn_opt, 2) ->
    true;
is(spawn_opt, 3) ->
    true;
is(spawn_opt, 4) ->
    true;
is(spawn_opt, 5) ->
    true;
is(split_binary, 2) ->
    true;
is(statistics, 1) ->
    true;
is(term_to_binary, 1) ->
    true;
is(term_to_binary, 2) ->
    true;
is(throw, 1) ->
    true;
is(time, 0) ->
    true;
is(tl, 1) ->
    true;
is(trunc, 1) ->
    true;
is(tuple_size, 1) ->
    true;
is(tuple_to_list, 1) ->
    true;
is(unlink, 1) ->
    true;
is(unregister, 1) ->
    true;
is(whereis, 1) ->
    true;
is(FuncName, Arity) when erlang:is_atom(FuncName) andalso
                         erlang:is_integer(Arity) ->
    false.







-spec
is(module(), atom(), non_neg_integer()) ->
    boolean().
%% @doc
%%      First argument should be module name and second should be
%%      function name and last argument should be its arity.
%% @end
is(erlang, FuncName, Arity) when erlang:is_atom(FuncName) andalso
                                 erlang:is_integer(Arity) ->
    is(FuncName, Arity);
is(Module, FuncName, Arity) when erlang:is_atom(Module) andalso
                                 erlang:is_atom(FuncName) andalso
                                 erlang:is_integer(Arity) ->
    false.