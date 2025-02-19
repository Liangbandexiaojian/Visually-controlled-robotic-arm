// =============================================================================
// Generated by efx_ipmgr
// Version: 2022.2.322
// IP Version: 1.4
// =============================================================================

////////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2013-2022 Efinix Inc. All rights reserved.              
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
////////////////////////////////////////////////////////////////////////////////

`define IP_UUID _9d286742d58740f8ba05f896ddee54c1
`define IP_NAME_CONCAT(a,b) a``b
`define IP_MODULE_NAME(name) `IP_NAME_CONCAT(name,`IP_UUID)
module axi_interconnect (
input [0:0] rst_n,
input [0:0] clk,
input [1:0] s_axi_awvalid,
input [63:0] s_axi_awaddr,
input [3:0] s_axi_awlock,
output [1:0] s_axi_awready,
input [1:0] s_axi_arvalid,
input [63:0] s_axi_araddr,
input [3:0] s_axi_arlock,
output [1:0] s_axi_arready,
input [1:0] s_axi_wvalid,
input [1:0] s_axi_wlast,
input [7:0] s_axi_wid,
input [1:0] s_axi_bready,
output [3:0] s_axi_bresp,
input [1:0] s_axi_rready,
output [7:0] s_axi_bid,
output [7:0] s_axi_rid,
input [255:0] s_axi_wdata,
output [255:0] s_axi_rdata,
output [3:0] s_axi_rresp,
output [1:0] s_axi_bvalid,
output [1:0] s_axi_rvalid,
output [1:0] s_axi_rlast,
input [31:0] s_axi_wstrb,
output [0:0] m_axi_awvalid,
output [31:0] m_axi_awaddr,
output [1:0] m_axi_awlock,
input [0:0] m_axi_awready,
output [0:0] m_axi_arvalid,
output [31:0] m_axi_araddr,
output [1:0] m_axi_arlock,
input [0:0] m_axi_arready,
output [0:0] m_axi_wvalid,
output [0:0] m_axi_wlast,
output [0:0] m_axi_bready,
input [1:0] m_axi_bresp,
output [0:0] m_axi_rready,
input [3:0] m_axi_bid,
input [3:0] m_axi_rid,
output [127:0] m_axi_wdata,
input [127:0] m_axi_rdata,
input [1:0] m_axi_rresp,
input [0:0] m_axi_bvalid,
input [0:0] m_axi_rvalid,
input [0:0] m_axi_rlast,
output [15:0] m_axi_wstrb,
input [0:0] m_axi_wready,
output [1:0] s_axi_wready,
input [7:0] s_axi_awprot,
input [7:0] s_axi_awcache,
input [7:0] s_axi_awqos,
input [5:0] s_axi_awuser,
input [7:0] s_axi_arqos,
input [7:0] s_axi_arcache,
output [3:0] m_axi_awprot,
input [7:0] s_axi_arid,
input [5:0] s_axi_arsize,
input [15:0] s_axi_arlen,
input [3:0] s_axi_arburst,
input [7:0] s_axi_arprot,
input [7:0] s_axi_awid,
input [3:0] s_axi_awburst,
input [15:0] s_axi_awlen,
input [5:0] s_axi_awsize,
output [3:0] m_axi_awid,
output [1:0] m_axi_awburst,
output [7:0] m_axi_awlen,
output [2:0] m_axi_awsize,
output [3:0] m_axi_awcache,
output [3:0] m_axi_awqos,
output [2:0] m_axi_awuser,
output [3:0] m_axi_arprot,
output [1:0] m_axi_arburst,
output [7:0] m_axi_arlen,
output [2:0] m_axi_arsize,
output [3:0] m_axi_arcache,
output [3:0] m_axi_arqos,
output [2:0] m_axi_aruser,
output [3:0] m_axi_awregion,
output [3:0] m_axi_arregion,
output [3:0] m_axi_arid,
output [2:0] m_axi_wuser,
input [2:0] m_axi_ruser,
input [2:0] m_axi_buser,
input [5:0] s_axi_aruser,
input [5:0] s_axi_wuser,
output [5:0] s_axi_buser,
output [5:0] s_axi_ruser
);
`IP_MODULE_NAME(efx_axi_interconnect) #(
.ARB_MODE ("ROUND_ROBIN_1"),
.S_PORTS ("2"),
.DATA_WIDTH ("128"),
.ADDR_WIDTH ("32"),
.M_PORTS ("1"),
.ID_WIDTH (4),
.USER_WIDTH (3),
.PROTOCOL ("AXI4")
) u_efx_axi_interconnect(
.rst_n ( rst_n ),
.clk ( clk ),
.s_axi_awvalid ( s_axi_awvalid ),
.s_axi_awaddr ( s_axi_awaddr ),
.s_axi_awlock ( s_axi_awlock ),
.s_axi_awready ( s_axi_awready ),
.s_axi_arvalid ( s_axi_arvalid ),
.s_axi_araddr ( s_axi_araddr ),
.s_axi_arlock ( s_axi_arlock ),
.s_axi_arready ( s_axi_arready ),
.s_axi_wvalid ( s_axi_wvalid ),
.s_axi_wlast ( s_axi_wlast ),
.s_axi_wid ( s_axi_wid ),
.s_axi_bready ( s_axi_bready ),
.s_axi_bresp ( s_axi_bresp ),
.s_axi_rready ( s_axi_rready ),
.s_axi_bid ( s_axi_bid ),
.s_axi_rid ( s_axi_rid ),
.s_axi_wdata ( s_axi_wdata ),
.s_axi_rdata ( s_axi_rdata ),
.s_axi_rresp ( s_axi_rresp ),
.s_axi_bvalid ( s_axi_bvalid ),
.s_axi_rvalid ( s_axi_rvalid ),
.s_axi_rlast ( s_axi_rlast ),
.s_axi_wstrb ( s_axi_wstrb ),
.m_axi_awvalid ( m_axi_awvalid ),
.m_axi_awaddr ( m_axi_awaddr ),
.m_axi_awlock ( m_axi_awlock ),
.m_axi_awready ( m_axi_awready ),
.m_axi_arvalid ( m_axi_arvalid ),
.m_axi_araddr ( m_axi_araddr ),
.m_axi_arlock ( m_axi_arlock ),
.m_axi_arready ( m_axi_arready ),
.m_axi_wvalid ( m_axi_wvalid ),
.m_axi_wlast ( m_axi_wlast ),
.m_axi_bready ( m_axi_bready ),
.m_axi_bresp ( m_axi_bresp ),
.m_axi_rready ( m_axi_rready ),
.m_axi_bid ( m_axi_bid ),
.m_axi_rid ( m_axi_rid ),
.m_axi_wdata ( m_axi_wdata ),
.m_axi_rdata ( m_axi_rdata ),
.m_axi_rresp ( m_axi_rresp ),
.m_axi_bvalid ( m_axi_bvalid ),
.m_axi_rvalid ( m_axi_rvalid ),
.m_axi_rlast ( m_axi_rlast ),
.m_axi_wstrb ( m_axi_wstrb ),
.m_axi_wready ( m_axi_wready ),
.s_axi_wready ( s_axi_wready ),
.s_axi_awprot ( s_axi_awprot ),
.s_axi_awcache ( s_axi_awcache ),
.s_axi_awqos ( s_axi_awqos ),
.s_axi_awuser ( s_axi_awuser ),
.s_axi_arqos ( s_axi_arqos ),
.s_axi_arcache ( s_axi_arcache ),
.m_axi_awprot ( m_axi_awprot ),
.s_axi_arid ( s_axi_arid ),
.s_axi_arsize ( s_axi_arsize ),
.s_axi_arlen ( s_axi_arlen ),
.s_axi_arburst ( s_axi_arburst ),
.s_axi_arprot ( s_axi_arprot ),
.s_axi_awid ( s_axi_awid ),
.s_axi_awburst ( s_axi_awburst ),
.s_axi_awlen ( s_axi_awlen ),
.s_axi_awsize ( s_axi_awsize ),
.m_axi_awid ( m_axi_awid ),
.m_axi_awburst ( m_axi_awburst ),
.m_axi_awlen ( m_axi_awlen ),
.m_axi_awsize ( m_axi_awsize ),
.m_axi_awcache ( m_axi_awcache ),
.m_axi_awqos ( m_axi_awqos ),
.m_axi_awuser ( m_axi_awuser ),
.m_axi_arprot ( m_axi_arprot ),
.m_axi_arburst ( m_axi_arburst ),
.m_axi_arlen ( m_axi_arlen ),
.m_axi_arsize ( m_axi_arsize ),
.m_axi_arcache ( m_axi_arcache ),
.m_axi_arqos ( m_axi_arqos ),
.m_axi_aruser ( m_axi_aruser ),
.m_axi_awregion ( m_axi_awregion ),
.m_axi_arregion ( m_axi_arregion ),
.m_axi_arid ( m_axi_arid ),
.m_axi_wuser ( m_axi_wuser ),
.m_axi_ruser ( m_axi_ruser ),
.m_axi_buser ( m_axi_buser ),
.s_axi_aruser ( s_axi_aruser ),
.s_axi_wuser ( s_axi_wuser ),
.s_axi_buser ( s_axi_buser ),
.s_axi_ruser ( s_axi_ruser )
);

