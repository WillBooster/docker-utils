#!/bin/bash

apt-get -qq install -y --no-install-recommends curl \
  && LITESTREAM_VERSION=$(curl --silent "https://api.github.com/repos/benbjohnson/litestream/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | sed 's/^v//') \
  && LITESTREAM_VERSION=${LITESTREAM_VERSION:-0.5.0} \
  && echo "We use Litestream v0.3.13 since Litestream v0.5.0 is buggy." \
  && LITESTREAM_VERSION=0.3.13 \
  && echo "Installing Litestream version: ${LITESTREAM_VERSION}" \
  && if [ "$(printf '%s\n' "0.5.0" "${LITESTREAM_VERSION}" | sort -V | head -n1)" = "0.5.0" ]; then \
    DEB_FILE="litestream-${LITESTREAM_VERSION}-linux-${ARCH}.deb"; \
  else \
    [ "$ARCH" = "arm64" ] || ARCH="amd64" && DEB_FILE="litestream-v${LITESTREAM_VERSION}-linux-${ARCH}.deb"; \
  fi \
  && curl -sLO https://github.com/benbjohnson/litestream/releases/download/v${LITESTREAM_VERSION}/${DEB_FILE} \
  && dpkg-reconfigure debconf -f noninteractive -p critical \
  && dpkg -i ${DEB_FILE} \
  && litestream version \
  && rm -f ${DEB_FILE}
