FROM mhart/alpine-node:8.1.2
LABEL maintainer="Tom Grant <tom@sunburst.io>"

ENV INSTALL_PATH=/mash

RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
