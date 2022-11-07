#!/bin/bash

apt-get -qq install -y --no-install-recommends git ca-certificates \
  && git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v${ASDF_VERSION}

