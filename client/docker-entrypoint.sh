#!/usr/bin/env bash
set -e

update-ca-certificates
curl ${OPTION} ${URL}

exec "$@"
