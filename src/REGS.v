module REGS(
	input clk,
	input skip,
	input imm_a,
	input imm_b,
	input [7:0] data_a,
	input [7:0] data_b,
	input [7:0] data_in,
	input [7:0] address,
	input [7:0] in,
	input [7:0] io_in,
	input [23:0] delay_data,
	input delay,

	output reg [7:0] io_out,
	output reg [7:0] out_a,
	output reg [7:0] out_b,
	output reg [7:0] skip_data,
	output reg [23:0] delay_reg
);

	reg [7:0] regfile[5:0];
	
	always @(negedge clk) begin//读取
		if(imm_a==1'b0) begin
			case(data_a[2:0])
				3'b000:out_a=regfile[0];
				3'b001:out_a=regfile[1];
				3'b010:out_a=regfile[2];
				3'b011:out_a=regfile[3];
				3'b100:out_a=regfile[4];
				3'b101:out_a=regfile[5];
				3'b111:out_a=io_in;
			endcase
		end else begin
			out_a<=data_a;
		end

		if(imm_b==1'b0) begin
			case(data_b[2:0])
				3'b000:out_b=regfile[0];
				3'b001:out_b=regfile[1];
				3'b010:out_b=regfile[2];
				3'b011:out_b=regfile[3];
				3'b100:out_b=regfile[4];
				3'b101:out_b=regfile[5];
				3'b111:out_b=io_in;
			endcase
		end else begin
			out_b<=data_b;
		end
	end

	always @(posedge clk) begin
		if (~skip) begin
			case(data_in[2:0])
				3'b000:regfile[0]=in[7:0];
				3'b001:regfile[1]=in[7:0];
				3'b010:regfile[2]=in[7:0];
				3'b011:regfile[3]=in[7:0];
				3'b100:regfile[4]=in[7:0];
				3'b101:regfile[5]=in[7:0];
				3'b111:io_out[7:0]=in[7:0];
			endcase
			if (delay) begin
				delay_reg[23:0]=delay_data;
			end
			if (delay_reg>0) begin
				delay_reg=delay_reg-1;
			end

		end
	end
	
	always @(*) begin
		 if (skip) begin
			skip_data[7:0]=address[7:0];
		end else begin
			skip_data[7:0]=0;
		end
	end
endmodule