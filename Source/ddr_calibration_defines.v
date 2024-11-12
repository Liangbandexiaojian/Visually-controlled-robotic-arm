//////////////////////////////////////////////////////////////////////////////
//           _____
//          / _______    Copyright (C) 2013-2020 Efinix Inc. All rights reserved.
//         / /       \
//        / /  ..    /   ddr_cal_defines.v
//       / / .'     /
//    __/ /.'      /     Description:
//   __   \       /      Project definition file
//  /_/ /\ \_____/ /
// ____/  \_______/
//
// *******************************
// Revisions:
// 1.0 Initial rev
// 2.0 Increase rom width
// *******************************
`define DDR3_X16
//`define DDR3_X32
//`define LPDDR3_X16
//`define LPDDR3_X32
//`define LPDDR2_X16
//`define LPDDR2_X32
/////////////////////////////////////////////////////////////////////////////////
//ROM Parser Block Configuration
`define EFX_DEVICE_T35  	1
`define EFX_JTAG_DBG    	1
`define DBG_I2C_REGSELECT_SIZE	9
`define DBG_ID_WIDTH    	4
`define DBG_DR_WIDTH    	82
`define AXI_ADDR_WIDTH  	32
`define AXI_DATA_WIDTH  	128
`define AXI_DATA_WIDTH_B 	128
`define AXI_USER_WIDTH		6
`define AXI_ID_WIDTH		8
`define I2C_CMD_BYTE_WIDTH	8
`define I2C_TRX_BYTE		8'h5
`define I2C_ADDR_WIDTH		32
`define I2C_DATA_WIDTH		64
// CAL defines

`ifdef DDR3_X32
`define DDR_TYPE		2'b01
`define DDR_X16			0
`define ROM_DATA_DEPTH0 	115
`define ROM_DATA_DEPTH1 	31
`define ROM_DATA_DEPTH2 	2
`define ROM_DATA_DEPTH3 	10
`define ROM_INIT_FILE0 		"rom0_ddr3_x32.hex"
`define ROM_INIT_FILE1 		"rom1_ddr3_x32.hex"
`define ROM_INIT_FILE2 		"rom2_ddr3_x32.hex"
`define ROM_INIT_FILE3 		"rom3_ddr3_x32.hex"
`endif

`ifdef DDR3_X16
`define DDR_TYPE		2'b01
`define DDR_X16			1
`define ROM_DATA_DEPTH0 	103
`define ROM_DATA_DEPTH1 	31
`define ROM_DATA_DEPTH2 	2
`define ROM_DATA_DEPTH3 	10
`define ROM_INIT_FILE0 		"rom0_ddr3_x16.hex"
`define ROM_INIT_FILE1 		"rom1_ddr3_x16.hex"
`define ROM_INIT_FILE2 		"rom2_ddr3_x16.hex"
`define ROM_INIT_FILE3 		"rom3_ddr3_x16.hex"
`endif

`ifdef LPDDR3_X32
`define DDR_TYPE		2'b00
`define DDR_X16			0
`define ROM_DATA_DEPTH0 	69
`define ROM_DATA_DEPTH1 	30
`define ROM_DATA_DEPTH2 	2
`define ROM_DATA_DEPTH3 	2
`define ROM_INIT_FILE0 		"rom0_lpddr3_x32.hex"
`define ROM_INIT_FILE1 		"rom1_lpddr3_x32.hex"
`define ROM_INIT_FILE2 		"rom2_lpddr3_x32.hex"
`define ROM_INIT_FILE3 		"rom3_lpddr3_x32.hex"
`endif

`ifdef LPDDR3_X16
`define DDR_TYPE		2'b00
`define DDR_X16			1
`define ROM_DATA_DEPTH0 	57
`define ROM_DATA_DEPTH1 	30
`define ROM_DATA_DEPTH2 	2
`define ROM_DATA_DEPTH3 	2
`define ROM_INIT_FILE0 		"rom0_lpddr3_x16.hex"
`define ROM_INIT_FILE1 		"rom1_lpddr3_x16.hex"
`define ROM_INIT_FILE2 		"rom2_lpddr3_x16.hex"
`define ROM_INIT_FILE3 		"rom3_lpddr3_x16.hex"
`endif

