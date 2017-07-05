FROM mhart/alpine-node:8.1.2
LABEL maintainer="Tom Grant <tom@sunburst.io>"

ENV INSTALL_PATH=/react-ssr-starter

RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
