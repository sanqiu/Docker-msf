#Docker image kali-msf with msf,postgres,openvas
FROM brimstone/kali:lastest

MAINTAINER Robert "diguo@foxmail.com"

RUN apt-get update && apt-get install openvas && apt-get autoclean