endmodule

//pragma protect
//pragma protect begin
`protected

    MTI!#?X,]Qe$zh~{YmYBlT7+-7oYmIwjrG,A0'm=T=@osColE^o2?@,l#'\<w=J*vWx{nR_5$zvB
    p*C;A<'k$_rPlwJ#*+[[o_n=['CW!Ul$HUlIH-BA=M5K]\?^m5+*)_Cux}Z2EY{EJ'Z^iD@Qn[HY
    Rz$#1,<pO.zDZQvaBQ+X<~Tao{eswT[5r{=]UeW9Gru1iHe']'m7D3lDLAaVT2RI=trOn=r^n;D]
    ]Wo\E}=ZO^}'3<d_{[nBwQVp!Q}RGx?{w^r=[;J~HJ+UwW}$eBRX5<>QQWoCo5[F1>-V]Opmuvvr
    K=lQ-rm$YG\58:@UJn$kuRKNTjvoTDT?Ii{@[!ur=V!Ul^oGfrQ#_Xr=Af}psK=xCl$]$3OAa>]D
    +l#UwpoR3v?x\apW{}p~sn/AG3{<UW-B'*K2<G$<HT#=~*17xG>e<,zV>N,k!2uElT1m-x~zC7Q7
    HaqKHuzA{v\ieX#[.Jz^,?*'rwEIp+=*QxZeJr#Gsj'nB^zQ'O11wY*T^;Yz$fsgkl@#{O!p;};{
    d!RmT}?Y+|rs-5C{@*H5;JmCjT_-5KJEBrRD{Czkmuwoz"DR<s'B[x=AKW>$YQ(-\?}C>pw#pw!{
    '+rIrv@Tlsu>|J=[I~V}^aT;\r#Y#$^]~i]^BO,r=ioDwe}K3.QBl~C@!QjlaB==1xx2ur;HYTVz
    A$zD=T}=m$$GW;]B]5K55s[2!7WGs2;ne\,2nY@w^Z;GkuT{2~^7^3-T$@UCmkw5{G_OA#:maZO|
    2Y\O;o^uDIJ3$;$a1D2WajziDk1nviAx#B?<s_G<{[DWxe>]~[U]\\wj3Yo-,>>B*^i-!GI#^kvH
    |1?+EPH$uzIn-#i9kA~3=;_BTY1G+D,Y]BZ#1AB?*s++Z7?YClC_^OYQrDCH,5#=!>}=EHDk-l7T
    *~5[.Ivw1'mO#\_,G_KKGE@Xj7-1ZnHpQ^B&x+x[=@*~BmwB\ol'?}e]?C1Ec_?<_G2EO#U[>fp[
    aG5EivB@;#n7A?IjO]J}H$+QQ-:BXaVJYjXRkpGrGQ~'@r?%WUR$k>Z[B=V7D@7oDKvVo_?l-D{#
    ]l{]3=}O^2[_T_?*$TuUjG\'zl?=$'A[>G@j}-A~Q:JCJ2JG7AQu=rE%OWlu[}j_cV;QEW^{U_RW
    >3[QW}mD@as{p\5[=Yuj^7~]kv_YYmvQ,5KeRw}Cowr<D]7W]wje$2wJAGz+GoGI^,}_IRw}xox\
    E$B\5_=pi;_V5uru,=+VvU*a]o>ex*j{E5u2~J};]kl*?C={~JeOz%Z\!le;vTC_Q?UxCWDjQD#H
    s]#X!u;eYRiDI_D>seu}}}B:-Cx7\*o$[HaBpIu}xB]-=k~!NeU{;p=2r_$2AKGkQf-G-I-Vnv+'
    Y_6z<s=8?r?r5@!oaH+@Bw]KIu{EQiQah'bQG_Yp$#}jn_vD_Oj7_o,+{Ger~Q+\D1k+o+ZOODse
    Oeu{D\+B#-sCnT3^CjI_m'Yl@sH#ln3OK]kC@aZrso<Vo]KI*Y-122wF3};r>Ek?RQK*OQws}7,@
    QHm,4GQp7*w'1AQjErY\-Q+!osT*uvK-]i=avevACCn=n+w~3VQ#J72VjHY]\IoI}ZIQKs-BW-e!
    $;5.<}2l=-pia=*CORO3\ADTf?DpW};aBm{rT_^a{@BRBS[Nd]7C31v*YEZC{UnsT^)?=-Ji'#[r
    kA1Kr7DJHmjW<@JT7a]X$}~cX8<E?O;n*^^lIu~$$3,H\r6x}#UX]*,VImAY?3U$ZjsK=CHG#!r1
    awm]sHWPoC,+o*Ce5J!n#lYZB:G~\DYOiW$3Y+D+IKAX{Z0{I<2Dvi^12GA,vn7JIG7Jws{*;R1>
    _ZCmUV7D'Wj*RvaB33Ex;Ae6Ye5?;o@uBz\RR5@xe'U;jQWe;+xWBw*Z3v{[qkXn3SQJZ~=3aoZR
    7GP}*H2_zneiEXCUOi{$+}^B@<n<DwsuTzxG<mefCO$@'kXkr,<<vz=uDB_ZH'^B^1]UD^D@^vow
    z!n?J+^[S3Gxx$s\Zz]-ZO=V?sBCUD#ZUxEY=%j_Qz2]!='AEj$x_rp1[ix5DnRilYI*!Y>I+<4A
    v<~l;_kgj\1u.#nJz_OaHxCQU}#p]hk,J3pBlXx1V]BZD<YG7r2^mJ1xp!I>IIRpYplT1T4x#@Ur
    Cn]V_;K3O@WYn{a,I!emaHnx5-krOlvYz{5<lCG!Tx_?<KeeV<G@*l@iH~Urr$a4CF_,2@+w!<m\
    lvXY{XA1zJ&l7V$z2HUlZxwIaneu-B,%?]Cz<'=lEUxWYT_IQ175>{I?'iwok,+H@O@X_HsQy7+[
    JE=I$Ro-w[5R2s5Ta,ViUVKuQAYU?Y><]Y_Xu9H$<XVHK5OAnx*5~$$B<Ido-so[UH*7'jCV.Vjz
    x~BR}HTm!DT@QHsa}Dz-~?C+Q=$TT~C^osUV^p2{VRQ!C5U7+!BA^zu^]'Ru?lJAJ!O~\j]a>$Ao
    ?>zo'IZOnxme^v<wHWas}2<=E]IzK1[m''kU~'7\HjBH5ZU\^wa*#Cem3m_>EeOAJ_o~eEKXRsUC
    YQv_EXA{,X'Au1[^;{v+[rAx_olHjen1Z{_YajJnjQirR?p\zeuujuUDvlWpTU^-I:J>Ou#>jjC+
    n581vR<sk7'$x=_;zZ?7}]+^m_}1'O]JrzXp1;I,vwRGY2\\w]!*^$]nzu$=ex3O$a]HvQrA$Zn5
    OB^FFQZa7Ta$$&>{7v1vujTH*a,ZVncmOz\oz=\p~\3QB7,%z3!^uOBZ[Y5{|^_ke=e$P0*z$5{[
    <>_4O!ej7\Zne=?$@$H$?,jTEzkeA=ew,{X*7C>^Ii-JoAY$ul_@^?a,2I};m+Z[!=UW(CX5-bB\
    x<(o\YT\!Km}i{n?nTvsCT
`endprotected
//pragma protect end


