#Docker image kali-msf with msf,postgres,openvas
FROM brimstone/kali:latest

MAINTAINER Robert 

RUN apt-get update && apt-get install -y openvas libsnmp15 libopenvas8 openvas-cli greenbone-security-assistant openvas-manager openvas-scanner \
    tor net-tools 
    && apt-get autoclean
RUN openvas-scapdata-sync
RUN openvas-nvt-sync

#Access container's GSA from other containers
#EXPOSE 127.0.0.1::9392
#CP .torrc ~/.torrc
#ENTRYPOINT openvas-setup
CMD ["/bin/bash","openvas-check-setup"]
