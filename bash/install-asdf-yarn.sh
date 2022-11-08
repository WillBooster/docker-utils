#!/bin/bash

# for 'asdf plugin add yarn'
apt-get install -qq -y --no-install-recommends gpg gpg-agent \
  && asdf plugin add yarn

