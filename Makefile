PROJECT = emq_qiscus_sdk_user_status
PROJECT_DESCRIPTION = EMQ Plugin to change payload when user status is 1
PROJECT_VERSION = 1.0

BUILD_DEPS = emqttd
dep_emqttd = git https://github.com/emqtt/emqttd master

COVER = true

include erlang.mk

app:: rebar.config