#!/bin/sh
# Configure module
set -e

# As of rhel 7.6, rh-maven35 pulls in jdk8, so we need to remove them
for pkg in java-1.8.0-openjdk-devel java-1.8.0-openjdk-headless java-1.8.0-openjdk; do
    if rpm -q --quiet "$pkg"; then
        rpm -e --nodeps "$pkg"
    fi
done
