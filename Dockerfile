#Docker image kali-msf with msf,postgres,openvas
FROM brimstone/kali:latest

MAINTAINER Robert "diguo@foxmail.com"

cp http://ftp.us.debian.org/debian/pool/main/a/apt/apt_0.9.7.9+deb7u6_amd64.deb ./apt.deb

RUN dpkg -i apt.deb

RUN apt-get update && apt-get install openvas && apt-get autoclean
