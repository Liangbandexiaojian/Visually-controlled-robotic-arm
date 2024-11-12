
`timescale 1ns / 1ps

//`include	"ParamDefine.v"

`include "ddr_calibration_defines.v"
module	T35_Sensor_DDR3_LCD_Test 
(
	//System Signal
	input 			AxiPllClkIn		,
	input 			DdrPllClkIn		,

	input 			Axi0Clk			,

	output 			hdmi_resetn_o	,
	output 			mipi_resetn_o	,

	input 			mipi_clkcal_i	,
	input 			mipi_clkesc_i	,
	input 			mipi_pixclk_i	, 
	input 			hdmi_clk1x_i	,
	input 			hdmi_clk2x_i	,
	input 			hdmi_clk5x_i	,
	input 			clk_cmos		,

	input 			tx_slowclk		,
	input 			tx_fastclk		,
	input 	[1:0] 	PllLocked		,
	input 			hdmi_lock_i		,
	input 			mipi_lock_i		,
	
 
	//DDR Controner Control Signal
	output			DdrCtrl_RSTN			, //(O)[Control]DDR Controner Reset(Low Active)	 
	output			DdrCtrl_CFG_SEQ_RST	 	, //(O)[Control]DDR Controner Sequencer Reset 
	output			DdrCtrl_CFG_SEQ_START 	, //(O)[Control]DDR Controner Sequencer Start 
	
	//DDR Controner AXI4 0 Signal
	output	[ 7:0]	DdrCtrl_AID_0	 	, //(O)[Addres] Address ID
	output	[31:0]	DdrCtrl_AADDR_0	 	, //(O)[Addres] Address
	output	[ 7:0]	DdrCtrl_ALEN_0		, //(O)[Addres] Address Brust Length
	output	[ 2:0]	DdrCtrl_ASIZE_0	 	, //(O)[Addres] Address Burst size
	output	[ 1:0]	DdrCtrl_ABURST_0	, //(O)[Addres] Address Burst type
	output	[ 1:0]	DdrCtrl_ALOCK_0	 	, //(O)[Addres] Address Lock type
	output			DdrCtrl_AVALID_0	, //(O)[Addres] Address Valid
	input				DdrCtrl_AREADY_0	, //(I)[Addres] Address Ready
	output			DdrCtrl_ATYPE_0	 	, //(O)[Addres] Operate Type 0=Read, 1=Write

	output	[ 7:0]	DdrCtrl_WID_0	 	, //(O)[Write]	ID
	output 	[127:0]	DdrCtrl_WDATA_0	 	, //(O)[Write]	Data
	output	[15:0]	DdrCtrl_WSTRB_0	 	, //(O)[Write]	Data Strobes(Byte valid)
	output			DdrCtrl_WLAST_0	 	, //(O)[Write]	Data Last
	output			DdrCtrl_WVALID_0	, //(O)[Write]	Data Valid
	input				DdrCtrl_WREADY_0	, //(I)[Write]	Data Ready

	input		[ 7:0]	DdrCtrl_RID_0	 	, //(I)[Read]	 ID
	input  	[127:0]	DdrCtrl_RDATA_0	 	, //(I)[Read]	 Data
	input				DdrCtrl_RLAST_0	 	, //(I)[Read]	 Data Last
	input				DdrCtrl_RVALID_0	, //(I)[Read]	 Data Valid
	output			DdrCtrl_RREADY_0	, //(O)[Read]	 Data Ready
	input		[ 1:0]	DdrCtrl_RRESP_0	 	, //(I)[Read]	 Response

	input		[ 7:0]	DdrCtrl_BID_0	 	, //(I)[Answer] Response Write ID
	input				DdrCtrl_BVALID_0	, //(I)[Answer] Response valid
	output			DdrCtrl_BREADY_0	, //(O)[Answer] Response Ready

	//Other Signal
	output	[7:0]		led_data,
	
	
	output			lcd_pwm,
	output	[6:0]	 	lvds_tx_clk_DATA,
	output	[6:0]	 	lvds_tx0_DATA,
	output	[6:0]	 	lvds_tx1_DATA,
	output	[6:0]	 	lvds_tx2_DATA,
	output	[6:0]	 	lvds_tx3_DATA,
	
	
	output 	[4:0] 	hdmi_tx0_o,
	output 	[4:0] 	hdmi_tx1_o,
	output 	[4:0] 	hdmi_tx2_o,
	output 	[4:0] 	hdmi_txc_o,

	output wire zone_bit0,
    output wire zone_bit1,
    output wire zone_bit2,

	input wire key0,


	
	//	CMOS Data. Use clk_cmos clock. 
	input 			cmos_pclk, 
	input 			cmos_vsync,
	input 			cmos_href,
	input 	[7:0] 	cmos_data,		
	
	output 			cmos_sclk, 
	input 			cmos_sdat_IN, 
	output 			cmos_sdat_OUT, 
	output 			cmos_sdat_OE, 
	
	
	
	
	
	
	
	input 			mipi0_scl_i,
	output 			mipi0_scl_o,
	output 			mipi0_scl_oe,

	input 			mipi0_sda_i,
	output 			mipi0_sda_o,
	output 			mipi0_sda_oe,

	input 			mipi1_scl_i,
	output 			mipi1_scl_o,
	output 			mipi1_scl_oe,

	input 			mipi1_sda_i,
	output 			mipi1_sda_o,
	output 			mipi1_sda_oe,

	output 	[1:0] 	mipi_trig_o,





	output 			mipi_rx_0_RSTN_o,
	output 			mipi_rx_0_DPHY_RSTN_o,
	output 	[3:0] 	mipi_rx_0_VC_ENA_o,
	output 	[1:0] 	mipi_rx_0_LANES_o,

	output 			mipi_rx_1_RSTN_o,
	output 			mipi_rx_1_DPHY_RSTN_o,
	output 	[3:0] 	mipi_rx_1_VC_ENA_o,
	output 	[1:0] 	mipi_rx_1_LANES_o,

	input 	[1:0] 	mipi_rx_0_VC_i,
	input 	[3:0] 	mipi_rx_0_VSYNC_i,
	input 	[3:0] 	mipi_rx_0_HSYNC_i,
	input 	[63:0] 	mipi_rx_0_DATA_i,
	input 	[3:0] 	mipi_rx_0_CNT_i,
	input 	[5:0] 	mipi_rx_0_TYPE_i,
	input 			mipi_rx_0_VALID_i,

	input 	[1:0] 	mipi_rx_1_VC_i,
	input 	[3:0] 	mipi_rx_1_VSYNC_i,
	input 	[3:0] 	mipi_rx_1_HSYNC_i,
	input 	[63:0] 	mipi_rx_1_DATA_i,
	input 	[3:0] 	mipi_rx_1_CNT_i,
	input 	[5:0] 	mipi_rx_1_TYPE_i,
	input 			mipi_rx_1_VALID_i,
	
	
	input 	[3:0] 	mipi_rx_0_ULPS,
	input 			mipi_rx_0_ULPS_CLK,
	output 			mipi_rx_0_CLEAR,
	input 	[17:0] 	mipi_rx_0_ERROR,
	
	input 	[3:0] 	mipi_rx_1_ULPS,
	input 			mipi_rx_1_ULPS_CLK,
	output 			mipi_rx_1_CLEAR,
	input 	[17:0] 	mipi_rx_1_ERROR

	
	//	UART Interface
	//input 	[1:0] 	uart_rx_i,		//	Support 921600-8-N-1. 
	//output 	[1:0] 	uart_tx_o

);

	`define 	MIPI_1LANE	0
	`define 	MIPI_2LANE	1
	`define 	MIPI_4LANE	2

	parameter 	SIM_I2C 	= 0; 

	parameter 	MIPI_LANES 	= `MIPI_1LANE; 

	//	Clock using PLL1. 
	assign hdmi_resetn_o = PllLocked[1]; 
	assign mipi_resetn_o = PllLocked[1]; 


	
	
	
	
	//----------------------------------------------------------------------
	//cmos control port
	assign mipi_trig_o = 2'b11; 	//	MIPI_RX_CTL3 & MIPI_RX_CTL5. 

	localparam 	CLOCK_MAIN		= 100_000000;
	localparam 	MIPI_CLK_FREQ 	= 100_000000; 
	
	localparam 	UART_BAUD_RATE 	= 921600; 



	//-------------------------------------
	//HDMI driver timing. Use 74.25MHz. 
	wire 	[1:0]	w_hdmi_clk = {hdmi_clk2x_i, hdmi_clk1x_i}; 


	
	
	
	/*------------------------------------------------------
	//	Clock & Reset Process
	//***************************************************/
	
	
	//----------------------------------------------------------------------
	//Power On Reset Process
	reg [7:0] PowerOnResetCnt = 8'h0	; //Power On Reset Counter
	reg [2:0] ResetShiftReg	 = 3'h0	; //Reset Shift Regist
	
	always @( posedge Axi0Clk) if (&PllLocked)	
	begin
		PowerOnResetCnt <= PowerOnResetCnt + {7'h0,(~&PowerOnResetCnt)};
	end
	
	always @( posedge Axi0Clk)	
	begin
		ResetShiftReg[2] <= ResetShiftReg[1] ;
		ResetShiftReg[1] <= ResetShiftReg[0] ;
		ResetShiftReg[0] <= (&PowerOnResetCnt);
	end	
	
	//----------------------------------------------------------------------
	//DDR Reset	
	wire	DDrCtrlReset ;	//DDR Controner Reset(Low Active)	
	wire	DdrSeqReset	 ;	//DDR Controner Sequencer Reset	
	wire	DDrSeqStart	 ;	//DDR Controner Sequencer Start	
	wire	DdrInitDone	 ;	//DDR Initial Done status
	
	etx_ddr3_reset_controller U0_DDR_Reset
	(
		.ddr_rstn_i		 	( ResetShiftReg[2]		), // main user DDR reset, active low
		.clk				( Axi0Clk				), // user clock
		/* Connect these three signals to DDR reset interface */
		.ddr_rstn			( DdrCtrl_RSTN			), // Master Reset
		.ddr_cfg_seq_rst	( DdrCtrl_CFG_SEQ_RST	 ), // Sequencer Reset
		.ddr_cfg_seq_start	( DdrCtrl_CFG_SEQ_START ), // Sequencer Start
		/* optional status monitor for user logic */
		.ddr_init_done		( DdrInitDone			 )	// Done status
	);
	
	
	
	
	
	
	
	
	
	//---------------------------------
	//AXI Reset Generate
	
	reg	 [2:0] Axi0ResetReg = 3'h0;	
	
	always @( posedge Axi0Clk)	
	begin
		Axi0ResetReg[2] <= Axi0ResetReg[1] ;
		Axi0ResetReg[1] <= Axi0ResetReg[0] ;
		Axi0ResetReg[0] <= DdrInitDone;
	end
	
	wire	Axi0Rst_N	= Axi0ResetReg[2]; //System Reset (Low Active)
	

	wire	User_Clk = Axi0Clk;
	wire	User_Rst_N = Axi0Rst_N;
	
	
	
	reg 			rc_axi0clk = 0; 
	always @(posedge Axi0Clk)
		rc_axi0clk <= ~rc_axi0clk; 
	
	
	
	
	
	
	//----------------------------------------------
	//i2c timing controller module of 16Bit
	wire	[8:0]	i2c_config_index;
	wire	[23:0]	i2c_config_data;
	wire	[8:0]	i2c_config_size;
	wire			i2c_config_done;
	i2c_timing_ctrl_16bit
	#(
		.CLK_FREQ			(CLOCK_MAIN	 	),		//100 MHz
		.I2C_FREQ			(10_000		)		 //10 KHz(<= 400KHz)
	)
	u_i2c_timing_ctrl_16bit
	(
		//global clock
		.clk				(User_Clk		),	//96MHz
		.rst_n			 	(User_Rst_N		),	//system reset

		//i2c interface
		.i2c_sclk			(cmos_sclk	),	//i2c clock
		.i2c_sdat_IN		(cmos_sdat_IN	),
		.i2c_sdat_OUT		(cmos_sdat_OUT	),
		.i2c_sdat_OE		(cmos_sdat_OE	),

		//i2c config data
		.i2c_config_index	(i2c_config_index				), //i2c config reg index, read 2 reg and write xx reg
		.i2c_config_data	({8'h78, i2c_config_data}		), //i2c config data
		.i2c_config_size	(SIM_I2C ? 3 : i2c_config_size	), //i2c config data counte
		.i2c_config_done	(i2c_config_done				)  //i2c config timing complete
	);
	
	//----------------------------------
	//I2C Configure Data of OV5640
	I2C_OV5640_1280720_Config u_I2C_OV5640_1280720_Config
	(
		.LUT_INDEX	(i2c_config_index	),
		.LUT_DATA	(i2c_config_data	),
		.LUT_SIZE	(i2c_config_size	)
	);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//----------------------------------------------------------------------
	//Frame crop (0/1). The pixel width is 32 bits. 
	wire			w_XYCrop0_frame_vsync; 
	wire			w_XYCrop0_frame_href;
	wire			w_XYCrop0_frame_de;
	wire	[31:0]	w_XYCrop0_frame_Gray;
	
	Sensor_Image_XYCrop
	#(
		.IMAGE_HSIZE_SOURCE (1280 * 2),
		.IMAGE_VSIZE_SOURCE (720	 ),
		.IMAGE_HSIZE_TARGET (1280 * 2),
		.IMAGE_YSIZE_TARGET (720 	 ),
		.PIXEL_DATA_WIDTH	(8		 )
	)
	u_Sensor_Image_XYCrop_0
	(
		//	globel clock
		.clk			(cmos_pclk			),			//	image pixel clock
		.rst_n		(1	 	),			//	system reset

		//CMOS Sensor interface
		.image_in_vsync 	(cmos_vsync		),			//H : Data Valid; L : Frame Sync(Set it by register)
		.image_in_href	(cmos_href		),			//H : Data vaild, L : Line Sync
		.image_in_de	(1		), 			//H : Data Enable, L : Line Sync
		.image_in_data	(cmos_data		),			//8 bits cmos data input
		
		.image_out_vsync	(w_XYCrop0_frame_vsync ),			//H : Data Valid; L : Frame Sync(Set it by register)
		.image_out_href 	(w_XYCrop0_frame_href	),			//H : Data vaild, L : Line Sync
		.image_out_de	(w_XYCrop0_frame_de	), 			//H : Data Enable, L : Line Sync
		.image_out_data 	(w_XYCrop0_frame_Gray	)			//8 bits cmos data input	
	);
	
	reg			r_XYCrop0_frame_vsync = 0; 
	reg			r_XYCrop0_frame_href = 0;
	reg			r_XYCrop0_frame_de = 0;
	reg	[31:0]	r_XYCrop0_frame_Gray = 0;
	always @(posedge cmos_pclk) begin
		r_XYCrop0_frame_vsync <= w_XYCrop0_frame_vsync; 
		r_XYCrop0_frame_href <= w_XYCrop0_frame_href;
		r_XYCrop0_frame_de <= w_XYCrop0_frame_de;
		r_XYCrop0_frame_Gray <= w_XYCrop0_frame_Gray;
	end
	
	

	
	
	
	
	//----------------------------------------------------------------------
	//AXI Interconnect
	
	wire	[ 7:0]	DdrCtrl_ARID_0	 	;  //(O)[Addres] Address ID
	wire	[31:0]	DdrCtrl_ARADDR_0	 	;  //(O)[Addres] Address
	wire	[ 7:0]	DdrCtrl_ARLEN_0		;  //(O)[Addres] Address Brust Length
	wire	[ 2:0]	DdrCtrl_ARSIZE_0	 	;  //(O)[Addres] Address Burst size
	wire	[ 1:0]	DdrCtrl_ARBURST_0		;  //(O)[Addres] Address Burst type
	wire	[ 1:0]	DdrCtrl_ARLOCK_0	 	;  //(O)[Addres] Address Lock type
	wire			DdrCtrl_ARVALID_0		;  //(O)[Addres] Address Valid
	wire			DdrCtrl_ARREADY_0		;  //(I)[Addres] Address Ready

	wire	[ 7:0]	DdrCtrl_AWID_0	 	;  //(O)[Addres] Address ID
	wire	[31:0]	DdrCtrl_AWADDR_0	 	;  //(O)[Addres] Address
	wire	[ 7:0]	DdrCtrl_AWLEN_0		;  //(O)[Addres] Address Brust Length
	wire	[ 2:0]	DdrCtrl_AWSIZE_0	 	;  //(O)[Addres] Address Burst size
	wire	[ 1:0]	DdrCtrl_AWBURST_0		;  //(O)[Addres] Address Burst type
	wire	[ 1:0]	DdrCtrl_AWLOCK_0	 	;  //(O)[Addres] Address Lock type
	wire			DdrCtrl_AWVALID_0		;  //(O)[Addres] Address Valid
	wire			DdrCtrl_AWREADY_0		;  //(I)[Addres] Address Ready
	
	AXI4_AWARMux #(.AID_LEN(6), .AADDR_LEN(32)) axi4_awar_mux (
		.aclk_i			(Axi0Clk), 
		.arst_i			(~Axi0Rst_N), 
		
		.awid_i			(DdrCtrl_AWID_0),
		.awaddr_i			(DdrCtrl_AWADDR_0),
		.awlen_i			(DdrCtrl_AWLEN_0),
		.awvalid_i			(DdrCtrl_AWVALID_0),
		.awready_o			(DdrCtrl_AWREADY_0),
		
		.arid_i			(DdrCtrl_ARID_0),
		.araddr_i			(DdrCtrl_ARADDR_0),
		.arlen_i			(DdrCtrl_ARLEN_0),
		.arvalid_i			(DdrCtrl_ARVALID_0),
		.arready_o			(DdrCtrl_ARREADY_0),
		
		.aid_o			(DdrCtrl_AID_0),
		.aaddr_o			(DdrCtrl_AADDR_0),
		.alen_o			(DdrCtrl_ALEN_0),
		.atype_o			(DdrCtrl_ATYPE_0),
		.avalid_o			(DdrCtrl_AVALID_0),
		.aready_i			(DdrCtrl_AREADY_0)
	);
	assign DdrCtrl_ASIZE_0 = 4; 		//	Fixed 128 bits (16 bytes, size = 4)
	assign DdrCtrl_ABURST_0 = 1; 
	assign DdrCtrl_ALOCK_0 = 0; 
	
	localparam 	MIG_AWID_LEN 	= 4; 
	localparam 	MIG0_DATA_WIDTH 	= 128; 
	localparam 	MIG0_STRB_BITS 	= MIG0_DATA_WIDTH / 8; 
	
	localparam 	MIG_ARID_LEN 	= MIG_AWID_LEN; 
	
	
	
	
	
	
	
	//----------------------------------------------------------------------
	wire			lcd_de;
	wire			lcd_hs;		
	wire			lcd_vs;
	wire	[7:0]		lcd_red;
	wire	[7:0]		lcd_green;
	wire	[7:0]		lcd_blue;
	wire	[11:0]	lcd_xpos;		//lcd horizontal coordinate
	wire	[11:0]	lcd_ypos;		//lcd vertical coordinate
	wire	[15:0]	lcd_data;		//lcd data
	wire 			lcd_request; 
	
	
	//----------------------------------------------------------------------
	//AXI writter 0. Note OV5640 is RGB565 data format. 
	axi4_ctrl #(.C_RD_END_ADDR((1280 * 2) * 720), .C_W_WIDTH(8), .C_R_WIDTH(16), .C_ID_LEN(4), .C_BASE_ADDR(32'h00000000)) u_axi4_ctrl_0 (
		.axi_clk        (Axi0Clk                          ),
		.axi_reset      (~Axi0Rst_N                       ),

		.axi_awaddr     (DdrCtrl_AWADDR_0       ),
		.axi_awlen      (DdrCtrl_AWLEN_0        ),
		.axi_awvalid    (DdrCtrl_AWVALID_0      ),
		.axi_awready    (DdrCtrl_AWREADY_0      ),

		.axi_wdata      (DdrCtrl_WDATA_0        ),
		.axi_wstrb      (DdrCtrl_WSTRB_0        ),
		.axi_wlast      (DdrCtrl_WLAST_0        ),
		.axi_wvalid     (DdrCtrl_WVALID_0       ),
		.axi_wready     (DdrCtrl_WREADY_0       ),

		.axi_bid        (DdrCtrl_BID_0          ),
		.axi_bresp      (0        ),
		.axi_bvalid     (DdrCtrl_BVALID_0       ),

		.axi_arid       (DdrCtrl_ARID_0         ),
		.axi_araddr     (DdrCtrl_ARADDR_0       ),
		.axi_arlen      (DdrCtrl_ARLEN_0        ),
		.axi_arvalid    (DdrCtrl_ARVALID_0      ),
		.axi_arready    (DdrCtrl_ARREADY_0      ),

		.axi_rid        (DdrCtrl_RID_0          ),
		.axi_rdata      (DdrCtrl_RDATA_0        ),
		.axi_rresp      (DdrCtrl_RRESP_0        ),
		.axi_rlast      (DdrCtrl_RLAST_0        ),
		.axi_rvalid     (DdrCtrl_RVALID_0       ),
		.axi_rready     (DdrCtrl_RREADY_0       ),

		.wframe_pclk    (cmos_pclk          ),
		.wframe_vsync   (r_XYCrop0_frame_vsync), //w_wframe_vsync   ),		//	Writter VSync. Flush on rising edge. Connect to EOF. 
		.wframe_data_en (r_XYCrop0_frame_href && r_XYCrop0_frame_de   ),
		.wframe_data    (r_XYCrop0_frame_Gray),
		
		.rframe_pclk    (hdmi_clk1x_i            ),
		.rframe_vsync   (lcd_vs             ),		//	Reader VSync. Flush on rising edge. Connect to ~EOF. 
		.rframe_data_en (lcd_request    ),
		.rframe_data    (lcd_data       )
	); 
	
	assign DdrCtrl_AWID_0 = 0; 
	assign DdrCtrl_AWSIZE_0 = 4; 		//	128-bit
	assign DdrCtrl_AWBURST_0 = 2'b01; 
	assign DdrCtrl_AWLOCK_0 = 0; 
	
	assign DdrCtrl_WID_0 = 0; 
	
	assign DdrCtrl_ARSIZE_0 = 4; 
	assign DdrCtrl_ARBURST_0 = 2'b01; 
	assign DdrCtrl_ARLOCK_0 = 0; 
	
	//	bready is don't care. 
	assign DdrCtrl_BREADY_0 = 1; 
	
	
	
	
	
	
	//	HDMI clock is 5x:2x:1x. 
	reg 			r_hdmi_rst_n = 0; 
	always @(posedge hdmi_clk1x_i)
		r_hdmi_rst_n <= User_Rst_N; 
	
	//	RGB565. Note MSB first for OV5640. 
	wire 	[15:0] 	w_lcd_data_swap = {lcd_data[7:0], lcd_data[15:8]}; 
	wire 	[15:0] 	lcd_data_r = {8'b0,w_lcd_data_swap[15:11], 3'b0}; 
	wire 	[15:0] 	lcd_data_g = {8'b0,w_lcd_data_swap[10:5], 2'b0}; 
	wire 	[15:0] 	lcd_data_b = {8'b0,w_lcd_data_swap[4:0], 3'b0}; 
	
	// 计算灰度值
    wire [15:0] lcd_gray_value = (lcd_data_r * 8'd77 + lcd_data_g * 8'd150 + lcd_data_b * 8'd29) >> 8;

    wire[7:0]  lcd_gray_value_eightbit = lcd_gray_value[7:0];
	// 设置二值化的阈值
   parameter THRESHOLD = 8'd70;

// 二值化处理
   wire [7:0] binarized_gray_value = (lcd_gray_value_eightbit > THRESHOLD) ? 8'hFF : 8'h00;

// 生成黑白的RGB数据（已二值化）
wire [7:0] lcd_data_bw_r = binarized_gray_value;  // 黑白图像的R通道
wire [7:0] lcd_data_bw_g = binarized_gray_value;  // 黑白图像的G通道
wire [7:0] lcd_data_bw_b = binarized_gray_value;  // 黑白图像的B通道

//((lcd_data_r>>2)+(lcd_data_r>>4)+(lcd_data_g>>1)+(lcd_data_g>>3)+(lcd_data_b>>2));

/*// 生成黑白的RGB数据
wire [7:0] lcd_data_bw_r = lcd_data_r;  // 黑白图像的R通道
wire [7:0] lcd_data_bw_g = lcd_gray_value;  // 黑白图像的G通道
wire [7:0] lcd_data_bw_b = lcd_gray_value;  // 黑白图像的B通道*/





	lcd_driver u_lcd_driver
	(
		//global clock
		.clk			(hdmi_clk1x_i), 	//	tx_slowclk),		
		.rst_n			(r_hdmi_rst_n), 
		 
		 //lcd interfaceA
		.lcd_dclk		(),//(lcd_dclk),
		.lcd_blank		(),//lcd_blank
		.lcd_sync		(),				
		.lcd_hs			(lcd_hs),		
		.lcd_vs			(lcd_vs),
		.lcd_en			(lcd_de),		
		.lcd_rgb		({lcd_red, lcd_green, lcd_blue}),
	
		
		//user interface
		.lcd_request	(lcd_request),
		.lcd_data		({lcd_data_bw_r, lcd_data_bw_g, lcd_data_bw_b}), 	//	{3{lcd_data}}), 	//	{3{lcd_xpos[8:0]}}), 	//	//,	
		.lcd_xpos		(lcd_xpos),	
		.lcd_ypos		(lcd_ypos)
	);
	
	
	//wire	[7:0]	 c0 = 7'b1100011;
	//wire	[7:0]	 d0 = {lcd_green[0],	lcd_red[5:0]};
	//wire	[7:0]	 d1 = {lcd_blue[1:0], lcd_green[5:1]};
	//wire	[7:0]	 d2 = {lcd_de, 2'b0,	lcd_blue[5:2]};	 //vs hs is reserved
	//wire	[7:0]	 d3 = {1'b0, lcd_blue[7:6], lcd_green[7:6], lcd_red[7:6]};
	//
	//assign	lvds_tx_clk_DATA = {c0[0], c0[1], c0[2], c0[3], c0[4], c0[5], c0[6]};
	//assign	lvds_tx0_DATA	= {d0[0], d0[1], d0[2], d0[3], d0[4], d0[5], d0[6]};
	//assign	lvds_tx1_DATA	= {d1[0], d1[1], d1[2], d1[3], d1[4], d1[5], d1[6]};
	//assign	lvds_tx2_DATA	= {d2[0], d2[1], d2[2], d2[3], d2[4], d2[5], d2[6]};
	//assign	lvds_tx3_DATA	= {d3[0], d3[1], d3[2], d3[3], d3[4], d3[5], d3[6]};
	



// 声明用于接收模块输出的信号
wire [11:0] x_avg_black;   // 黑色像素点的x坐标平均值
wire [11:0] y_avg_black;   // 黑色像素点的y坐标平均值

// 实例化 black_pixel_avg 模块
black_pixel_avg u_black_pixel_avg (
    .hdmi_clk1x_i(hdmi_clk1x_i),  // 像素时钟信号输入
    .lcd_hs(lcd_hs),              // 行同步信号输入
    .lcd_vs(lcd_vs),              // 帧同步信号输入
    .lcd_de(lcd_de),              // 像素使能信号输入
    .lcd_data({lcd_red, lcd_green, lcd_blue}),  // RGB888数据输入
    .lcd_xpos(lcd_xpos),          // x坐标输入
    .lcd_ypos(lcd_ypos),          // y坐标输入
    .x_out(x_avg_black),          // 黑色像素x平均坐标输出
    .y_out(y_avg_black)           // 黑色像素y平均坐标输出
);



// 声明输出端口以便在顶层模块中监视zone输出
wire  [2:0] zone;

// 实例化 zone_identifier 模块
zone_identifier u_zone_identifier (
    .x_avg_black(x_avg_black),    // 黑色像素的x坐标平均值
    .y_avg_black(y_avg_black),    // 黑色像素的y坐标平均值
    .zone(zone)                   // 输出区域编号
);


// 顶层模块中的实例化
state_machine u_state_machine (
    .hdmi_clk1x_i(hdmi_clk1x_i),
    .key0(key0),
    .zone(zone),
    .led(led_data),         // 连接到8位LED灯的输出端
    .zone_bit0(zone_bit0),
    .zone_bit1(zone_bit1),
    .zone_bit2(zone_bit2)
);




	assign lcd_pwm = 1; 
	
	
	
	
	////////////////////////////////////////////////////////////////
	//	HDMI Interface. 
	
	//-------------------------------------
	//Digilent HDMI-TX IP Modified by CB elec.
	
	//	Convert into 2x rate. 
	wire 	[9:0] 	w_hdmi_txc, w_hdmi_txd0, w_hdmi_txd1, w_hdmi_txd2; 
	
	rgb2dvi #(.ENABLE_OSERDES(0)) u_rgb2dvi 
	(
		.oe_i 		(1), 			//	Always enable output
		.bitflip_i 		(4'b0000), 		//	Reverse clock & data lanes. 
		
		.aRst			(1'b0), 
		.aRst_n		(1'b1), 
		
		.PixelClk		(hdmi_clk1x_i        ),//pixel clk = 74.25M
		.SerialClk		(     ),//pixel clk *5 = 371.25M
		
		.vid_pVSync		(lcd_vs), 
		.vid_pHSync		(lcd_hs), 
		.vid_pVDE		(lcd_de), 
		.vid_pData		({lcd_red, lcd_green, lcd_blue}), 
		
		.txc_o			(w_hdmi_txc), 
		.txd0_o			(w_hdmi_txd0), 
		.txd1_o			(w_hdmi_txd1), 
		.txd2_o			(w_hdmi_txd2)
	); 
	
	reg 			rc_hdmi_tx = 0; 
	reg 	[9:0] 	r_hdmi_txc_o = 0, r_hdmi_tx0_o = 0, r_hdmi_tx1_o = 0, r_hdmi_tx2_o = 0; 
	always @(posedge hdmi_clk2x_i) begin
		rc_hdmi_tx <= ~rc_hdmi_tx; 
		if(rc_hdmi_tx) begin
			r_hdmi_txc_o <= w_hdmi_txc; 
			r_hdmi_tx0_o <= w_hdmi_txd0; 
			r_hdmi_tx1_o <= w_hdmi_txd1; 
			r_hdmi_tx2_o <= w_hdmi_txd2; 
		end else begin
			r_hdmi_txc_o <= r_hdmi_txc_o >> 5; 
			r_hdmi_tx0_o <= r_hdmi_tx0_o >> 5; 
			r_hdmi_tx1_o <= r_hdmi_tx1_o >> 5; 
			r_hdmi_tx2_o <= r_hdmi_tx2_o >> 5; 
		end
	end
	assign hdmi_txc_o = r_hdmi_txc_o;
	assign hdmi_tx0_o = r_hdmi_tx0_o;
	assign hdmi_tx1_o = r_hdmi_tx1_o;
	assign hdmi_tx2_o = r_hdmi_tx2_o; 
	
	
endmodule

