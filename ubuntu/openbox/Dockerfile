FROM klab_ubuntu_openbox_base:latest

ENV DEBIAN_FRONTEND noninteractive

ENV USER root
ENV HOME /root
WORKDIR  /root

ADD startup.sh ./
ADD supervisord.conf ./

EXPOSE 5900
EXPOSE 22

ENTRYPOINT ["./startup.sh"]
