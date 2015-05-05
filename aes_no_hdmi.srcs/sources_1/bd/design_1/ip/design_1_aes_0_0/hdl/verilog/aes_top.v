// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module aes_top (
m_axi_AXI_DMA_SLAVE_AWID,
m_axi_AXI_DMA_SLAVE_AWADDR,
m_axi_AXI_DMA_SLAVE_AWLEN,
m_axi_AXI_DMA_SLAVE_AWSIZE,
m_axi_AXI_DMA_SLAVE_AWBURST,
m_axi_AXI_DMA_SLAVE_AWLOCK,
m_axi_AXI_DMA_SLAVE_AWCACHE,
m_axi_AXI_DMA_SLAVE_AWPROT,
m_axi_AXI_DMA_SLAVE_AWQOS,
m_axi_AXI_DMA_SLAVE_AWUSER,
m_axi_AXI_DMA_SLAVE_AWVALID,
m_axi_AXI_DMA_SLAVE_AWREADY,
m_axi_AXI_DMA_SLAVE_WDATA,
m_axi_AXI_DMA_SLAVE_WSTRB,
m_axi_AXI_DMA_SLAVE_WLAST,
m_axi_AXI_DMA_SLAVE_WUSER,
m_axi_AXI_DMA_SLAVE_WVALID,
m_axi_AXI_DMA_SLAVE_WREADY,
m_axi_AXI_DMA_SLAVE_BID,
m_axi_AXI_DMA_SLAVE_BRESP,
m_axi_AXI_DMA_SLAVE_BUSER,
m_axi_AXI_DMA_SLAVE_BVALID,
m_axi_AXI_DMA_SLAVE_BREADY,
m_axi_AXI_DMA_SLAVE_ARID,
m_axi_AXI_DMA_SLAVE_ARADDR,
m_axi_AXI_DMA_SLAVE_ARLEN,
m_axi_AXI_DMA_SLAVE_ARSIZE,
m_axi_AXI_DMA_SLAVE_ARBURST,
m_axi_AXI_DMA_SLAVE_ARLOCK,
m_axi_AXI_DMA_SLAVE_ARCACHE,
m_axi_AXI_DMA_SLAVE_ARPROT,
m_axi_AXI_DMA_SLAVE_ARQOS,
m_axi_AXI_DMA_SLAVE_ARUSER,
m_axi_AXI_DMA_SLAVE_ARVALID,
m_axi_AXI_DMA_SLAVE_ARREADY,
m_axi_AXI_DMA_SLAVE_RID,
m_axi_AXI_DMA_SLAVE_RDATA,
m_axi_AXI_DMA_SLAVE_RRESP,
m_axi_AXI_DMA_SLAVE_RLAST,
m_axi_AXI_DMA_SLAVE_RUSER,
m_axi_AXI_DMA_SLAVE_RVALID,
m_axi_AXI_DMA_SLAVE_RREADY,
s_data_in_V_Clk_A,
s_data_in_V_Rst_A,
s_data_in_V_EN_A,
s_data_in_V_WEN_A,
s_data_in_V_Addr_A,
s_data_in_V_Dout_A,
s_data_in_V_Din_A,
s_encrypted_out_V_Clk_B,
s_encrypted_out_V_Rst_B,
s_encrypted_out_V_EN_B,
s_encrypted_out_V_WEN_B,
s_encrypted_out_V_Addr_B,
s_encrypted_out_V_Dout_B,
s_encrypted_out_V_Din_B,
s_axi_AXI4LiteS_AWADDR,
s_axi_AXI4LiteS_AWVALID,
s_axi_AXI4LiteS_AWREADY,
s_axi_AXI4LiteS_WDATA,
s_axi_AXI4LiteS_WSTRB,
s_axi_AXI4LiteS_WVALID,
s_axi_AXI4LiteS_WREADY,
s_axi_AXI4LiteS_BRESP,
s_axi_AXI4LiteS_BVALID,
s_axi_AXI4LiteS_BREADY,
s_axi_AXI4LiteS_ARADDR,
s_axi_AXI4LiteS_ARVALID,
s_axi_AXI4LiteS_ARREADY,
s_axi_AXI4LiteS_RDATA,
s_axi_AXI4LiteS_RRESP,
s_axi_AXI4LiteS_RVALID,
s_axi_AXI4LiteS_RREADY,
aresetn,
aclk,
read_finished_interrupt_V,
write_finished_interrupt_V,
finished,
ap_start,
ap_ready,
ap_done,
ap_idle
);

