#!/bin/bash

# URL for the tarball file
TARBALL_URL="https://github.com/hemilabs/heminetwork/releases/download/v0.5.0/heminetwork_v0.5.0_linux_amd64.tar.gz"
TARBALL_NAME="hemi.tar.gz"
EXTRACT_DIR="/app/hemi"

# Install wget if it's not installed
apt-get update
apt-get install -y wget tar

# Download the tarball
wget -O $TARBALL_NAME $TARBALL_URL

# Extract the tarball
tar -xvzf $TARBALL_NAME -C $EXTRACT_DIR

# Change into the extracted directory
cd $EXTRACT_DIR

# Run the binary
./popmd
