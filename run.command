#!/bin/bash
cd "$(dirname "$0")"


# lsof -i :8000
PIDS_8000=$(lsof -ti :8000)
if [ -n "$PIDS_8000" ]; then
  echo "killing processes on port 8000: $PIDS_8000"
  kill -9 $PIDS_8000 >/dev/null 2>&1
fi



python3 -m http.server 8000 &

sleep 1
open "http://localhost:8000"

wait
