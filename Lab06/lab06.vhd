LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY lab06 IS
  PORT (
    -- Pmod SSD and switches
    switch : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clk : IN STD_LOGIC;
    ssd : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    sel : BUFFER STD_LOGIC;

    -- Pmod ALS
    cs : BUFFER STD_LOGIC;
    sclk : BUFFER STD_LOGIC;
    miso : IN STD_LOGIC
  );
END lab06;

ARCHITECTURE Behavioral OF lab06 IS

  -- create the component of sst_ctrl
  COMPONENT ssd_ctrl
    PORT (
      clk : IN STD_LOGIC; --system clock
      data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0); --data to display
      sel : BUFFER STD_LOGIC;
      ssd : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT spi_master
    GENERIC (
      slaves : INTEGER; --number of spi slaves
      d_width : INTEGER); --data bus width
    PORT (
      clock : IN STD_LOGIC; --system clock
      reset_n : IN STD_LOGIC; --asynchronous reset
      enable : IN STD_LOGIC; --initiate transaction
      cpol : IN STD_LOGIC; --spi clock polarity
      cpha : IN STD_LOGIC; --spi clock phase
      cont : IN STD_LOGIC; --continuous mode command
      clk_div : IN INTEGER; --system clock cycles per 1/2 period of sclk
      addr : IN INTEGER; --address of slave
      tx_data : IN STD_LOGIC_VECTOR(d_width - 1 DOWNTO 0); --data to transmit
      miso : IN STD_LOGIC; --master in, slave out
      sclk : BUFFER STD_LOGIC; --spi clock
      ss_n : BUFFER STD_LOGIC_VECTOR(slaves - 1 DOWNTO 0); --slave select
      mosi : OUT STD_LOGIC; --master out, slave in
      busy : OUT STD_LOGIC; --busy / data ready signal
      rx_data : OUT STD_LOGIC_VECTOR(d_width - 1 DOWNTO 0) --data received
    );
  END COMPONENT;

  -- signal for rx_data
  SIGNAL rx_data : STD_LOGIC_VECTOR(14 DOWNTO 0);

BEGIN

  -- Port map the ssd_ctrl
  ssd_ctrl_0 : ssd_ctrl
  PORT MAP(
    clk => clk,
    data_in => rx_data(11 DOWNTO 4),
    sel => sel,
    ssd => ssd
  );
  -- TODO-14: Send the rx_data from spi_master to ssd_ct 
  spi_master_0 : spi_master
  GENERIC MAP(
    slaves => 1,
    d_width => 15
  )
  PORT MAP(
    clock => clk,
    clk_div => 50000,
    sclk => sclk,
    miso => miso,
    ss_n(0) => cs,
    mosi => OPEN,
    reset_n => '1',
    addr => 0,
    cpol => '1',
    cpha => '1',
    tx_data => (OTHERS => '0'),
    rx_data => rx_data,
    enable => '1',
    busy => OPEN,
    cont => '0'
  );

END Behavioral;