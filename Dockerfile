FROM httpd 
FROM node

RUN apt-get update
RUN apt-get install -y git telnet 

RUN npm install -g typescript

RUN git config --global user.name Zoolee
RUN git config --global user.email ex@ample.com
RUN git config --global http.sslVerify false
WORKDIR /usr/local/apache2/htdocs

RUN git clone https://github.com/ZooLeeCoding/PRFServerExample.git

EXPOSE 80
