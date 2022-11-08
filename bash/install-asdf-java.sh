#!/bin/bash

# for 'asdf plugin add java'
apt-get install -qq -y --no-install-recommends tar gpg \
  && asdf plugin add java
