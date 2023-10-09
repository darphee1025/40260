/*************************************************************************
   > File Name: crc8_spi_core.sv
   > Author: dafei.xiao
   > Mail: dafei.xiao@joulwatt.com
   > Created Time: Mon Sep 11 14:18:05 2023
 ************************************************************************/

// CRC module for
//	 data[23:0]
//	 crc[7:0]=1+x^2+x^3+x^4+x^8;
//
module crc8_spi_core(
	input [23:0] data_in,
	input        crc_en,
	output [7:0] crc_out,
	input        rst_n,
	input        clk);

	reg [7:0] lfsr_q,
	           lfsr_c;
	assign crc_out = lfsr_q;
	always @(*) begin
		lfsr_c[0] = lfsr_q[0] ^ lfsr_q[1] ^ data_in[0] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[10] ^ data_in[13] ^ data_in[15] ^ data_in[16] ^ data_in[17];
		lfsr_c[1] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[2]  ^ data_in[1] ^ data_in[5] ^ data_in[6] ^ data_in[7]  ^ data_in[11] ^ data_in[14] ^ data_in[16] ^ data_in[17] ^ data_in[18];
		lfsr_c[2] = lfsr_q[0] ^ lfsr_q[2] ^ lfsr_q[3]  ^ data_in[0] ^ data_in[2] ^ data_in[4] ^ data_in[5]  ^ data_in[7]  ^ data_in[8]  ^ data_in[10] ^ data_in[12] ^ data_in[13] ^ data_in[16] ^ data_in[18] ^ data_in[19];
		lfsr_c[3] = lfsr_q[0] ^ lfsr_q[3] ^ lfsr_q[4]  ^ data_in[0] ^ data_in[1] ^ data_in[3] ^ data_in[4]  ^ data_in[8]  ^ data_in[9]  ^ data_in[10] ^ data_in[11] ^ data_in[14] ^ data_in[15] ^ data_in[16] ^ data_in[19] ^ data_in[20];
		lfsr_c[4] = lfsr_q[4] ^ lfsr_q[5] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[6] ^ data_in[9]  ^ data_in[11] ^ data_in[12] ^ data_in[13] ^ data_in[20] ^ data_in[21];
		lfsr_c[5] = lfsr_q[5] ^ lfsr_q[6] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[7] ^ data_in[10] ^ data_in[12] ^ data_in[13] ^ data_in[14] ^ data_in[21] ^ data_in[22];
		lfsr_c[6] = lfsr_q[6] ^ lfsr_q[7] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[8] ^ data_in[11] ^ data_in[13] ^ data_in[14] ^ data_in[15] ^ data_in[22] ^ data_in[23];
		lfsr_c[7] = lfsr_q[0] ^ lfsr_q[7] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[9] ^ data_in[12] ^ data_in[14] ^ data_in[15] ^ data_in[16] ^ data_in[23];

	end // always

	always @(posedge clk oe negedge rst_n) begin
		if(!rst_n) begin
			lfsr_q  <= {8{1'b1}};
		end
		else begin
			lfsr_q  <= crc_en ? lfsr_c : lfsr_q;
		end
	end // always
endmodule // crc
