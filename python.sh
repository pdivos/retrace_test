#!/bin/bash

# set -uo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# --user $(id -u):$(id -g) 
docker run -i --rm --network host -v $DIR:/usr/src/app retrace-test python -u "$@"