module `IP_MODULE_NAME(efx_axi_interconnect) #(
    parameter PROTOCOL        = "AXI4",                            
    parameter ARB_MODE        = "PRIORITY",                        
    parameter S_PORTS         = 1,                                 
    parameter M_PORTS         = 8,                                 
    parameter ID_WIDTH        = 8,                                 
    parameter DATA_WIDTH      = 32,                                
    parameter USER_WIDTH      = 3,                                 
    parameter ADDR_WIDTH      = 32,                                
    parameter M_REGIONS       = 1,
    parameter M_CONNECT_READ  = {M_PORTS{{S_PORTS{1'b1}}}},        
    parameter M_CONNECT_WRITE = {M_PORTS{{S_PORTS{1'b1}}}},        
    parameter STRB_WIDTH      = DATA_WIDTH/8
) (
    input  wire                           clk,
    input  wire                           rst_n,
    input  wire [S_PORTS-1:0]             s_axi_awvalid,
    input  wire [S_PORTS*ADDR_WIDTH-1:0]  s_axi_awaddr,
    input  wire [S_PORTS*3-1:0]           s_axi_awprot,
    input  wire [S_PORTS*ID_WIDTH-1:0]    s_axi_awid,       
    input  wire [S_PORTS*2-1:0]           s_axi_awburst,    
    input  wire [S_PORTS*8-1:0]           s_axi_awlen,      
    input  wire [S_PORTS*3-1:0]           s_axi_awsize,     
    input  wire [S_PORTS*4-1:0]           s_axi_awcache,    
    input  wire [S_PORTS*4-1:0]           s_axi_awqos,      
    input  wire [S_PORTS*USER_WIDTH-1:0]  s_axi_awuser,     
    input  wire [S_PORTS*2-1:0]           s_axi_awlock,
    output reg  [S_PORTS-1:0]             s_axi_awready,
    input  wire [S_PORTS-1:0]             s_axi_wvalid,
    input  wire [S_PORTS*DATA_WIDTH-1:0]  s_axi_wdata,
    input  wire [S_PORTS*STRB_WIDTH-1:0]  s_axi_wstrb,
    input  wire [S_PORTS-1:0]             s_axi_wlast,      
    input  wire [S_PORTS*USER_WIDTH-1:0]  s_axi_wuser,      
    input  wire [S_PORTS*ID_WIDTH-1:0]    s_axi_wid,        
    output wire [S_PORTS-1:0]             s_axi_wready,
    input  wire [S_PORTS-1:0]             s_axi_bready,
    output wire [S_PORTS*2-1:0]           s_axi_bresp,
    output reg  [S_PORTS-1:0]             s_axi_bvalid,
    output wire [S_PORTS*ID_WIDTH-1:0]    s_axi_bid,        
    output wire [S_PORTS*USER_WIDTH-1:0]  s_axi_buser,      
    input  wire [S_PORTS-1:0]             s_axi_arvalid,
    input  wire [S_PORTS*ADDR_WIDTH-1:0]  s_axi_araddr,
    input  wire [S_PORTS*3-1:0]           s_axi_arprot,
    input  wire [S_PORTS*ID_WIDTH-1:0]    s_axi_arid,       
    input  wire [S_PORTS*2-1:0]           s_axi_arburst,    
    input  wire [S_PORTS*8-1:0]           s_axi_arlen,      
    input  wire [S_PORTS*3-1:0]           s_axi_arsize,     
    input  wire [S_PORTS*4-1:0]           s_axi_arcache,    
    input  wire [S_PORTS*4-1:0]           s_axi_arqos,      
    input  wire [S_PORTS*USER_WIDTH-1:0]  s_axi_aruser,     
    input  wire [S_PORTS*2-1:0]           s_axi_arlock,
    output reg  [S_PORTS-1:0]             s_axi_arready,
    input  wire [S_PORTS-1:0]             s_axi_rready,
    output wire [S_PORTS*ID_WIDTH-1:0]    s_axi_rid,
    output wire [S_PORTS*DATA_WIDTH-1:0]  s_axi_rdata,
    output wire [S_PORTS*2-1:0]           s_axi_rresp,
    output wire [S_PORTS-1:0]             s_axi_rvalid,
    output wire [S_PORTS-1:0]             s_axi_rlast,
    output wire [S_PORTS*USER_WIDTH-1:0]  s_axi_ruser,
    output reg  [M_PORTS-1:0]             m_axi_awvalid,
    output wire [M_PORTS*ID_WIDTH-1:0]    m_axi_awid,
    output wire [M_PORTS*2-1:0]           m_axi_awburst,
    output wire [M_PORTS*8-1:0]           m_axi_awlen,
    output wire [M_PORTS*3-1:0]           m_axi_awsize,
    output wire [M_PORTS*4-1:0]           m_axi_awcache,
    output wire [M_PORTS*4-1:0]           m_axi_awqos,
    output wire [M_PORTS*4-1:0]           m_axi_awregion,
    output wire [M_PORTS*USER_WIDTH-1:0]  m_axi_awuser,
    output wire [M_PORTS*ADDR_WIDTH-1:0]  m_axi_awaddr,
    output wire [M_PORTS*3-1:0]           m_axi_awprot,
    output wire [M_PORTS*2-1:0]           m_axi_awlock,
    input  wire [M_PORTS-1:0]             m_axi_awready,
    output wire [M_PORTS*DATA_WIDTH-1:0]  m_axi_wdata,
    output wire [M_PORTS*STRB_WIDTH-1:0]  m_axi_wstrb,
    output wire [M_PORTS-1:0]             m_axi_wvalid,
    output wire [M_PORTS-1:0]             m_axi_wlast,
    output wire [M_PORTS*USER_WIDTH-1:0]  m_axi_wuser,
    output wire [M_PORTS*ID_WIDTH-1:0]    m_axi_wid,
    input  wire [M_PORTS-1:0]             m_axi_wready,
    input  wire [M_PORTS*2-1:0]           m_axi_bresp,
    input  wire [M_PORTS-1:0]             m_axi_bvalid,
    input  wire [M_PORTS*ID_WIDTH-1:0]    m_axi_bid,
    input  wire [M_PORTS*USER_WIDTH-1:0]  m_axi_buser,
    output reg  [M_PORTS-1:0]             m_axi_bready,
    output reg  [M_PORTS-1:0]             m_axi_arvalid,
    output wire [M_PORTS*ID_WIDTH-1:0]    m_axi_arid,
    output wire [M_PORTS*2-1:0]           m_axi_arburst,
    output wire [M_PORTS*8-1:0]           m_axi_arlen,
    output wire [M_PORTS*3-1:0]           m_axi_arsize,
    output wire [M_PORTS*4-1:0]           m_axi_arcache,
    output wire [M_PORTS*4-1:0]           m_axi_arqos,
    output wire [M_PORTS*4-1:0]           m_axi_arregion,
    output wire [M_PORTS*USER_WIDTH-1:0]  m_axi_aruser,
    output wire [M_PORTS*ADDR_WIDTH-1:0]  m_axi_araddr,
    output wire [M_PORTS*3-1:0]           m_axi_arprot,
    output wire [M_PORTS*2-1:0]           m_axi_arlock,
    input  wire [M_PORTS-1:0]             m_axi_arready,
    input  wire [M_PORTS*ID_WIDTH-1:0]    m_axi_rid,
    input  wire [M_PORTS*DATA_WIDTH-1:0]  m_axi_rdata,
    input  wire [M_PORTS*2-1:0]           m_axi_rresp,
    input  wire [M_PORTS-1:0]             m_axi_rvalid,
    input  wire [M_PORTS-1:0]             m_axi_rlast,
    input  wire [M_PORTS*USER_WIDTH-1:0]  m_axi_ruser,
    output wire [M_PORTS-1:0]             m_axi_rready
);
`include "axi_interconnect.vh"
parameter S_PORTS_WIDTH   = clog2(S_PORTS);
parameter M_PORTS_WIDTH   = clog2(M_PORTS);
parameter M_BASE_ADDR_INT = M_BASE_ADDR ? M_BASE_ADDR : calcBaseAddrs(0);
parameter IDLE        = 0,
          PORT_GRANT  = 1,
          ADDR_DECODE = 2,
          WR_FORWARD  = 3,
          WR_RESPONSE = 4,
          RD_REQUEST  = 5,
          RD_RETURN   = 6,
          DRP_REQUEST = 7,
          DRP_WAIT    = 8,
          END_WAIT    = 9;
