// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 30 10:08:18 2024
// Host        : Winferior running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/steff/OneDrive/Documents/ECE385/ip_repo/edit_hdmi_packman_controller_v1_0.gen/sources_1/ip/ghosts_rom/ghosts_rom_sim_netlist.v
// Design      : ghosts_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ghosts_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ghosts_rom
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [3:0]dina;
  wire [3:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [3:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.481075 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ghosts_rom.mem" *) 
  (* C_INIT_FILE_NAME = "ghosts_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "6760" *) 
  (* C_READ_DEPTH_B = "6760" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "6760" *) 
  (* C_WRITE_DEPTH_B = "6760" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ghosts_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[3:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25840)
`pragma protect data_block
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
AMnHXw0h1O+cAQ3gJTreWVM6cg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
