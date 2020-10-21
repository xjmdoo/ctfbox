FROM ubuntu:focal

# This is required so gdb doesn't prompt for a timezone
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Budapest

RUN apt update
RUN apt install -y vim git build-essential gdb ltrace strace curl wget python3 python3-pip python3-dev libssl-dev libffi-dev

# Install pwntools
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade pwntools

ENTRYPOINT bin/bash
