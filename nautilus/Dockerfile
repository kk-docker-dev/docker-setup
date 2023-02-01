FROM klab_ubuntu_nautilus_base:latest

ENV HOME /home/shanmugk

RUN groupadd -g 1000 shanmugk
RUN useradd -d /home/shanmugk -s /bin/bash -m shanmugk -u 1000 -g 1000

USER shanmugk

CMD ["nautilus"]
