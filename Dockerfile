#https://github.com/nodejs/docker-node/blob/master/10/alpine/Dockerfile
FROM node:10.5-stretch

RUN sudo apt-get update
RUN sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
RUN sudo apt-get update
RUN sudo apt-get install docker-ce
