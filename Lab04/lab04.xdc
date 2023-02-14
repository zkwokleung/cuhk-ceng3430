## Switches
set_property PACKAGE_PIN F22 [get_ports {DIN[0]}]; # SW0
    set_property IOSTANDARD LVCMOS25 [get_ports {DIN[0]}]; # SW0
set_property PACKAGE_PIN G22 [get_ports {DIN[1]}]; # SW1
    set_property IOSTANDARD LVCMOS25 [get_ports {DIN[1]}]; # SW1
set_property PACKAGE_PIN H22 [get_ports {DIN[2]}]; # SW2
    set_property IOSTANDARD LVCMOS25 [get_ports {DIN[2]}]; # SW2
set_property PACKAGE_PIN F21 [get_ports {DIN[3]}]; # SW3
    set_property IOSTANDARD LVCMOS25 [get_ports {DIN[3]}]; # SW3
# set_property PACKAGE_PIN F21 [get_ports {DIN[4]}]; # SW4
#     set_property IOSTANDARD LVCMOS25 [get_ports {DIN[4]}]; # SW4
# set_property PACKAGE_PIN H18 [get_ports {sw5}]; # SW5
#     set_property IOSTANDARD LVCMOS25 [get_ports {sw5}]; # SW5
# set_property PACKAGE_PIN H17 [get_ports {sw6}]; # SW6
#     set_property IOSTANDARD LVCMOS25 [get_ports {sw6}]; # SW6
# set_property PACKAGE_PIN M15 [get_ports {sw7}]; # SW7
#     set_property IOSTANDARD LVCMOS25 [get_ports {sw7}]; # SW7    
    
## LED
set_property PACKAGE_PIN T22 [get_ports {OUTPUT[0]}]; # LED0
    set_property IOSTANDARD LVCMOS33 [get_ports {OUTPUT[0]}]; # LED0
set_property PACKAGE_PIN T21 [get_ports {OUTPUT[1]}]; # LED1
    set_property IOSTANDARD LVCMOS33 [get_ports {OUTPUT[1]}]; # LED1
set_property PACKAGE_PIN U22 [get_ports {OUTPUT[2]}]; # LED2
    set_property IOSTANDARD LVCMOS33 [get_ports {OUTPUT[2]}]; # LED2
set_property PACKAGE_PIN U21 [get_ports {OUTPUT[3]}]; # LED3
        set_property IOSTANDARD LVCMOS33 [get_ports {OUTPUT[3]}]; # LED3
# set_property PACKAGE_PIN V22 [get_ports {OUTPUT[4]}]; # LED4
#         set_property IOSTANDARD LVCMOS33 [get_ports {OUTPUT[4]}]; # LED4

## State
set_property PACKAGE_PIN W22 [get_ports {STATE[0]}]; # LED5
    set_property IOSTANDARD LVCMOS33 [get_ports {STATE[0]}]; # LED5
set_property PACKAGE_PIN U19 [get_ports {STATE[1]}]; # LED6
    set_property IOSTANDARD LVCMOS33 [get_ports {STATE[1]}]; # LED6
set_property PACKAGE_PIN U14 [get_ports {STATE[2]}]; # LED7
        set_property IOSTANDARD LVCMOS33 [get_ports {STATE[2]}]; # LED7


## Buttons
set_property PACKAGE_PIN P16 [get_ports {BTNC}]; # BTNC
        set_property IOSTANDARD LVCMOS25 [get_ports {BTNC}]; # BTNC
set_property PACKAGE_PIN T18 [get_ports {BTNU}]; # BTNU
        set_property IOSTANDARD LVCMOS25 [get_ports {BTNU}]; # BTNU
set_property PACKAGE_PIN R16 [get_ports {BTND}]; # BTND
        set_property IOSTANDARD LVCMOS25 [get_ports {BTND}]; # BTND
set_property PACKAGE_PIN U14 [get_ports {BTNL}]; # BTNL
        set_property IOSTANDARD LVCMOS25 [get_ports {BTNL}]; # BTNL
set_property PACKAGE_PIN R18 [get_ports {BTNR}]; # BTNR
        set_property IOSTANDARD LVCMOS25 [get_ports {BTNR}]; # BTNR


## Clock
set_property PACKAGE_PIN Y9 [get_ports CLK]
    set_property IOSTANDARD LVCMOS33 [get_ports CLK]
create_clock -period 10 [get_ports CLK]
