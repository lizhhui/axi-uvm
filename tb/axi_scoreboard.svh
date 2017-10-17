////////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2017, Matt Dew
//
// This program is free software (firmware): you can redistribute it and/or
// modify it under the terms of  the GNU General Public License as published
// by the Free Software Foundation, either version 3 of the License, or (at
// your option) any later version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTIBILITY or
// FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
// for more details.
//
// License:	GPL, v3, as defined and found on www.gnu.org,
//		http://www.gnu.org/licenses/gpl.html
//
//
////////////////////////////////////////////////////////////////////////////////
/*! \class axi_scoreboard
 *  \brief scoreboard
 *
 * tracks That the number of write address transactions, write data transactions and write response transactions match.
 *
 */
class axi_scoreboard extends uvm_subscriber #(axi_seq_item);
  `uvm_component_utils(axi_scoreboard)

 // uvm_analysis_port #(axi_seq_item) ap;

  extern function new (string name="axi_scoreboard", uvm_component parent=null);

  extern function void build_phase              (uvm_phase phase);
  extern function void connect_phase            (uvm_phase phase);
  extern task          run_phase                (uvm_phase phase);

  extern virtual function void write                    (axi_seq_item t);


endclass : axi_scoreboard


    function axi_scoreboard::new (string name="axi_scoreboard", uvm_component parent=null);
  super.new(name, parent);
endfunction : new

function void axi_scoreboard::build_phase (uvm_phase phase);
  super.build_phase(phase);
endfunction : build_phase

function void axi_scoreboard::connect_phase (uvm_phase phase);
  super.connect_phase(phase);
endfunction : connect_phase


task axi_scoreboard::run_phase(uvm_phase phase);
//  axi_seq_item item;
//  forever begin
//    ap.get(item);
//    `uvm_info(this.get_type_name(), $sformatf("Item: %s", item.convert2string()), UVM_INFO)
 // end
endtask : run_phase

function void axi_scoreboard::write(axi_seq_item t);
  `uvm_info(this.get_type_name(), $sformatf("%s", t.convert2string()), UVM_INFO)
endfunction : write
