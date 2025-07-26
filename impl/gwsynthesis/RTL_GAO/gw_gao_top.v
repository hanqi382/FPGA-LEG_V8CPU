module gw_gao(
    clk,
    \Program/addr[7] ,
    \Program/addr[6] ,
    \Program/addr[5] ,
    \Program/addr[4] ,
    \Program/addr[3] ,
    \Program/addr[2] ,
    \Program/addr[1] ,
    \Program/addr[0] ,
    \dir[7] ,
    \dir[6] ,
    \dir[5] ,
    \dir[4] ,
    \dir[3] ,
    \dir[2] ,
    \dir[1] ,
    \dir[0] ,
    \data_a[7] ,
    \data_a[6] ,
    \data_a[5] ,
    \data_a[4] ,
    \data_a[3] ,
    \data_a[2] ,
    \data_a[1] ,
    \data_a[0] ,
    \data_b[7] ,
    \data_b[6] ,
    \data_b[5] ,
    \data_b[4] ,
    \data_b[3] ,
    \data_b[2] ,
    \data_b[1] ,
    \data_b[0] ,
    \address[7] ,
    \address[6] ,
    \address[5] ,
    \address[4] ,
    \address[3] ,
    \address[2] ,
    \address[1] ,
    \address[0] ,
    \REGS/data_a[7] ,
    \REGS/data_a[6] ,
    \REGS/data_a[5] ,
    \REGS/data_a[4] ,
    \REGS/data_a[3] ,
    \REGS/data_a[2] ,
    \REGS/data_a[1] ,
    \REGS/data_a[0] ,
    \REGS/data_b[7] ,
    \REGS/data_b[6] ,
    \REGS/data_b[5] ,
    \REGS/data_b[4] ,
    \REGS/data_b[3] ,
    \REGS/data_b[2] ,
    \REGS/data_b[1] ,
    \REGS/data_b[0] ,
    \REGS/data_in[7] ,
    \REGS/data_in[6] ,
    \REGS/data_in[5] ,
    \REGS/data_in[4] ,
    \REGS/data_in[3] ,
    \REGS/data_in[2] ,
    \REGS/data_in[1] ,
    \REGS/data_in[0] ,
    \ALU/data_a[7] ,
    \ALU/data_a[6] ,
    \ALU/data_a[5] ,
    \ALU/data_a[4] ,
    \ALU/data_a[3] ,
    \ALU/data_a[2] ,
    \ALU/data_a[1] ,
    \ALU/data_a[0] ,
    \ALU/data_b[7] ,
    \ALU/data_b[6] ,
    \ALU/data_b[5] ,
    \ALU/data_b[4] ,
    \ALU/data_b[3] ,
    \ALU/data_b[2] ,
    \ALU/data_b[1] ,
    \ALU/data_b[0] ,
    \REGS/regfile[5][7] ,
    \REGS/regfile[5][6] ,
    \REGS/regfile[5][5] ,
    \REGS/regfile[5][4] ,
    \REGS/regfile[5][3] ,
    \REGS/regfile[5][2] ,
    \REGS/regfile[5][1] ,
    \REGS/regfile[5][0] ,
    \REGS/regfile[4][7] ,
    \REGS/regfile[4][6] ,
    \REGS/regfile[4][5] ,
    \REGS/regfile[4][4] ,
    \REGS/regfile[4][3] ,
    \REGS/regfile[4][2] ,
    \REGS/regfile[4][1] ,
    \REGS/regfile[4][0] ,
    \REGS/regfile[3][7] ,
    \REGS/regfile[3][6] ,
    \REGS/regfile[3][5] ,
    \REGS/regfile[3][4] ,
    \REGS/regfile[3][3] ,
    \REGS/regfile[3][2] ,
    \REGS/regfile[3][1] ,
    \REGS/regfile[3][0] ,
    \REGS/regfile[1][7] ,
    \REGS/regfile[1][6] ,
    \REGS/regfile[1][5] ,
    \REGS/regfile[1][4] ,
    \REGS/regfile[1][3] ,
    \REGS/regfile[1][2] ,
    \REGS/regfile[1][1] ,
    \REGS/regfile[1][0] ,
    \REGS/regfile[2][7] ,
    \REGS/regfile[2][6] ,
    \REGS/regfile[2][5] ,
    \REGS/regfile[2][4] ,
    \REGS/regfile[2][3] ,
    \REGS/regfile[2][2] ,
    \REGS/regfile[2][1] ,
    \REGS/regfile[2][0] ,
    \REGS/regfile[0][7] ,
    \REGS/regfile[0][6] ,
    \REGS/regfile[0][5] ,
    \REGS/regfile[0][4] ,
    \REGS/regfile[0][3] ,
    \REGS/regfile[0][2] ,
    \REGS/regfile[0][1] ,
    \REGS/regfile[0][0] ,
    \REGS/out_a[7] ,
    \REGS/out_a[6] ,
    \REGS/out_a[5] ,
    \REGS/out_a[4] ,
    \REGS/out_a[3] ,
    \REGS/out_a[2] ,
    \REGS/out_a[1] ,
    \REGS/out_a[0] ,
    \REGS/out_b[7] ,
    \REGS/out_b[6] ,
    \REGS/out_b[5] ,
    \REGS/out_b[4] ,
    \REGS/out_b[3] ,
    \REGS/out_b[2] ,
    \REGS/out_b[1] ,
    \REGS/out_b[0] ,
    \alu_out[7] ,
    \alu_out[6] ,
    \alu_out[5] ,
    \alu_out[4] ,
    \alu_out[3] ,
    \alu_out[2] ,
    \alu_out[1] ,
    \alu_out[0] ,
    \ALU/skip ,
    \skip_data[7] ,
    \skip_data[6] ,
    \skip_data[5] ,
    \skip_data[4] ,
    \skip_data[3] ,
    \skip_data[2] ,
    \skip_data[1] ,
    \skip_data[0] ,
    \Program/skip_data[7] ,
    \Program/skip_data[6] ,
    \Program/skip_data[5] ,
    \Program/skip_data[4] ,
    \Program/skip_data[3] ,
    \Program/skip_data[2] ,
    \Program/skip_data[1] ,
    \Program/skip_data[0] ,
    \REGS/skip_data[7] ,
    \REGS/skip_data[6] ,
    \REGS/skip_data[5] ,
    \REGS/skip_data[4] ,
    \REGS/skip_data[3] ,
    \REGS/skip_data[2] ,
    \REGS/skip_data[1] ,
    \REGS/skip_data[0] ,
    \REGS/delay_data[15] ,
    \REGS/delay_data[14] ,
    \REGS/delay_data[13] ,
    \REGS/delay_data[12] ,
    \REGS/delay_data[11] ,
    \REGS/delay_data[10] ,
    \REGS/delay_data[9] ,
    \REGS/delay_data[8] ,
    \REGS/delay_data[7] ,
    \REGS/delay_data[6] ,
    \REGS/delay_data[5] ,
    \REGS/delay_data[4] ,
    \REGS/delay_data[3] ,
    \REGS/delay_data[2] ,
    \REGS/delay_data[1] ,
    \REGS/delay_data[0] ,
    \ALU/indelay_data[15] ,
    \ALU/indelay_data[14] ,
    \ALU/indelay_data[13] ,
    \ALU/indelay_data[12] ,
    \ALU/indelay_data[11] ,
    \ALU/indelay_data[10] ,
    \ALU/indelay_data[9] ,
    \ALU/indelay_data[8] ,
    \ALU/indelay_data[7] ,
    \ALU/indelay_data[6] ,
    \ALU/indelay_data[5] ,
    \ALU/indelay_data[4] ,
    \ALU/indelay_data[3] ,
    \ALU/indelay_data[2] ,
    \ALU/indelay_data[1] ,
    \ALU/indelay_data[0] ,
    \ALU/delay_data[15] ,
    \ALU/delay_data[14] ,
    \ALU/delay_data[13] ,
    \ALU/delay_data[12] ,
    \ALU/delay_data[11] ,
    \ALU/delay_data[10] ,
    \ALU/delay_data[9] ,
    \ALU/delay_data[8] ,
    \ALU/delay_data[7] ,
    \ALU/delay_data[6] ,
    \ALU/delay_data[5] ,
    \ALU/delay_data[4] ,
    \ALU/delay_data[3] ,
    \ALU/delay_data[2] ,
    \ALU/delay_data[1] ,
    \ALU/delay_data[0] ,
    delay,
    \REGS/delay ,
    \ALU/delay ,
    \io_outn[7] ,
    \io_outn[6] ,
    \io_outn[5] ,
    \io_outn[4] ,
    \io_outn[3] ,
    \io_outn[2] ,
    \io_outn[1] ,
    \io_outn[0] ,
    \REGS/delay_reg[23] ,
    \REGS/delay_reg[22] ,
    \REGS/delay_reg[21] ,
    \REGS/delay_reg[20] ,
    \REGS/delay_reg[19] ,
    \REGS/delay_reg[18] ,
    \REGS/delay_reg[17] ,
    \REGS/delay_reg[16] ,
    \REGS/delay_reg[15] ,
    \REGS/delay_reg[14] ,
    \REGS/delay_reg[13] ,
    \REGS/delay_reg[12] ,
    \REGS/delay_reg[11] ,
    \REGS/delay_reg[10] ,
    \REGS/delay_reg[9] ,
    \REGS/delay_reg[8] ,
    \REGS/delay_reg[7] ,
    \REGS/delay_reg[6] ,
    \REGS/delay_reg[5] ,
    \REGS/delay_reg[4] ,
    \REGS/delay_reg[3] ,
    \REGS/delay_reg[2] ,
    \REGS/delay_reg[1] ,
    \REGS/delay_reg[0] ,
    skip,
    \io_in[7] ,
    \io_in[6] ,
    \io_in[5] ,
    \io_in[4] ,
    \io_in[3] ,
    \io_in[2] ,
    \io_in[1] ,
    \io_in[0] ,
    \io_out[7] ,
    \io_out[6] ,
    \io_out[5] ,
    \io_out[4] ,
    \io_out[3] ,
    \io_out[2] ,
    \io_out[1] ,
    \io_out[0] ,
    \ALU/out[7] ,
    \ALU/out[6] ,
    \ALU/out[5] ,
    \ALU/out[4] ,
    \ALU/out[3] ,
    \ALU/out[2] ,
    \ALU/out[1] ,
    \ALU/out[0] ,
    \REGS/delay_data[23] ,
    \REGS/delay_data[22] ,
    \REGS/delay_data[21] ,
    \REGS/delay_data[20] ,
    \REGS/delay_data[19] ,
    \REGS/delay_data[18] ,
    \REGS/delay_data[17] ,
    \REGS/delay_data[16] ,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input clk;
input \Program/addr[7] ;
input \Program/addr[6] ;
input \Program/addr[5] ;
input \Program/addr[4] ;
input \Program/addr[3] ;
input \Program/addr[2] ;
input \Program/addr[1] ;
input \Program/addr[0] ;
input \dir[7] ;
input \dir[6] ;
input \dir[5] ;
input \dir[4] ;
input \dir[3] ;
input \dir[2] ;
input \dir[1] ;
input \dir[0] ;
input \data_a[7] ;
input \data_a[6] ;
input \data_a[5] ;
input \data_a[4] ;
input \data_a[3] ;
input \data_a[2] ;
input \data_a[1] ;
input \data_a[0] ;
input \data_b[7] ;
input \data_b[6] ;
input \data_b[5] ;
input \data_b[4] ;
input \data_b[3] ;
input \data_b[2] ;
input \data_b[1] ;
input \data_b[0] ;
input \address[7] ;
input \address[6] ;
input \address[5] ;
input \address[4] ;
input \address[3] ;
input \address[2] ;
input \address[1] ;
input \address[0] ;
input \REGS/data_a[7] ;
input \REGS/data_a[6] ;
input \REGS/data_a[5] ;
input \REGS/data_a[4] ;
input \REGS/data_a[3] ;
input \REGS/data_a[2] ;
input \REGS/data_a[1] ;
input \REGS/data_a[0] ;
input \REGS/data_b[7] ;
input \REGS/data_b[6] ;
input \REGS/data_b[5] ;
input \REGS/data_b[4] ;
input \REGS/data_b[3] ;
input \REGS/data_b[2] ;
input \REGS/data_b[1] ;
input \REGS/data_b[0] ;
input \REGS/data_in[7] ;
input \REGS/data_in[6] ;
input \REGS/data_in[5] ;
input \REGS/data_in[4] ;
input \REGS/data_in[3] ;
input \REGS/data_in[2] ;
input \REGS/data_in[1] ;
input \REGS/data_in[0] ;
input \ALU/data_a[7] ;
input \ALU/data_a[6] ;
input \ALU/data_a[5] ;
input \ALU/data_a[4] ;
input \ALU/data_a[3] ;
input \ALU/data_a[2] ;
input \ALU/data_a[1] ;
input \ALU/data_a[0] ;
input \ALU/data_b[7] ;
input \ALU/data_b[6] ;
input \ALU/data_b[5] ;
input \ALU/data_b[4] ;
input \ALU/data_b[3] ;
input \ALU/data_b[2] ;
input \ALU/data_b[1] ;
input \ALU/data_b[0] ;
input \REGS/regfile[5][7] ;
input \REGS/regfile[5][6] ;
input \REGS/regfile[5][5] ;
input \REGS/regfile[5][4] ;
input \REGS/regfile[5][3] ;
input \REGS/regfile[5][2] ;
input \REGS/regfile[5][1] ;
input \REGS/regfile[5][0] ;
input \REGS/regfile[4][7] ;
input \REGS/regfile[4][6] ;
input \REGS/regfile[4][5] ;
input \REGS/regfile[4][4] ;
input \REGS/regfile[4][3] ;
input \REGS/regfile[4][2] ;
input \REGS/regfile[4][1] ;
input \REGS/regfile[4][0] ;
input \REGS/regfile[3][7] ;
input \REGS/regfile[3][6] ;
input \REGS/regfile[3][5] ;
input \REGS/regfile[3][4] ;
input \REGS/regfile[3][3] ;
input \REGS/regfile[3][2] ;
input \REGS/regfile[3][1] ;
input \REGS/regfile[3][0] ;
input \REGS/regfile[1][7] ;
input \REGS/regfile[1][6] ;
input \REGS/regfile[1][5] ;
input \REGS/regfile[1][4] ;
input \REGS/regfile[1][3] ;
input \REGS/regfile[1][2] ;
input \REGS/regfile[1][1] ;
input \REGS/regfile[1][0] ;
input \REGS/regfile[2][7] ;
input \REGS/regfile[2][6] ;
input \REGS/regfile[2][5] ;
input \REGS/regfile[2][4] ;
input \REGS/regfile[2][3] ;
input \REGS/regfile[2][2] ;
input \REGS/regfile[2][1] ;
input \REGS/regfile[2][0] ;
input \REGS/regfile[0][7] ;
input \REGS/regfile[0][6] ;
input \REGS/regfile[0][5] ;
input \REGS/regfile[0][4] ;
input \REGS/regfile[0][3] ;
input \REGS/regfile[0][2] ;
input \REGS/regfile[0][1] ;
input \REGS/regfile[0][0] ;
input \REGS/out_a[7] ;
input \REGS/out_a[6] ;
input \REGS/out_a[5] ;
input \REGS/out_a[4] ;
input \REGS/out_a[3] ;
input \REGS/out_a[2] ;
input \REGS/out_a[1] ;
input \REGS/out_a[0] ;
input \REGS/out_b[7] ;
input \REGS/out_b[6] ;
input \REGS/out_b[5] ;
input \REGS/out_b[4] ;
input \REGS/out_b[3] ;
input \REGS/out_b[2] ;
input \REGS/out_b[1] ;
input \REGS/out_b[0] ;
input \alu_out[7] ;
input \alu_out[6] ;
input \alu_out[5] ;
input \alu_out[4] ;
input \alu_out[3] ;
input \alu_out[2] ;
input \alu_out[1] ;
input \alu_out[0] ;
input \ALU/skip ;
input \skip_data[7] ;
input \skip_data[6] ;
input \skip_data[5] ;
input \skip_data[4] ;
input \skip_data[3] ;
input \skip_data[2] ;
input \skip_data[1] ;
input \skip_data[0] ;
input \Program/skip_data[7] ;
input \Program/skip_data[6] ;
input \Program/skip_data[5] ;
input \Program/skip_data[4] ;
input \Program/skip_data[3] ;
input \Program/skip_data[2] ;
input \Program/skip_data[1] ;
input \Program/skip_data[0] ;
input \REGS/skip_data[7] ;
input \REGS/skip_data[6] ;
input \REGS/skip_data[5] ;
input \REGS/skip_data[4] ;
input \REGS/skip_data[3] ;
input \REGS/skip_data[2] ;
input \REGS/skip_data[1] ;
input \REGS/skip_data[0] ;
input \REGS/delay_data[15] ;
input \REGS/delay_data[14] ;
input \REGS/delay_data[13] ;
input \REGS/delay_data[12] ;
input \REGS/delay_data[11] ;
input \REGS/delay_data[10] ;
input \REGS/delay_data[9] ;
input \REGS/delay_data[8] ;
input \REGS/delay_data[7] ;
input \REGS/delay_data[6] ;
input \REGS/delay_data[5] ;
input \REGS/delay_data[4] ;
input \REGS/delay_data[3] ;
input \REGS/delay_data[2] ;
input \REGS/delay_data[1] ;
input \REGS/delay_data[0] ;
input \ALU/indelay_data[15] ;
input \ALU/indelay_data[14] ;
input \ALU/indelay_data[13] ;
input \ALU/indelay_data[12] ;
input \ALU/indelay_data[11] ;
input \ALU/indelay_data[10] ;
input \ALU/indelay_data[9] ;
input \ALU/indelay_data[8] ;
input \ALU/indelay_data[7] ;
input \ALU/indelay_data[6] ;
input \ALU/indelay_data[5] ;
input \ALU/indelay_data[4] ;
input \ALU/indelay_data[3] ;
input \ALU/indelay_data[2] ;
input \ALU/indelay_data[1] ;
input \ALU/indelay_data[0] ;
input \ALU/delay_data[15] ;
input \ALU/delay_data[14] ;
input \ALU/delay_data[13] ;
input \ALU/delay_data[12] ;
input \ALU/delay_data[11] ;
input \ALU/delay_data[10] ;
input \ALU/delay_data[9] ;
input \ALU/delay_data[8] ;
input \ALU/delay_data[7] ;
input \ALU/delay_data[6] ;
input \ALU/delay_data[5] ;
input \ALU/delay_data[4] ;
input \ALU/delay_data[3] ;
input \ALU/delay_data[2] ;
input \ALU/delay_data[1] ;
input \ALU/delay_data[0] ;
input delay;
input \REGS/delay ;
input \ALU/delay ;
input \io_outn[7] ;
input \io_outn[6] ;
input \io_outn[5] ;
input \io_outn[4] ;
input \io_outn[3] ;
input \io_outn[2] ;
input \io_outn[1] ;
input \io_outn[0] ;
input \REGS/delay_reg[23] ;
input \REGS/delay_reg[22] ;
input \REGS/delay_reg[21] ;
input \REGS/delay_reg[20] ;
input \REGS/delay_reg[19] ;
input \REGS/delay_reg[18] ;
input \REGS/delay_reg[17] ;
input \REGS/delay_reg[16] ;
input \REGS/delay_reg[15] ;
input \REGS/delay_reg[14] ;
input \REGS/delay_reg[13] ;
input \REGS/delay_reg[12] ;
input \REGS/delay_reg[11] ;
input \REGS/delay_reg[10] ;
input \REGS/delay_reg[9] ;
input \REGS/delay_reg[8] ;
input \REGS/delay_reg[7] ;
input \REGS/delay_reg[6] ;
input \REGS/delay_reg[5] ;
input \REGS/delay_reg[4] ;
input \REGS/delay_reg[3] ;
input \REGS/delay_reg[2] ;
input \REGS/delay_reg[1] ;
input \REGS/delay_reg[0] ;
input skip;
input \io_in[7] ;
input \io_in[6] ;
input \io_in[5] ;
input \io_in[4] ;
input \io_in[3] ;
input \io_in[2] ;
input \io_in[1] ;
input \io_in[0] ;
input \io_out[7] ;
input \io_out[6] ;
input \io_out[5] ;
input \io_out[4] ;
input \io_out[3] ;
input \io_out[2] ;
input \io_out[1] ;
input \io_out[0] ;
input \ALU/out[7] ;
input \ALU/out[6] ;
input \ALU/out[5] ;
input \ALU/out[4] ;
input \ALU/out[3] ;
input \ALU/out[2] ;
input \ALU/out[1] ;
input \ALU/out[0] ;
input \REGS/delay_data[23] ;
input \REGS/delay_data[22] ;
input \REGS/delay_data[21] ;
input \REGS/delay_data[20] ;
input \REGS/delay_data[19] ;
input \REGS/delay_data[18] ;
input \REGS/delay_data[17] ;
input \REGS/delay_data[16] ;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire clk;
wire \Program/addr[7] ;
wire \Program/addr[6] ;
wire \Program/addr[5] ;
wire \Program/addr[4] ;
wire \Program/addr[3] ;
wire \Program/addr[2] ;
wire \Program/addr[1] ;
wire \Program/addr[0] ;
wire \dir[7] ;
wire \dir[6] ;
wire \dir[5] ;
wire \dir[4] ;
wire \dir[3] ;
wire \dir[2] ;
wire \dir[1] ;
wire \dir[0] ;
wire \data_a[7] ;
wire \data_a[6] ;
wire \data_a[5] ;
wire \data_a[4] ;
wire \data_a[3] ;
wire \data_a[2] ;
wire \data_a[1] ;
wire \data_a[0] ;
wire \data_b[7] ;
wire \data_b[6] ;
wire \data_b[5] ;
wire \data_b[4] ;
wire \data_b[3] ;
wire \data_b[2] ;
wire \data_b[1] ;
wire \data_b[0] ;
wire \address[7] ;
wire \address[6] ;
wire \address[5] ;
wire \address[4] ;
wire \address[3] ;
wire \address[2] ;
wire \address[1] ;
wire \address[0] ;
wire \REGS/data_a[7] ;
wire \REGS/data_a[6] ;
wire \REGS/data_a[5] ;
wire \REGS/data_a[4] ;
wire \REGS/data_a[3] ;
wire \REGS/data_a[2] ;
wire \REGS/data_a[1] ;
wire \REGS/data_a[0] ;
wire \REGS/data_b[7] ;
wire \REGS/data_b[6] ;
wire \REGS/data_b[5] ;
wire \REGS/data_b[4] ;
wire \REGS/data_b[3] ;
wire \REGS/data_b[2] ;
wire \REGS/data_b[1] ;
wire \REGS/data_b[0] ;
wire \REGS/data_in[7] ;
wire \REGS/data_in[6] ;
wire \REGS/data_in[5] ;
wire \REGS/data_in[4] ;
wire \REGS/data_in[3] ;
wire \REGS/data_in[2] ;
wire \REGS/data_in[1] ;
wire \REGS/data_in[0] ;
wire \ALU/data_a[7] ;
wire \ALU/data_a[6] ;
wire \ALU/data_a[5] ;
wire \ALU/data_a[4] ;
wire \ALU/data_a[3] ;
wire \ALU/data_a[2] ;
wire \ALU/data_a[1] ;
wire \ALU/data_a[0] ;
wire \ALU/data_b[7] ;
wire \ALU/data_b[6] ;
wire \ALU/data_b[5] ;
wire \ALU/data_b[4] ;
wire \ALU/data_b[3] ;
wire \ALU/data_b[2] ;
wire \ALU/data_b[1] ;
wire \ALU/data_b[0] ;
wire \REGS/regfile[5][7] ;
wire \REGS/regfile[5][6] ;
wire \REGS/regfile[5][5] ;
wire \REGS/regfile[5][4] ;
wire \REGS/regfile[5][3] ;
wire \REGS/regfile[5][2] ;
wire \REGS/regfile[5][1] ;
wire \REGS/regfile[5][0] ;
wire \REGS/regfile[4][7] ;
wire \REGS/regfile[4][6] ;
wire \REGS/regfile[4][5] ;
wire \REGS/regfile[4][4] ;
wire \REGS/regfile[4][3] ;
wire \REGS/regfile[4][2] ;
wire \REGS/regfile[4][1] ;
wire \REGS/regfile[4][0] ;
wire \REGS/regfile[3][7] ;
wire \REGS/regfile[3][6] ;
wire \REGS/regfile[3][5] ;
wire \REGS/regfile[3][4] ;
wire \REGS/regfile[3][3] ;
wire \REGS/regfile[3][2] ;
wire \REGS/regfile[3][1] ;
wire \REGS/regfile[3][0] ;
wire \REGS/regfile[1][7] ;
wire \REGS/regfile[1][6] ;
wire \REGS/regfile[1][5] ;
wire \REGS/regfile[1][4] ;
wire \REGS/regfile[1][3] ;
wire \REGS/regfile[1][2] ;
wire \REGS/regfile[1][1] ;
wire \REGS/regfile[1][0] ;
wire \REGS/regfile[2][7] ;
wire \REGS/regfile[2][6] ;
wire \REGS/regfile[2][5] ;
wire \REGS/regfile[2][4] ;
wire \REGS/regfile[2][3] ;
wire \REGS/regfile[2][2] ;
wire \REGS/regfile[2][1] ;
wire \REGS/regfile[2][0] ;
wire \REGS/regfile[0][7] ;
wire \REGS/regfile[0][6] ;
wire \REGS/regfile[0][5] ;
wire \REGS/regfile[0][4] ;
wire \REGS/regfile[0][3] ;
wire \REGS/regfile[0][2] ;
wire \REGS/regfile[0][1] ;
wire \REGS/regfile[0][0] ;
wire \REGS/out_a[7] ;
wire \REGS/out_a[6] ;
wire \REGS/out_a[5] ;
wire \REGS/out_a[4] ;
wire \REGS/out_a[3] ;
wire \REGS/out_a[2] ;
wire \REGS/out_a[1] ;
wire \REGS/out_a[0] ;
wire \REGS/out_b[7] ;
wire \REGS/out_b[6] ;
wire \REGS/out_b[5] ;
wire \REGS/out_b[4] ;
wire \REGS/out_b[3] ;
wire \REGS/out_b[2] ;
wire \REGS/out_b[1] ;
wire \REGS/out_b[0] ;
wire \alu_out[7] ;
wire \alu_out[6] ;
wire \alu_out[5] ;
wire \alu_out[4] ;
wire \alu_out[3] ;
wire \alu_out[2] ;
wire \alu_out[1] ;
wire \alu_out[0] ;
wire \ALU/skip ;
wire \skip_data[7] ;
wire \skip_data[6] ;
wire \skip_data[5] ;
wire \skip_data[4] ;
wire \skip_data[3] ;
wire \skip_data[2] ;
wire \skip_data[1] ;
wire \skip_data[0] ;
wire \Program/skip_data[7] ;
wire \Program/skip_data[6] ;
wire \Program/skip_data[5] ;
wire \Program/skip_data[4] ;
wire \Program/skip_data[3] ;
wire \Program/skip_data[2] ;
wire \Program/skip_data[1] ;
wire \Program/skip_data[0] ;
wire \REGS/skip_data[7] ;
wire \REGS/skip_data[6] ;
wire \REGS/skip_data[5] ;
wire \REGS/skip_data[4] ;
wire \REGS/skip_data[3] ;
wire \REGS/skip_data[2] ;
wire \REGS/skip_data[1] ;
wire \REGS/skip_data[0] ;
wire \REGS/delay_data[15] ;
wire \REGS/delay_data[14] ;
wire \REGS/delay_data[13] ;
wire \REGS/delay_data[12] ;
wire \REGS/delay_data[11] ;
wire \REGS/delay_data[10] ;
wire \REGS/delay_data[9] ;
wire \REGS/delay_data[8] ;
wire \REGS/delay_data[7] ;
wire \REGS/delay_data[6] ;
wire \REGS/delay_data[5] ;
wire \REGS/delay_data[4] ;
wire \REGS/delay_data[3] ;
wire \REGS/delay_data[2] ;
wire \REGS/delay_data[1] ;
wire \REGS/delay_data[0] ;
wire \ALU/indelay_data[15] ;
wire \ALU/indelay_data[14] ;
wire \ALU/indelay_data[13] ;
wire \ALU/indelay_data[12] ;
wire \ALU/indelay_data[11] ;
wire \ALU/indelay_data[10] ;
wire \ALU/indelay_data[9] ;
wire \ALU/indelay_data[8] ;
wire \ALU/indelay_data[7] ;
wire \ALU/indelay_data[6] ;
wire \ALU/indelay_data[5] ;
wire \ALU/indelay_data[4] ;
wire \ALU/indelay_data[3] ;
wire \ALU/indelay_data[2] ;
wire \ALU/indelay_data[1] ;
wire \ALU/indelay_data[0] ;
wire \ALU/delay_data[15] ;
wire \ALU/delay_data[14] ;
wire \ALU/delay_data[13] ;
wire \ALU/delay_data[12] ;
wire \ALU/delay_data[11] ;
wire \ALU/delay_data[10] ;
wire \ALU/delay_data[9] ;
wire \ALU/delay_data[8] ;
wire \ALU/delay_data[7] ;
wire \ALU/delay_data[6] ;
wire \ALU/delay_data[5] ;
wire \ALU/delay_data[4] ;
wire \ALU/delay_data[3] ;
wire \ALU/delay_data[2] ;
wire \ALU/delay_data[1] ;
wire \ALU/delay_data[0] ;
wire delay;
wire \REGS/delay ;
wire \ALU/delay ;
wire \io_outn[7] ;
wire \io_outn[6] ;
wire \io_outn[5] ;
wire \io_outn[4] ;
wire \io_outn[3] ;
wire \io_outn[2] ;
wire \io_outn[1] ;
wire \io_outn[0] ;
wire \REGS/delay_reg[23] ;
wire \REGS/delay_reg[22] ;
wire \REGS/delay_reg[21] ;
wire \REGS/delay_reg[20] ;
wire \REGS/delay_reg[19] ;
wire \REGS/delay_reg[18] ;
wire \REGS/delay_reg[17] ;
wire \REGS/delay_reg[16] ;
wire \REGS/delay_reg[15] ;
wire \REGS/delay_reg[14] ;
wire \REGS/delay_reg[13] ;
wire \REGS/delay_reg[12] ;
wire \REGS/delay_reg[11] ;
wire \REGS/delay_reg[10] ;
wire \REGS/delay_reg[9] ;
wire \REGS/delay_reg[8] ;
wire \REGS/delay_reg[7] ;
wire \REGS/delay_reg[6] ;
wire \REGS/delay_reg[5] ;
wire \REGS/delay_reg[4] ;
wire \REGS/delay_reg[3] ;
wire \REGS/delay_reg[2] ;
wire \REGS/delay_reg[1] ;
wire \REGS/delay_reg[0] ;
wire skip;
wire \io_in[7] ;
wire \io_in[6] ;
wire \io_in[5] ;
wire \io_in[4] ;
wire \io_in[3] ;
wire \io_in[2] ;
wire \io_in[1] ;
wire \io_in[0] ;
wire \io_out[7] ;
wire \io_out[6] ;
wire \io_out[5] ;
wire \io_out[4] ;
wire \io_out[3] ;
wire \io_out[2] ;
wire \io_out[1] ;
wire \io_out[0] ;
wire \ALU/out[7] ;
wire \ALU/out[6] ;
wire \ALU/out[5] ;
wire \ALU/out[4] ;
wire \ALU/out[3] ;
wire \ALU/out[2] ;
wire \ALU/out[1] ;
wire \ALU/out[0] ;
wire \REGS/delay_data[23] ;
wire \REGS/delay_data[22] ;
wire \REGS/delay_data[21] ;
wire \REGS/delay_data[20] ;
wire \REGS/delay_data[19] ;
wire \REGS/delay_data[18] ;
wire \REGS/delay_data[17] ;
wire \REGS/delay_data[16] ;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i(clk),
    .trig1_i({\Program/addr[7] ,\Program/addr[6] ,\Program/addr[5] ,\Program/addr[4] ,\Program/addr[3] ,\Program/addr[2] ,\Program/addr[1] ,\Program/addr[0] ,\dir[7] ,\dir[6] ,\dir[5] ,\dir[4] ,\dir[3] ,\dir[2] ,\dir[1] ,\dir[0] ,\data_a[7] ,\data_a[6] ,\data_a[5] ,\data_a[4] ,\data_a[3] ,\data_a[2] ,\data_a[1] ,\data_a[0] ,\data_b[7] ,\data_b[6] ,\data_b[5] ,\data_b[4] ,\data_b[3] ,\data_b[2] ,\data_b[1] ,\data_b[0] ,\address[7] ,\address[6] ,\address[5] ,\address[4] ,\address[3] ,\address[2] ,\address[1] ,\address[0] }),
    .trig2_i({\Program/skip_data[7] ,\Program/skip_data[6] ,\Program/skip_data[5] ,\Program/skip_data[4] ,\Program/skip_data[3] ,\Program/skip_data[2] ,\Program/skip_data[1] ,\Program/skip_data[0] ,skip}),
    .trig3_i({\REGS/regfile[5][7] ,\REGS/regfile[5][6] ,\REGS/regfile[5][5] ,\REGS/regfile[5][4] ,\REGS/regfile[5][3] ,\REGS/regfile[5][2] ,\REGS/regfile[5][1] ,\REGS/regfile[5][0] ,\REGS/regfile[4][7] ,\REGS/regfile[4][6] ,\REGS/regfile[4][5] ,\REGS/regfile[4][4] ,\REGS/regfile[4][3] ,\REGS/regfile[4][2] ,\REGS/regfile[4][1] ,\REGS/regfile[4][0] ,\REGS/regfile[3][7] ,\REGS/regfile[3][6] ,\REGS/regfile[3][5] ,\REGS/regfile[3][4] ,\REGS/regfile[3][3] ,\REGS/regfile[3][2] ,\REGS/regfile[3][1] ,\REGS/regfile[3][0] ,\REGS/regfile[2][7] ,\REGS/regfile[2][6] ,\REGS/regfile[2][5] ,\REGS/regfile[2][4] ,\REGS/regfile[2][3] ,\REGS/regfile[2][2] ,\REGS/regfile[2][1] ,\REGS/regfile[2][0] ,\REGS/regfile[1][7] ,\REGS/regfile[1][6] ,\REGS/regfile[1][5] ,\REGS/regfile[1][4] ,\REGS/regfile[1][3] ,\REGS/regfile[1][2] ,\REGS/regfile[1][1] ,\REGS/regfile[1][0] ,\REGS/regfile[0][7] ,\REGS/regfile[0][6] ,\REGS/regfile[0][5] ,\REGS/regfile[0][4] ,\REGS/regfile[0][3] ,\REGS/regfile[0][2] ,\REGS/regfile[0][1] ,\REGS/regfile[0][0] }),
    .trig4_i({\io_in[7] ,\io_in[6] ,\io_in[5] ,\io_in[4] ,\io_in[3] ,\io_in[2] ,\io_in[1] ,\io_in[0] ,\io_out[7] ,\io_out[6] ,\io_out[5] ,\io_out[4] ,\io_out[3] ,\io_out[2] ,\io_out[1] ,\io_out[0] }),
    .trig5_i({\ALU/data_a[7] ,\ALU/data_a[6] ,\ALU/data_a[5] ,\ALU/data_a[4] ,\ALU/data_a[3] ,\ALU/data_a[2] ,\ALU/data_a[1] ,\ALU/data_a[0] ,\ALU/data_b[7] ,\ALU/data_b[6] ,\ALU/data_b[5] ,\ALU/data_b[4] ,\ALU/data_b[3] ,\ALU/data_b[2] ,\ALU/data_b[1] ,\ALU/data_b[0] ,\ALU/out[7] ,\ALU/out[6] ,\ALU/out[5] ,\ALU/out[4] ,\ALU/out[3] ,\ALU/out[2] ,\ALU/out[1] ,\ALU/out[0] }),
    .trig6_i({\REGS/data_a[7] ,\REGS/data_a[6] ,\REGS/data_a[5] ,\REGS/data_a[4] ,\REGS/data_a[3] ,\REGS/data_a[2] ,\REGS/data_a[1] ,\REGS/data_a[0] ,\REGS/data_b[7] ,\REGS/data_b[6] ,\REGS/data_b[5] ,\REGS/data_b[4] ,\REGS/data_b[3] ,\REGS/data_b[2] ,\REGS/data_b[1] ,\REGS/data_b[0] }),
    .trig7_i(skip),
    .trig8_i({\skip_data[7] ,\skip_data[6] ,\skip_data[5] ,\skip_data[4] ,\skip_data[3] ,\skip_data[2] ,\skip_data[1] ,\skip_data[0] ,\Program/skip_data[7] ,\Program/skip_data[6] ,\Program/skip_data[5] ,\Program/skip_data[4] ,\Program/skip_data[3] ,\Program/skip_data[2] ,\Program/skip_data[1] ,\Program/skip_data[0] ,\REGS/skip_data[7] ,\REGS/skip_data[6] ,\REGS/skip_data[5] ,\REGS/skip_data[4] ,\REGS/skip_data[3] ,\REGS/skip_data[2] ,\REGS/skip_data[1] ,\REGS/skip_data[0] }),
    .trig9_i({\ALU/indelay_data[15] ,\ALU/indelay_data[14] ,\ALU/indelay_data[13] ,\ALU/indelay_data[12] ,\ALU/indelay_data[11] ,\ALU/indelay_data[10] ,\ALU/indelay_data[9] ,\ALU/indelay_data[8] ,\ALU/indelay_data[7] ,\ALU/indelay_data[6] ,\ALU/indelay_data[5] ,\ALU/indelay_data[4] ,\ALU/indelay_data[3] ,\ALU/indelay_data[2] ,\ALU/indelay_data[1] ,\ALU/indelay_data[0] ,\REGS/delay_reg[23] ,\REGS/delay_reg[22] ,\REGS/delay_reg[21] ,\REGS/delay_reg[20] ,\REGS/delay_reg[19] ,\REGS/delay_reg[18] ,\REGS/delay_reg[17] ,\REGS/delay_reg[16] ,\REGS/delay_reg[15] ,\REGS/delay_reg[14] ,\REGS/delay_reg[13] ,\REGS/delay_reg[12] ,\REGS/delay_reg[11] ,\REGS/delay_reg[10] ,\REGS/delay_reg[9] ,\REGS/delay_reg[8] ,\REGS/delay_reg[7] ,\REGS/delay_reg[6] ,\REGS/delay_reg[5] ,\REGS/delay_reg[4] ,\REGS/delay_reg[3] ,\REGS/delay_reg[2] ,\REGS/delay_reg[1] ,\REGS/delay_reg[0] ,\REGS/delay_data[23] ,\REGS/delay_data[22] ,\REGS/delay_data[21] ,\REGS/delay_data[20] ,\REGS/delay_data[19] ,\REGS/delay_data[18] ,\REGS/delay_data[17] ,\REGS/delay_data[16] ,\REGS/delay_data[15] ,\REGS/delay_data[14] ,\REGS/delay_data[13] ,\REGS/delay_data[12] ,\REGS/delay_data[11] ,\REGS/delay_data[10] ,\REGS/delay_data[9] ,\REGS/delay_data[8] ,\REGS/delay_data[7] ,\REGS/delay_data[6] ,\REGS/delay_data[5] ,\REGS/delay_data[4] ,\REGS/delay_data[3] ,\REGS/delay_data[2] ,\REGS/delay_data[1] ,\REGS/delay_data[0] }),
    .trig10_i({delay,\REGS/delay ,\ALU/delay ,\io_outn[7] ,\io_outn[6] ,\io_outn[5] ,\io_outn[4] ,\io_outn[3] ,\io_outn[2] ,\io_outn[1] ,\io_outn[0] }),
    .data_i({clk,\Program/addr[7] ,\Program/addr[6] ,\Program/addr[5] ,\Program/addr[4] ,\Program/addr[3] ,\Program/addr[2] ,\Program/addr[1] ,\Program/addr[0] ,\dir[7] ,\dir[6] ,\dir[5] ,\dir[4] ,\dir[3] ,\dir[2] ,\dir[1] ,\dir[0] ,\data_a[7] ,\data_a[6] ,\data_a[5] ,\data_a[4] ,\data_a[3] ,\data_a[2] ,\data_a[1] ,\data_a[0] ,\data_b[7] ,\data_b[6] ,\data_b[5] ,\data_b[4] ,\data_b[3] ,\data_b[2] ,\data_b[1] ,\data_b[0] ,\address[7] ,\address[6] ,\address[5] ,\address[4] ,\address[3] ,\address[2] ,\address[1] ,\address[0] ,\REGS/data_a[7] ,\REGS/data_a[6] ,\REGS/data_a[5] ,\REGS/data_a[4] ,\REGS/data_a[3] ,\REGS/data_a[2] ,\REGS/data_a[1] ,\REGS/data_a[0] ,\REGS/data_b[7] ,\REGS/data_b[6] ,\REGS/data_b[5] ,\REGS/data_b[4] ,\REGS/data_b[3] ,\REGS/data_b[2] ,\REGS/data_b[1] ,\REGS/data_b[0] ,\REGS/data_in[7] ,\REGS/data_in[6] ,\REGS/data_in[5] ,\REGS/data_in[4] ,\REGS/data_in[3] ,\REGS/data_in[2] ,\REGS/data_in[1] ,\REGS/data_in[0] ,\ALU/data_a[7] ,\ALU/data_a[6] ,\ALU/data_a[5] ,\ALU/data_a[4] ,\ALU/data_a[3] ,\ALU/data_a[2] ,\ALU/data_a[1] ,\ALU/data_a[0] ,\ALU/data_b[7] ,\ALU/data_b[6] ,\ALU/data_b[5] ,\ALU/data_b[4] ,\ALU/data_b[3] ,\ALU/data_b[2] ,\ALU/data_b[1] ,\ALU/data_b[0] ,\REGS/regfile[5][7] ,\REGS/regfile[5][6] ,\REGS/regfile[5][5] ,\REGS/regfile[5][4] ,\REGS/regfile[5][3] ,\REGS/regfile[5][2] ,\REGS/regfile[5][1] ,\REGS/regfile[5][0] ,\REGS/regfile[4][7] ,\REGS/regfile[4][6] ,\REGS/regfile[4][5] ,\REGS/regfile[4][4] ,\REGS/regfile[4][3] ,\REGS/regfile[4][2] ,\REGS/regfile[4][1] ,\REGS/regfile[4][0] ,\REGS/regfile[3][7] ,\REGS/regfile[3][6] ,\REGS/regfile[3][5] ,\REGS/regfile[3][4] ,\REGS/regfile[3][3] ,\REGS/regfile[3][2] ,\REGS/regfile[3][1] ,\REGS/regfile[3][0] ,\REGS/regfile[1][7] ,\REGS/regfile[1][6] ,\REGS/regfile[1][5] ,\REGS/regfile[1][4] ,\REGS/regfile[1][3] ,\REGS/regfile[1][2] ,\REGS/regfile[1][1] ,\REGS/regfile[1][0] ,\REGS/regfile[2][7] ,\REGS/regfile[2][6] ,\REGS/regfile[2][5] ,\REGS/regfile[2][4] ,\REGS/regfile[2][3] ,\REGS/regfile[2][2] ,\REGS/regfile[2][1] ,\REGS/regfile[2][0] ,\REGS/regfile[0][7] ,\REGS/regfile[0][6] ,\REGS/regfile[0][5] ,\REGS/regfile[0][4] ,\REGS/regfile[0][3] ,\REGS/regfile[0][2] ,\REGS/regfile[0][1] ,\REGS/regfile[0][0] ,\REGS/out_a[7] ,\REGS/out_a[6] ,\REGS/out_a[5] ,\REGS/out_a[4] ,\REGS/out_a[3] ,\REGS/out_a[2] ,\REGS/out_a[1] ,\REGS/out_a[0] ,\REGS/out_b[7] ,\REGS/out_b[6] ,\REGS/out_b[5] ,\REGS/out_b[4] ,\REGS/out_b[3] ,\REGS/out_b[2] ,\REGS/out_b[1] ,\REGS/out_b[0] ,\alu_out[7] ,\alu_out[6] ,\alu_out[5] ,\alu_out[4] ,\alu_out[3] ,\alu_out[2] ,\alu_out[1] ,\alu_out[0] ,\ALU/skip ,\skip_data[7] ,\skip_data[6] ,\skip_data[5] ,\skip_data[4] ,\skip_data[3] ,\skip_data[2] ,\skip_data[1] ,\skip_data[0] ,\Program/skip_data[7] ,\Program/skip_data[6] ,\Program/skip_data[5] ,\Program/skip_data[4] ,\Program/skip_data[3] ,\Program/skip_data[2] ,\Program/skip_data[1] ,\Program/skip_data[0] ,\REGS/skip_data[7] ,\REGS/skip_data[6] ,\REGS/skip_data[5] ,\REGS/skip_data[4] ,\REGS/skip_data[3] ,\REGS/skip_data[2] ,\REGS/skip_data[1] ,\REGS/skip_data[0] ,\REGS/delay_data[15] ,\REGS/delay_data[14] ,\REGS/delay_data[13] ,\REGS/delay_data[12] ,\REGS/delay_data[11] ,\REGS/delay_data[10] ,\REGS/delay_data[9] ,\REGS/delay_data[8] ,\REGS/delay_data[7] ,\REGS/delay_data[6] ,\REGS/delay_data[5] ,\REGS/delay_data[4] ,\REGS/delay_data[3] ,\REGS/delay_data[2] ,\REGS/delay_data[1] ,\REGS/delay_data[0] ,\ALU/indelay_data[15] ,\ALU/indelay_data[14] ,\ALU/indelay_data[13] ,\ALU/indelay_data[12] ,\ALU/indelay_data[11] ,\ALU/indelay_data[10] ,\ALU/indelay_data[9] ,\ALU/indelay_data[8] ,\ALU/indelay_data[7] ,\ALU/indelay_data[6] ,\ALU/indelay_data[5] ,\ALU/indelay_data[4] ,\ALU/indelay_data[3] ,\ALU/indelay_data[2] ,\ALU/indelay_data[1] ,\ALU/indelay_data[0] ,\ALU/delay_data[15] ,\ALU/delay_data[14] ,\ALU/delay_data[13] ,\ALU/delay_data[12] ,\ALU/delay_data[11] ,\ALU/delay_data[10] ,\ALU/delay_data[9] ,\ALU/delay_data[8] ,\ALU/delay_data[7] ,\ALU/delay_data[6] ,\ALU/delay_data[5] ,\ALU/delay_data[4] ,\ALU/delay_data[3] ,\ALU/delay_data[2] ,\ALU/delay_data[1] ,\ALU/delay_data[0] ,delay,\REGS/delay ,\ALU/delay ,\io_outn[7] ,\io_outn[6] ,\io_outn[5] ,\io_outn[4] ,\io_outn[3] ,\io_outn[2] ,\io_outn[1] ,\io_outn[0] ,\REGS/delay_reg[23] ,\REGS/delay_reg[22] ,\REGS/delay_reg[21] ,\REGS/delay_reg[20] ,\REGS/delay_reg[19] ,\REGS/delay_reg[18] ,\REGS/delay_reg[17] ,\REGS/delay_reg[16] ,\REGS/delay_reg[15] ,\REGS/delay_reg[14] ,\REGS/delay_reg[13] ,\REGS/delay_reg[12] ,\REGS/delay_reg[11] ,\REGS/delay_reg[10] ,\REGS/delay_reg[9] ,\REGS/delay_reg[8] ,\REGS/delay_reg[7] ,\REGS/delay_reg[6] ,\REGS/delay_reg[5] ,\REGS/delay_reg[4] ,\REGS/delay_reg[3] ,\REGS/delay_reg[2] ,\REGS/delay_reg[1] ,\REGS/delay_reg[0] }),
    .clk_i(clk)
);

endmodule