//pragma protect
//pragma protect begin
`protected

    MTI!#ZY_a^,+?Rs1^GjDpr+!m?s'Z0K{]@x50hQ]2[IuW'h!5=?~,2}7w!Ru'#2U5OTvH@1colIG
    pz+#T'?=N}YA!}=J+5kH~xZoeiAe7D!Ii.D^*2E7VOOxji\1{U?_Al0<x1kECH+lV[E=C#DHO;$C
    5^7L=COBH=T<Za<IIAGBI3rIie\C=-3Ki+=p{{p!I_=;ICZ,5_51ZUE+uRJ$#a2C5z~!<RV^Tar;
    YpB^rIG@)7{Qv[Qrp-w\!Qkl\3azeOx21Gz5,vouaa1[r3C{^^#D>zK$'ZG^$C[Hr!o;Zae!1?$K
    $Y@XKr#l!u+CXBa,rCrK<BZXDSmjr~~^Q,Guw,?5>{=Y!;QiA<m'zv;a=w's{v=-m=nDjw>B<m1O
    K]VXYEQl?k\E]'5Y=ze^ERbd1I*$BJODWevmhXn,$Xsp}B3-[$r?'kjx@z'm,ZRm\<X<-]K]]p1l
    GxwKxy5][5o[<WBp]uGY;aG!Cm=uw+aQ\i}T}]Vx'2)-jnRCY$2,ZnG]enJop\aRm5p^Ov<!YzJ;
    \TXb?v}mU+^oz[{]#NI>sw_z1A^1'7rE*r;5~s~QNC[XCflH2#2VR<]n2>^lC@sj,zQe~Un&-_w{
    w>{Cmw}*}Bo]2VYW>I$#ZtDpo~p;D+<wT==C~zGmU^A^[z](TU<I^=k$'7wQ]ZQ]s?^<-EoUC>+p
    ,OTQ5?A]Q*u}+-7151jmm'aUm_UJ[o\ptZ[a?(rl21I^k\'JRX1{o>]WWBei3nvz3+W_AkTwUk,,
    <~+G\Ea]'E*Z{a,uQ>][YVww_EJGxQM_X]2e>X=@sJ_"U_JG<Is]>]#Op;]G6=+H_A__n{15Kus-
    QN*{\Q~HHJ+G>}f3$jG-TU,1_~kD+l}k_e3^~Yrv<Y?][5[iTrpV,m{1j-3_'e,\kX31EmQzXp'B
    \D*}Y]D;NQ<e=6Bx;{1[=eTEYzezZ}Jn6\#XI=#V<X{v-%V=?<7^_Hy)[Q]]}+$<zz1T|}xB_sxA
    o6GTI=Xs{\xs${zu{OB6}^rB1n<{jzw=k_;'*$z^VM$'!A~GoYpW+J!HEG$=^^$#BWi_<@_jJ'vC
    zsUsz}7aExoi{3CwA-2An*''~^lO[$7H~]Df^z$REz?B5WHJgDzBY|D*k{k'=\^V@7y1OlG?[>mx
    #a;KE#w{rmKwDK~iCsovGk3?r#r=+*nrDEZ]{${eevjrRo$LuH!@Y~+-Lze5ZhVXlll?B{lm'Tw5
    KajRO{3R'\r3<EIl<AX=J}y7K!Z&{TE~rR5_j~GrZ>RE>=W\<E[U+R5\4euDmn{uKm-GujW,i6ND
    ]$V@_E3qmBa^YseJei^2<A~<zA@z1E!^8R'-3Uw-}xGUpu1+Ws@z{/!A,>Id&EBTnfDO~3{ViC[A
    jIOoK#xQOmt>zQ1iprZ_un72_}l~R%xVDYa|^$]^*z3Dk=V?j'#'vp$OLQ'V~E2a[UUBizH'5ozX
    mQB=[,UJTv3~HE@vD'Ej1^^m{RJu-vps$3]C#RnQ<GAsB;wv{;]i}<nz<@eA\ECD<53\\aD;^$xH
    D1=uTlppRhOiuu7~_uV'#+m<RapJuY5k'+*HuKxY?^R8Y*1^<xnE;^iu\i!;L?^W]rGl'>UQ,qoW
    Y@w,,=yj$px'HB>b$e]#/sDzYq/*25=nn<z\X][_D1IaU3\kwCxCmBiJU\]3H[]*QDT}]Qj+';X=
    %kX~*o'ru[j?o^an1[s=Wp-x~Y*k?TB\rs*BV]VxlHo^WBn;;j={3Q,r,seB!EGOj7Y=jwC{I1}o
    A,#4I*>r;]roTG!xORZ<(KTQ$,"QzavI<,xvkKYQ\Ao,ss?>{[A#DpYBiUDj-jn]}k!Z-1WIRf}?
    w{Q\[sJ^]{DoBo3--T'}XXyvAKn:-\pGWI=1]*AuHEG?nCrz,{-=Fr}EvsY+@ioI3pAK^rwls\2T
    1Ka~o)l#jmnCs!_{C+^IUC"kommp@5!73>'OFrO?*S:RWC*eEzJ_U2nA}]okr?OKx~W1zW~HjrDe
    O>x#OJ7}sz^r<H5<eTjsw,i'QgI\-GRUQAX_O'[}7wRsU3k7^T}@R2(sWED2\zUB7QX1,>E6;=![
    si_DL?1pn*+*ipYxkrAKEdPHEs5iR$#!C$?nV#5'Ql=Uxje^uxRsm5=Xz+xmV{DK&oE$5KX}'BwE
    v*?GYW{$!K53p<{=C<CG!<or\JjQT:b2YE_7rO{<+oTw<Gl!qpHEp%o-YBU\'$05ovEs>VpzhI3$
    ;e!'^x'ECu$O=vyr-OpY;1+^3m7I5AYE*}Ci><@pJE=B$Hrf;p$DJao-dC1[''\Y#i}A?YspRCx<
    A'ulKG~=Xmz;o$wxJI$r1TjXZ'2xWH\ep=7JCs$7[Dj]TJs_}dQ>V,cvjZp%JDX~Frx\UN,jO;^Y
    }klO@;^[-C6T'[3};OIC]Wr6r$pewRB*WsY'-xQ?mE>vy+p1lrElx.nolxsZQ[_eYw1]T*ZBv-,K
    Y}-G+Xp1OlH5mOGI~u^sR]8%V_IJ51nQ\gOw$;9oTIB$\-UjpO\|nTuuEPoBBi-1!QQyi$_CMi<+
    aXH>SRCExB-sJ]1mnjG=sDk^Xv%-E=r\$~_u17Im}jTajn^}moTj[e?-$JGJBlk>_HseTx5TDu3#
    wG@r,XBx#{W_=KE#v{T;*]oaQV$7!Da^$*UJU-QZC<Bo\^=a*u{UsjH11_w.;\p,nEe_)flF^YZX
    il\7R~aA=!=ljj'$-oA?b}BD\\],io'pw;RxVXSx\{[U-uu5RI,UoOEODwCn<soR?jEVl@<o'A=-
    $aUD1av17ijEA^ATErE522W*\kVveD_'pxx};=;_KrZg"v+\Q.C{v[w>D1ru{vR{x~j2=Dr{]Y?{
    lnD$Ox?_A+~C-!OkC~kpj@r^THGI3J{I-I!s3]!j?QklnJoz5+=x]Ass1oaa*r@AyEZ\}QlWseCu
    ?%ftmUzm<_-OiD\e3X!CrnZsG%(=J]GJjSD/XDOuER}e#j5R~,!],&RaZrAREr6S[k=C|#ra2K]I
    J,-aoJoUI%y13'sZvvE;GXnOj\nI^e]rODj,v;V7#$Dv2;_Dl<oe2YxT5*j7WImQw*#rUJuIi31p
    n,IF<5+=oD?OD5@;H(JeixQz~}n]'xrUn+,Up=>VrT7P!'#$~7UJA>*nzls~4?OmxpY-7T1,3=?z
    s-*H;z=@HVe-Vi-XR}#<D(EPXnXpDZC@~wBo>Yr}7Hxo=#>KB,IHQ3[TseKG)-GAE_*B;@{Z{I]5
    7TBmxD!_AHR^#m<$IIR<k12VWopZ?,_,-<CZDljwnka3DZs>7J<J+gC-a#*xD75{O>Yr3QxlRE7}
    vz<T*RC[!Jn}I<kO~sI+-2n=n],J5]q{HU?)z<_]9UGKpv>,aCx#5xoDJu-{[Q^a2=dpAW3Di;?t
    om+kg_uDX[3zjBen5(KDo-@A~eVmJ?mCBCjas'*DBE~rwvFRuuapKX*<>\7$pX]l*Q$$Cl$xXIeT
    \vK1!x1*k)U7*RsJnrxODVj5GiT<Q?[t~hAj,V==;-A]2^I5pu\An;^?Q{e@DU3]JG5A_!RAn{T}
    !H}];BD>A!m+Zr?*wvTskpX_R{_+*B}o3Dtl|pO>}JUOzr*nrkHH]i\p<[<|u'kn2lm}BvV~_!=Q
    Rw7HWlW=JwW'B><}#AT_Iu*@'5z@D565\Y{XAsv\@3[tsv{\yopiYCaR#[w<+VDT!t,B7+=2e-?z
    '[pXv[-TWnIwQ7NJC^*%?ev{^?ODKz+U]W\3un]i*K~pEl,<j<o8~>aabZ'e'p57D_R##}ADjR7{
    u\!l^#5G<;-mn1=$7*lOk$'R?mX\,C,l{*n>#BZV#&*BEZY[35WoVp^m\*.nnX~L}2x^$z=Z@o+{
    'BR;Kj1s&7op@i{!Vu5k^EjuUSoO'T>Du{R[BHCI]]PlRKwuV@H=C3]7n2G:7Z-x=uKEaAB,GuBX
    ++}x_,aH's1#c*aoVs3x@jAEzzQ<77H~O#*^uE@5Y^Y;*_=o1E~@lj@!A,kYV?]YK+,7oe?<zp_v
    ]>pklTwZ@IuO!$D#kx]D7o-C$_x#emw_'Oz@rJ5a'TU]AAQ^!De?[~Yw*3rKB"'a>_=?sCxD1Vt1
    k}esR!+!]87QkI]a1AZ\un}~<E=ZXIc~[}<CWJCT17p1'esHA!e'>=~@G!;pYxZ\9)~v+;k7*<vk
    n'*E-O;jiGB2u#\VZz3,paej^ooDx@J<EXrX~BH,V3D,ZCA>_\Y{D_/8nH3!_PR<\ehVTjK%A\A1
    1*i}Q[V2IVnBLcygrOR#anO$2EV=prxn$~Yo7w.I<}]ulVnSljAx~s-BKR[~lCm+71or${r$jK1u
    XB'!#BGBbE7v*T][ZJ-$RmavjQep<VkAQj[Wobz{2U^ojrY-ua4I'z<lIR1&Im5@>.,=W]=DDQC?
    AzG?O#vQpp}WG1Y!1s5aU{l_TT5fXG^,raYi';2';Ce7a-1sH1-p=vVx'>*UDpvw5#VDD#+pOQ*Z
    $%#awr>X;oROIWsU,B+{K{ZH2-L@XzeYe+VAVVr5?YeaD^O?Dlx#=IE_Qk;8Q'<usJK@Qmv=TO>*
    is}w?[3ERKw~<7[w[?qy#r1$R[2WXB{vQ\37FV+Q[H><vkXB3m[WOGnnA+CWl1R[aH\[GlpVp-I$
    ]+vI275]'w$*JwVV?#1Ck~1~jpp@}dk=aYxZVmht_[@um'7i7UzYA^{Tp+u2_I-#Q#J*l^_iGv!*
    ''!!E{'XBuT2]*TnlT^^=J+E}*K?1;{xk+!njKasO#{juRn*enHCL_a^o5-Azk1mA(U]JGv;j1k'
    K@1*RG/>jlpl!VIYvYn*slUA-A5e9tGYwX=nz?r;vZon{wh?DaQ7M\Y5'3]JoOd~*]7rBij9,?eE
    CEQ!7.DQkuZ<]uH+'I#o~w}<w~'jRO',BKKA5ex2J='a\5TXY2ekUQmUO3,T=rUsZuR,siUHviar
    <3IY-]CXU=re?7u[WkdCWZ#wQG{5Ge_I?X7*|eRvOYpo=@'A{HBWZXE?AVE?j)RyMET]i]Bv3Gr+
    G]XX~HE'X<eV^RHaMC+Gk}HAv@_G1lljAJ{=p7{Z-D=3^rOEza7BKW$T;G=5KM{QKxy3'xj2=i#Y
    Gz2JlD=@Ym_H'3!Jvs{RA*$jX$u},oOreJ\l;[OZRu<!r{][7knurY'}iDZ?Unlx!6mreurJOBn'
    ?2XCo+T_*kzCY~a',DYD[K@j=1p7-\1Ie^^GxeteBoO2RpX=i\D<nGi737o!l%6vGamEol;^2E!S
    ;AIY[r+A,53,lxDB$QEIV{B-E>D};YBo\BVYQ{@rT*xi|=<m+1#{r{CaK?Xuelj!@@x,H!}op\T!
    QvIZu!'XKB}jpa*za,_G@J=eC7ApDUs?Of7UlV5#><<po2I*GvGOHln<Jjc-<E;7Vme$mJ=]Y3Dk
    wQn+TTTfgIijI'H_*Y;xu=*[~'iz_5'?13V~-<]aBxH!spuvJ1SOa*Ww{e^NJD]w,mwG\A~BTUw^
    ;&:$YUJ4VW$Ii=Z3BW,+oxs+511@E$-nn|+ri{HaQncC?H$Ommlpx}EeU\Jj?}\u1XZQ}U3(HY]2
    InC]Cno{IvrHT^Q$mXW]<,2Xv_ZT\7pOnH=<vuV?pr;G'j'V;Is]OK*=V}w-O!D-VoAk++*>*m=3
    {epKUYDTBYY7^WU\>z]DPYhR=_J1\xGCs{C1]ej}R[OAvV*2]pH{Yzkwn,kH]A;YHCeZ][j}RcA{
    }{>V75'',3$\Qp(w$YzTE{Kg-HADWXr_VXBR}#QJ#o?<VlH']D<W2xO'cj;mW'%un;KRe$#i(:$=
    ~;(C}n,'iVeYopC#E*WDpi!;'ap{]ROBH*l_RXa>1nDp\}sCHBeXIp-r,XG@a]~^mD^\C,=V2[ws
    Z-[^iBCzX-*aj@EOJ7m/GH,?2C<jnQi_v<eCM]I5;]QHVQU3-DT+=JrwH\X*wBHs{O1DHk7Hp^Co
    \^Jvan+v+H=?KO-uz7eeQzDT>i=AO!XpsY1a~'O>H!OOp^CGEU{2}K[vY;&u^[Z>+uU$@rEnH^-2
    Rzxw+Al,W=x=JKju\!>[U71nx5x?B;H4Cj{^\Orz'+$zaQI}&2{B2gy\;QQ/oY7^HH+UJnz1wsOz
    lIl##7ATC@Be)R~Gn-77UlYC#=E2UCxsrIY-HXpEOi}E;wCeJ*}-nOKH]W<+3U><$Y=ll^Wmpy%~
    C^{V\OT^[Jvz1lTnvs-Z7kKYKs]R1jlIQ5{EEGZ:_W;-y[XwxiOZK{ns>sr*~eEIH*v3HG5\~m]\
    \lG]}}'e*Md.s,xs3^*oN'#+<-57$5[omI]_3u*2^#ClK]Rek#Ek<^I_~r]K*"On,]*RU!_[D{gD
    =e7<Y$sZ'7+*w3TH5^HGlbJl~j"+Hn<;l?D17e'i_KU]ODl[<GE1$jDyl<zE36ASzu!12jCvr;A#
    5$iz]mU23ERAZB?^p-3[+xC'$o+TEA>IU[G~m5apUnrTV-s[#_BQ'5?ZXO5].]H;*;<H!zia>n<n
    #oVxn<+75/={GeAR-*5'5zOGu@2B'3s@G[-R#B@UI+DmnK\sZU,#!~a,^,~VU'KIK[FwVV3-xm5k
    *G>=l@+{.5Ajl]Z$etRm5H-Ep~nxke]uK^K^#*^wDlO+E]jZ@zkH_>B]ZGAOi^M?U<A>za!RY;HF
    fZ^jpO'*=]O[\SJOUVl5{?uLQ+I2{z]aOxIJs@vWX{\3'Y-$@};]G',<oODxq1VTxC?{ou^<;g;'
    ;T]2]^y<[GB3Uv_w*{u5^b[QZzn_\-[~er=~r3G[@EU*R_B3XDe<2W*RD1zu^ojCXRVQ+7E-=k$i
    mXP>znIITWm4!=WoITQ1]T}_,<xZ~U\wHGElTV~V}GO<HeXv@pa}>o$HM})RJ5p2p~lu+OQb_7~p
    Im^>*-rDRuY5}KuBx%qm$XX]^DJ-<R'A_[-z8eHT^_inR5uT!m-+@9\O=l;UrjYID[brsp+a]~!7
    rG!l<!mTO_x[~RXsAJoBK'!!,zIiR\$BUWnkCnQv_CETE!->Ox'#RK<[mVU}jlY/RKH3vo>Rk^@V
    YJXUE~H3r#_*'TRmi[uwCXJ}D>zKVTWv13,+zR#Ive$U~5*>r[Z;OZOUw'xEc*G{ktKs)W{aXBCZ
    2a',$*vvD3a7=@,-#{]kD?wJ~X5,]zI>[-<BiHAH,[33_-$3'6--\m#r2GnXTC='Enzp#KQjiZF-
    ]5X\,?{]QR*jyTO!vbBxIZ95Z_ao@~mdCOEAj;n2t!+2uV{!Q'MmSx!!oGnw[fo*u\='3+<={[b?
    -[iT12C*2X}<V-}%B_#D\s!w7jrpf_!^WGx\--Dv<TrG@EOlv%}#7E++GHSCzU;3${x8\W\@o&uD
    *\"P%OY^1k[u
`endprotected
//pragma protect end


