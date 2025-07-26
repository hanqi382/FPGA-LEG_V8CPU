//Copyright (C)2014-2025 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.11.02 (64-bit)
//Part Number: GW5AST-LV138PG484AC1/I0
//Device: GW5AST-138
//Device Version: B
//Created Time: Fri Jul 25 23:38:47 2025

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_pROM your_instance_name(
        .dout(dout), //output [31:0] dout
        .clk(clk), //input clk
        .oce(oce), //input oce
        .ce(ce), //input ce
        .reset(reset), //input reset
        .ad(ad) //input [7:0] ad
    );

//--------Copy end-------------------
