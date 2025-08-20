# Setup Guide

___


## Installation
___

```sh

chmod +x install.sh bin/mycli
./install.sh

```

**Then you can run anywhere**
___

mycli help


## Uninstall


```sh

chmod +x uninstall.sh
./uninstall.sh

```


**🔎 How it works**

1. Checks if bin/mycli exists.
2. Asks user for confirmation.
3. Creates (or replaces) a symlink in /usr/local/bin/mycli.
    * Uses sudo if needed.
4. Prints success message.
