# docker-tomcat
构建的增加管理员的 tomcat 镜象
主要就是在`tomcat-users.xml`增加管理员配置，密码随机生成

## 使用方法
```
git clone https://github.com/finghine/docker-tomcat.git
cd docker-tomcat
docker build -t ff/tomcat7 .
```
会输出管理员的账号与密码

```
docker run -it -p 80:8080 -d ff/tomcat7
```
就运行一个tomcat，可以用刚出输出的管理员的账号与密码上传web应用

## 更新

镜像是基于tomcat:7，所以不支持jre8，运行jre8的web程序时会出问题。

现增加修改基于tomcat:8。
需要修改的位置：
1，第一行修改为`FROM tomcat:8.5.29-jre8`
2, 后面加上对`context.xml`文件的替换。
见Dockerfile的注释

