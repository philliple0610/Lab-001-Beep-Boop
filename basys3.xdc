## Clock signal (100 MHz)
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]

## op1 -> Switches 15-12
set_property -dict { PACKAGE_PIN R2   IOSTANDARD LVCMOS33 } [get_ports {op1[3]}]
set_property -dict { PACKAGE_PIN T1   IOSTANDARD LVCMOS33 } [get_ports {op1[2]}]
set_property -dict { PACKAGE_PIN U1   IOSTANDARD LVCMOS33 } [get_ports {op1[1]}]
set_property -dict { PACKAGE_PIN W2   IOSTANDARD LVCMOS33 } [get_ports {op1[0]}]

## operation -> Switch 11, sign -> Switch 10
set_property -dict { PACKAGE_PIN R3   IOSTANDARD LVCMOS33 } [get_ports operation]
set_property -dict { PACKAGE_PIN T2   IOSTANDARD LVCMOS33 } [get_ports sign]

## op2 -> Switches 9-6
set_property -dict { PACKAGE_PIN T3   IOSTANDARD LVCMOS33 } [get_ports {op2[3]}]
set_property -dict { PACKAGE_PIN V2   IOSTANDARD LVCMOS33 } [get_ports {op2[2]}]
set_property -dict { PACKAGE_PIN W13  IOSTANDARD LVCMOS33 } [get_ports {op2[1]}]
set_property -dict { PACKAGE_PIN W14  IOSTANDARD LVCMOS33 } [get_ports {op2[0]}]

## 7-Segment Display Cathodes (segBits[6:0] = G down to A)
set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports {segBits[6]}]
set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports {segBits[5]}]
set_property -dict { PACKAGE_PIN U5   IOSTANDARD LVCMOS33 } [get_ports {segBits[4]}]
set_property -dict { PACKAGE_PIN V8   IOSTANDARD LVCMOS33 } [get_ports {segBits[3]}]
set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports {segBits[2]}]
set_property -dict { PACKAGE_PIN W6   IOSTANDARD LVCMOS33 } [get_ports {segBits[1]}]
set_property -dict { PACKAGE_PIN W7   IOSTANDARD LVCMOS33 } [get_ports {segBits[0]}]

## 7-Segment Display Anodes (trigger[3:0] = Digits 3 down to 0)
set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports {trigger[3]}]
set_property -dict { PACKAGE_PIN V4   IOSTANDARD LVCMOS33 } [get_ports {trigger[2]}]
set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports {trigger[1]}]
set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports {trigger[0]}]
