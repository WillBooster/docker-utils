#!/bin/bash

apt-get -qq install -y --no-install-recommends curl \
  && LITESTREAM_VERSION=$(curl --silent "https://api.github.com/repos/benbjohnson/litestream/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | sed 's/^v//') \
  && LITESTREAM_VERSION=${LITESTREAM_VERSION:-0.5.2} \
  && LITESTREAM_VERSION=0.5.2 \     # Force to use 0.5.2 since 0.5.3 is broken (cannot upload backup to S3)
  && DEB_FILE="litestream-${LITESTREAM_VERSION}-linux-${ARCH}.deb" \
  && echo "Installing Litestream: ${DEB_FILE}" \
  && curl -sLO https://github.com/benbjohnson/litestream/releases/download/v${LITESTREAM_VERSION}/${DEB_FILE} \
  && dpkg-reconfigure debconf -f noninteractive -p critical \
  && dpkg -i ${DEB_FILE} \
  && litestream version \
  && rm -f ${DEB_FILE}
