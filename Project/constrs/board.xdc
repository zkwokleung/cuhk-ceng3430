## Clock
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10 [get_ports clk]


## Switches
set_property PACKAGE_PIN F22 [get_ports {sw[0]}]; # SW0
set_property PACKAGE_PIN G22 [get_ports {sw[1]}]; # SW1
set_property PACKAGE_PIN H22 [get_ports {sw[2]}]; # SW2
set_property PACKAGE_PIN F21 [get_ports {sw[3]}]; # SW3
set_property PACKAGE_PIN F21 [get_ports {sw[4]}]; # SW4
set_property PACKAGE_PIN H18 [get_ports {sw[5]}]; # SW5
set_property PACKAGE_PIN H17 [get_ports {sw[6]}]; # SW6
set_property PACKAGE_PIN M15 [get_ports {sw[7]}]; # SW7
set_property IOSTANDARD LVCMOS25 [get_ports {sw[0]}]; # SW0
set_property IOSTANDARD LVCMOS25 [get_ports {sw[1]}]; # SW1
set_property IOSTANDARD LVCMOS25 [get_ports {sw[2]}]; # SW2
set_property IOSTANDARD LVCMOS25 [get_ports {sw[3]}]; # SW3
set_property IOSTANDARD LVCMOS25 [get_ports {sw[4]}]; # SW4
set_property IOSTANDARD LVCMOS25 [get_ports {sw[5]}]; # SW5
set_property IOSTANDARD LVCMOS25 [get_ports {sw[6]}]; # SW6
set_property IOSTANDARD LVCMOS25 [get_ports {sw[7]}]; # SW7  


## LEDs
set_property PACKAGE_PIN T22 [get_ports {led[0]}]
set_property PACKAGE_PIN T21 [get_ports {led[1]}]
set_property PACKAGE_PIN U22 [get_ports {led[2]}]
set_property PACKAGE_PIN U21 [get_ports {led[3]}]
set_property PACKAGE_PIN V22 [get_ports {led[4]}]
set_property PACKAGE_PIN W22 [get_ports {led[5]}]
set_property PACKAGE_PIN U19 [get_ports {led[6]}]
set_property PACKAGE_PIN U14 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]


## Buttons
set_property PACKAGE_PIN P16 [get_ports {btnc}]; # BTNC
set_property PACKAGE_PIN T18 [get_ports {btnu}]; # BTNU
set_property PACKAGE_PIN R16 [get_ports {btnd}]; # BTND
set_property PACKAGE_PIN U14 [get_ports {btnl}]; # BTNL
set_property PACKAGE_PIN R18 [get_ports {btnr}]; # BTNR
set_property IOSTANDARD LVCMOS25 [get_ports {btnc}]; # BTNC
set_property IOSTANDARD LVCMOS25 [get_ports {btnu}]; # BTNU
set_property IOSTANDARD LVCMOS25 [get_ports {btnd}]; # BTND
set_property IOSTANDARD LVCMOS25 [get_ports {btnl}]; # BTNL
set_property IOSTANDARD LVCMOS25 [get_ports {btnr}]; # BTNR


## VGA
set_property PACKAGE_PIN Y21 [get_ports {vga_blue[0]}];
set_property PACKAGE_PIN Y20 [get_ports {vga_blue[1]}];
set_property PACKAGE_PIN AB20 [get_ports {vga_blue[2]}];
set_property PACKAGE_PIN AB19 [get_ports {vga_blue[3]}];
set_property PACKAGE_PIN AB22 [get_ports {vga_green[0]}];
set_property PACKAGE_PIN AA22 [get_ports {vga_green[1]}];
set_property PACKAGE_PIN AB21 [get_ports {vga_green[2]}];
set_property PACKAGE_PIN AA21 [get_ports {vga_green[3]}];
set_property PACKAGE_PIN V20 [get_ports {vga_red[0]}];
set_property PACKAGE_PIN U20 [get_ports {vga_red[1]}];
set_property PACKAGE_PIN V19 [get_ports {vga_red[2]}];
set_property PACKAGE_PIN V18 [get_ports {vga_red[3]}];
set_property PACKAGE_PIN AA19 [get_ports {vga_hsync}];
set_property PACKAGE_PIN Y19 [get_ports {vga_vsync}];
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];