parameter C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH = 1;
parameter C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH = 32;
parameter C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH = 32;
parameter C_M_AXI_AXI_DMA_SLAVE_AWUSER_WIDTH = 1;
parameter C_M_AXI_AXI_DMA_SLAVE_ARUSER_WIDTH = 1;
parameter C_M_AXI_AXI_DMA_SLAVE_WUSER_WIDTH = 1;
parameter C_M_AXI_AXI_DMA_SLAVE_RUSER_WIDTH = 1;
parameter C_M_AXI_AXI_DMA_SLAVE_BUSER_WIDTH = 1;
parameter C_M_AXI_AXI_DMA_SLAVE_USER_DATA_WIDTH = 32;
parameter C_M_AXI_AXI_DMA_SLAVE_TARGET_ADDR = 32'h00000000;
parameter C_M_AXI_AXI_DMA_SLAVE_USER_VALUE = 1'b0;
parameter C_M_AXI_AXI_DMA_SLAVE_PROT_VALUE = 3'b010;
parameter C_M_AXI_AXI_DMA_SLAVE_CACHE_VALUE = 4'b0000;
parameter C_S_AXI_AXI4LITES_ADDR_WIDTH = 7;
parameter C_S_AXI_AXI4LITES_DATA_WIDTH = 32;
parameter RESET_ACTIVE_LOW = 1;