//pragma protect
//pragma protect begin
`protected

    MTI!#OO}lLY@sDv_{3k1RsuI~3E1V\1W*x\>B[QZpr=moQ#xl$luW;~*E#1*5{=u[l!xAvC{wTs,
    #am{_3N}mBz77?@}aJ35/o_n=['CW!Ul$HUlx57pA'_#oE{UK*Gxa!r#xTaj[rV!k{E}va]?=$i{
    Bj3w{pmD~_1]eeVQ][3~Q+X7C>=o{w=Z@!X5;,3'-zW*^LfEAa*"tT}pU{A!2zYiDm_zk]pl}wwQ
    n\11}*BRT8e7H~GpjZ=r_<}JvHCQ]]5{<kd+Vnsu<W{^i3W?o*vqBx=k,AJW_*euDl[[]'x#Ymn5
    {Dz_r2C${\z,Gx<3D?7Gc#C_1U$+Upv+DjYurDl=k$+WQr_7W({I2jfZ}p!70Ijn,1ae1'eil7T=
    >Xnjr*A[*RYA~#j]B}snk#v*psOU{K{>CPlvlA?U]O[nID|wDjGt\I{KpnEkNQ*#3KUaU7J$#(O5
    l7JXQH-o>[FE!E7-\~uB>![p|J-B!RkUu8?OrvYICDmle3Y?{_!z#?mo[U?j57[3\\']rJzmvsCT
    V$kwlB5i+1Lee$vEe}-zO,,)IOFl/O<KU55v$#}Dr6K$KO^Uo\zv3B}?nD7Gk*]Xv5?AJBD*'7^K
    J[reIKHj@s]nQmQI7CWrB}DX$[}rVI[o[Y#],G)lCWI1UH{,;EBmz\\VVi#j4emwUy0rcI[v'<\'
    n=_'+v$k}=oKQtiRk~V^n,XG;,&Cs{''37xm\iY!QiEB<AJ<7RK6p;Q$T,*REP\GkYks7Xnl$]E{
    pT$Zeej!~ItYE*']3<u(Y$viys$AoOz}\#{zC;o?TQ=avJ5ox
`endprotected
//pragma protect end


