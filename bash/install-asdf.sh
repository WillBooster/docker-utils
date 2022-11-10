#!/bin/bash

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v${ASDF_VERSION} \
  && echo 'legacy_version_file = yes' > $HOME/.asdfrc