output [C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_AWID ;
output [C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_AWADDR ;
output [8 - 1:0] m_axi_AXI_DMA_SLAVE_AWLEN ;
output [3 - 1:0] m_axi_AXI_DMA_SLAVE_AWSIZE ;
output [2 - 1:0] m_axi_AXI_DMA_SLAVE_AWBURST ;
output [2 - 1:0] m_axi_AXI_DMA_SLAVE_AWLOCK ;
output [4 - 1:0] m_axi_AXI_DMA_SLAVE_AWCACHE ;
output [3 - 1:0] m_axi_AXI_DMA_SLAVE_AWPROT ;
output [4 - 1:0] m_axi_AXI_DMA_SLAVE_AWQOS ;
output [C_M_AXI_AXI_DMA_SLAVE_AWUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_AWUSER ;
output m_axi_AXI_DMA_SLAVE_AWVALID ;
input m_axi_AXI_DMA_SLAVE_AWREADY ;
output [C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_WDATA ;
output [C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH/8 - 1:0] m_axi_AXI_DMA_SLAVE_WSTRB ;
output m_axi_AXI_DMA_SLAVE_WLAST ;
output [C_M_AXI_AXI_DMA_SLAVE_WUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_WUSER ;
output m_axi_AXI_DMA_SLAVE_WVALID ;
input m_axi_AXI_DMA_SLAVE_WREADY ;
input [C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_BID ;
input [2 - 1:0] m_axi_AXI_DMA_SLAVE_BRESP ;
input [C_M_AXI_AXI_DMA_SLAVE_BUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_BUSER ;
input m_axi_AXI_DMA_SLAVE_BVALID ;
output m_axi_AXI_DMA_SLAVE_BREADY ;
output [C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_ARID ;
output [C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_ARADDR ;
output [8 - 1:0] m_axi_AXI_DMA_SLAVE_ARLEN ;
output [3 - 1:0] m_axi_AXI_DMA_SLAVE_ARSIZE ;
output [2 - 1:0] m_axi_AXI_DMA_SLAVE_ARBURST ;
output [2 - 1:0] m_axi_AXI_DMA_SLAVE_ARLOCK ;
output [4 - 1:0] m_axi_AXI_DMA_SLAVE_ARCACHE ;
output [3 - 1:0] m_axi_AXI_DMA_SLAVE_ARPROT ;
output [4 - 1:0] m_axi_AXI_DMA_SLAVE_ARQOS ;
output [C_M_AXI_AXI_DMA_SLAVE_ARUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_ARUSER ;
output m_axi_AXI_DMA_SLAVE_ARVALID ;
input m_axi_AXI_DMA_SLAVE_ARREADY ;
input [C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_RID ;
input [C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_RDATA ;
input [2 - 1:0] m_axi_AXI_DMA_SLAVE_RRESP ;
input m_axi_AXI_DMA_SLAVE_RLAST ;
input [C_M_AXI_AXI_DMA_SLAVE_RUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_RUSER ;
input m_axi_AXI_DMA_SLAVE_RVALID ;
output m_axi_AXI_DMA_SLAVE_RREADY ;


output s_data_in_V_Clk_A ;
output s_data_in_V_Rst_A ;
output s_data_in_V_EN_A ;
output [16 - 1:0] s_data_in_V_WEN_A ;
output [32 - 1:0] s_data_in_V_Addr_A ;
output [128 - 1:0] s_data_in_V_Dout_A ;
input [128 - 1:0] s_data_in_V_Din_A ;


output s_encrypted_out_V_Clk_B ;
output s_encrypted_out_V_Rst_B ;
output s_encrypted_out_V_EN_B ;
output [16 - 1:0] s_encrypted_out_V_WEN_B ;
output [32 - 1:0] s_encrypted_out_V_Addr_B ;
output [128 - 1:0] s_encrypted_out_V_Dout_B ;
input [128 - 1:0] s_encrypted_out_V_Din_B ;


input [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_AWADDR ;
input s_axi_AXI4LiteS_AWVALID ;
output s_axi_AXI4LiteS_AWREADY ;
input [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_WDATA ;
input [C_S_AXI_AXI4LITES_DATA_WIDTH/8 - 1:0] s_axi_AXI4LiteS_WSTRB ;
input s_axi_AXI4LiteS_WVALID ;
output s_axi_AXI4LiteS_WREADY ;
output [2 - 1:0] s_axi_AXI4LiteS_BRESP ;
output s_axi_AXI4LiteS_BVALID ;
input s_axi_AXI4LiteS_BREADY ;
input [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_ARADDR ;
input s_axi_AXI4LiteS_ARVALID ;
output s_axi_AXI4LiteS_ARREADY ;
output [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_RDATA ;
output [2 - 1:0] s_axi_AXI4LiteS_RRESP ;
output s_axi_AXI4LiteS_RVALID ;
input s_axi_AXI4LiteS_RREADY ;

input aresetn ;

input aclk ;

input [1 - 1:0] read_finished_interrupt_V ;
input [1 - 1:0] write_finished_interrupt_V ;
output finished ;
input ap_start ;
output ap_ready ;
output ap_done ;
output ap_idle ;


wire [C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_AWID;
wire [C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_AWADDR;
wire [8 - 1:0] m_axi_AXI_DMA_SLAVE_AWLEN;
wire [3 - 1:0] m_axi_AXI_DMA_SLAVE_AWSIZE;
wire [2 - 1:0] m_axi_AXI_DMA_SLAVE_AWBURST;
wire [2 - 1:0] m_axi_AXI_DMA_SLAVE_AWLOCK;
wire [4 - 1:0] m_axi_AXI_DMA_SLAVE_AWCACHE;
wire [3 - 1:0] m_axi_AXI_DMA_SLAVE_AWPROT;
wire [4 - 1:0] m_axi_AXI_DMA_SLAVE_AWQOS;
wire [C_M_AXI_AXI_DMA_SLAVE_AWUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_AWUSER;
wire m_axi_AXI_DMA_SLAVE_AWVALID;
wire m_axi_AXI_DMA_SLAVE_AWREADY;
wire [C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_WDATA;
wire [C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH/8 - 1:0] m_axi_AXI_DMA_SLAVE_WSTRB;
wire m_axi_AXI_DMA_SLAVE_WLAST;
wire [C_M_AXI_AXI_DMA_SLAVE_WUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_WUSER;
wire m_axi_AXI_DMA_SLAVE_WVALID;
wire m_axi_AXI_DMA_SLAVE_WREADY;
wire [C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_BID;
wire [2 - 1:0] m_axi_AXI_DMA_SLAVE_BRESP;
wire [C_M_AXI_AXI_DMA_SLAVE_BUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_BUSER;
wire m_axi_AXI_DMA_SLAVE_BVALID;
wire m_axi_AXI_DMA_SLAVE_BREADY;
wire [C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_ARID;
wire [C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_ARADDR;
wire [8 - 1:0] m_axi_AXI_DMA_SLAVE_ARLEN;
wire [3 - 1:0] m_axi_AXI_DMA_SLAVE_ARSIZE;
wire [2 - 1:0] m_axi_AXI_DMA_SLAVE_ARBURST;
wire [2 - 1:0] m_axi_AXI_DMA_SLAVE_ARLOCK;
wire [4 - 1:0] m_axi_AXI_DMA_SLAVE_ARCACHE;
wire [3 - 1:0] m_axi_AXI_DMA_SLAVE_ARPROT;
wire [4 - 1:0] m_axi_AXI_DMA_SLAVE_ARQOS;
wire [C_M_AXI_AXI_DMA_SLAVE_ARUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_ARUSER;
wire m_axi_AXI_DMA_SLAVE_ARVALID;
wire m_axi_AXI_DMA_SLAVE_ARREADY;
wire [C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_RID;
wire [C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_RDATA;
wire [2 - 1:0] m_axi_AXI_DMA_SLAVE_RRESP;
wire m_axi_AXI_DMA_SLAVE_RLAST;
wire [C_M_AXI_AXI_DMA_SLAVE_RUSER_WIDTH - 1:0] m_axi_AXI_DMA_SLAVE_RUSER;
wire m_axi_AXI_DMA_SLAVE_RVALID;
wire m_axi_AXI_DMA_SLAVE_RREADY;


wire s_data_in_V_Clk_A;
wire s_data_in_V_Rst_A;
wire s_data_in_V_EN_A;
wire [16 - 1:0] s_data_in_V_WEN_A;
wire [32 - 1:0] s_data_in_V_Addr_A;
wire [128 - 1:0] s_data_in_V_Dout_A;
wire [128 - 1:0] s_data_in_V_Din_A;


wire s_encrypted_out_V_Clk_B;
wire s_encrypted_out_V_Rst_B;
wire s_encrypted_out_V_EN_B;
wire [16 - 1:0] s_encrypted_out_V_WEN_B;
wire [32 - 1:0] s_encrypted_out_V_Addr_B;
wire [128 - 1:0] s_encrypted_out_V_Dout_B;
wire [128 - 1:0] s_encrypted_out_V_Din_B;


wire [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_AWADDR;
wire s_axi_AXI4LiteS_AWVALID;
wire s_axi_AXI4LiteS_AWREADY;
wire [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_WDATA;
wire [C_S_AXI_AXI4LITES_DATA_WIDTH/8 - 1:0] s_axi_AXI4LiteS_WSTRB;
wire s_axi_AXI4LiteS_WVALID;
wire s_axi_AXI4LiteS_WREADY;
wire [2 - 1:0] s_axi_AXI4LiteS_BRESP;
wire s_axi_AXI4LiteS_BVALID;
wire s_axi_AXI4LiteS_BREADY;
wire [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_ARADDR;
wire s_axi_AXI4LiteS_ARVALID;
wire s_axi_AXI4LiteS_ARREADY;
wire [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_RDATA;
wire [2 - 1:0] s_axi_AXI4LiteS_RRESP;
wire s_axi_AXI4LiteS_RVALID;
wire s_axi_AXI4LiteS_RREADY;

wire aresetn;


wire [32 - 1:0] sig_aes_AXI_DMA_SLAVE_datain;
wire [32 - 1:0] sig_aes_AXI_DMA_SLAVE_dataout;
wire [32 - 1:0] sig_aes_AXI_DMA_SLAVE_address;
wire [32 - 1:0] sig_aes_AXI_DMA_SLAVE_size;
wire sig_aes_AXI_DMA_SLAVE_req_din;
wire sig_aes_AXI_DMA_SLAVE_req_full_n;
wire sig_aes_AXI_DMA_SLAVE_req_write;
wire sig_aes_AXI_DMA_SLAVE_rsp_empty_n;
wire sig_aes_AXI_DMA_SLAVE_rsp_read;


wire [1 - 1:0] sig_aes_s_data_in_V_address0;
wire sig_aes_s_data_in_V_ce0;
wire [128 - 1:0] sig_aes_s_data_in_V_q0;


wire [1 - 1:0] sig_aes_s_encrypted_out_V_address1;
wire sig_aes_s_encrypted_out_V_ce1;
wire sig_aes_s_encrypted_out_V_we1;
wire [128 - 1:0] sig_aes_s_encrypted_out_V_d1;

wire [32 - 1:0] sig_aes_sourceAddress;
wire [128 - 1:0] sig_aes_key_in_V;
wire [32 - 1:0] sig_aes_destinationAddress;
wire [32 - 1:0] sig_aes_length_r;
wire [1 - 1:0] sig_aes_enable_i;
wire [1 - 1:0] sig_aes_enable_o;
wire [32 - 1:0] sig_aes_bram_input_address;
wire [32 - 1:0] sig_aes_bram_output_address;

wire sig_aes_ap_rst;



aes aes_U(
    .AXI_DMA_SLAVE_datain(sig_aes_AXI_DMA_SLAVE_datain),
    .AXI_DMA_SLAVE_dataout(sig_aes_AXI_DMA_SLAVE_dataout),
    .AXI_DMA_SLAVE_address(sig_aes_AXI_DMA_SLAVE_address),
    .AXI_DMA_SLAVE_size(sig_aes_AXI_DMA_SLAVE_size),
    .AXI_DMA_SLAVE_req_din(sig_aes_AXI_DMA_SLAVE_req_din),
    .AXI_DMA_SLAVE_req_full_n(sig_aes_AXI_DMA_SLAVE_req_full_n),
    .AXI_DMA_SLAVE_req_write(sig_aes_AXI_DMA_SLAVE_req_write),
    .AXI_DMA_SLAVE_rsp_empty_n(sig_aes_AXI_DMA_SLAVE_rsp_empty_n),
    .AXI_DMA_SLAVE_rsp_read(sig_aes_AXI_DMA_SLAVE_rsp_read),
    .s_data_in_V_address0(sig_aes_s_data_in_V_address0),
    .s_data_in_V_ce0(sig_aes_s_data_in_V_ce0),
    .s_data_in_V_q0(sig_aes_s_data_in_V_q0),
    .s_encrypted_out_V_address1(sig_aes_s_encrypted_out_V_address1),
    .s_encrypted_out_V_ce1(sig_aes_s_encrypted_out_V_ce1),
    .s_encrypted_out_V_we1(sig_aes_s_encrypted_out_V_we1),
    .s_encrypted_out_V_d1(sig_aes_s_encrypted_out_V_d1),
    .sourceAddress(sig_aes_sourceAddress),
    .key_in_V(sig_aes_key_in_V),
    .destinationAddress(sig_aes_destinationAddress),
    .length_r(sig_aes_length_r),
    .enable_i(sig_aes_enable_i),
    .enable_o(sig_aes_enable_o),
    .bram_input_address(sig_aes_bram_input_address),
    .bram_output_address(sig_aes_bram_output_address),
    .ap_rst(sig_aes_ap_rst),
    .ap_clk(aclk),
    .read_finished_interrupt_V(read_finished_interrupt_V),
    .write_finished_interrupt_V(write_finished_interrupt_V),
    .finished(finished),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

aes_AXI_DMA_SLAVE_if #(
    .C_ID_WIDTH(C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH),
    .C_ADDR_WIDTH(C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH),
    .C_DATA_WIDTH(C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH),
    .C_AWUSER_WIDTH(C_M_AXI_AXI_DMA_SLAVE_AWUSER_WIDTH),
    .C_ARUSER_WIDTH(C_M_AXI_AXI_DMA_SLAVE_ARUSER_WIDTH),
    .C_WUSER_WIDTH(C_M_AXI_AXI_DMA_SLAVE_WUSER_WIDTH),
    .C_RUSER_WIDTH(C_M_AXI_AXI_DMA_SLAVE_RUSER_WIDTH),
    .C_BUSER_WIDTH(C_M_AXI_AXI_DMA_SLAVE_BUSER_WIDTH),
    .C_USER_DATA_WIDTH(C_M_AXI_AXI_DMA_SLAVE_USER_DATA_WIDTH),
    .C_TARGET_ADDR(C_M_AXI_AXI_DMA_SLAVE_TARGET_ADDR),
    .C_USER_VALUE(C_M_AXI_AXI_DMA_SLAVE_USER_VALUE),
    .C_PROT_VALUE(C_M_AXI_AXI_DMA_SLAVE_PROT_VALUE),
    .C_CACHE_VALUE(C_M_AXI_AXI_DMA_SLAVE_CACHE_VALUE))
aes_AXI_DMA_SLAVE_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .USER_datain(sig_aes_AXI_DMA_SLAVE_datain),
    .USER_dataout(sig_aes_AXI_DMA_SLAVE_dataout),
    .USER_address(sig_aes_AXI_DMA_SLAVE_address),
    .USER_size(sig_aes_AXI_DMA_SLAVE_size),
    .USER_req_din(sig_aes_AXI_DMA_SLAVE_req_din),
    .USER_req_full_n(sig_aes_AXI_DMA_SLAVE_req_full_n),
    .USER_req_write(sig_aes_AXI_DMA_SLAVE_req_write),
    .USER_rsp_empty_n(sig_aes_AXI_DMA_SLAVE_rsp_empty_n),
    .USER_rsp_read(sig_aes_AXI_DMA_SLAVE_rsp_read),
    .AWID(m_axi_AXI_DMA_SLAVE_AWID),
    .AWADDR(m_axi_AXI_DMA_SLAVE_AWADDR),
    .AWLEN(m_axi_AXI_DMA_SLAVE_AWLEN),
    .AWSIZE(m_axi_AXI_DMA_SLAVE_AWSIZE),
    .AWBURST(m_axi_AXI_DMA_SLAVE_AWBURST),
    .AWLOCK(m_axi_AXI_DMA_SLAVE_AWLOCK),
    .AWCACHE(m_axi_AXI_DMA_SLAVE_AWCACHE),
    .AWPROT(m_axi_AXI_DMA_SLAVE_AWPROT),
    .AWQOS(m_axi_AXI_DMA_SLAVE_AWQOS),
    .AWUSER(m_axi_AXI_DMA_SLAVE_AWUSER),
    .AWVALID(m_axi_AXI_DMA_SLAVE_AWVALID),
    .AWREADY(m_axi_AXI_DMA_SLAVE_AWREADY),
    .WDATA(m_axi_AXI_DMA_SLAVE_WDATA),
    .WSTRB(m_axi_AXI_DMA_SLAVE_WSTRB),
    .WLAST(m_axi_AXI_DMA_SLAVE_WLAST),
    .WUSER(m_axi_AXI_DMA_SLAVE_WUSER),
    .WVALID(m_axi_AXI_DMA_SLAVE_WVALID),
    .WREADY(m_axi_AXI_DMA_SLAVE_WREADY),
    .BID(m_axi_AXI_DMA_SLAVE_BID),
    .BRESP(m_axi_AXI_DMA_SLAVE_BRESP),
    .BUSER(m_axi_AXI_DMA_SLAVE_BUSER),
    .BVALID(m_axi_AXI_DMA_SLAVE_BVALID),
    .BREADY(m_axi_AXI_DMA_SLAVE_BREADY),
    .ARID(m_axi_AXI_DMA_SLAVE_ARID),
    .ARADDR(m_axi_AXI_DMA_SLAVE_ARADDR),
    .ARLEN(m_axi_AXI_DMA_SLAVE_ARLEN),
    .ARSIZE(m_axi_AXI_DMA_SLAVE_ARSIZE),
    .ARBURST(m_axi_AXI_DMA_SLAVE_ARBURST),
    .ARLOCK(m_axi_AXI_DMA_SLAVE_ARLOCK),
    .ARCACHE(m_axi_AXI_DMA_SLAVE_ARCACHE),
    .ARPROT(m_axi_AXI_DMA_SLAVE_ARPROT),
    .ARQOS(m_axi_AXI_DMA_SLAVE_ARQOS),
    .ARUSER(m_axi_AXI_DMA_SLAVE_ARUSER),
    .ARVALID(m_axi_AXI_DMA_SLAVE_ARVALID),
    .ARREADY(m_axi_AXI_DMA_SLAVE_ARREADY),
    .RID(m_axi_AXI_DMA_SLAVE_RID),
    .RDATA(m_axi_AXI_DMA_SLAVE_RDATA),
    .RRESP(m_axi_AXI_DMA_SLAVE_RRESP),
    .RLAST(m_axi_AXI_DMA_SLAVE_RLAST),
    .RUSER(m_axi_AXI_DMA_SLAVE_RUSER),
    .RVALID(m_axi_AXI_DMA_SLAVE_RVALID),
    .RREADY(m_axi_AXI_DMA_SLAVE_RREADY));

aes_s_data_in_V_if aes_s_data_in_V_if_U(
    .clk(aclk),
    .reset(sig_aes_ap_rst),
    .s_data_in_V_address0(sig_aes_s_data_in_V_address0),
    .s_data_in_V_ce0(sig_aes_s_data_in_V_ce0),
    .s_data_in_V_q0(sig_aes_s_data_in_V_q0),
    .Clk_A(s_data_in_V_Clk_A),
    .Rst_A(s_data_in_V_Rst_A),
    .EN_A(s_data_in_V_EN_A),
    .WEN_A(s_data_in_V_WEN_A),
    .Addr_A(s_data_in_V_Addr_A),
    .Dout_A(s_data_in_V_Dout_A),
    .Din_A(s_data_in_V_Din_A));

aes_s_encrypted_out_V_if aes_s_encrypted_out_V_if_U(
    .clk(aclk),
    .reset(sig_aes_ap_rst),
    .s_encrypted_out_V_address1(sig_aes_s_encrypted_out_V_address1),
    .s_encrypted_out_V_ce1(sig_aes_s_encrypted_out_V_ce1),
    .s_encrypted_out_V_we1(sig_aes_s_encrypted_out_V_we1),
    .s_encrypted_out_V_d1(sig_aes_s_encrypted_out_V_d1),
    .Clk_B(s_encrypted_out_V_Clk_B),
    .Rst_B(s_encrypted_out_V_Rst_B),
    .EN_B(s_encrypted_out_V_EN_B),
    .WEN_B(s_encrypted_out_V_WEN_B),
    .Addr_B(s_encrypted_out_V_Addr_B),
    .Dout_B(s_encrypted_out_V_Dout_B),
    .Din_B(s_encrypted_out_V_Din_B));

aes_AXI4LiteS_if #(
    .C_ADDR_WIDTH(C_S_AXI_AXI4LITES_ADDR_WIDTH),
    .C_DATA_WIDTH(C_S_AXI_AXI4LITES_DATA_WIDTH))
aes_AXI4LiteS_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .I_sourceAddress(sig_aes_sourceAddress),
    .I_key_in_V(sig_aes_key_in_V),
    .I_destinationAddress(sig_aes_destinationAddress),
    .I_length_r(sig_aes_length_r),
    .I_enable_i(sig_aes_enable_i),
    .O_enable_o(sig_aes_enable_o),
    .I_bram_input_address(sig_aes_bram_input_address),
    .I_bram_output_address(sig_aes_bram_output_address),
    .AWADDR(s_axi_AXI4LiteS_AWADDR),
    .AWVALID(s_axi_AXI4LiteS_AWVALID),
    .AWREADY(s_axi_AXI4LiteS_AWREADY),
    .WDATA(s_axi_AXI4LiteS_WDATA),
    .WSTRB(s_axi_AXI4LiteS_WSTRB),
    .WVALID(s_axi_AXI4LiteS_WVALID),
    .WREADY(s_axi_AXI4LiteS_WREADY),
    .BRESP(s_axi_AXI4LiteS_BRESP),
    .BVALID(s_axi_AXI4LiteS_BVALID),
    .BREADY(s_axi_AXI4LiteS_BREADY),
    .ARADDR(s_axi_AXI4LiteS_ARADDR),
    .ARVALID(s_axi_AXI4LiteS_ARVALID),
    .ARREADY(s_axi_AXI4LiteS_ARREADY),
    .RDATA(s_axi_AXI4LiteS_RDATA),
    .RRESP(s_axi_AXI4LiteS_RRESP),
    .RVALID(s_axi_AXI4LiteS_RVALID),
    .RREADY(s_axi_AXI4LiteS_RREADY));

aes_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_aes_ap_rst),
    .din(aresetn));

endmodule