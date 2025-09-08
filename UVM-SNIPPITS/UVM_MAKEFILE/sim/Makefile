#==================== MAKEFILE ====================

SRC_DIR = ../
SIMV_UVM1 = simv_uvm1
SIMV_UVM2 = simv_uvm2
VCS_OPTS = -full64 -sverilog -ntb_opts uvm +vpi +acc +vcs+lic+wait -debug_access+all

# Compile and run uvm1.sv
uvm1:
	vcs $(VCS_OPTS) $(SRC_DIR)/uvm1.sv -o $(SIMV_UVM1)
	./$(SIMV_UVM1)

# Compile and run uvm2.sv
uvm2:
	vcs $(VCS_OPTS) $(SRC_DIR)/uvm2.sv -o $(SIMV_UVM2)
	./$(SIMV_UVM2)

# Open waveform for uvm1
wave1:
	./$(SIMV_UVM1) -gui

# Open waveform for uvm2
wave2:
	./$(SIMV_UVM2) -gui

# Delete compiled simulators
clean:
	rm -rf csrc simv* ucli.key DVEfiles *.vpd *.log *.daidir *.key

# Help
help:
	@echo "==================================================="
	@echo "Usage:"
	@echo "  make uvm1       - Compile and run uvm1.sv"
	@echo "  make uvm2       - Compile and run uvm2.sv"
	@echo "  make wave1       - View waveform for uvm1"
	@echo "  make wave2      - View waveform for uvm2"
	@echo "  make clean      - Delete all generated files"
	@echo "==================================================="

#====================================================
