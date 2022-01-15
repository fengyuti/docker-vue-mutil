# 设置基础镜像 
FROM nginx
# 定义作者
MAINTAINER andy
# 将dist文件中的内容复制到 /usr/share/nginx/html/ 这个目录下面
COPY dist/  /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
# 指定容器运行时监听的端口
EXPOSE 9999
# 执行
CMD ["nginx","-g","daemon off;"]

# docker build -t tanhua-admin .