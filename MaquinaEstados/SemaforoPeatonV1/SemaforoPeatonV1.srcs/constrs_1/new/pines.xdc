## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Clock signal
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports verde]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports amarillo]
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports rojo]

set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports start]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports Reset]