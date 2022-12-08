FROM ubuntu:latest

ARG DEBIAN_FRONTEND="noninteractive"
COPY reset-pass.sh /reset-pass.sh
COPY entrypoint.sh /entrypoint.sh

RUN \
  apt-get update && \
  apt-get install -y transmission-cli transmission-common transmission-daemon && \
  service transmission-daemon stop && \
  rm /etc/init.d/transmission-daemon && \
  apt-get clean && \
  chmod +x /reset-pass.sh /entrypoint.sh && \
  rm -rf /config/* /tmp/* /var/lib/apt/lists/* /var/tmp/*

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]