module LEG(
	input [7:0] io_in,
	input clk,
	input rst,
	output [7:0] io_out
);
	
	wire delay;
	 wire  skip;
	 wire [7:0] skip_data;
	 wire [7:0] dir;
	 wire [7:0] data_a;
	 wire [7:0] data_b;
	 wire [7:0] address;
	wire [7:0] io_outn;
	wire [7:0] alu_a;
	wire [7:0] alu_b;
	wire [7:0] alu_out;
	wire [7:0] addr_pc;
	wire [23:0] delay_data;
	wire [23:0] delay_reg;
	wire delay;
	Program Program(
		.clk(clk),
		.rst_n(rst),
		.skip(skip),
		.skip_data(skip_data[7:0]),
		.dir(dir[7:0]),
		.data_a(data_a[7:0]),
		.data_b(data_b[7:0]),
		.address(address[7:0])
	);
	
	REGS REGS(
		.clk(clk),
		.skip(skip),
		.imm_a(dir[7:7]),
		.imm_b(dir[6:6]),
		.data_a(data_a[7:0]),
		.data_b(data_b[7:0]),
		.data_in(address[7:0]),
		.address(address),
		.in(alu_out[7:0]),//alu_out
		.io_in(io_in[7:0]),
		.io_out(io_outn[7:0]),
		.out_a(alu_a[7:0]),
		.out_b(alu_b[7:0]),
		.skip_data(skip_data),
		.delay_data(delay_data),
		.delay(delay),
		.delay_reg(delay_reg)
	);

	ALU ALU(
		.dir(dir[7:0]),
		.data_a(alu_a[7:0]),
		.data_b(alu_b[7:0]),
		.address(address),
		.clk(clk),
		.out(alu_out[7:0]),
		.skip(skip),
		.delay_data(delay_data),
		.delay(delay),
		.indelay_data(delay_reg)
	);

	assign io_out=~io_outn;

endmodule