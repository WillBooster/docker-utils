#!/bin/bash

apt-get install -qq -y wget \
  && wget --quiet https://github.com/benbjohnson/litestream/releases/download/v${LITESTREAM_VERSION}/litestream-v${LITESTREAM_VERSION}-linux-amd64.deb \
  && dpkg-reconfigure debconf -f noninteractive -p critical \
  && dpkg -i litestream-v${LITESTREAM_VERSION}-linux-amd64.deb \
  && litestream version \
  && rm -f litestream-v${LITESTREAM_VERSION}-linux-amd64.deb
