# https://hub.docker.com/_/node/
#
#FROM ubuntu:14.04
# use debug to troubleshoot
#ENV LOG_LEVEL=error



#Install Git
#RUN apt-get install -y git

# setup our app
# non-root user  https://github.com/nodejs/docker-node/blob/e3ec2111af089e31321e76641697e154b3b6a6c3/docs/BestPractices.md#non-root-user

#WORKDIR /home/the-app

#FROM ubuntu:18.04
FROM ubuntu:latest
#Install Java8
# This is in accordance to : https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04
RUN apt-get update && \
	apt-get install -y openjdk-8-jdk && \
	apt-get install -y ant && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;

#Install GIT
RUN apt update
RUN apt install -y git
#RUN apt-get install openjdk-8-jdk

#ENTRYPOINT ["git"]

# COPY our app into /home/node
COPY . /home/the-app

# SET workdit
WORKDIR /home/the-app
