#!/bin/bash

curl -O https://raw.githubusercontent.com/WillBooster/docker-utils/main/bash/set-versions.sh \
  && source set-versions.sh \
  && git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v${ASDF_VERSION} \
  && echo 'legacy_version_file = yes' > $HOME/.asdfrc
