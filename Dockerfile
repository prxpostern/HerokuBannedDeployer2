FROM debian:latest
RUN mkdir /bot && chmod 777 /bot
WORKDIR /bot
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y python3-pip git wget pv jq wget python3 python3-dev ffmpeg

COPY start .
CMD ["/bin/bash", "start"]
