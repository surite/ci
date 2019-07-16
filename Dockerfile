FROM java:8

MAINTAINER surite@live.cn

ADD service.jar app.jar

EXPOSE 8090

ENTRYPOINT ["java","-jar","/app.jar"]