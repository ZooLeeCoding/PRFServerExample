FROM httpd

RUN apt-get update
RUN apt-get install -y git telnet
RUN git config --global user.name Zoolee
RUN git config --global user.email ex@ample.com
RUN git config --global http.sslVerify false
WORKDIR /usr/local/apache2/htdocs

EXPOSE 80
