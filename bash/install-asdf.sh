#!/bin/bash

ASDF_VERSION=0.11.2

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v${ASDF_VERSION} \
  && echo 'legacy_version_file = yes' > $HOME/.asdfrc
