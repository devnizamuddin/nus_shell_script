#!/bin/sh
# Utility functions (shared across modules)
# Ensure log directory exists
LOG_DIR="./logs"
[ ! -d "$LOG_DIR" ] && mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/app.log"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

error() {
  echo "❌ ERROR: $1"
  log "ERROR: $1"
}

success() {
  echo "✅ $1"
  log "SUCCESS: $1"
}


get_input() {
  prompt="$1"
  read -p "$prompt: " input_value
  echo "$input_value"
}