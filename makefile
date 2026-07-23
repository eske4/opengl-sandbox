BUILD_DIR = build
MAKEFLAGS += --no-print-directory

DOXYGEN_EXISTS := $(shell command -v doxygen 2> /dev/null)

.PHONY: build clean run debug docs

build:
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR) && cmake .. && cmake --build .
	@ln -sf "build/compile_commands.json"

clean:
	@rm -rf $(BUILD_DIR)
	@echo "Build directory cleaned." 

run:
	$(BUILD_DIR)/app/opengl_sandbox

	
test:
	@ctest --test-dir $(BUILD_DIR) --output-on-failure
