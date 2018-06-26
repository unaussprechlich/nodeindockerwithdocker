#https://github.com/nodejs/docker-node/blob/master/10/alpine/Dockerfile
FROM node:10.5-stretch

RUN apt-get update
RUN set -ex; \
        apt-get install \
        apt-transport-https \
        software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
RUN apt-get update
RUN apt-get install docker-ce
