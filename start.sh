#!/bin/sh

set -x

env

if [ -z "$DB_URL" ]; then
  exit 1
fi

if [ -z "$ENVIRONMENT" ]; then
  ENVIRONMENT="development"
fi

sed -i "s/sqlalchemy.url = .*/sqlalchemy.url = $DB_URL/" $ENVIRONMENT.ini

pserve $ENVIRONMENT.ini