//pragma protect
//pragma protect begin
`protected

    MTI!#VG-T;+eHC~Q]JR2sAH\kpEsGIR*}zH=s|QZpr="B!*5,vC2*O;[pRBiO;$e2E3^7E2U@1r*
    KYpZLv--s~{BBY6+1$'Q,AmOoXA31,['>Kj^-1V-]@]CiBzxxOz^iCmKvnk7pZoR>eA<RQ-Chzmz
    +]?$HQ2V-!]R{jB{Wqk$u2njp[ho)$rx[R$G@oAYmvW]RD[*Tv#IVpzXBV$+J_U[2lVD!?*6{+m7
    -vK_x^{li{rpjo5@$X]_Zp$[(>UAA^nJZ7G!-m'vu+5UI,7n1&!(@VuwH5+VBCXH1J<\^GVxHeUX
    [@DzKl#un{@uH_Al+o]BA_'[,xDZx_^j'ZwDkYeWjV'^-}wJ):lABoln2*V?oB$c-eG!eO^@r;!=
    *BX[xqaDkmT*k2Q({}[!O'm}{aWnkURmZ5\JpWY3^Zr+I?v_=!mph!>!xuC!2Czu?E?Dk'Y+vG?G
    o+*u#ElWaxieG.GRDR,'$<!]CsBg_JAp;BWGv!eHd9!7tDn!~7&}Zu+u*2ElAaYw{K~yrku#oV@Y
    k1J!D2\soTKEX*^+2el#PNuse]fzm,\0]=YI)wG+o5?*zTj*<l<pW97{DE9i*B~?5X1lzi11+*@A
    wDm'ClH~a>H6VGYlxe]H~<\pbU5&%7[Bo*$Bk[R*@DP&4\ZnlI#7
`endprotected
//pragma protect end


