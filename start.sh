#!/usr/bin/env bash

# 删除容器
docker rm -f wemedia-web
docker rm -f app-web
docker rm -f web-web

# 删除镜像
docker rmi web_wemedia-web
docker rmi web_app-web
docker rmi admin-web-web

# 构建并启动容器，且为 后台 自动启动
docker-compose up -d --build


# 显示容器
docker ps