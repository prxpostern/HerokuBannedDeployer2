FROM debian:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN apt-get -qq update && && apt-get -qq upgrade
RUN apt update && apt upgrade -y
COPY start /start
CMD ["/bin/bash", "/start"]