//pragma protect
//pragma protect begin
`protected

    MTI!#|d^{x~[HD#1HsQv[W~k*>AGVo5\^;lEr?=V,B[,3^X|<'KR[oUw/UY-7By7BjR#5Gvjs2>Q
    AnO:X<+2U{){Ck;G$k\s{ErsSKwJUz^;}W-;uz'CX<{\2o*u$W]+@Y>-wI0s;_REHw;k^AUZ,?[C
    HJI}#2kH}7lin-oUx{[VQI3z$W<D!QZ,il;O$eDVJD]+z3*7{}U^CDQ2ep>2'en=@G,2Re;Ws-Gz
    TJ=73u-rC?Dn+RD>5n\-n5a@j#QKn~#}Q7w'Io#TrvH$J}@+E>7r?5a!UX<oEXK+1rpaHT2Xt*?j
    Cx!e$53+$O'?U\\[$^TGB~<Q$ea-p?'xv9Y3[_F$_j{Aj{G1mAj7+@{_nNB;_ua><x>ViGX7W=,W
    l{vUEe#1?BZs2C$l<?Y2*?m'3*)]5#v}{l^@EYn}p3zkx+aXr>,u[Kz'vD#$^m<T}3BZz*UF\ejR
    IUm_!1k=kXHu|~_E[Hl#@x3Xn[pmvRHAE=$R_B*@A~DX~*EH?\]J<!wn\}0cCZuJlB~\wADpd#Ba
    a]RuW#rX[Q3>'vCQ'YWnEHEX\\w72+>EuA7nAQiWjLa77uPY}}kBJVIlOwRnxVIp#55_r2nuv-D@
    ]Zx<19daR#7Al5~I3CV_/D3Yu=mH_1}UR{-ew}kjiasXVroIQ=CVJ6H^U\r>$+>\~\7N5@n5]7x\
    HEVvVZm?+$sGTjc#|YDAW$voDC1-?wGIUaaE^G?2_?7{@5$2OE]?YT,ejG3u>?D$Y\kC$L'>Drxi
    amUv^;CmUR]uHX{&[^1AG<Z}/Cr{eRGG'>]]G6n{>G)3ETDlY^?Rlv}Ioo#jw+$xEspH+eexBQ#5
    Y-<$#2xt6uYKnoCr}\G[}VXYz&YSgxwKp?,!CvJo__?1a<YGk{eY]~5~OLYY<O^;Vnp=YGp=Os{+
    2GOH>HIz+Ge]~l0!Qj-oVBinp;rn-moHG>Qz2^=[]o$&EnT'iww^rBx@V[W>Q<]2U$i?2o*uz-++
    $?jw}ezs#E~B#DJn~>AUb2GjWXo-~e5;KDie!7!TkV~^\,i+sG<}Gfr3$j7nYV-CK,>}a=,=n$NR
    JeoGU\{D[
`endprotected
//pragma protect end


