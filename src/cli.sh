#!/bin/sh
# CLI command dispatcher

. "$(dirname "$0")/core/utils.sh"

main() {
  cmd="$1"
  shift || true

  case "$cmd" in
    help|"") . "$(dirname "$0")/commands/help.sh" ;;
    init)    . "$(dirname "$0")/commands/init.sh" "$@" ;;
    build)   . "$(dirname "$0")/commands/build.sh" "$@" ;;
    deploy)  . "$(dirname "$0")/commands/deploy.sh" "$@" ;;
    *) echo "[ERROR] Unknown command: $cmd" >&2; exit 1 ;;
  esac
}
