#Docker image kali-msf with msf,postgres,openvas
FROM brimstone/kali:latest

MAINTAINER Robert "diguoliangmin@foxmail.com"

RUN apt-get update && apt-get install -y openvas && apt-get autoclean
RUN openvas-scapdata-sync
RUN apt-get install -y  tor net-tools && apt-get autoclean

#Access container GSA from host browser
EXPOSE 127.0.0.1::9392

CMD ["/bin/bash","openvas-check-setup"]
