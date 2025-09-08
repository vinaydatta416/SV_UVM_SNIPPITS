/*

import uvm_pkg::*;                 // Import all UVM base classes
`include "uvm_macros.svh"         // Include UVM macros (like factory registration)

// -----------------------------------------------------------
// Base sequence item: write_xtn
// -----------------------------------------------------------
class write_xtn extends uvm_sequence_item;

  rand int a;                      // Declare a random integer variable

  `uvm_object_utils(write_xtn)    // Register with factory

  // Constructor
  function new(string name = "write_xtn");
    super.new(name);              // Call base class constructor
  endfunction

  // Constraint: a must be between 6 and 14
  constraint valid_a { a > 5; a < 15; }

endclass

// -----------------------------------------------------------
// Derived sequence item: small_xtn (child of write_xtn)
// -----------------------------------------------------------
class small_xtn extends write_xtn;

  `uvm_object_utils(small_xtn)    // Register derived class with factory

  // Constructor
  function new(string name = "small_xtn");
    super.new(name);              // Call parent constructor
  endfunction

  // Override constraint: a must be exactly 9
  constraint valid_a { a == 9; }

endclass

// -----------------------------------------------------------
// Declare a handle of base type (write_xtn)
// -----------------------------------------------------------
write_xtn xtn_h;

// -----------------------------------------------------------
// Top module
// -----------------------------------------------------------
module top;

  // Task to create and randomize object
  task call();
    xtn_h = write_xtn::type_id::create("xtn_h"); // Create object using factory
    xtn_h.randomize();                            // Randomize it
    $display("The value of a is %0d", xtn_h.a);   // Display the value of 'a'
  endtask

  initial begin
    // ---------------- First call without override ----------------
    $display("--- Without Override ---");
    call();  // Will create object of write_xtn

    // ---------------- Set type override ----------------
    factory.set_type_override_by_type(write_xtn::get_type(), small_xtn::get_type());
    // Now any factory creation of write_xtn will return small_xtn

    // ---------------- Second call with override ----------------
    $display("--- With Override ---");
    call();  // Will create object of small_xtn (overridden)

    // ---------------- Print factory override info ----------------
    factory.print();
  end

endmodule

*/

//========================================================================
/*

`include "uvm_macros.svh"      // Include UVM macros
import uvm_pkg::*;             // Import all UVM classes

// Define a class named 'transaction' which extends uvm_object
class transaction extends uvm_object;

  rand bit[15:0] addr;         // Random address field (16-bit)
  rand bit[15:0] data;         // Random data field (16-bit)

  // Register fields for UVM automation (factory, copy, compare, print)
  `uvm_object_utils_begin(transaction)
    `uvm_field_int(addr, UVM_PRINT)   // Enable print for addr
    `uvm_field_int(data, UVM_PRINT)   // Enable print for data
  `uvm_object_utils_end

  // Constructor for transaction object
  function new(string name = "transaction");
    super.new(name);          // Call base class constructor
  endfunction

endclass  // End of transaction class


// Define base_test class which extends uvm_test
class base_test extends uvm_test;

  transaction tr1, tr2;       // Declare two transaction objects to compare
  uvm_comparer comp;          // UVM object for comparing objects

  `uvm_component_utils(base_test)  // Register class with factory

  // Constructor for base_test
  function new(string name = "base_test", uvm_component parent = null);
    super.new(name, parent);       // Call base class constructor
  endfunction

  // Build phase: create objects using factory
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);      // Call base build phase

    // Create tr1 and tr2 using UVM factory
    tr1 = transaction::type_id::create("tr1", this);
    tr2 = transaction::type_id::create("tr2", this);

    // Create comparer object manually
    comp = new();
  endfunction

  // Run phase: do randomization and comparison
  task run_phase(uvm_phase phase);
    super.run_phase(phase);       // Call base run phase

    // Randomize both transaction objects
    assert(tr1.randomize());      // Randomize tr1 and check success
    assert(tr2.randomize());      // Randomize tr2 and check success

    // Configure comparer settings
    comp.verbosity = UVM_LOW;     // Set log level to low (minimal)
    comp.sev = UVM_ERROR;         // Severity for mismatches = error
    comp.show_max = 100;          // Show up to 100 mismatches

    // Print info before first comparison
    `uvm_info(get_full_name(), "Comparing objects", UVM_LOW)

    // Compare the two transaction objects (likely different)
    comp.compare_object("tr_compare", tr1, tr2);

    // Now copy tr1 into tr2 (make them identical)
    tr2.copy(tr1);

    // Compare again (they should now match)
    comp.compare_object("tr_compare", tr1, tr2);

    // Print final comparison result
    `uvm_info(get_full_name(), $sformatf("Comparing objects: result = %0d", comp.result), UVM_LOW)

    // Compare mismatched integers (expect error)
    comp.compare_field_int("int_compare", 5'h2, 5'h4, 5);  // Mismatch: 0x2 vs 0x4

    // Compare mismatched strings (expect error)
    comp.compare_string("string_compare", "name", "names"); // Mismatch: extra 's'

    // Show result after mismatches
    `uvm_info(get_full_name(), $sformatf("Comparing objects: result = %0d", comp.result), UVM_LOW)

    // Now compare matching values
    comp.compare_field_int("int_compare", 5'h4, 5'h4, 5);   // Match
    comp.compare_string("string_compare", "name", "name"); // Match
  endtask

endclass  // End of base_test


// Top-level module to run UVM test
module tb_top;

  initial begin
    run_test("base_test");    // Run the test named "base_test"
  end

endmodule

*/


