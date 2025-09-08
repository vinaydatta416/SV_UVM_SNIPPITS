class seq_item extends uvm_sequence_item;
  rand bit [3:0] a;
  rand bit [3:0] b;

  `uvm_object_utils(seq_item)

  function new(string name = "seq_item");
    super.new(name);
  endfunction

  function void do_print(uvm_printer printer);
    super.do_print(printer);
    $display("PRINT: a = %0d, b = %0d", a, b);
  endfunction
endclass


class my_driver extends uvm_driver #(seq_item);
  `uvm_component_utils(my_driver)

  function new(string name = "my_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    forever begin
      seq_item req;
      seq_item rsp;
      seq_item_port.get_next_item(req);
      $display("[DRIVER] Received item: a = %0d, b = %0d", req.a, req.b);
      seq_item_port.item_done();
    end
  endtask
endclass


class my_sequence extends uvm_sequence #(seq_item);
  `uvm_object_utils(my_sequence)

  function new(string name = "my_sequence");
    super.new(name);
  endfunction

  task body();
    // Write only one macro at a time here, test and then replace with others
    // Example:
    `uvm_do(req) // ← Change this line to try each macro

  endtask
endclass

class my_sequencer extends uvm_sequencer #(seq_item);
  `uvm_component_utils(my_sequencer)

  function new(string name = "my_sequencer", uvm_component parent = null);
    super.new(name, parent);
  endfunction
endclass




class my_env extends uvm_env;
  `uvm_component_utils(my_env)

  my_driver    drv;
  my_sequencer seqr;

  function new(string name = "my_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    drv = my_driver::type_id::create("drv", this);
    seqr = my_sequencer::type_id::create("seqr", this);
  endfunction

  function void connect_phase(uvm_phase phase);
    drv.seq_item_port.connect(seqr.seq_item_export);
  endfunction
endclass






class my_test extends uvm_test;
  `uvm_component_utils(my_test)

  my_env      env;
  my_sequence seq;

  function new(string name = "my_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = my_env::type_id::create("env", this);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = my_sequence::type_id::create("seq");
    seq.start(env.seqr);

    phase.drop_objection(this);
  endtask
endclass




`include "uvm_macros.svh"
import uvm_pkg::*;

`include "seq_item.sv"
`include "my_driver.sv"
`include "my_sequence.sv"
`include "my_sequencer.sv"
`include "my_env.sv"
`include "my_test.sv"

module top;
  initial begin
    run_test("my_test");
  end
endmodule






























































































































