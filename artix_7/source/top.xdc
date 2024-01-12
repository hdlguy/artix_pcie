
set_property IOSTANDARD LVDS_25     [get_ports sysclk_*]
set_property PACKAGE_PIN J19        [get_ports sysclk_p]
set_property PACKAGE_PIN H19        [get_ports sysclk_n]

###############################################################################
# PCIe x4
###############################################################################
# PCIe refclock
set_property PACKAGE_PIN F6 [get_ports pcie_clkin_clk_p]
set_property PACKAGE_PIN E6 [get_ports pcie_clkin_clk_n]
# Other PCIe signals
set_property PACKAGE_PIN G1         [get_ports pcie_clkreq_l]
set_property IOSTANDARD LVCMOS33    [get_ports pcie_clkreq_l]
set_property PACKAGE_PIN J1         [get_ports pcie_reset]
set_property IOSTANDARD LVCMOS33    [get_ports pcie_reset]

###############################################################################
# LEDs (4)
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {ledn[*]}]
set_property PACKAGE_PIN G3 [get_ports {ledn[0]}]
set_property PACKAGE_PIN H3 [get_ports {ledn[1]}]
set_property PACKAGE_PIN G4 [get_ports {ledn[2]}]
set_property PACKAGE_PIN H4 [get_ports {ledn[3]}]


###############################################################################
# SPI
###############################################################################
set_property IOSTANDARD LVCMOS33    [get_ports {qspi_io*_io}]
set_property PACKAGE_PIN P22        [get_ports {qspi_io0_io}]
set_property PACKAGE_PIN R22        [get_ports {qspi_io1_io}]
set_property PACKAGE_PIN P21        [get_ports {qspi_io2_io}]
set_property PACKAGE_PIN R21        [get_ports {qspi_io3_io}]
set_property IOSTANDARD LVCMOS33    [get_ports {qspi_ss_io}]
set_property PACKAGE_PIN T19        [get_ports {qspi_ss_io}]

