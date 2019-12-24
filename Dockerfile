#App 1 - web-ui
FROM  openjdk:alpine
WORKDIR /web-ui
COPY *.jar web-ui.jar
CMD exec java -jar web-ui.jar
EXPOSE 8080

#App 2 - web static
FROM  openjdk:alpine
WORKDIR /web-ui
COPY *.war web-static.jar
CMD exec java -jar web-static.jar
EXPOSE 8080
