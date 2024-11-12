`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:16:00 01/18/2023
// Design Name:   T35_Sensor_DDR3_LCD_Test
// Module Name:   D:/Project/08_SC130GS_DDR3_LCD_Display/Source/T35_Sensor_DDR3_LCD_Test_tb.v
// Project Name:  SC130GS_DDR3_LCD_Display
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T35_Sensor_DDR3_LCD_Test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T35_Sensor_DDR3_LCD_Test_tb;

	// Inputs
	reg AxiPllClkIn;
	reg DdrPllClkIn;
	reg Axi0Clk;
	reg mipi_clkcal_i;
	reg mipi_clkesc_i;
	reg mipi_pixclk_i; 
	reg hdmi_clk1x_i;
	reg hdmi_clk2x_i;
	reg hdmi_clk5x_i;
	reg clk_cmos;
	reg tx_slowclk;
	reg tx_fastclk;
	reg [1:0] PllLocked;
	reg hdmi_lock_i;
	reg mipi_lock_i;
	reg DdrCtrl_AREADY_0;
	reg DdrCtrl_WREADY_0;
	reg [7:0] DdrCtrl_RID_0;
	reg [127:0] DdrCtrl_RDATA_0;
	reg DdrCtrl_RLAST_0;
	reg DdrCtrl_RVALID_0;
	reg [1:0] DdrCtrl_RRESP_0;
	reg [7:0] DdrCtrl_BID_0;
	reg DdrCtrl_BVALID_0;
	reg cmos_sdat_IN;
	reg cmos_pclk;
	reg cmos_vsync;
	reg cmos_href;
	reg [7:0] cmos_data;
	reg mipi0_scl_i;
	reg mipi0_sda_i;
	reg mipi1_scl_i;
	reg mipi1_sda_i;
	reg [1:0] mipi_rx_0_VC_i;
	reg [3:0] mipi_rx_0_VSYNC_i;
	reg [3:0] mipi_rx_0_HSYNC_i;
	reg [63:0] mipi_rx_0_DATA_i;
	reg [3:0] mipi_rx_0_CNT_i;
	reg [5:0] mipi_rx_0_TYPE_i;
	reg mipi_rx_0_VALID_i;
	reg [1:0] mipi_rx_1_VC_i;
	reg [3:0] mipi_rx_1_VSYNC_i;
	reg [3:0] mipi_rx_1_HSYNC_i;
	reg [63:0] mipi_rx_1_DATA_i;
	reg [3:0] mipi_rx_1_CNT_i;
	reg [5:0] mipi_rx_1_TYPE_i;
	reg mipi_rx_1_VALID_i;

	// Outputs
	wire hdmi_resetn_o;
	wire mipi_resetn_o;
	wire DdrCtrl_RSTN;
	wire DdrCtrl_CFG_SEQ_RST;
	wire DdrCtrl_CFG_SEQ_START;
	wire [7:0] DdrCtrl_AID_0;
	wire [31:0] DdrCtrl_AADDR_0;
	wire [7:0] DdrCtrl_ALEN_0;
	wire [2:0] DdrCtrl_ASIZE_0;
	wire [1:0] DdrCtrl_ABURST_0;
	wire [1:0] DdrCtrl_ALOCK_0;
	wire DdrCtrl_AVALID_0;
	wire DdrCtrl_ATYPE_0;
	wire [7:0] DdrCtrl_WID_0;
	wire [127:0] DdrCtrl_WDATA_0;
	wire [15:0] DdrCtrl_WSTRB_0;
	wire DdrCtrl_WLAST_0;
	wire DdrCtrl_WVALID_0;
	wire DdrCtrl_RREADY_0;
	wire DdrCtrl_BREADY_0;
	wire [7:0] led_data;
	wire cmos_sclk;
	wire cmos_sdat_OUT;
	wire cmos_sdat_OE;
	wire cmos_ctl0;
	wire cmos_ctl1;
	wire cmos_ctl2;
	wire cmos_ctl3;
	wire lcd_pwm;
	wire [6:0] lvds_tx_clk_DATA;
	wire [6:0] lvds_tx0_DATA;
	wire [6:0] lvds_tx1_DATA;
	wire [6:0] lvds_tx2_DATA;
	wire [6:0] lvds_tx3_DATA;
	wire [4:0] hdmi_tx0_o;
	wire [4:0] hdmi_tx1_o;
	wire [4:0] hdmi_tx2_o;
	wire [4:0] hdmi_txc_o;
	wire mipi0_scl_o;
	wire mipi0_scl_oe;
	wire mipi0_sda_o;
	wire mipi0_sda_oe;
	wire mipi1_scl_o;
	wire mipi1_scl_oe;
	wire mipi1_sda_o;
	wire mipi1_sda_oe;
	wire [1:0] mipi_trig_o;
	wire mipi_rx_0_RSTN_o;
	wire mipi_rx_0_DPHY_RSTN_o;
	wire [3:0] mipi_rx_0_VC_ENA_o;
	wire [1:0] mipi_rx_0_LANES_o;
	wire mipi_rx_1_RSTN_o;
	wire mipi_rx_1_DPHY_RSTN_o;
	wire [3:0] mipi_rx_1_VC_ENA_o;
	wire [1:0] mipi_rx_1_LANES_o;
	
	always begin #10; if(~hdmi_resetn_o) hdmi_lock_i = 0; else #400 hdmi_lock_i = 1; end 
	always begin #10; if(~mipi_resetn_o) mipi_lock_i = 0; else #400 mipi_lock_i = 1; end 
	always #41.666 AxiPllClkIn = ~AxiPllClkIn;
	always #20.833 DdrPllClkIn = ~DdrPllClkIn;

	// Instantiate the Unit Under Test (UUT)
	T35_Sensor_DDR3_LCD_Test #(.SIM_I2C(1)) uut (
		
		
		.AxiPllClkIn(AxiPllClkIn), 
		.DdrPllClkIn(DdrPllClkIn), 
		.Axi0Clk(Axi0Clk), 
		.hdmi_resetn_o(hdmi_resetn_o), 
		.mipi_resetn_o(mipi_resetn_o), 
		.mipi_clkcal_i(mipi_clkcal_i), 
		.mipi_clkesc_i(mipi_clkesc_i), 
		.mipi_pixclk_i(mipi_pixclk_i), 
		.hdmi_clk1x_i(hdmi_clk1x_i), 
		.hdmi_clk2x_i(hdmi_clk2x_i), 
		.hdmi_clk5x_i(hdmi_clk5x_i), 
		.clk_cmos(clk_cmos), 
		.tx_slowclk(tx_slowclk), 
		.tx_fastclk(tx_fastclk), 
		.PllLocked(PllLocked), 
		.hdmi_lock_i(hdmi_lock_i), 
		.mipi_lock_i(mipi_lock_i), 
		
		
		.DdrCtrl_RSTN(DdrCtrl_RSTN), 
		.DdrCtrl_CFG_SEQ_RST(DdrCtrl_CFG_SEQ_RST), 
		.DdrCtrl_CFG_SEQ_START(DdrCtrl_CFG_SEQ_START), 
		.DdrCtrl_AID_0(DdrCtrl_AID_0), 
		.DdrCtrl_AADDR_0(DdrCtrl_AADDR_0), 
		.DdrCtrl_ALEN_0(DdrCtrl_ALEN_0), 
		.DdrCtrl_ASIZE_0(DdrCtrl_ASIZE_0), 
		.DdrCtrl_ABURST_0(DdrCtrl_ABURST_0), 
		.DdrCtrl_ALOCK_0(DdrCtrl_ALOCK_0), 
		.DdrCtrl_AVALID_0(DdrCtrl_AVALID_0), 
		.DdrCtrl_AREADY_0(DdrCtrl_AREADY_0), 
		.DdrCtrl_ATYPE_0(DdrCtrl_ATYPE_0), 
		.DdrCtrl_WID_0(DdrCtrl_WID_0), 
		.DdrCtrl_WDATA_0(DdrCtrl_WDATA_0), 
		.DdrCtrl_WSTRB_0(DdrCtrl_WSTRB_0), 
		.DdrCtrl_WLAST_0(DdrCtrl_WLAST_0), 
		.DdrCtrl_WVALID_0(DdrCtrl_WVALID_0), 
		.DdrCtrl_WREADY_0(DdrCtrl_WREADY_0), 
		.DdrCtrl_RID_0(DdrCtrl_RID_0), 
		.DdrCtrl_RDATA_0(DdrCtrl_RDATA_0), 
		.DdrCtrl_RLAST_0(DdrCtrl_RLAST_0), 
		.DdrCtrl_RVALID_0(DdrCtrl_RVALID_0), 
		.DdrCtrl_RREADY_0(DdrCtrl_RREADY_0), 
		.DdrCtrl_RRESP_0(DdrCtrl_RRESP_0), 
		.DdrCtrl_BID_0(DdrCtrl_BID_0), 
		.DdrCtrl_BVALID_0(DdrCtrl_BVALID_0), 
		.DdrCtrl_BREADY_0(DdrCtrl_BREADY_0), 
		.led_data(led_data), 
		.mipi0_scl_i(mipi0_scl_i), 
		.mipi0_scl_o(mipi0_scl_o), 
		.mipi0_scl_oe(mipi0_scl_oe), 
		.mipi0_sda_i(mipi0_sda_i), 
		.mipi0_sda_o(mipi0_sda_o), 
		.mipi0_sda_oe(mipi0_sda_oe), 
		.mipi1_scl_i(mipi1_scl_i), 
		.mipi1_scl_o(mipi1_scl_o), 
		.mipi1_scl_oe(mipi1_scl_oe), 
		.mipi1_sda_i(mipi1_sda_i), 
		.mipi1_sda_o(mipi1_sda_o), 
		.mipi1_sda_oe(mipi1_sda_oe), 
		.mipi_trig_o(mipi_trig_o), 
		.mipi_rx_0_RSTN_o(mipi_rx_0_RSTN_o), 
		.mipi_rx_0_DPHY_RSTN_o(mipi_rx_0_DPHY_RSTN_o), 
		.mipi_rx_0_VC_ENA_o(mipi_rx_0_VC_ENA_o), 
		.mipi_rx_0_LANES_o(mipi_rx_0_LANES_o), 
		.mipi_rx_1_RSTN_o(mipi_rx_1_RSTN_o), 
		.mipi_rx_1_DPHY_RSTN_o(mipi_rx_1_DPHY_RSTN_o), 
		.mipi_rx_1_VC_ENA_o(mipi_rx_1_VC_ENA_o), 
		.mipi_rx_1_LANES_o(mipi_rx_1_LANES_o), 
		.mipi_rx_0_VC_i(mipi_rx_0_VC_i), 
		.mipi_rx_0_VSYNC_i(mipi_rx_0_VSYNC_i), 
		.mipi_rx_0_HSYNC_i(mipi_rx_0_HSYNC_i), 
		.mipi_rx_0_DATA_i(mipi_rx_0_DATA_i), 
		.mipi_rx_0_CNT_i(mipi_rx_0_CNT_i), 
		.mipi_rx_0_TYPE_i(mipi_rx_0_TYPE_i), 
		.mipi_rx_0_VALID_i(mipi_rx_0_VALID_i), 
		.mipi_rx_1_VC_i(mipi_rx_1_VC_i), 
		.mipi_rx_1_VSYNC_i(mipi_rx_1_VSYNC_i), 
		.mipi_rx_1_HSYNC_i(mipi_rx_1_HSYNC_i), 
		.mipi_rx_1_DATA_i(mipi_rx_1_DATA_i), 
		.mipi_rx_1_CNT_i(mipi_rx_1_CNT_i), 
		.mipi_rx_1_TYPE_i(mipi_rx_1_TYPE_i), 
		.mipi_rx_1_VALID_i(mipi_rx_1_VALID_i)
	);
	
	always #5 mipi_clkcal_i = ~mipi_clkcal_i;
	always #5 mipi_pixclk_i = ~mipi_pixclk_i; 
	reg [2:0] rc_20m = 0; 
	always @(posedge mipi_clkcal_i) begin
		rc_20m <= rc_20m + 1; 
		if(rc_20m >= 9)
			rc_20m <= 0; 
		mipi_clkesc_i <= (rc_20m == 0) ? 1 : mipi_clkesc_i; 
	end
	always @(negedge mipi_clkcal_i) begin
		rc_20m = rc_20m + 1; 
		if(rc_20m >= 9)
			rc_20m <= 0; 
		mipi_clkesc_i <= (rc_20m == 5) ? 0 : mipi_clkesc_i; 
	end
	always #1.344 hdmi_clk5x_i <= ~hdmi_clk5x_i; 
	always #3.36 hdmi_clk2x_i <= ~hdmi_clk2x_i;
	always @(posedge hdmi_clk2x_i) hdmi_clk1x_i <= ~hdmi_clk1x_i; 
	always #5.154 Axi0Clk = ~Axi0Clk; 
	always @(posedge Axi0Clk) tx_slowclk <= ~tx_slowclk; 
	always #2.945 tx_fastclk = ~tx_fastclk; 
	
	
	genvar _i; 
	generate
		for(_i = 0; _i < 16; _i = _i + 1) begin
			always @(posedge Axi0Clk) begin
				if(DdrCtrl_RVALID_0 && DdrCtrl_RREADY_0) begin
					DdrCtrl_RDATA_0[(_i+1)*8-1:_i*8] <= DdrCtrl_RDATA_0[(_i+1)*8-1:_i*8] + 16; 
				end 
			end
		end
	endgenerate
	reg 	[9:0] 	rs_axi_rd = 0; 
	reg 	[7:0] 	rc_rlen = 0; 
	always @(posedge Axi0Clk) begin
		if(rs_axi_rd == 0) begin
			if(DdrCtrl_AVALID_0) begin
				DdrCtrl_RID_0 <= DdrCtrl_AID_0; 
				rc_rlen <= DdrCtrl_ALEN_0; 
				rs_axi_rd <= 1; 
			end
		end else if(rs_axi_rd == 4) begin
			DdrCtrl_AREADY_0 <= 1; 
			rs_axi_rd <= rs_axi_rd + 1; 
			
		end else if(rs_axi_rd == 5) begin
			DdrCtrl_AREADY_0 <= 0; 
			rs_axi_rd <= rs_axi_rd + 1; 
			
		end else if(rs_axi_rd == 8) begin
			DdrCtrl_RVALID_0 <= 1; 
			rs_axi_rd <= rs_axi_rd + 1; 
			
		end else if(rs_axi_rd == 1) begin
			if(DdrCtrl_ATYPE_0 == 0)
				rs_axi_rd <= rs_axi_rd + 1; 
			else
				rs_axi_rd <= 512; 
		end else if(rs_axi_rd == 512) begin
			DdrCtrl_WREADY_0 = 1; 
			DdrCtrl_AREADY_0 <= 1; 
			rs_axi_rd <= rs_axi_rd + 1; 
		
		end else if(rs_axi_rd == 513) begin
			DdrCtrl_AREADY_0 = 0; 
			
			if(DdrCtrl_WLAST_0 && DdrCtrl_WVALID_0) begin
				DdrCtrl_WREADY_0 <= 0; 
				DdrCtrl_BVALID_0 <= 1; 
				rs_axi_rd <= rs_axi_rd + 1; 
			end else begin
			end
		end else if(rs_axi_rd == 514) begin
				DdrCtrl_BVALID_0 <= 0; 
				rs_axi_rd <= 0; 
		
			
		end else begin
			
			rs_axi_rd <= rs_axi_rd + 1; 

			if(rs_axi_rd == 8 + rc_rlen) begin
				DdrCtrl_RLAST_0 <= 1; 
			end 
			if(rs_axi_rd == 8 + rc_rlen + 1) begin
				DdrCtrl_RLAST_0 <= 0; 
				DdrCtrl_RVALID_0 <= 0; 
				rs_axi_rd <= 0; 
			end 
			
		end
	end
	
	initial begin
		// Initialize Inputs
		AxiPllClkIn = 0;
		DdrPllClkIn = 0;
		Axi0Clk = 0;
		mipi_clkcal_i = 0;
		mipi_clkesc_i = 0;
		mipi_pixclk_i = 0; 
		hdmi_clk1x_i = 0;
		hdmi_clk2x_i = 0;
		hdmi_clk5x_i = 0;
		clk_cmos = 0;
		tx_slowclk = 0;
		tx_fastclk = 0;
		PllLocked = 0;
		hdmi_lock_i = 0;
		mipi_lock_i = 0;
		DdrCtrl_AREADY_0 = 0;
		DdrCtrl_WREADY_0 = 0;
		DdrCtrl_RID_0 = 0;
		DdrCtrl_RDATA_0 = 128'h0F0E0D0C0B0A09080706050403020100;
		DdrCtrl_RLAST_0 = 0;
		DdrCtrl_RVALID_0 = 0;
		DdrCtrl_RRESP_0 = 0;
		DdrCtrl_BID_0 = 0;
		DdrCtrl_BVALID_0 = 0;
		cmos_sdat_IN = 0;
		cmos_pclk = 0;
		cmos_vsync = 0;
		cmos_href = 0;
		cmos_data = 0;
		
		mipi0_scl_i = 0;
		mipi0_sda_i = 1;
		mipi1_scl_i = 0;
		mipi1_sda_i = 1;
		
		mipi_rx_0_VC_i = 0;
		mipi_rx_0_VSYNC_i = 0;
		mipi_rx_0_HSYNC_i = 0;
		mipi_rx_0_DATA_i = 0;
		mipi_rx_0_CNT_i = 0;
		mipi_rx_0_TYPE_i = 0;
		mipi_rx_0_VALID_i = 0;
		
		mipi_rx_1_VC_i = 0;
		mipi_rx_1_VSYNC_i = 0;
		mipi_rx_1_HSYNC_i = 0;
		mipi_rx_1_DATA_i = 0;
		mipi_rx_1_CNT_i = 0;
		mipi_rx_1_TYPE_i = 0;
		mipi_rx_1_VALID_i = 0;
		
		rc_20m = 0; 

		// Wait 100 ns for global reset to finish
		#100; PllLocked = 3; #96; 
        
		// Add stimulus here

	end
	
	integer i = 0; 
	always begin 
		#1000;
		mipi_rx_0_VSYNC_i = 1; 
		for(i = 0; i < 1080; i = i + 1) begin
			mipi_rx_0_HSYNC_i = 1; #4800; mipi_rx_0_HSYNC_i = 0; #10; 
		end
		mipi_rx_0_VSYNC_i = 0; #32000; 
	end
	always #10 mipi_rx_0_VALID_i = ~mipi_rx_0_VALID_i; 
	always @(posedge mipi_pixclk_i) begin
		if(mipi_rx_0_HSYNC_i[0] && mipi_rx_0_VALID_i)
			mipi_rx_0_DATA_i <= mipi_rx_0_DATA_i + 1; 
	end
      
	
	
	
	
	integer j = 0; 
	always begin 
		#1000;
		mipi_rx_1_VSYNC_i = 1; 
		for(j = 0; j < 1080; j = j + 1) begin
			mipi_rx_1_HSYNC_i = 1; #4800; mipi_rx_1_HSYNC_i = 0; #10; 
		end
		mipi_rx_1_VSYNC_i = 0; #32000; 
	end
	always #10 mipi_rx_1_VALID_i = ~mipi_rx_1_VALID_i; 
	always @(posedge mipi_pixclk_i) begin
		if(mipi_rx_1_HSYNC_i[0] && mipi_rx_1_VALID_i)
			mipi_rx_1_DATA_i <= mipi_rx_1_DATA_i + 1; 
	end
      


endmodule

