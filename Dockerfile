#Docker image kali-msf with msf,postgres,openvas
FROM brimstone/kali:latest

MAINTAINER Robert "diguo@foxmail.com"

#RUN curl -o apt.deb  http://ftp.us.debian.org/debian/pool/main/a/apt/apt_0.9.7.9+deb7u6_amd64.deb

#RUN dpkg -i apt.deb

RUN apt-get update && apt-get install -y openvas && apt-get autoclean
