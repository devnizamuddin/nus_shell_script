#!/bin/sh
# POSIX installer

set -e

INSTALL_DIR="/usr/local/bin"
ROOT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
BIN_DIR="$ROOT_DIR/bin"

APP_NAME=$(ls "$BIN_DIR" | head -n 1)
BIN_FILE="$BIN_DIR/$APP_NAME"

if [ ! -f "$BIN_FILE" ]; then
  echo "❌ Error: $BIN_FILE not found."
  exit 1
fi

echo "This will install '$APP_NAME' into $INSTALL_DIR"
printf "Proceed? [y/N]: "
read ans
case "$ans" in
  y|Y|yes|YES) ;;
  *) echo "Installation cancelled."; exit 0 ;;
esac

if [ ! -w "$INSTALL_DIR" ]; then
  echo "🔑 Root permission required (sudo)"
  sudo ln -sf "$BIN_FILE" "$INSTALL_DIR/$APP_NAME"
else
  ln -sf "$BIN_FILE" "$INSTALL_DIR/$APP_NAME"
fi

echo "✅ Installed '$APP_NAME'."
echo "You can now run it using: $APP_NAME"
