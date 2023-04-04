-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 01:19:40 2020
-- Host        : DESKTOP-O6PCHTN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top kyber_soc_clk_wiz_1_0 -prefix
--               kyber_soc_clk_wiz_1_0_ kyber_soc_clk_wiz_1_0_stub.vhdl
-- Design      : kyber_soc_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kyber_soc_clk_wiz_1_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end kyber_soc_clk_wiz_1_0;

architecture stub of kyber_soc_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1_p,clk_in1_n";
begin
end;
