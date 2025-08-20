APP_NAME = nus
SCRIPTS_DIR = scripts

.PHONY: all install uninstall clean

all:
	@echo "Available commands:"
	@echo "  make install   Install $(APP_NAME)"
	@echo "  make uninstall Uninstall $(APP_NAME)"
	@echo "  make clean     Remove temporary files"

install:
	@chmod +x $(SCRIPTS_DIR)/install.sh bin/$(APP_NAME)
	@$(SCRIPTS_DIR)/install.sh

uninstall:
	@chmod +x $(SCRIPTS_DIR)/uninstall.sh
	@$(SCRIPTS_DIR)/uninstall.sh

clean:
	@echo "Cleaning..."
	@rm -rf *.log


