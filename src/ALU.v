module ALU(
	input [7:0] dir,
	input [7:0] data_a,
	input [7:0] data_b,
	input [7:0] address,
	input [0:0] clk,
	input [23:0] indelay_data,
	output reg [7:0] out,
	output reg skip,
	output reg [23:0] delay_data,
	output reg delay
);




always @(*) begin// 1 2 4 8 16 32 64 128
	if (dir[5:5]==1'b0) begin //32位为1启动为判断模式
		case (dir[4:3])
			2'b00:begin
				case(dir[2:0])
					3'b000: out = data_a + data_b;
					3'b001: out = data_a - data_b;
					3'b010: out = data_a & data_b;
					3'b011: out = data_a | data_b;
					3'b100: out = ~(data_a+data_b);
					3'b101: out = data_a^data_b;
					default: out = 1'b0;
				endcase
				delay_data=16'b0;
				delay=1'b0;
				skip = 1'b0;
			end
			2'b01:begin
				case(dir[2:0])
					3'b000: begin
						delay_data[23:0]={data_a[7:0],data_b[7:0],address[7:0]};
						delay=1'b1;
					end
					default begin
						delay_data=16'b0;
						delay=1'b0;
					end
				endcase
				skip = 1'b0;
			end
		endcase
		

	end
	else if(dir[5:5]==1'b1) begin
		case(dir[2:0])
			3'b000: skip = (data_a==data_b);
			3'b001: skip = (data_a!=data_b);
			3'b010: skip = (data_a<data_b);
			3'b011: skip = (data_a<=data_b);
			3'b100: skip = (data_a>data_b);
			3'b101: skip = (data_a>=data_b);
			3'b110:begin
				skip = (indelay_data>0);
			end
			default: skip = 1'b0;
		endcase
		delay_data=16'b0;
		delay=1'b0;
		out = 1'b0;
	end
end



endmodule

		