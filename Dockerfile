FROM tomcat:7
# FROM tomcat:8.5.29-jre8
RUN passwd=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-32};echo;); \
sed -i "/<\/tomcat-users>/ i <user username=\"tomcat\" password=\"$passwd\" roles=\"manager-gui,manager-script\"\/>" /usr/local/tomcat/conf/tomcat-users.xml; \
echo "username:tomcat" ;\
echo "password:"$passwd
# sed -i "s/127\\\.\\\d+\\\.\\\d+\\\.\\\d+|::1|0:0:0:0:0:0:0:1/^.*$/g" /usr/local/tomcat/webapps/manager/META-INF/context.xml
