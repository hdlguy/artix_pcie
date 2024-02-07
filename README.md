# artix_pcie
A little project to provide the fpga design for the RHS Research LiteFury M.2 PCIe board.

## Results
The PCIe lanes are wired in a non-standard way on this board. TCL reset_property and set_property commands were added to compile.tcl to handle this.  The resulting design enumerates as a Gen 2 x4 PCIe device when installed in a PC.

## Files
- litefury - a minimal pcie design that enumerates
- clock_reset_test - a tiny design that verifies the pcie reference clock and reset




