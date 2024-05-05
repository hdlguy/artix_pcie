# litefury_pcie
A little project to provide the fpga design for the RHS Research LiteFury M.2 PCIe board.

## Results
The PCIe lanes are wired in a non-standard way on this board. TCL reset_property and set_property commands were added to compile.tcl to handle this.  The resulting design enumerates as a Gen 2 x4 PCIe device when installed in a PC.

## Files
- litefury - a minimal pcie design that enumerates
- clock_reset_test - a tiny design that verifies the pcie reference clock and reset

## Compilation
    cd litefury/implement
    vivado -mode batch -source setup.tcl
    vivado -mode batch -source compile.tcl
    vivado -mode batch -source spi_program.tcl

# Test
I installed the LiteFury onto a very inexpensive four lane PCIe to M.2 adapter to facilitate removal and replacement. The board functions correctly that way.
<img src="IMG_20240207_075841590.jpg">

    lspci

I also tried a one lane PCIe to M.2 adapter to test with the Raspberry Pi Compute Module 4 IO Board.

