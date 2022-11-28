#!/bin/bash

# 拉取image(注意esv7.13.x后就不支持java8了)
docker pull elasticsearch:7.12.0

# 创建docker容器挂载的目录
sudo chmod -R 777 /opt/elasticsearch/
sudo mkdir -p /opt/elasticsearch/config
sudo mkdir -p /opt/elasticsearch/data
sudo mkdir -p /opt/elasticsearch/plugins

# 配置文件
echo "http.host: 0.0.0.0" >> /opt/elasticsearch/config/elasticsearch.yml

# 创建 container（端口映射9200，9300，无密码）
sudo docker run --name elasticsearch -p 9200:9200  -p 9300:9300 \
 -e "discovery.type=single-node" \
 -e ES_JAVA_OPTS="-Xms84m -Xmx512m" \
 -v /opt/es_docker/config/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
 -v /opt/es_docker/data:/usr/share/elasticsearch/data \
 -v /opt/es_docker/plugins:/usr/share/elasticsearch/plugins \
 -d elasticsearch:7.12.0

# 说明:
# -p 端口映射
# -e discovery.type=single-node 单点模式启动
# -e ES_JAVA_OPTS="-Xms84m -Xmx512m"：设置启动占用的内存范围
# -v 目录挂载
# -d 后台运行

# 查看启动详情
# docker ps  查看是否启动
# docker logs elasticsearch  启动日志查询
# docker restart elasticsearch   重启
# docker exec -it elasticsearch bash 进入




# 可在本机docker.app管理 container image volumes