#!/bin/sh

set -euo pipefail

# for backwards compatibility, seperates host and port from url
export LOGO_PRIVATE_DOMAIN=${LOGO_PRIVATE_DOMAIN:-${FRONTEND_HOST%:*}}
export CORE_APP_PORT=${CORE_APP_PORT:-${FRONTEND_HOST##*:}}

echo using frontend: ${LOGO_PRIVATE_DOMAIN} with port: ${CORE_APP_PORT}

exec caddy run --config Caddyfile --adapter caddyfile 2>&1