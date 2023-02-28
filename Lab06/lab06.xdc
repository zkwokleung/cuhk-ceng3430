# Seven segments
set_property PACKAGE_PIN V10 [get_ports {ssd[0]}];
set_property PACKAGE_PIN W11 [get_ports {ssd[1]}];
set_property PACKAGE_PIN W12 [get_ports {ssd[2]}];
set_property PACKAGE_PIN AA9 [get_ports {ssd[3]}];
set_property PACKAGE_PIN Y10 [get_ports {ssd[4]}];
set_property PACKAGE_PIN AA11 [get_ports {ssd[5]}];
set_property PACKAGE_PIN Y11 [get_ports {ssd[6]}];
set_property IOSTANDARD LVCMOS33 [get_ports ssd];

# Digit Select
set_property PACKAGE_PIN W8 [get_ports {sel}];
set_property IOSTANDARD LVCMOS33 [get_ports sel];

# Pmod ALS
set_property PACKAGE_PIN AB7 [get_ports {cs}];
set_property IOSTANDARD LVCMOS33 [get_ports cs];

set_property PACKAGE_PIN Y4 [get_ports {miso}];
set_property IOSTANDARD LVCMOS33 [get_ports miso];

set_property PACKAGE_PIN AA4 [get_ports {sclk}];
set_property IOSTANDARD LVCMOS33 [get_ports sclk];

# Do not need to modify below
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10 [get_ports clk]

set_property PACKAGE_PIN F22 [get_ports {switch[0]}];
set_property PACKAGE_PIN G22 [get_ports {switch[1]}];
set_property PACKAGE_PIN H22 [get_ports {switch[2]}];
set_property PACKAGE_PIN F21 [get_ports {switch[3]}];
set_property PACKAGE_PIN H19 [get_ports {switch[4]}];
set_property PACKAGE_PIN H18 [get_ports {switch[5]}];
set_property PACKAGE_PIN H17 [get_ports {switch[6]}];
set_property PACKAGE_PIN M15 [get_ports {switch[7]}];
set_property IOSTANDARD LVCMOS33 [get_ports switch];