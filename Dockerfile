FROM ubuntu:latest  
RUN apt-get update  
RUN apt-get install -y nginx  
COPY ./conf/nginx/hosts/application.local.conf /etc/nginx/sites-enabled/application.local.conf
WORKDIR /data/application.local
VOLUME /data  
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]