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
    {ok, Sup} = emq_qiscus_sdk_user_status_sup:start_link(),
    emq_qiscus_sdk_user_status:load(application:get_all_env()),
    {ok, Sup}.

%%--------------------------------------------------------------------
stop(_State) ->
    emq_qiscus_sdk_user_status:unload().

%%====================================================================
%% Internal functions
%%====================================================================
