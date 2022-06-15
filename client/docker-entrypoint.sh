#!/bin/sh
set -e

curl ${OPTION} ${URL}

exec "$@"