#!/bin/sh
# Utility functions


#*
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                   💰 Imported Files                                              ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#*

. ./config.sh


#*
#* ┏==================================================================================================┓
#* ┃                                   📖 Start  Here...                                              ┃
#* ┗==================================================================================================┛
#*


# Ensure log directory exists
[ ! -d "$LOG_DIR" ] && mkdir -p "$LOG_DIR"

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

# Reusable input function
get_input() {
  prompt="$1"
  read -p "$prompt: " input_value
  echo "$input_value"
}