//=======================================================================

/*
    
//createing uvm tb driver monitor seqr

    `include "uvm_macros.svh"                 // Include UVM macros (e.g., `uvm_info, `uvm_component_utils)
import uvm_pkg::*;                        // Import all UVM types and classes from the UVM package

//========================= DRIVER =========================//

class driver extends uvm_driver;         // Define a class `driver` that extends uvm_driver (base class for drivers)

  `uvm_component_utils(driver)           // Register the class with the UVM factory (enables create by name)

  function new(string name = "driver", uvm_component parent); // Constructor with default name and parent
    super.new(name, parent);             // Call the parent class constructor
  endfunction

  virtual function void build_phase(uvm_phase phase); // build_phase: for creating sub-components, setting config
    super.build_phase(phase);           // Always call base class's build_phase
    `uvm_info("driver",                 // UVM info message with ID "driver"
              "am in the build of driver",  // Message string
              UVM_MEDIUM);             // Verbosity level: UVM_MEDIUM
  endfunction

  virtual function void connect_phase(uvm_phase phase); // connect_phase: used to connect ports/exports
    super.connect_phase(phase);        // Call base class's connect_phase
    `uvm_info("driver",                // UVM info message
              "am in the connect of driver",
              UVM_MEDIUM);             // Medium verbosity
  endfunction

  task run_phase(uvm_phase phase);     // run_phase: simulation run-time behavior
    phase.raise_objection(this);       // Raise objection to keep simulation running
    `uvm_info("driver",                // Log message during run phase
              "am in the run phase of driver",
              UVM_MEDIUM);
    phase.drop_objection(this);        // Drop objection to allow phase to end
  endtask

endclass

//========================= AGENT =========================//

class agent extends uvm_agent;          // Agent class: groups sequencer, driver, monitor

  `uvm_component_utils(agent)           // Register agent with factory

  driver drv_h;                         // Handle for driver component

  function new(string name = "agent", uvm_component parent); // Constructor
    super.new(name, parent);            // Call parent class constructor
  endfunction

  virtual function void build_phase(uvm_phase phase);  // build_phase of agent
    super.build_phase(phase);          // Call base build_phase
    `uvm_info("agent", "am in the build of agent", UVM_MEDIUM); // Info message

    drv_h = driver::type_id::create("drv_h", this);    // Create driver using factory
    drv_h.set_report_verbosity_level(UVM_MEDIUM);      // Set verbosity of the driver to medium
  endfunction

  virtual function void connect_phase(uvm_phase phase); // connect_phase of agent
    super.connect_phase(phase);         // Base call
    `uvm_info("agent", "am in the connect of agent", UVM_MEDIUM); // Log connection
  endfunction

  task run_phase(uvm_phase phase);     // Agent run phase
    phase.raise_objection(this);       // Raise objection to delay phase end
    `uvm_info("agent", "am in the run phase of agent", UVM_MEDIUM); // Print message
    phase.drop_objection(this);        // Drop objection
  endtask

endclass

//========================= ENVIRONMENT =========================//

class env extends uvm_env;             // env class: top-level container for agents, scoreboards, etc.

  `uvm_component_utils(env)             // Factory registration

  agent agnt_h;                         // Agent handle

  function new(string name = "env", uvm_component parent); // Constructor
    super.new(name, parent);            // Call base class constructor
  endfunction

  virtual function void build_phase(uvm_phase phase);  // build_phase of env
    super.build_phase(phase);          // Call base method
    `uvm_info("env", "am in the build of env", UVM_MEDIUM); // Info message
    agnt_h = agent::type_id::create("agnt_h", this);   // Create agent using factory
    agnt_h.set_report_verbosity_level(UVM_MEDIUM);     // Set verbosity for agent
  endfunction

  virtual function void connect_phase(uvm_phase phase); // connect_phase of env
    super.connect_phase(phase);         // Base connect
    `uvm_info("env", "am in the connect of env", UVM_MEDIUM); // Log message
  endfunction

  task run_phase(uvm_phase phase);     // env run_phase
    phase.raise_objection(this);       // Raise objection to keep run phase active
    `uvm_info("env", "am in the run phase of env", UVM_MEDIUM); // Info log
    phase.drop_objection(this);        // Drop objection to allow phase to end
  endtask

endclass

//========================= TEST =========================//

class basetest extends uvm_test;       // Test class extending uvm_test (entry point for testbench)

  `uvm_component_utils(basetest)        // Register test with factory

  env env_h;                            // Handle to environment

  function new(string name = "basetest", uvm_component parent); // Constructor
    super.new(name, parent);            // Call base constructor
  endfunction

  virtual function void build_phase(uvm_phase phase);  // build_phase of test
    super.build_phase(phase);          // Base class build
    `uvm_info("test", "am in the build of test", UVM_MEDIUM); // Log
    env_h = env::type_id::create("env_h", this);       // Create env
  endfunction

  virtual function void connect_phase(uvm_phase phase); // connect_phase of test
    super.connect_phase(phase);         // Base connect
    `uvm_info("test", "am in the connect of test", UVM_MEDIUM); // Log
  endfunction

  virtual function void end_of_elaboration_phase(uvm_phase phase); // Called after build/connect
    `uvm_info("test", "am in the end_of_elaboration of test", UVM_MEDIUM); // Info
    uvm_top.print_topology();           // Print full UVM hierarchy (for debug)
  endfunction

  task run_phase(uvm_phase phase);     // run_phase of test
    phase.raise_objection(this);       // Keep run phase active
    #10;                                // Wait 10 time units
    `uvm_info("test", "am in the run phase of test", UVM_MEDIUM); // Log
    phase.drop_objection(this);        // Allow run phase to end
  endtask

endclass

//========================= TOP MODULE =========================//

module top;

  initial begin
    uvm_top.set_report_verbosity_level(UVM_MEDIUM); // Set default verbosity for the entire testbench
    run_test("basetest");            // Run the test by name ("basetest") using UVM factory
  end

endmodule

*/






