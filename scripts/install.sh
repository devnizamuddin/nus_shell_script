#!/bin/sh
# Installer for mycli (POSIX compliant)

set -e

APP_NAME="mycli"
INSTALL_DIR="/usr/local/bin"
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
BIN_FILE="$SCRIPT_DIR/bin/$APP_NAME"

# Check if bin/mycli exists
if [ ! -f "$BIN_FILE" ]; then
  echo "❌ Error: $BIN_FILE not found."
  exit 1
fi

# Ask for confirmation
echo "This will install '$APP_NAME' into $INSTALL_DIR"
printf "Proceed? [y/N]: "
read ans
case "$ans" in
  y|Y|yes|YES)
    ;;
  *)
    echo "Installation cancelled."
    exit 0
    ;;
esac

# Needs sudo if not writable
if [ ! -w "$INSTALL_DIR" ]; then
  echo "🔑 Root permission required (sudo)"
  sudo ln -sf "$BIN_FILE" "$INSTALL_DIR/$APP_NAME"
else
  ln -sf "$BIN_FILE" "$INSTALL_DIR/$APP_NAME"
fi

echo "✅ Installed '$APP_NAME'."
echo "You can now run it using: $APP_NAME"
