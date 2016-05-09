FROM alpine:latest
MAINTAINER linxray@gmail.com

ENV WORKDIR /mnt/webpack-work
ENV NODE_VERSION 4.3.0-r0
VOLUME ${WORKDIR}
WORKDIR ${WORKDIR}

EXPOSE 3000
EXPOSE 5000
EXPOSE 8080
EXPOSE 8081

STOPSIGNAL SIGKILL

RUN apk add -U nodejs=${NODE_VERSION}
RUN rm -rf /var/cache/apk/*

RUN npm update --global npm
RUN npm install --global webpack-dev-server
RUN export PATH=$(npm bin -g):${PATH}
CMD ["webpack-dev-server", "--help"]
