FROM ubuntu:focal
  
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y supervisor \
        openssh-server vim-tiny \
        xfce4 xfce4-goodies \
        x11vnc xvfb \
        firefox \
        pwgen \
    && apt-get autoclean \
    && apt-get autoremove

ENV USER root
WORKDIR /root

ADD startup.sh ./
ADD supervisord.conf ./

EXPOSE 5900
EXPOSE 22

ENTRYPOINT ["./startup.sh"]
