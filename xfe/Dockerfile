FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends xfe

ENV HOME /home/shanmugk

RUN groupadd -g 1000 shanmugk
RUN useradd -d /home/shanmugk -s /bin/bash -m shanmugk -u 1000 -g 1000

USER shanmugk

CMD ["xfe"]
