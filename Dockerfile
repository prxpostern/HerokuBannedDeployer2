FROM debian:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN apt-get update
RUN apt update && apt upgrade -y
COPY start /usr/src/app/start
CMD ["/bin/bash", "/usr/src/app/start"]
