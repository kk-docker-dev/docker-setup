FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -y supervisor \
		openssh-server vim-tiny \
		xfce4 xfce4-goodies \
		x11vnc xvfb \
		firefox \
		pwgen \
	&& apt-get autoclean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*
