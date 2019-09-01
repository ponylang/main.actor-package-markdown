#!/bin/bash

set -o errexit
set -o nounset

#
# *** You should already be logged in to DockerHub when you run this ***
#

TODAY=$(date +%Y%m%d)
DOCKERFILE_DIR="$(dirname "$0")"

docker build -t "ponylang/main.actor-package-markdown-ci-standard:${TODAY}" \
  "${DOCKERFILE_DIR}"
docker push "ponylang/main.actor-package-markdown-ci-standard:${TODAY}"
