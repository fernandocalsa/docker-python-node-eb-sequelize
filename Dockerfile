FROM node:carbon
MAINTAINER Fernando Calvo <fernando.calvo.sanz@gmail.com>

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip && \
  rm -rf /var/lib/apt/lists/*

# Install aws eb cli
RUN \
  pip install awsebcli --upgrade

# Install sequelize
RUN \
  npm install -g sequelize-cli sequelize mysql2