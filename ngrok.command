#!/bin/bash
cd "$(dirname "$0")"

source .env




ngrok http --authtoken ${NGROK_AUTHTOKEN} --domain ${NGROK_DOMAIN} ${PORT:-3000}


wait
