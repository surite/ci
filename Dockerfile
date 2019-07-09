FROM java:8

MAINTAINER surite@live.cn

ADD publish/singleton-i18n.jar app.jar

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone

EXPOSE 8090

ENTRYPOINT ["java","-jar","/app.jar"]
