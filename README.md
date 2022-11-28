# spring-boot-samples
docker virtual environment sample cases.

用于本地快速搭建、删除开发环境。

## Usage
- 拉取 `image`、构建 `container`
```shell
cd docker-xxx
chmod 777 ./build.sh
./build.sh
```
- 在本机 `docker.app` 管理 `container` `image` `volumes`

## database
- `✅` [docker-mysql](docker-mysql)
- `✅` [docker-redis](docker-redis)
- `✅` [docker-elasticsearch](docker-elasticsearch)
- `❌` [docker-clickhouse](docker-clickhouse)
- `❌` [docker-neo4j](docker-neo4j)

## queue
- `✅` [docker-rabbitmq](docker-rabbitmq)

## service
- `❌` [docker-nestjs](docker-nestjs)
- `❌` [docker-spring-boot](docker-spring-boot)

## front-end
- `❌` [docker-vue](docker-vue)

## compose
- ...
