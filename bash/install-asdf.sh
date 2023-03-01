#!/bin/bash

curl https://raw.githubusercontent.com/WillBooster/docker-utils/main/bash/set-versions.sh | bash \
  && git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v${ASDF_VERSION} \
  && echo 'legacy_version_file = yes' > $HOME/.asdfrc
