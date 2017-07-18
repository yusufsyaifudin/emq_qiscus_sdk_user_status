emq_qiscus_sdk_user_status
=====

Build

First clone [https://github.com/emqtt/emq-relx](https://github.com/emqtt/emq-relx) in your system and enter into the `emq-relx` folder. Then in plugin section of `relx.config` add

```
{emq_qiscus_sdk_user_status, load}
```

In `Makefile` concat `emq_qiscus_sdk_user_status` with DEPS
and add,

```
dep_emq_qiscus_sdk_user_status = git https://github.com/yusufsyaifudin/emq_qiscus_sdk_user_status master  
```

Finally execute, `make clean && make && make rel`. If everything goes ok then start the broker. Then move to `_rel/emqttd/bin` and execute `emqttd_ctl plugins load emq_qiscus_sdk_user_status`

Your plugin is now running in the system. To stop it execute `emqttd_ctl plugins unload emq_qiscus_sdk_user_status`.

You can also start and stop plugin from web dashboard.
