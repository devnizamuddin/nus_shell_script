#!/bin/sh
# Uninstaller for mycli (POSIX compliant)

APP_NAME="mycli"
INSTALL_DIR="/usr/local/bin"
TARGET="$INSTALL_DIR/$APP_NAME"

# Check if installed
if [ ! -L "$TARGET" ] && [ ! -f "$TARGET" ]; then
  echo "❌ '$APP_NAME' is not installed in $INSTALL_DIR"
  exit 1
fi

# Ask for confirmation
echo "This will remove '$APP_NAME' from $INSTALL_DIR"
printf "Proceed? [y/N]: "
read ans
case "$ans" in
  y|Y|yes|YES)
    ;;
  *)
    echo "Uninstall cancelled."
    exit 0
    ;;
esac

# Needs sudo if not writable
if [ ! -w "$INSTALL_DIR" ]; then
  echo "🔑 Root permission required (sudo)"
  sudo rm -f "$TARGET"
else
  rm -f "$TARGET"
fi

echo "✅ Uninstalled '$APP_NAME'."