//=======================================================================================
/*
`include "uvm_macros.svh"
import uvm_pkg::*;

class component_A extends uvm_component;
  `uvm_component_utils(component_A)
  
  function new(string name = "component_A", uvm_component parent = null);
    super.new(name, parent);
  endfunction
  
  virtual function display();
    `uvm_info(get_type_name(), $sformatf("inside component_A"), UVM_LOW);
  endfunction
endclass

  
  class component_B extends component_A;
    `uvm_component_utils(component_B)
    
  function void (string name="component_B", uvm_component parent =null);
    super.new(name, parent);
  endfunction
  
  function display();
    `uvm_info(get_type_name(), "inside component_B", UVM_LOW);
  endfunction
  
  endclass
  
  
  class my_test extends uvm_test;
    `uvm_component_utils(my_test)
    
  component_A comp_A;
  
  function void build_phase (uvm_phase phase);
    uvm_factory factory = uvm_factory::get();
    super.build_phase (phase);
  endfunction
  
  set_type_override_by_type(component_A::get_type(), component_B::get_type());
    comp_A = component_A::type_id::create("comp_A", this);
    factory.print();
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    comp_A.display();
  endtask
  
endclass

module tb_top;
  initial begin
  run_test("my_test);
end
endmodule


*/

//===================================================================================




//===================================================================================






//===================================================================================






//===================================================================================






//===================================================================================




//===================================================================================




//===================================================================================






//===================================================================================






//===================================================================================






//===================================================================================






//===================================================================================




//===================================================================================






//===================================================================================






//===================================================================================






//===================================================================================


































































































































































































































































































