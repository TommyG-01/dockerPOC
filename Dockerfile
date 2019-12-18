FROM  openjdk:alpine
WORKDIR /web-ui
COPY /home/ubuntu/*.jar web-ui.jar
CMD exec java -jar web-ui.jar
EXPOSE 8080