//pragma protect
//pragma protect begin
`protected

    MTI!#[YEO+-<mv;zs=Z_H'E?T^CWV_~15]z3,7;*_sd"B~-j,z5apmW!DDp[s?VA2]WnVT3[d1[2
    skT;]l-Hs~{BBY6+1$'Q,AmOoXA31,['>Kj}N^]HALH7BujxAVG?\m|"#7-2Yekonri}{^_#R-5D
    G3$@>'o'GZXu*zmAG@7?Y-juHzBKi5Aae#]i\C8G*,[?jwA-a@5Qw3TQ?YkZOITi<Aw~G<mq}}W-
    rAao_{^]Qm-JDR~pB3s]C7@=vu>{BX5uO2zo_k575=5sHjiH\=AC'3WEq21{x\5<J!DD};=+Z;TY
    }Zw^xA\rYI<R[tE$[o64v>&>*AYGQV~{rR}z!]{I$EYJ5AGDV,;^[i\i$eWp~~#LNrD1Ov>3T=JC
    e1]!r6x2X+llE$6%a&=VJ?}lnpaloBG!5rm7e$$Q-DE/YiA#rxVZ_YU3e+\DI;B=]\lpL-7aW=[}
    QjA1YZaCX{w}AO[wr^X1RZ,apsC{5o@Ql5+GZli+x7*{JS,B{G'ro\Z'Oiv_5Zok>o,oo}<v+?jz
    $nW<DuQkU7K+VTC<w>~-;r>E#nrCY]i[ViOo3kC}1}]5=K+5j]:IpUULm'Y@DeeiDkXBo3T]&QO]
    BL.sn~m]@\a]jE^=!ou,lXxV3r
`endprotected
//pragma protect end

`undef IP_UUID
`undef IP_NAME_CONCAT
`undef IP_MODULE_NAME
