FROM alpine:3.19

LABEL maintainer="chongh.ou <ochhgz@163.com>"

RUN apk add --no-cache openjdk8-jre

COPY hystrix-dashboard.jar /hystrix-dashboard.jar

EXPOSE 9002

CMD ["java","-jar","-Dserver.port=9002","/hystrix-dashboard.jar"]