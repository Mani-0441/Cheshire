# Copyright 2022 ETH Zurich and University of Bologna.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#
# Fabian Hauser <fhauser@student.ethz.ch>
#
# Recompile only newusb (way faster)

vlog  -work work -sv ../../../hw/newusb_tb/new_usb_tb.sv