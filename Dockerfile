FROM registry.access.redhat.com/ubi8/ubi:latest
RUN mkdir /TEST
WORKDIR /TEST
RUN curl -o /TEST/10GB.bin https://speed.hetzner.de/10GB.bin && sleep 600
