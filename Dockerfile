FROM ubuntu:latest

MAINTAINER Roman Kubar <debiboon@gmail.com>

RUN apt-get update && apt-get install -y curl

RUN curl -o /usr/bin/btsync.tar.gz http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
RUN cd /usr/bin && tar -zxvf btsync.tar.gz && rm btsync.tar.gz

EXPOSE 8080
EXPOSE 6880 

CMD ["--config", "/btsync/btsync.conf", "--nodaemon"]
ENTRYPOINT ["btsync"]
