## Clock signal
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports Reset] 
#set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports start]

##USB-RS232 Interface
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports RsRx]
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports RsTx]
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports DatoSerial_In]
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports DatoSerial_Out]

set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports eot]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
