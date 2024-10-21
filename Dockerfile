FROM ubuntu:22.04

ENV DEBIAN_FRONTED=noninteractive

RUN apt update
RUN apt install -y nginx

#add aset to webdir
COPY web /var/www/html
ENTRYPOINT [ "/bin/bash","-c","service nginx start && exec /bin/bash" ]