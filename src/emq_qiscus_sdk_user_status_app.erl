%%%-------------------------------------------------------------------
%% @doc emq_qiscus_sdk_user_status public API
%% @end
%%%-------------------------------------------------------------------

-module(emq_qiscus_sdk_user_status_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    emq_qiscus_sdk_user_status_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
