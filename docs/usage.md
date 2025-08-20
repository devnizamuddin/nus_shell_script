# Setup Guide

___


## Installation

```sh

chmod +x install.sh bin/nus
./install.sh

```

**Then you can run anywhere**

nus help


## Uninstall


```sh

chmod +x uninstall.sh
./uninstall.sh

```

___

**🔎 How it works**

1. Checks if bin/nus exists.
2. Asks user for confirmation.
3. Creates (or replaces) a symlink in /usr/local/bin/nus.
    * Uses sudo if needed.
4. Prints success message.
