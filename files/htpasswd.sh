#!/usr/bin/env bash

set -eo pipefail

if [[ -z "${1}" ]]; then
  echo "usage: htpasswd username"
  exit 1
fi

hashed="${1}:$(openssl passwd -apr1)"
echo "${hashed}" | sudo tee -a /etc/nginx/htpasswd.conf > /dev/null
hashed=""
