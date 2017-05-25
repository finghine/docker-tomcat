FROM tomcat:7
RUN passwd=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-32};echo;); \
sed -i "/<\/tomcat-users>/ i <user username=\"tomcat\" password=\"$passwd\" roles=\"manager-gui,manager-script\"\/>" /usr/local/tomcat/conf/tomcat-users.xml; \
echo "username:tomcat" ;\
echo "password:"$passwd
