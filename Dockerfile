FROM alpine:latest
MAINTAINER linxray@gmail.com

ENV WORKDIR /mnt/webpack-work
VOLUME ${WORKDIR}
WORKDIR ${WORKDIR}

EXPOSE 3000
EXPOSE 5000
EXPOSE 8080
EXPOSE 8081

RUN apk add -U nodejs
RUN rm -rf /var/cache/apk/*


RUN npm install --global webpack-dev-server
RUN export PATH=$(npm bin -g):${PATH}
CMD ["webpack-dev-server", "--help"]
