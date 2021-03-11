#!/bin/bash

if [[ -z "${ENV+x}" ]]; then
  echo "Environment variable ENV not set!"
  exit 1
fi

set -euox pipefail

if [[ "$ENV" == "development" ]]; then
  NODE_ENV=development yarn start
elif [[ "$ENV" == "production" ]]; then
  NODE_ENV=production yarn start
else
  echo "Invalid mode!"
  exit 1
fi