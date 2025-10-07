#!/bin/bash

apt-get -qq install -y --no-install-recommends curl \
  && LITESTREAM_VERSION=$(curl --silent "https://api.github.com/repos/benbjohnson/litestream/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | sed 's/^v//') \
  && echo "Installing Litestream version: ${LITESTREAM_VERSION}" \
  && curl -sLO https://github.com/benbjohnson/litestream/releases/download/v${LITESTREAM_VERSION}/litestream-${LITESTREAM_VERSION}-linux-${ARCH}.deb \
  && dpkg-reconfigure debconf -f noninteractive -p critical \
  && dpkg -i litestream-${LITESTREAM_VERSION}-linux-${ARCH}.deb \
  && litestream version \
  && rm -f litestream-${LITESTREAM_VERSION}-linux-${ARCH}.deb
