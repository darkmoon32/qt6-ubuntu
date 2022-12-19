FROM ubuntu:22.04

WORKDIR /
USER root

RUN DEBIAN_FRONTEND=noninteractive apt update && apt full-upgrade -y && apt install --no-install-recommends -y libgl-dev build-essential cmake libqt6serialport6-dev libqt6network6 libqt6widgets6 \
    && apt-get autoremove -y \
    && apt-get -qq clean \
    && rm -rf /var/lib/apt/lists/*
