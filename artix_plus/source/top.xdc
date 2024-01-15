set_property IOSTANDARD LVCMOS33    [get_ports reset_rtl_0]
set_property PACKAGE_PIN B14        [get_ports reset_rtl_0]

set_property LOC GTHE4_COMMON_X0Y1 [get_cells {system_i/util_ds_buf/U0/USE_IBUFDS_GTE4.GEN_IBUFDS_GTE4[0].IBUFDS_GTE4_I}]

#set_property LOC GTHE4_COMMON_X0Y0 [get_cells {IBUFDS_GTE4_inst}]


set_property IOSTANDARD LVCMOS33    [get_ports clkin]
set_property PACKAGE_PIN D11        [get_ports clkin]

set_property IOSTANDARD LVCMOS33    [get_ports {led[*]}]
set_property PACKAGE_PIN C9         [get_ports {led[7]}]
set_property PACKAGE_PIN D9         [get_ports {led[6]}]
set_property PACKAGE_PIN A9         [get_ports {led[5]}]
set_property PACKAGE_PIN B9         [get_ports {led[4]}]
set_property PACKAGE_PIN A10        [get_ports {led[3]}]
set_property PACKAGE_PIN B10        [get_ports {led[2]}]
set_property PACKAGE_PIN B11        [get_ports {led[1]}]
set_property PACKAGE_PIN C11        [get_ports {led[0]}]