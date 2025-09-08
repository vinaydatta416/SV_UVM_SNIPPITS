# Makefile for running SystemVerilog snippets with Questa or VCS

SV_SNIPPITS_PATH = /home1/B111/SmThouseeF/vinay-------/svsnippits/snippits
VLOG = vlog
VSIM = vsim
VCS  = vcs -sverilog

.PHONY: help clean run_qusta run_vcs

help:
	@echo "Usage:"
	@echo "======================================================"
	@echo " 1 make help    "
	@echo " 2 make clean                   #clean all temp files "
	@echo " 3 make run_qusta filename.sv   # Compile & run with Questa"
	@echo " 4 make run_vcs filename.sv     # Compile & run with VCS"
	@echo "======================================================="

clean:
	rm -rf work transcript vsim.wlf *.log csrc simv simv.daidir ucli.key *.vpd *.fsdb vlog.log

# ---------- Questa ------------
run_qusta:
	@if [ -z "$(word 2,$(MAKECMDGOALS))" ]; then \
		echo "Error: Please provide a file, e.g. make run_qusta filename.sv"; \
		exit 1; \
	fi; \
	FULL_FILE=$(SV_SNIPPITS_PATH)/$(word 2,$(MAKECMDGOALS)); \
	$(VLOG) $$FULL_FILE | tee vlog.log; \
	TOP_MODULE=$$(grep "Top level modules:" -A1 vlog.log | tail -n1 | awk '{print $$1}'); \
	if [ -z "$$TOP_MODULE" ]; then \
		echo "Error: Could not detect top module."; \
		exit 1; \
	fi; \
	echo "Running Questa with top module: $$TOP_MODULE"; \
	$(VSIM) -c $$TOP_MODULE -do "run -all; quit"

# ---------- VCS ------------
run_vcs:
	@if [ -z "$(word 2,$(MAKECMDGOALS))" ]; then \
		echo "Error: Please provide a file, e.g. make run_vcs filename.sv"; \
		exit 1; \
	fi; \
	FULL_FILE=$(SV_SNIPPITS_PATH)/$(word 2,$(MAKECMDGOALS)); \
	BASENAME=$$(basename $(word 2,$(MAKECMDGOALS)) .sv); \
	$(VCS) $$FULL_FILE -o simv_$$BASENAME; \
	./simv_$$BASENAME

%:
	@:
