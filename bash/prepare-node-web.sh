#!/bin/bash

# Web server requires libssl-dev. wb requires procps.
apt-get -qq install -y --no-install-recommends ca-certificates libssl-dev procps tzdata