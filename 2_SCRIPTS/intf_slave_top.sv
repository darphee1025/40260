module intf_slave_top #(
    parameter UDLY = 1
)(
    input  wire     pclk,//None 
    input  wire     prst_n,//None 
    output wire     psel0,//None 
    output wire     psel1,//None 
    output wire     psel2,//None 
    output wire     psel3,//None 
    output wire     penable,//None 
    output wire     pwrite,//None 
    output wire  [7:0]paddr,//None 
    output wire  [15:0]pwdata,//None 
    input  wire  [15:0]prdata0,//None 
    input  wire  [15:0]prdata1,//None 
    input  wire  [15:0]prdata2,//None 
    input  wire  [15:0]prdata3,//None 
    input  wire     scan_mode,//None 
    input  wire     scan_rst_n,//None 
    input  wire     spi_clk,//None 
    input  wire     spi_inv_clk,//None 
    input  wire     cs_n,//None 
    input  wire     mosi,//None 
    output wire     miso,//None 
    input  wire     i_sck,//None 
    input  wire     i_sda,//None 
    output wire  [0:0]o_sda//None
 );

endmodule