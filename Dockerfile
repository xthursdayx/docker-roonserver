FROM debian:9.6
MAINTAINER xthursdayx

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        bash \
        curl \
        bzip2 \
        ffmpeg \
        cifs-utils \
        alsa-utils

ENV ROON_SERVER_PKG RoonServer_linuxx64.tar.bz2
ENV ROON_SERVER_URL http://download.roonlabs.com/builds/${ROON_SERVER_PKG}
ENV ROON_DATAROOT /data
ENV ROON_ID_DIR /data

VOLUME [ "/app", "/data", "/music", "/backup" ]

ADD run.sh /
ENTRYPOINT /run.sh

EXPOSE 9003/udp 9100-9200/tcp
