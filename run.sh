#!/bin/bash

if [[ -z "${ENV+x}" ]]; then
  echo "Environment variable ENV not set!"
  exit 1
fi

set -euox pipefail

if [[ "$ENV" == "development" ]]; then
  mkdir -p "$(pwd)/dev_data"
  sqlite3 "$(pwd)/dev_data/database.db" "create table aTable(field1 int); drop table aTable;" > /dev/null
  database__connection__filename="$(pwd)/dev_data/database.db" NODE_ENV=development yarn start
elif [[ "$ENV" == "production" ]]; then
  yarn run bar
else
  echo "Invalid mode!"
  exit 1
fi