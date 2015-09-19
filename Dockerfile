FROM ubuntu:14.04

# ENVIRONMENTS
ENV PROJECT_PATH /var/docker-forever-sample

# INSTALL NODEJS
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
RUN apt-get install -y nodejs git git-core

# INSTALL FOREVER MODULE
RUN npm install -g forever

# COPY CODES
ADD index.js ${PROJECT_PATH}/index.js
ADD package.json ${PROJECT_PATH}/package.json

# INSTALL DEPENDENCY MODUELS
WORKDIR ${PROJECT_PATH}
RUN npm install 

# RUN
CMD forever index.js

EXPOSE 3000 

