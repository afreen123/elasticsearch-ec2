#!/bin/bash
set -e

cd /usr/share/elasticsearch/

if [[ $PACKER_BUILD_NAME == "aws" ]]; then
  sudo bin/elasticsearch-plugin install --batch discovery-ec2
  sudo bin/elasticsearch-plugin install --batch repository-s3
fi
