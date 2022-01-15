文件夹结构
web
----admin-web         后端管理端
--------dist                前端打的资源包
--------Dockerfile      docker的部署文件
--------nginx.conf     nginx配置文件
----app-web             手机app端
--------dist
--------Dockerfile
--------nginx.conf
----wemedia-web      自媒体端
--------dist
--------Dockerfile
--------nginx.conf
----docker-compose.yaml      docker-c核心文件
----start.sh     执行脚本

1.将web文件夹打包上传到linux里面。
2.修改每个nginx的文件，把proxy_pass中的ip换成自己的
3.如果nginx监听的端口在你的linux中已经使用了，请更改nginx和Dockerfile中的port
4.对start.sh设置权限  chmod -R 7777  start.sh
5.启动脚本 sh start.sh

如果脚本不能执行？
------------------------------------------------------
查看当前.sh文件的格式：

vim start.sh

发现其格式为dos

修改当前文件格式
：set ff=unix
:wq


再次运行start.sh文件
------------------------------------------------------