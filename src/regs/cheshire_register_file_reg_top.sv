// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Top module auto-generated by `reggen`


`include "common_cells/assertions.svh"

module cheshire_register_file_reg_top #(
    parameter type reg_req_t = logic,
    parameter type reg_rsp_t = logic,
    parameter int AW = 6
) (
  input clk_i,
  input rst_ni,
  input  reg_req_t reg_req_i,
  output reg_rsp_t reg_rsp_o,
  // To HW
  input  cheshire_register_file_reg_pkg::cheshire_register_file_hw2reg_t hw2reg, // Read


  // Config
  input devmode_i // If 1, explicit error return for unmapped register access
);

  import cheshire_register_file_reg_pkg::* ;

  localparam int DW = 32;
  localparam int DBW = DW/8;                    // Byte Width

  // register signals
  logic           reg_we;
  logic           reg_re;
  logic [AW-1:0]  reg_addr;
  logic [DW-1:0]  reg_wdata;
  logic [DBW-1:0] reg_be;
  logic [DW-1:0]  reg_rdata;
  logic           reg_error;

  logic          addrmiss, wr_err;

  logic [DW-1:0] reg_rdata_next;

  // Below register interface can be changed
  reg_req_t  reg_intf_req;
  reg_rsp_t  reg_intf_rsp;


  assign reg_intf_req = reg_req_i;
  assign reg_rsp_o = reg_intf_rsp;


  assign reg_we = reg_intf_req.valid & reg_intf_req.write;
  assign reg_re = reg_intf_req.valid & ~reg_intf_req.write;
  assign reg_addr = reg_intf_req.addr;
  assign reg_wdata = reg_intf_req.wdata;
  assign reg_be = reg_intf_req.wstrb;
  assign reg_intf_rsp.rdata = reg_rdata;
  assign reg_intf_rsp.error = reg_error;
  assign reg_intf_rsp.ready = 1'b1;

  assign reg_rdata = reg_rdata_next ;
  assign reg_error = (devmode_i & addrmiss) | wr_err;


  // Define SW related signals
  // Format: <reg>_<field>_{wd|we|qs}
  //        or <reg>_{wd|we|qs} if field == 1 or 0
  logic [15:0] version_qs;
  logic [31:0] scratch_0_qs;
  logic [31:0] scratch_0_wd;
  logic scratch_0_we;
  logic [31:0] scratch_1_qs;
  logic [31:0] scratch_1_wd;
  logic scratch_1_we;
  logic [31:0] scratch_2_qs;
  logic [31:0] scratch_2_wd;
  logic scratch_2_we;
  logic [31:0] scratch_3_qs;
  logic [31:0] scratch_3_wd;
  logic scratch_3_we;
  logic [1:0] boot_mode_qs;
  logic boot_mode_re;
  logic status_clock_lock_qs;
  logic status_clock_lock_re;
  logic status_uart_present_qs;
  logic status_uart_present_re;
  logic status_spi_present_qs;
  logic status_spi_present_re;
  logic status_i2c_present_qs;
  logic status_i2c_present_re;
  logic status_dma_present_qs;
  logic status_dma_present_re;
  logic status_ddr_link_present_qs;
  logic status_ddr_link_present_re;
  logic status_rpc_dram_present_qs;
  logic status_rpc_dram_present_re;
  logic status_vga_present_qs;
  logic status_vga_present_re;
  logic [31:0] vga_red_width_qs;
  logic vga_red_width_re;
  logic [31:0] vga_green_width_qs;
  logic vga_green_width_re;
  logic [31:0] vga_blue_width_qs;
  logic vga_blue_width_re;

  // Register instances
  // R[version]: V(False)

  // constant-only read
  assign version_qs = 16'h2;



  // Subregister 0 of Multireg scratch
  // R[scratch_0]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RW"),
    .RESVAL  (32'h0)
  ) u_scratch_0 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (scratch_0_we),
    .wd     (scratch_0_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (scratch_0_qs)
  );

  // Subregister 1 of Multireg scratch
  // R[scratch_1]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RW"),
    .RESVAL  (32'h0)
  ) u_scratch_1 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (scratch_1_we),
    .wd     (scratch_1_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (scratch_1_qs)
  );

  // Subregister 2 of Multireg scratch
  // R[scratch_2]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RW"),
    .RESVAL  (32'h0)
  ) u_scratch_2 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (scratch_2_we),
    .wd     (scratch_2_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (scratch_2_qs)
  );

  // Subregister 3 of Multireg scratch
  // R[scratch_3]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RW"),
    .RESVAL  (32'h0)
  ) u_scratch_3 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (scratch_3_we),
    .wd     (scratch_3_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (scratch_3_qs)
  );


  // R[boot_mode]: V(True)

  prim_subreg_ext #(
    .DW    (2)
  ) u_boot_mode (
    .re     (boot_mode_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.boot_mode.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (boot_mode_qs)
  );


  // R[status]: V(True)

  //   F[clock_lock]: 0:0
  prim_subreg_ext #(
    .DW    (1)
  ) u_status_clock_lock (
    .re     (status_clock_lock_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.status.clock_lock.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (status_clock_lock_qs)
  );


  //   F[uart_present]: 1:1
  prim_subreg_ext #(
    .DW    (1)
  ) u_status_uart_present (
    .re     (status_uart_present_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.status.uart_present.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (status_uart_present_qs)
  );


  //   F[spi_present]: 2:2
  prim_subreg_ext #(
    .DW    (1)
  ) u_status_spi_present (
    .re     (status_spi_present_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.status.spi_present.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (status_spi_present_qs)
  );


  //   F[i2c_present]: 3:3
  prim_subreg_ext #(
    .DW    (1)
  ) u_status_i2c_present (
    .re     (status_i2c_present_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.status.i2c_present.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (status_i2c_present_qs)
  );


  //   F[dma_present]: 4:4
  prim_subreg_ext #(
    .DW    (1)
  ) u_status_dma_present (
    .re     (status_dma_present_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.status.dma_present.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (status_dma_present_qs)
  );


  //   F[ddr_link_present]: 5:5
  prim_subreg_ext #(
    .DW    (1)
  ) u_status_ddr_link_present (
    .re     (status_ddr_link_present_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.status.ddr_link_present.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (status_ddr_link_present_qs)
  );


  //   F[rpc_dram_present]: 6:6
  prim_subreg_ext #(
    .DW    (1)
  ) u_status_rpc_dram_present (
    .re     (status_rpc_dram_present_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.status.rpc_dram_present.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (status_rpc_dram_present_qs)
  );


  //   F[vga_present]: 7:7
  prim_subreg_ext #(
    .DW    (1)
  ) u_status_vga_present (
    .re     (status_vga_present_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.status.vga_present.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (status_vga_present_qs)
  );


  // R[vga_red_width]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_vga_red_width (
    .re     (vga_red_width_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.vga_red_width.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (vga_red_width_qs)
  );


  // R[vga_green_width]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_vga_green_width (
    .re     (vga_green_width_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.vga_green_width.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (vga_green_width_qs)
  );


  // R[vga_blue_width]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_vga_blue_width (
    .re     (vga_blue_width_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.vga_blue_width.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (vga_blue_width_qs)
  );




  logic [9:0] addr_hit;
  always_comb begin
    addr_hit = '0;
    addr_hit[0] = (reg_addr == CHESHIRE_REGISTER_FILE_VERSION_OFFSET);
    addr_hit[1] = (reg_addr == CHESHIRE_REGISTER_FILE_SCRATCH_0_OFFSET);
    addr_hit[2] = (reg_addr == CHESHIRE_REGISTER_FILE_SCRATCH_1_OFFSET);
    addr_hit[3] = (reg_addr == CHESHIRE_REGISTER_FILE_SCRATCH_2_OFFSET);
    addr_hit[4] = (reg_addr == CHESHIRE_REGISTER_FILE_SCRATCH_3_OFFSET);
    addr_hit[5] = (reg_addr == CHESHIRE_REGISTER_FILE_BOOT_MODE_OFFSET);
    addr_hit[6] = (reg_addr == CHESHIRE_REGISTER_FILE_STATUS_OFFSET);
    addr_hit[7] = (reg_addr == CHESHIRE_REGISTER_FILE_VGA_RED_WIDTH_OFFSET);
    addr_hit[8] = (reg_addr == CHESHIRE_REGISTER_FILE_VGA_GREEN_WIDTH_OFFSET);
    addr_hit[9] = (reg_addr == CHESHIRE_REGISTER_FILE_VGA_BLUE_WIDTH_OFFSET);
  end

  assign addrmiss = (reg_re || reg_we) ? ~|addr_hit : 1'b0 ;

  // Check sub-word write is permitted
  always_comb begin
    wr_err = (reg_we &
              ((addr_hit[0] & (|(CHESHIRE_REGISTER_FILE_PERMIT[0] & ~reg_be))) |
               (addr_hit[1] & (|(CHESHIRE_REGISTER_FILE_PERMIT[1] & ~reg_be))) |
               (addr_hit[2] & (|(CHESHIRE_REGISTER_FILE_PERMIT[2] & ~reg_be))) |
               (addr_hit[3] & (|(CHESHIRE_REGISTER_FILE_PERMIT[3] & ~reg_be))) |
               (addr_hit[4] & (|(CHESHIRE_REGISTER_FILE_PERMIT[4] & ~reg_be))) |
               (addr_hit[5] & (|(CHESHIRE_REGISTER_FILE_PERMIT[5] & ~reg_be))) |
               (addr_hit[6] & (|(CHESHIRE_REGISTER_FILE_PERMIT[6] & ~reg_be))) |
               (addr_hit[7] & (|(CHESHIRE_REGISTER_FILE_PERMIT[7] & ~reg_be))) |
               (addr_hit[8] & (|(CHESHIRE_REGISTER_FILE_PERMIT[8] & ~reg_be))) |
               (addr_hit[9] & (|(CHESHIRE_REGISTER_FILE_PERMIT[9] & ~reg_be)))));
  end

  assign scratch_0_we = addr_hit[1] & reg_we & !reg_error;
  assign scratch_0_wd = reg_wdata[31:0];

  assign scratch_1_we = addr_hit[2] & reg_we & !reg_error;
  assign scratch_1_wd = reg_wdata[31:0];

  assign scratch_2_we = addr_hit[3] & reg_we & !reg_error;
  assign scratch_2_wd = reg_wdata[31:0];

  assign scratch_3_we = addr_hit[4] & reg_we & !reg_error;
  assign scratch_3_wd = reg_wdata[31:0];

  assign boot_mode_re = addr_hit[5] & reg_re & !reg_error;

  assign status_clock_lock_re = addr_hit[6] & reg_re & !reg_error;

  assign status_uart_present_re = addr_hit[6] & reg_re & !reg_error;

  assign status_spi_present_re = addr_hit[6] & reg_re & !reg_error;

  assign status_i2c_present_re = addr_hit[6] & reg_re & !reg_error;

  assign status_dma_present_re = addr_hit[6] & reg_re & !reg_error;

  assign status_ddr_link_present_re = addr_hit[6] & reg_re & !reg_error;

  assign status_rpc_dram_present_re = addr_hit[6] & reg_re & !reg_error;

  assign status_vga_present_re = addr_hit[6] & reg_re & !reg_error;

  assign vga_red_width_re = addr_hit[7] & reg_re & !reg_error;

  assign vga_green_width_re = addr_hit[8] & reg_re & !reg_error;

  assign vga_blue_width_re = addr_hit[9] & reg_re & !reg_error;

  // Read data return
  always_comb begin
    reg_rdata_next = '0;
    unique case (1'b1)
      addr_hit[0]: begin
        reg_rdata_next[15:0] = version_qs;
      end

      addr_hit[1]: begin
        reg_rdata_next[31:0] = scratch_0_qs;
      end

      addr_hit[2]: begin
        reg_rdata_next[31:0] = scratch_1_qs;
      end

      addr_hit[3]: begin
        reg_rdata_next[31:0] = scratch_2_qs;
      end

      addr_hit[4]: begin
        reg_rdata_next[31:0] = scratch_3_qs;
      end

      addr_hit[5]: begin
        reg_rdata_next[1:0] = boot_mode_qs;
      end

      addr_hit[6]: begin
        reg_rdata_next[0] = status_clock_lock_qs;
        reg_rdata_next[1] = status_uart_present_qs;
        reg_rdata_next[2] = status_spi_present_qs;
        reg_rdata_next[3] = status_i2c_present_qs;
        reg_rdata_next[4] = status_dma_present_qs;
        reg_rdata_next[5] = status_ddr_link_present_qs;
        reg_rdata_next[6] = status_rpc_dram_present_qs;
        reg_rdata_next[7] = status_vga_present_qs;
      end

      addr_hit[7]: begin
        reg_rdata_next[31:0] = vga_red_width_qs;
      end

      addr_hit[8]: begin
        reg_rdata_next[31:0] = vga_green_width_qs;
      end

      addr_hit[9]: begin
        reg_rdata_next[31:0] = vga_blue_width_qs;
      end

      default: begin
        reg_rdata_next = '1;
      end
    endcase
  end

  // Unused signal tieoff

  // wdata / byte enable are not always fully used
  // add a blanket unused statement to handle lint waivers
  logic unused_wdata;
  logic unused_be;
  assign unused_wdata = ^reg_wdata;
  assign unused_be = ^reg_be;

  // Assertions for Register Interface
  `ASSERT(en2addrHit, (reg_we || reg_re) |-> $onehot0(addr_hit))

endmodule
