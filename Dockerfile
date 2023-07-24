FROM registry.access.redhat.com/ubi8/ubi:latest
RUN mkdir /TEST
WORKDIR /TEST
RUN curl -o /TEST/1GB.bin https://speed.hetzner.de/1GB.bin && sleep 600

