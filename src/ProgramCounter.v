module Program(
	input clk,
	input rst_n,
	input skip,
	
	input [7:0] skip_data,


	output  reg [7:0] dir,
	output  reg [7:0] data_a,
	output  reg [7:0] data_b,
	output  reg [7:0] address
	//output  reg [7:0] addr_pc
);


reg [7:0] addr;
wire [31:0] date;


	
Gowin_pROM Gowin_pROM(
	.dout(date[31:0]),
	.clk(clk),
	.oce(1'b1), 
        .ce(1'b1), 
	.reset(~rst_n),
	.ad(addr)
);
always@( clk )begin
	address[7:0] = date[7:0];
	data_b[7:0] = date[15:8];
	data_a[7:0] = date[23:16];
	dir[7:0] = date[31:24];
end
always@(negedge clk or posedge skip)begin
	if(skip) begin
		if (~(clk&skip)) begin
			addr<=skip_data;	
		end
	end
	else begin
		addr<=addr+1;
		//addr_pc[7:0] <= addr[7:0];
	end

end


endmodule