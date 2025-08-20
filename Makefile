SCRIPTS_DIR = scripts
BIN_DIR = bin

APP_NAME := $(shell ls $(BIN_DIR) | head -n 1)

.PHONY: all install uninstall clean

all:
	@echo "Available commands:"
	@echo "  make install   Install $(APP_NAME)"
	@echo "  make uninstall Uninstall $(APP_NAME)"
	@echo "  make clean     Remove temporary files"

install:
	@chmod +x $(SCRIPTS_DIR)/install.sh $(BIN_DIR)/$(APP_NAME)
	@$(SCRIPTS_DIR)/install.sh

uninstall:
	@chmod +x $(SCRIPTS_DIR)/uninstall.sh
	@$(SCRIPTS_DIR)/uninstall.sh

clean:
	@echo "Cleaning..."
	@rm -rf *.log
