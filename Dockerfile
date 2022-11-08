FROM ubuntu:22.04

ENV ASDF_VERSION 0.10.2
ENV PATH "/root/.asdf/shims:/root/.asdf/bin:$PATH"

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends curl tzdata

COPY bash/ ./bash
