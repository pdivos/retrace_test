#!/bin/bash

# set -uo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# -e RETRACE_EXECUTION_ID=root \
# -e PYTHONVERBOSE=1 \
docker run -i \
-e PYTHONPATH=/usr/src/app/retrace-record-replay \
-e RETRACE_VERBOSE=1 \
-e RETRACE_OUTPUT_DIR=/usr/src/app/retrace_data \
-e RETRACE_MODE=replay \
--rm --network host -v $DIR:/usr/src/app retrace-test retrace-record-replay/retracereplay
