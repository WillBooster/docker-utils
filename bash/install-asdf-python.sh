#!/bin/bash

# for 'asdf plugin add python' (c.f. https://github.com/pyenv/pyenv/wiki#suggested-build-environment)
apt-get install -qq -y --no-install-recommends make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
  && asdf plugin add python

