FROM ubuntu:22.04

ENV ASDF_VERSION 0.10.2

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends curl tzdata

COPY bash/ ./bash