`ifdef LPDDR2_X32
`define DDR_TYPE		2'b10
`define DDR_X16			0
`define ROM_DATA_DEPTH0 	59
`define ROM_DATA_DEPTH1 	25
`define ROM_DATA_DEPTH2 	2
`define ROM_DATA_DEPTH3 	2
`define ROM_INIT_FILE0 		"rom0_lpddr2_x32.hex"
`define ROM_INIT_FILE1 		"rom1_lpddr2_x32.hex"
`define ROM_INIT_FILE2 		"rom2_lpddr2_x32.hex"
`define ROM_INIT_FILE3 		"rom3_lpddr2_x32.hex"
`endif

`ifdef LPDDR2_X16
`define DDR_TYPE		2'b10
`define DDR_X16			1
`define ROM_DATA_DEPTH0 	47
`define ROM_DATA_DEPTH1 	25
`define ROM_DATA_DEPTH2 	2
`define ROM_DATA_DEPTH3 	2
`define ROM_INIT_FILE0 		"rom0_lpddr2_x16.hex"
`define ROM_INIT_FILE1 		"rom1_lpddr2_x16.hex"
`define ROM_INIT_FILE2 		"rom2_lpddr2_x16.hex"
`define ROM_INIT_FILE3 		"rom3_lpddr2_x16.hex"
`endif


//////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2013-2020 Efinix Inc. All rights reserved.
//
// This   document  contains  proprietary information  which   is
// protected by  copyright. All rights  are reserved.  This notice
// refers to original work by Efinix, Inc. which may be derivitive
// of other work distributed under license of the authors.  In the
// case of derivative work, nothing in this notice overrides the
// original author's license agreement.  Where applicable, the 
// original license agreement is included in it's original 
// unmodified form immediately below this header.
//
// WARRANTY DISCLAIMER.  
//     THE  DESIGN, CODE, OR INFORMATION ARE PROVIDED “AS IS” AND 
//     EFINIX MAKES NO WARRANTIES, EXPRESS OR IMPLIED WITH 
//     RESPECT THERETO, AND EXPRESSLY DISCLAIMS ANY IMPLIED WARRANTIES, 
//     INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF 
//     MERCHANTABILITY, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR 
//     PURPOSE.  SOME STATES DO NOT ALLOW EXCLUSIONS OF AN IMPLIED 
//     WARRANTY, SO THIS DISCLAIMER MAY NOT APPLY TO LICENSEE.
//
// LIMITATION OF LIABILITY.  
//     NOTWITHSTANDING ANYTHING TO THE CONTRARY, EXCEPT FOR BODILY 
//     INJURY, EFINIX SHALL NOT BE LIABLE WITH RESPECT TO ANY SUBJECT 
//     MATTER OF THIS AGREEMENT UNDER TORT, CONTRACT, STRICT LIABILITY 
//     OR ANY OTHER LEGAL OR EQUITABLE THEORY (I) FOR ANY INDIRECT, 
//     SPECIAL, INCIDENTAL, EXEMPLARY OR CONSEQUENTIAL DAMAGES OF ANY 
//     CHARACTER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF 
//     GOODWILL, DATA OR PROFIT, WORK STOPPAGE, OR COMPUTER FAILURE OR 
//     MALFUNCTION, OR IN ANY EVENT (II) FOR ANY AMOUNT IN EXCESS, IN 
//     THE AGGREGATE, OF THE FEE PAID BY LICENSEE TO EFINIX HEREUNDER 
//     (OR, IF THE FEE HAS BEEN WAIVED, $100), EVEN IF EFINIX SHALL HAVE 
//     BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES.  SOME STATES DO 
//     NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR 
//     CONSEQUENTIAL DAMAGES, SO THIS LIMITATION AND EXCLUSION MAY NOT 
//     APPLY TO LICENSEE.
//
/////////////////////////////////////////////////////////////////////////////

