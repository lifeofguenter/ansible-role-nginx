#!/bin/bash

if [[ "${1}" = "" ]]; then
  echo "usage: htpasswd username"
  exit 1
fi
printf "${1}:`openssl passwd -apr1`\n" | sudo tee -a /etc/nginx/htpasswd.conf > /dev/null
exit 0
