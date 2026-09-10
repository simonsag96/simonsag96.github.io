#!/usr/bin/env bash
#
# Preview the site locally.
#
# Runs the Hugo dev server in the container defined by container.compose.yml
# and serves the site with live reload at http://localhost:1313.
#
# Usage:
#   ./preview_site.sh          Start the dev server (Ctrl-C to stop)
#   ./preview_site.sh stop     Stop and remove the container
#   ./preview_site.sh clean    Stop and also drop the node_modules / hugo cache volumes
#
set -euo pipefail

# Always operate from the repository root, whatever the caller's cwd is.
cd "$(dirname "$(readlink -f "$0")")"

COMPOSE_FILE="container.compose.yml"
URL="http://localhost:1313"

if ! command -v docker >/dev/null 2>&1; then
  echo "error: docker not found — install Docker to preview the site locally." >&2
  exit 1
fi

if ! docker info >/dev/null 2>&1; then
  echo "error: cannot reach the Docker daemon — is it running?" >&2
  exit 1
fi

compose() {
  docker compose -f "$COMPOSE_FILE" "$@"
}

case "${1:-up}" in
  up)
    echo "Starting Hugo dev server — the site will be served at $URL"
    echo "First run installs npm and Hugo modules, so give it a moment."
    echo
    # Foreground, so the logs stream here and Ctrl-C shuts the container down.
    compose up
    ;;
  stop)
    compose down
    ;;
  clean)
    # Drops the cached node_modules and hugo_cache volumes; the next start
    # re-downloads them. Use this when a stale cache breaks the build.
    compose down --volumes
    ;;
  *)
    echo "usage: $0 [up|stop|clean]" >&2
    exit 1
    ;;
esac
