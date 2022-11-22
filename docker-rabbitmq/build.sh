#!/bin/bash

# 拉取 image
docker pull rabbitmq

# 创建 container
docker run -d --hostname my-rabbit --name rabbit-latest -p 15672:15672 -p 5673:5672 rabbitmq

# 可在本机docker.app管理 container image volumes
# 开启管理界面：进入container内部执行(docker.app→conteiner→rabbit-latest→terminal)
rabbitmq-plugins enable rabbitmq_management

# 打开 http://localhost:15672/，默认账号密码 guest,guest
