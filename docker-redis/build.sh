#!/bin/bash

# 拉取 image
docker pull redis

# 创建 container（端口映射6379，无密码）
docker run -p 6379:6379 --name redis-latest -v /usr/local/docker/redis.conf:/etc/redis/redis.conf -v /usr/local/docker/data:/data -d redis redis-server /etc/redis/redis.conf --appendonly yes

# 可在本机docker.app管理 container image volumes