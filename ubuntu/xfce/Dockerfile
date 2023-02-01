FROM klab_ubuntu_xfce_base:latest

ENV USER root
WORKDIR /root

ADD startup.sh ./
ADD supervisord.conf ./

EXPOSE 5900
EXPOSE 22

ENTRYPOINT ["./startup.sh"]
