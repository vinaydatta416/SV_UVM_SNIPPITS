##=======================================================================================
# Makefile to run SystemVerilog snippets (Questa/VCS)
# Place this Makefile in: /home1/B111/SmThouseeF/vinay-------/svsnippits/snippits/sim/
##sv snippits in sv_snippits Repo
##Makefile should be in sv_snippits/sim only
##=======================================================================================



SV_SNIPPITS_PATH = ../
SIM_PATH        = .
VLOG            = vlog
VSIM            = vsim
VCS             = vcs -sverilog

.PHONY: help clean run_qusta run_vcs

# ----------------- Help -----------------
help:
	@echo "Usage:"
	@echo "======================================================"
	@echo " 1 make help                     "
	@echo " 2 make clean                    # clean all temp files (VCS & Questa) "
	@echo " 3 make run_qusta filename.sv    # Compile & run with Questa"
	@echo " 4 make run_vcs filename.sv      # Compile & run with VCS"
	@echo "======================================================"

# ----------------- Clean -----------------
clean:
	rm -rf $(SIM_PATH)/work $(SIM_PATH)/transcript $(SIM_PATH)/vsim.wlf \
	$(SIM_PATH)/*.log $(SIM_PATH)/csrc $(SIM_PATH)/simv $(SIM_PATH)/simv.daidir \
	$(SIM_PATH)/ucli.key $(SIM_PATH)/*.vpd $(SIM_PATH)/*.fsdb $(SIM_PATH)/vlog.log \
	$(SIM_PATH)/simv_* 

# ----------------- Questa -----------------
run_qusta:
	@if [ -z "$(word 2,$(MAKECMDGOALS))" ]; then \
		echo "Error: Please provide a file, e.g. make run_qusta filename.sv"; \
		exit 1; \
	fi; \
	FULL_FILE=$(SV_SNIPPITS_PATH)/$(word 2,$(MAKECMDGOALS)); \
	mkdir -p $(SIM_PATH)/work; \
	cd $(SIM_PATH); \
	$(VLOG) $$FULL_FILE | tee vlog.log; \
	TOP_MODULE=$$(grep "Top level modules:" -A1 vlog.log | tail -n1 | awk '{print $$1}'); \
	if [ -z "$$TOP_MODULE" ]; then \
		echo "Error: Could not detect top module."; \
		exit 1; \
	fi; \
	echo "Running Questa with top module: $$TOP_MODULE"; \
	$(VSIM) -c $$TOP_MODULE -do "run -all; quit"

# ----------------- VCS -----------------
run_vcs:
	@if [ -z "$(word 2,$(MAKECMDGOALS))" ]; then \
		echo "Error: Please provide a file, e.g. make run_vcs filename.sv"; \
		exit 1; \
	fi; \
	FULL_FILE=$(SV_SNIPPITS_PATH)/$(word 2,$(MAKECMDGOALS)); \
	BASENAME=$$(basename $(word 2,$(MAKECMDGOALS)) .sv); \
	cd $(SIM_PATH); \
	$(VCS) $$FULL_FILE -o simv_$$BASENAME; \
	./simv_$$BASENAME

%:
	@:
 
