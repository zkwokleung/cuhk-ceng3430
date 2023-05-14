## Clock
set_property PACKAGE_PIN Y9 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
create_clock -period 10 [get_ports CLK]


## Switches
set_property PACKAGE_PIN F22 [get_ports {SW[0]}]; # SW0
set_property PACKAGE_PIN G22 [get_ports {SW[1]}]; # SW1
set_property PACKAGE_PIN H22 [get_ports {SW[2]}]; # SW2
set_property PACKAGE_PIN F21 [get_ports {SW[3]}]; # SW3
set_property PACKAGE_PIN H19 [get_ports {SW[4]}]; # SW4
set_property PACKAGE_PIN H18 [get_ports {SW[5]}]; # SW5
set_property PACKAGE_PIN H17 [get_ports {SW[6]}]; # SW6
set_property PACKAGE_PIN M15 [get_ports {SW[7]}]; # SW7
set_property IOSTANDARD LVCMOS25 [get_ports {SW[0]}]; # SW0
set_property IOSTANDARD LVCMOS25 [get_ports {SW[1]}]; # SW1
set_property IOSTANDARD LVCMOS25 [get_ports {SW[2]}]; # SW2
set_property IOSTANDARD LVCMOS25 [get_ports {SW[3]}]; # SW3
set_property IOSTANDARD LVCMOS25 [get_ports {SW[4]}]; # SW4
set_property IOSTANDARD LVCMOS25 [get_ports {SW[5]}]; # SW5
set_property IOSTANDARD LVCMOS25 [get_ports {SW[6]}]; # SW6
set_property IOSTANDARD LVCMOS25 [get_ports {SW[7]}]; # SW7  


## LEDs
set_property PACKAGE_PIN T22 [get_ports {LED[0]}]
set_property PACKAGE_PIN T21 [get_ports {LED[1]}]
set_property PACKAGE_PIN U22 [get_ports {LED[2]}]
set_property PACKAGE_PIN U21 [get_ports {LED[3]}]
set_property PACKAGE_PIN V22 [get_ports {LED[4]}]
set_property PACKAGE_PIN W22 [get_ports {LED[5]}]
set_property PACKAGE_PIN U19 [get_ports {LED[6]}]
set_property PACKAGE_PIN U14 [get_ports {LED[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]


## Buttons
set_property PACKAGE_PIN P16 [get_ports {BTNC}]; # BTNC
set_property PACKAGE_PIN T18 [get_ports {BTNU}]; # BTNU
set_property PACKAGE_PIN R16 [get_ports {BTND}]; # BTND
set_property PACKAGE_PIN N15 [get_ports {BTNL}]; # BTNL
set_property PACKAGE_PIN R18 [get_ports {BTNR}]; # BTNR
set_property IOSTANDARD LVCMOS25 [get_ports {BTNC}]; # BTNC
set_property IOSTANDARD LVCMOS25 [get_ports {BTNU}]; # BTNU
set_property IOSTANDARD LVCMOS25 [get_ports {BTND}]; # BTND
set_property IOSTANDARD LVCMOS25 [get_ports {BTNL}]; # BTNL
set_property IOSTANDARD LVCMOS25 [get_ports {BTNR}]; # BTNR


## VGA
set_property PACKAGE_PIN Y21 [get_ports {VGA_BLUE[0]}];
set_property PACKAGE_PIN Y20 [get_ports {VGA_BLUE[1]}];
set_property PACKAGE_PIN AB20 [get_ports {VGA_BLUE[2]}];
set_property PACKAGE_PIN AB19 [get_ports {VGA_BLUE[3]}];
set_property PACKAGE_PIN AB22 [get_ports {VGA_GREEN[0]}];
set_property PACKAGE_PIN AA22 [get_ports {VGA_GREEN[1]}];
set_property PACKAGE_PIN AB21 [get_ports {VGA_GREEN[2]}];
set_property PACKAGE_PIN AA21 [get_ports {VGA_GREEN[3]}];
set_property PACKAGE_PIN V20 [get_ports {VGA_RED[0]}];
set_property PACKAGE_PIN U20 [get_ports {VGA_RED[1]}];
set_property PACKAGE_PIN V19 [get_ports {VGA_RED[2]}];
set_property PACKAGE_PIN V18 [get_ports {VGA_RED[3]}];
set_property PACKAGE_PIN AA19 [get_ports {VGA_HSYNC}];
set_property PACKAGE_PIN Y19 [get_ports {VGA_VSYNC}];
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];