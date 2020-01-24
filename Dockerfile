#App 1 - web-ui
FROM  openjdk:alpine as app-web-ui
WORKDIR /web-ui
COPY *.jar web-ui.jar
CMD exec java -jar web-ui.jar --server.servlet.context-path=/app-web-ui

#App 2 - web static
FROM  openjdk:alpine as app-web-static
WORKDIR /web-static
COPY *.war web-static.jar
CMD exec java -jar web-static.jar

#HAproxy
FROM haproxy:2.0.7 as app-haproxy
WORKDIR /usr/local/etc/haproxy
COPY haproxy.cfg haproxy.cfg
