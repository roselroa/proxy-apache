#FROM httpd:latest
FROM httpd:alpine
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY proxy.conf /usr/local/apache2/conf/proxy.conf
COPY server.crt /usr/local/apache2/conf/server.crt
COPY server.key /usr/local/apache2/conf/server.key
CMD ["-D", "FOREGROUND"]
#CMD ["-f","/dev/null"]
ENTRYPOINT ["/usr/local/apache2/bin/httpd"]
#ENTRYPOINT ["/usr/bin/tail"]
