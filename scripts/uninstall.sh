#!/bin/sh
# Uninstaller for nus (POSIX compliant)

APP_NAME="nus"
INSTALL_DIR="/usr/local/bin"
TARGET="$INSTALL_DIR/$APP_NAME"

if [ ! -L "$TARGET" ] && [ ! -f "$TARGET" ]; then
  echo "❌ '$APP_NAME' is not installed in $INSTALL_DIR"
  exit 1
fi

echo "This will remove '$APP_NAME' from $INSTALL_DIR"
printf "Proceed? [y/N]: "
read ans
case "$ans" in
  y|Y|yes|YES) ;;
  *) echo "Uninstall cancelled."; exit 0 ;;
esac

if [ ! -w "$INSTALL_DIR" ]; then
  echo "🔑 Root permission required (sudo)"
  sudo rm -f "$TARGET"
else
  rm -f "$TARGET"
fi

echo "✅ Uninstalled '$APP_NAME'."
