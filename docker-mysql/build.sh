#!/bin/bash

# 拉取 image
docker pull mysql:5.7

# 创建 container（端口映射3306，密码设置123456）
docker run -itd --name mysql-5.7 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 mysql:5.7

# 可在本机docker.app管理 container image volumes