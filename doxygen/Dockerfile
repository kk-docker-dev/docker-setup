# Docker file to build Doxygen server

# Base image
FROM ubuntu:focal

# LABEL about the docker image
LABEL maintainer="kribakarans@gmail.com"
LABEL version="1.0-0"
LABEL description="Doxygen documentaion server"

# Disable prompt during packages installation
ARG DEBIAN_FRONTEND=noninteractive

# Install dependecies
RUN apt-get update
RUN apt-get install --no-install-recommends -y apache2 doxygen git graphviz php
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean

# Setup workspace
WORKDIR /data
COPY ./scripts /root/scripts
COPY ./scripts/mkdox.sh /usr/local/bin/mkdox
COPY ./scripts/index.php /var/www/html/index.php

RUN rm -f /var/www/html/index.html
RUN /root/scripts/write_banner.sh >> /root/.bashrc

# Run Apache web server
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

# Expose the default HTTP port
EXPOSE 80
