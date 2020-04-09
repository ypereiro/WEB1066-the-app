# https://hub.docker.com/_/node/
FROM node:8-onbuild

# use debug to troubleshoot
ENV LOG_LEVEL=error

# Lets COPY our app into /home/node
COPY . /home/the-app

# setup our app
# non-root user  https://github.com/nodejs/docker-node/blob/e3ec2111af089e31321e76641697e154b3b6a6c3/docs/BestPractices.md#non-root-user
USER node

WORKDIR /home/the-app
RUN ./gradle clean jar
