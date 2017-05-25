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


