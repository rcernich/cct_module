#!/bin/bash
# Set up Hawkular for java s2i builder image
set -e

ln -s /opt/jboss/container/jdv/s2i/install-teiid-common.sh /usr/local/s2i/install-teiid-common.sh
