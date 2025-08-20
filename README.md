# Setup Guide

___


## 📂 Project Structure


```txt

my-cli/
├── bin/
│   └── nus              # Main entry point
│
├── src/
│   ├── commands/          # Individual command scripts
│   │   ├── help.sh
│   │   ├── init.sh
│   │   ├── build.sh
│   │   └── deploy.sh
│   │
│   ├── core/              # Shared utilities
│   │   ├── logger.sh
│   │   └── utils.sh
│   │
│   └── cli.sh             # Command dispatcher
│
├── scripts/               # Setup and maintenance scripts
│   ├── install.sh
│   └── uninstall.sh
│
├── tests/                 # Test scripts
│   └── test_init.sh
│
└── README.md

```