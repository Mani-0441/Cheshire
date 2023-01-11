// Generated register defines for serial_link_single_channel

// Copyright information found in source file:
// Copyright 2022 ETH Zurich and University of Bologna.

// Licensing information found in source file:
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#ifndef _SERIAL_LINK_SINGLE_CHANNEL_REG_DEFS_
#define _SERIAL_LINK_SINGLE_CHANNEL_REG_DEFS_

#ifdef __cplusplus
extern "C" {
#endif
// Number of channels
#define SERIAL_LINK_SINGLE_CHANNEL_PARAM_NUM_CHANNELS 1

// Number of channels
#define SERIAL_LINK_SINGLE_CHANNEL_PARAM_LOG2_NUM_CHANNELS 1

// Number of bits transfered in one clock cycle (2 * NumLanes)
#define SERIAL_LINK_SINGLE_CHANNEL_PARAM_NUM_BITS 8

// Number of bits for clock divider counter
#define SERIAL_LINK_SINGLE_CHANNEL_PARAM_LOG2_MAX_CLK_DIV 10

// The depth of the TX FIFO for raw mode operation.
#define SERIAL_LINK_SINGLE_CHANNEL_PARAM_LOG2_RAW_MODE_T_X_FIFO_DEPTH 3

// Register width
#define SERIAL_LINK_SINGLE_CHANNEL_PARAM_REG_WIDTH 32

// Global clock, isolation and reset control configuration
#define SERIAL_LINK_SINGLE_CHANNEL_CTRL_REG_OFFSET 0x0
#define SERIAL_LINK_SINGLE_CHANNEL_CTRL_CLK_ENA_BIT 0
#define SERIAL_LINK_SINGLE_CHANNEL_CTRL_RESET_N_BIT 1
#define SERIAL_LINK_SINGLE_CHANNEL_CTRL_AXI_IN_ISOLATE_BIT 8
#define SERIAL_LINK_SINGLE_CHANNEL_CTRL_AXI_OUT_ISOLATE_BIT 9

// Isolation status of AXI ports
#define SERIAL_LINK_SINGLE_CHANNEL_ISOLATED_REG_OFFSET 0x4
#define SERIAL_LINK_SINGLE_CHANNEL_ISOLATED_AXI_IN_BIT 0
#define SERIAL_LINK_SINGLE_CHANNEL_ISOLATED_AXI_OUT_BIT 1

// Holds clock divider factor for forwarded clock of the TX Phys (common
// parameters)
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_CLK_DIVS_FIELD_WIDTH 11
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_CLK_DIVS_FIELDS_PER_REG 2
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_MULTIREG_COUNT 1

// Holds clock divider factor for forwarded clock of the TX Phys
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_REG_OFFSET 0x8
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_CLK_DIVS_0_MASK 0x7ff
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_CLK_DIVS_0_OFFSET 0
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_CLK_DIVS_0_FIELD \
  ((bitfield_field32_t) { .mask = SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_CLK_DIVS_0_MASK, .index = SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL1_CLK_DIVS_0_OFFSET })

// Controls duty cycle and phase of rising and falling edge in TX Phys
// (common parameters)
// Controls duty cycle and phase of rising and falling edge in TX Phys
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_REG_OFFSET 0xc
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_START_0_MASK 0x7ff
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_START_0_OFFSET 0
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_START_0_FIELD \
  ((bitfield_field32_t) { .mask = SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_START_0_MASK, .index = SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_START_0_OFFSET })
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_END_0_MASK 0x7ff
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_END_0_OFFSET 0
#define SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_END_0_FIELD \
  ((bitfield_field32_t) { .mask = SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_END_0_MASK, .index = SERIAL_LINK_SINGLE_CHANNEL_TX_PHY_CTRL2_CLK_SHIFT_END_0_OFFSET })

// Enables Raw mode
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_EN_REG_OFFSET 0x10
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_EN_RAW_MODE_EN_BIT 0

// Receive channel select in RAW mode
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_CH_SEL_REG_OFFSET 0x14
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_CH_SEL_RAW_MODE_IN_CH_SEL_BIT 0

// Mask for valid data in RX FIFOs during RAW mode.
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_VALID_REG_OFFSET 0x18
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_VALID_RAW_MODE_IN_DATA_VALID_BIT \
  0

// Data received by the selected channel in RAW mode
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_REG_OFFSET 0x1c
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_RAW_MODE_IN_DATA_MASK 0xff
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_RAW_MODE_IN_DATA_OFFSET 0
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_RAW_MODE_IN_DATA_FIELD \
  ((bitfield_field32_t) { .mask = SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_RAW_MODE_IN_DATA_MASK, .index = SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_IN_DATA_RAW_MODE_IN_DATA_OFFSET })

// Selects channels to send out data in RAW mode, '1 corresponds to
// broadcasting
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_CH_MASK_REG_OFFSET 0x20
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_CH_MASK_RAW_MODE_OUT_CH_MASK_BIT \
  0

// Data that will be pushed to the RAW mode output FIFO
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_REG_OFFSET 0x24
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_RAW_MODE_OUT_DATA_FIFO_MASK \
  0xff
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_RAW_MODE_OUT_DATA_FIFO_OFFSET \
  0
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_RAW_MODE_OUT_DATA_FIFO_FIELD \
  ((bitfield_field32_t) { .mask = SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_RAW_MODE_OUT_DATA_FIFO_MASK, .index = SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_RAW_MODE_OUT_DATA_FIFO_OFFSET })

// Status and control register for the RAW mode data out FIFO
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_REG_OFFSET 0x28
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_CLEAR_BIT 0
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_FILL_STATE_MASK \
  0x7
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_FILL_STATE_OFFSET \
  8
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_FILL_STATE_FIELD \
  ((bitfield_field32_t) { .mask = SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_FILL_STATE_MASK, .index = SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_FILL_STATE_OFFSET })
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_DATA_FIFO_CTRL_IS_FULL_BIT 31

// Enable transmission of data currently hold in the output FIFO
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_EN_REG_OFFSET 0x2c
#define SERIAL_LINK_SINGLE_CHANNEL_RAW_MODE_OUT_EN_RAW_MODE_OUT_EN_BIT 0

// Clears the flow control Fifo
#define SERIAL_LINK_SINGLE_CHANNEL_FLOW_CONTROL_FIFO_CLEAR_REG_OFFSET 0x30
#define SERIAL_LINK_SINGLE_CHANNEL_FLOW_CONTROL_FIFO_CLEAR_FLOW_CONTROL_FIFO_CLEAR_BIT \
  0

#ifdef __cplusplus
}  // extern "C"
#endif
#endif  // _SERIAL_LINK_SINGLE_CHANNEL_REG_DEFS_
// End generated register defines for serial_link_single_channel