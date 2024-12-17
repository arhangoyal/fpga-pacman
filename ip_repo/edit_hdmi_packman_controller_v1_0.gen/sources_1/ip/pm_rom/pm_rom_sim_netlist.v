// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov 17 22:21:23 2024
// Host        : Winferior running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top pm_rom -prefix
//               pm_rom_ pm_rom_sim_netlist.v
// Design      : pm_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pm_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pm_rom
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]douta;
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
  wire [0:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.194 mW" *) 
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
  (* C_INIT_FILE = "pm_rom.mem" *) 
  (* C_INIT_FILE_NAME = "pm_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8112" *) 
  (* C_READ_DEPTH_B = "8112" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
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
  (* C_WRITE_DEPTH_A = "8112" *) 
  (* C_WRITE_DEPTH_B = "8112" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  pm_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(1'b0),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17712)
`pragma protect data_block
IIQahDxYAgCird/zWfXN+YsQb9ydeSr4pAjuLqfWsZAb4YiPhWTebRTHEussK6bDt+90K/Qvv9x6
QG/irsNyt2EiPkId8QAPPKMsL7oJGTdJl31m48qMkKIxrOYcyIFu8HFxEliTGr3kmXUmQjujHZTG
HTNSmEtXBVTynxEsuGFHByAntsGrCkGaNWPGWbY1CWuMV7gPzr9FuDt/mAkctBGdh/meORoumCNe
+J0bp3j9eaTTXMW9DZjHWc6COul9fzgeotStGsrsOwkrm4TkULkAavt+wcXfYP40HKUdnHciHN9D
qVOW8mnYzpNvZVm9tM0NufowcSYZrkz85ulJoxEN6rQzEHUDFLqrC9ndJEG6CshogwrvsNWLepk1
LyJoO+UXSMrs/Cm94CGkitvchDrCN4UjS8NSQGPU3PDMV6+7vNq4YXHnPtxPJZOLV7er92twoCHb
yf321MGbH9zT2asJ1XNZ4NXK8/jSdEHj155gm7/xlpHculRj59Nlpw50u4N3BKEl7meiLYS+5fHG
GwWpei522w30XOAv9Pa3gyYyqTL2ymERV/x6+19/t2QpyQdg0VJ/U+ZjQVi4UhkSPZkFP9jvGttm
QaUr+P+m6VjVNrMSo+xMFPFDvLk1/FCm4r0OhUaSV1MDZVbVw9p67yR73YPQryXLBfhWyDfNzsNe
n/hw9k7nXPzPcvVPV3VpRGY7V1K21x5rjb1UdWcli7K19s60Bt2RKbMzLQly8VG6ItWOHVuKQHya
+HsaEoi5CGhTJcjtUUDq3T2ZbqG/m/N3OGU+P8k0G5fPuZ2m3douUo3TDoRhLZWJnqmWjEswxsrm
UVHniOz2xGP1g63Tx2jGeGr+xHnvl0KcBp0wdbfzdh5Uy25heCneRJdZPRfl6CTDECQMWzLCRd6G
gFiNgXqrP+a/oFtyPVDQ9fUerHwtI8Jkihco/JChcINd94xeYkSThST9zoyHe1rP3OUewYXV7KZY
BjKHRnYEWMWx655FJz9J0+banRjL/z5BrPNdjh+ADaNnwpsEM+0M1hM8g/J2/akHDU3VVFZdO6wd
Dnxux+p+mhAaphfSSSnBJpRGHyQdoXCmcpND0iqRXeN2vn58sc7lL9YiriYok8DtXySSk4MpOOo5
RZvs6v46CNFmQTsF61BkvKc41gRECUmQSMrDyfEJfhQDRzSxbVYsYoc+eUMO4yKDg0V8KObwZ0eJ
48+5JHT1uvtN3cYl11rjE0EmradHw/4Z8hEyLXpmfIpAB0XqWzZOoyz6+W1KEEnISCv2GTwe1ui0
j0xXp5CQ3uhOH57LaAlpZSeD9nAi7D9+buMMwh1Ft71T0oK0GNIbDky1MRQAIObvJTVMXy3WKYfp
kdxfaNzO3pHCyhez6gbLjg+Xwcftqkn/WE2DdSfjtJw7JmHfDPu4hNeqTNS+FAcyvrjrmMTooTFO
ViJing13pUQUTKXI7D5dPZMYSL3SlNSb1H1rt9BT3sqPC9+OnV7UTEXvBSh9gY/d4GRs37szke6A
ATtUJZTFwoygUFfxIRktiarjBeurIYsD3jaxJWVqlTFyja2x/QahHa18ZYwueVaQy0c+ErcJ/wE0
7c8BoM2R4ynLxRw9PcIIfmrb3wZPTer9hnsvV5OUjq7NjJuW1u+vbgz6gTfaPyRI9QoOlWsbA68v
DQY1jpu2FMFjTsPQGqX4i+PeKXIKWJvKD/ym9QO1Fs3WOCijCSrlUk1zPHK+1CwsClOgEEByQ3JY
ib/tvb4Bb0QZLl18DISxqW0dsJBnuZcajnoCaq4Prh9PhDR/5xaTG15tGSFu1lEKv85LOsFRG8GJ
q2pkI/Yk/xLxxnW6SpAOU/9gqZWWouWXx0801T+mOmdNBJ+QqQiv6oJBrFBJntFx+K8SLskmrOVi
bghsuxumMPzx+2+rQw6+r6Ndn4Yma4xOjvlSkitRQvqS0b7cEaTnGk5VqsjvsR/Gso8OC4U5K3Yi
KSmqBMKPvQ2SAPZprNu5XBKlP9VbB2ce/hwXuzqVpdddTTMIy9JwS55E0QTUTmPoTIV4bCL0aIfu
v/LzxA2kDDtR5fJKiSKgw3J3shjfR304kY8MJGqDeqSNtXxkHwLH9nlXHfKgxuZJh7p1iCGa8Cto
C5Ugrd9o9d9Mlxgx3qrUbRlnLy6AAz7lSMNMyP5LpKw8c0O1ufSYmcyaHsqcfl/doXY93gXxYucd
lMdv4Gi5LHnRRQc7Sb59B+0IGabKWgkMPHKDqz+NpVm1Sd+OFilHwdUGzymH63jfAKFtNC6J+eKQ
f1HqvRmE3+gRWgvnKL8vKO/HI2O6Jp0v6tgXhIMcUb/50sRztKnfgDI63CkRq/KRBxmgf6WZHSZ8
IGsifNyoH3XuyWPDccilJUlNR3aYpH/1HpzSfnKm6yROMEMxermz0NktwiK8ZOrKzOX0QLoOhSxB
MqcLwp711K1gqk4UCzcuxZvY8yvho88xU+SL47B60SglHMXjc1KQ5iLVzldqUVOQibm4Mow3PVxP
mWodG/UDUsmF89nS8fzXicnvevoJFOKC3xM0M5B4m3pJkVIpHjqg6nMrdjKIqI3Y26WzLcjk2vEV
YmbX1vPOVw2pNQDTIYjCEZwyX5wXD7n2jOP2gra8Lk80F0QVOHaHUXvwQ6O1zVVRQo3RHovEsN7s
NAXB86OCzk7a4iT5SzDR38HfokHQBQ+GWYTUXfEPnrEXm3WDpKaPjXShkZquF1n0yS6DHRlGu0as
9bnJF1J7Z6+DsZwIuJO/FqfpJ0Cogw0k62lFXfWIoa1QNzQFBsEXe0Nb7lpgggz1bdNKqMJBKr2X
8+AcW6MvbPO61qGPbGOmC/UaOQd46BSU+g3xgFoe1eqbi+L8ULogmdc0uVnAyGv+TSVchyaT6BhL
3PGgP4hzkAGZ96XPPoZqqkkNxdesJQUpGSlAwOPz7UtBYdCTze5NSIEBinUzVYsF7g5DaORVKuN/
w8J8TQ1CNv6PunViUdYFN2hfkgPvk7RZHB+lFtCK+Hz6p00jq4e56KhEOv88U40y2jn0/w7WIV+1
GddjwxHD1p2gby0aaMqL7uEJx+FmgAH8DehGQtAyrQQFfv6bEsZfMTnAQBj50tRBXz9aXqYbicnJ
eOora/XWY/8lPMG82LvnjY6UwGrw1g4WOldfIq13ifnOo4ePTTf11whf4isNZyww2EkDRwAyVLtr
cZLzf/NmQedX8JW8uI1fmqAZdYHkPWwoOIQT3BXBJJTPbMk7PRVCBUHkOjydjeVLgrmHLT05lfD0
+leriKljg74C+IDj6goW1l09Ky0DU1k4gcP6k+KYqTsUwqLjxTRsiASlKw+t9ja91MMC+9VRqOQz
fp2l2jZ3iUgLg9X71dFkuR32h1Kf1mko5uHgZN0pPhhBRZ4UxhhdJxa4XIc+Fy+1++TVc0ptmleH
nBz+ol5PIVloNaIv6cQMXDfghNDaBi4SZ9G6JYMW8OYscV6Dm2/gLBFPO32ONBUNittJf2OdpATx
87phkFI+ZGRL+93P2HC2WksIYtgNPP+lSmdmyVskIr03WmoEFc5sSxhgvOCk7BMgEOuu6u0UbaLh
H11EM02Y6xss3G2/DKfBuCtDLkyenvL36Kteoy6oYsaMhXlVAn03q4Y/+dBVBgNiVQLgwU1ucsoR
BPq3Cz7yWvL6m5QdHpUjtzpAzK2hIxGnYJiY2ml1zRcQITj1yFXxJ6n7ohkB/F3HMWN8QjUG1p67
HhMlMWiioSX/ATjOlpiHdsYIHwl4aI5xzC1eSEnYPVFgDwodTwhayXFOiKnMJoUT8KbatWAh0+dm
5Chsl+MO1F72lWnHAgErkd123vfPdR5YD+hsCarW0n3fWNv4UmydgUB7ZFNZU+jxYBgGlRFbmo5o
GAYHr0akz501IIaDecbu+Mxos0E4Jxdzmbb59YUpdYbyanl6XT8+8Yt1fi3vIffgqJlugSCLDGIc
KAp9563NvvEBE/yJINryR0N5jBqre2SquWsRdZYksMMWO0b/zAZDuNGKq7PwpnfmkkkrBhqt2lNe
3LBY0AQkSPvx1QNOBkv1y3Q7R8rIR0wcLQgB5s1+HQ7siIiSC9k4/Zdu/mVtgALaD8QDhjx4Sh7T
5Rgiru+X/ykrRoqTs751Ro0MQOIuoCBkLjZqfWNiFgcIFvKzlPDqBziNQRK64MQjZXYg+uR2FG/j
+XU2ohjLEx51vIlJhHjfsytaavD0zSi40P8if9C3KDl1tiLSPVP9aQ8KLdg+sBsaA841ajiKABEy
QkC/9lq52y9cSoSEONXm9m3wtYOJK7YONwybrbx4ZoQc3ZBrG6DkHHRejReFnfTGvafW61PHQJdt
45SzIQyqNgvyQOIkwwhRQ8ZCEdIaFw5Zy9IGKhziHoTfAiqpYKApG5wmPdUsV7E6lT5g4CMjqn6B
jRro1FzaZ5d3/r7CnhLzCi8WzGfSn4Yo6YPI+rRhPefCXtGvcJjU9x4FxrmoXRtJHqOs3S0Ojbcd
/0QhDFnW8UPSjItv92s5wGYgwaJdnfraofyN7kDdliTltUWg9XR7+ViF6fHwgsbxnW/cEZWIVwXh
H90IDpzHPy9FFUAOQzh4Iq06gkSEbPXo05TmRJYK8tMOlYQ/BhUVT3hdpAgpV2RMh6jpE8p4oBue
PcOC+oGfAQ2ns+HXreh9TQLbwwXZROEJpYaQEpzZQByvOpdD6LAs5pgBhwqDZDg24yv+6l9FI3M7
YzZ6h5zza15c3ljpoq3OtDgIDHICB0dNNJoTmsKJb/QjiyzyaMG1RGWD4vQBR0SplF+Ulhsd71D9
bZAgEauPHYwheT6u2p7bSj7Onb0YjCes4cHNRxvLqamWV3zpffroGPy6D4lKV/Y2Vz3s6jC1mJKc
0VEGA+0kyaaxS+A+7SNWhVYycRbSKGOKLlN3LYwq+kQtTLNP+F9SvZfa+Mxq6QztR0CXQx00slUs
dD1RGa0ndDEWjgFzWFTZtACr+vGitZdTt9S04MZEKoB0/lMnKYD+gpO06usNvcGnMqXeOPaVtGUB
dsrakQpRhxvH/D1dE1yKPOhu61P8fIkPeC/DnhuqBXnM3z1YfPX+InFm/3pZL2rfSHGuEiG9JzV0
85yvngGGV3E9YGs2YaDaoc+10NxBtWxSTXoJ6gp3GJXisaMzVjjHUdGdMTigagYLGUahenlbchKV
tQx/zpHfMO+0hFaINv4+jUj+CXW8lXd6xfs2YpMnnfHkZozwQEW0Ay8aesbAftMSRnlpVlAjbJvq
AIOmFbmx9xWnhsJmdEbnpFoh5+A4IDyjcSq8y4F9zJdGS0zclngPaJX+QjsclDbz7/FQAK7mH8H6
bKgmwegy+QJwx9qvmQeQO2LbmG0ncsUvGq7aePLRf4fJia7jYQu9hMGhdcJ4t3ygny1Co2q5A+lR
c8ZGpTd4XRxl8qWtKzCvu1+x2FrCTeNcg0g2KrZ/ld8RDKunEXeQFA7Uj6KRXu7RH3X/vvhgd2xK
ojcbA/PuU35oiaeqzIlHfX9T8/nGtdrIexmPsYu/OF4ie/kU1abqlH/l1c2k2mEcPFUCzIY8mKtW
GGu3iPzGLduwE/EJmVuZ+dVyWWu9S7aPKc7seaZ5OeMgqhi/dOTFaCie4xq2QEB8Qm20QEYbnWMC
YnjLj6KZhSuHA2Fk/qZ0444M8Sxt0VwO7g2FF0jowITY/W4L2OQ7XcSQ1ZXgdyCPS9AWaryCQTN5
UgDp6CHw/aRhik31zVqIP3O4zrolwSnZv8Ox6jLVIa8/HgSZT8Xa65S/WaZY72m8fivgFs7Ovo8i
aP3M5EOJoVZh5OejhSNcRdskTtMLK8YOQyZMf9GomVTyTxN60AR6I9BaFSGmvaT5DbsdbiAF4H1x
yreO4r8BuvpNGbsKFA+USJ3CetQqfRBWGSpP76uL98f+UsVAz9cm0zv5AXuvB9NF4CJ2k8VpfZqE
rJPQlL3zAnkqFRzhrX3FexYzNevzrObC6SAQsGiphdml4PEQSMuTwJrjDQY+2mK2lrkuyfCdml9Q
FITgNCJNSj1nwSmXVhyFWSpHRg6gvcQXDccnSLaxLyNQMY4mcexQ5XyTL/qqu1DtVYefSpxY9R2+
feAyrhFxJCKZUkb6ayYDwcbB7RmbV4aqB7YdOI/gEwmsCnh8jT+6TYFmGkGAWDfKIJAc4tnN/qt0
NIe24sDHw4Vm2aEhkyu9Fed2ZG9GzQh6+dS72NbNKNJFs5WlAH0EWKdGGnv2lk9KKBWeaGwFf9/J
SBreJfkt7cZr3oVsA2HgAmXlMeDSwzZs+5KyAqC269vkZJuhHtQVebi7ZiCzf7NrgXjOTQn6cvwk
nYRWcnvgLqMMPBZ/pKESunhhUB4MkalJHwDvZjbPQJi1GulqMPQLU91PP/zR1znEu9nC/ugU88Gt
Jh1vLz4q2G9mR/x2v9z9ttX5gKtZZnItazjq3oxSuGWtN89sDyEP5hHF9tTupeXbXzI65vL0SGSZ
d25M71W/RbFJjCyC+YYlN3PZufKC3Z1HH8rVAjrxz1WFtDvhMbf0h4M150gyHolw5jmVmHUeUX0S
Tzlsp89Xji9UhSrPsUhbtFnYzloLINcfLsUyLbfpZor2SF2PkOm9mBqqF8Al9sEGMbkY8VJrBFAd
EMlu+0tHG4pofcOc2cx1ZgsSs44asT7Nkj8TIruXXl+y/mjxmi20ZYc8vRw8xNLdhHMBKUobyqnY
sDu9Zl/36nO27yE+UtuLik1v1S5SjtUCG0u95/Sws4hIo3/rgKG28Z0pLeHbE4rBWlGOQTKDF/Wm
RRz1iwF04yW/Jho4A/vx3eLc2yevlcP1NDs6mkcihsp+EULIWoFMczWSFmalpq7q81PjKt6NOcYN
ZfMTaWxI5jWtkiphP1fhYcOwbJYjjMCsQv62shugW7NXt/uqUJSYLJ0CMoDwmHJG8wSojljMpL+s
+zxlWRtlFJpYtwdW3rti2dwnXbOwCKueE2Q+aes+eCO1OgqD5paIJTvWwapu+JZDG0HZN5sTR6i1
WMIxRQTnjh2kQwia3EZLoJ3B80GVnZJM5LgthP7uEcGvj1UJHc5HQPIkKOLmuJ0W3mgra67+GJCC
RV8TWfEcwxZFyDgbA+nj7A2jqaihJ8r19YuTjRMIp/k9hy4GhzxIUC91ztt6I0lMFhznfaVnlKMk
0eDEr14MCY/w4fzSfqFZqq+yx7Nl7QUbhvmuLJnb+8Ji0AQTzEhQ3InQBtdbDfhVCIzrEZ2UdcMc
9ceTzw9LJTmlTwpXd9RJTopfV/CgZoIIqcu4sTDUi764HunigWLPXxUsHGS5vnReIFfFMgnNAtg5
yvZV3qgg+iZDCX6zvJm1y1b1s/FdVIqSyTs/3O0m7GZoEdbFAuU8F1UqXRx0P426dccUpwuUEEvF
gcdVFGCWtHkstd5eBzjsIX4P8uXI09j8O8jwkUqSqa+vptcG/SMAIOppMZNvnRq+SyTQ7+5lojoD
Ck/A4z1o4PLbvTi77fYtlK9pTJdca2MyJCg4QUvTxNJsiWzn3Id1T0+oBI7naRvDHuGi5rhe6f/M
g2YK0esdx0oGkKQwdis6iPzFeqvdZzn3mOkMgfcJWJmGPgBujxaHS1gKDwM4W33wtMETzrIQeRZU
i3wPGwdsnd052SHVWcBI4HkHlqS2V7W2Vggyac3xyfhbwszckGk6UZPG89lWU+/0nt4ihe9OHY89
yaDQg05IRsnmZTIMXfDv9ZvUznBjFZvrwICUiAwoFEEzUTGzXXTWIZV26uMJSkyStWLj0+Ov8WQK
qg15Gx7YGT59MPqdxnKdxO39YifnA09CcLCJ1flaL+l1BUOWmhnNFxIJ5byO0M5LDyhl4w1IiK25
F6XDgvYp0IfTQPgJcC3PZC5mLO5vb+guBotT6Uy5lz/1wz6ZFFnHWqEqka5g2939GY4dK7kRq6st
0chxb1aJrABGoCXldZQ9OzML5z9aWKYNGjTIyGAFWmSQ129yOjzDehEX8xv3/QYqOd6WyWyjAgww
mstHLVQ9kkx6pzTgQ44GhJy5FobIJ5+MZgJSt6Bc9268YAEDpxvMhibMY36N73sEv8EG5I1TD0is
SXluz9S7wdotCfcmcItqStyTluGL7qw3RVzHbl9cutXJ2RVyKEVhrf8LInruI46eTW531D1GWO8+
hIsuBiG1O3IusdtmKv08T2tNVgzRjDtJwFv99ruiaHOeo7oZa0nRKw2IrfIeGe0esMEwhb6vc+jn
kTgGTGHpTBhTzRWfmBlLXuU2W8lMDsOIEm2UxgyYQJ8SgB8jGDcShOlzyaVm0r+mcf12DSWwNQOW
uLg2IS/erze2KjHUb9F8H9M6/tC/zrAyItAHvSWKUC52+xxuZqeTMdpm+k9cVoIt+fCEkOTyehs7
sQJHfbtUpPNSN63b/YoF+Yjnc7KTISQ6GYr0ZTBK2kKfQVJjoTvvneRZZC7vrC+8h68Ayns4CKin
6vyJNLGyNvQzYpsMYPz9r7AFC9e4A5PNQm5Cu2zsF8vvSFFbRJgZMpI1tEygOdiXk1IcY3Czf7S8
5zv8f4BQYng9xxJRghZbinwcKNf1qUjMGIAww2a3JdCqvgIGCdN6C+zbXIbgCtEQaW5GCSi6Jqua
IsMb5ifUTwgUG4nb1h+B2SJ/FTSKh8Z3QgB8dM8awXgFr5v1uauIubRqMHyN/zToJX0vYUwKrTob
JB303QXM4DDB+T5uVoYexqSyDZ7usE0gSUrBssxjCMQvgQKRekC/6T308rMzphFw0kmy5P51C5UK
e8/TrnrUWSnTxO9C2aERXU53yq5ooAaC1VRCZUrknoumHlGMw2SXHa0+K1NN4R15XiHmn52wSmvU
IyvnYPlpFkGkPe9z49B6JkgYkWUmQ2ctIk7kOEfey9f3TA/yN4X36uv9EXvXV+svNUQ57uOG10h3
dgGHQuGpqAFNri06pzL6C+sNYK4s8ERkK65U8VVjgjhJCYpULWJguphPjCJKSWDbilmMvjI9QRzy
CPORGZ3eIheVsbkJMmcgO7mxb5N1FjlblP6v1lh/QoIk1ix151nqlVl75SltB62iLS4uwajfQZYT
+X/RO3IA/FofcOciFuGpURet4FdwYgicna34zYLHRe7YFuFADnsnBkBF+36bQWH4o6qAnsxcX8hA
wWlWSNIMgFXQh426ZW6ahJwIQ2SqAuf0gWY05rtKRfZaMZjoCKfltv55AsM9exTCGdNCtlkIcjbb
SS1IgNYYi9YweML5Etd/nc1n6th6el9djt0/XYM4yetMVKRn4RIYI67cRr6XFz0PS7WDGSo2ldk8
F4VGLbfq9NKHF/tCI8aspbU7oS0ZPZszNCLn3VZ5kkcCY3764NLzBJqeHMXFtUCfY/uFUcXkEu6+
DOxKOKDvt8wBSgH/4UIu7dm6nQ7df3MMcvkPU0P0thWnaHLKt5JIvEc5y/ffW403wZo2OpjcEg6F
Cxq2coceTpzFFQnip9WLE+aag+XJfDprgHWQtEf80R7HSDOU0aUCzpmv+AqtCzhrzFKD+wcEkUuh
CVnLd0xjtdCqdvmzVca9sdvdAKrMZDSjrvDuoRVALADt0gannMJTk6p14iYeGX7HKNP0inX18Q0u
KLsmmrUrGaglQSNt/7dnXlBe0HrL+dulvKQmpgakLCQfgS3B3xTyB9FAgG6uvz3QwLBYlrcRFNAL
KDfGFt5Qi4wd7pWxAz4eww6bGMdEo3ol9E5sc9BNPnyCfKzU0Rl9LdK+q3DOYK6nVGAXCzEvAYdR
x1z1Apc+Dp5So4txlUQTBr/1TonfJQ+lPtZaNpYtOxK4DYzJX4qgrn0+D1Ev4IkxakzcsMRNbB0R
cfFd3M67V2WIlf9ADrLNuSb3kYo9N9dlm5yaPKRq0QhCTlPNso4zjgXzoP4DM6GYIIlBpWFnw1VM
2/r89Ygypgh6sKAPFzi2SN7FHpHhCr61eo0890E/VujzNTDrc6JBNsyx0hD+fvDzwp1SQvuVPuUC
N/kdVEqT8Q5lU85nCM2790roJO2R3E62oionInnqI1P3E/T6rcX8YWaNCqqXTNOhdMDG4Fs8QOKc
amm5uw6eebzBooroOtgHRbqsiAPZ7qsk/BNF2uPwCK6VEGxY1oTkbQ1hLaDmm4i9cMqYsYD0JPpy
40jpfZpKubgkgW/jVRoIVOVCr64CHQRARCUWyfAChu4vdTzF0jzTjraHH6t7oTzlzVRIOzLeG+ED
lChJmVs8rL/jTzvX6U2cQoc8ipWOSX/kNqb/Zw73YXKZht6YHMn/N0hDmo4V5gWcnZsc5ssYtdxd
2n6EACpn7Fkfz1lEwBTN8tNuuZLn1M46Z9oecTiF8q07rbT73e85+sZxCWtl7yAY4+IYF6qx77Vx
SY0Kef5G6rEnaGB3nElpWOEseTXb0+Tvyhtt9E/iBdZfoq9t8I2mQG6crd2/GbxDZz4pfWhBRnnN
QAqVu8kCPx/NYKAGtjT8jbf1OsYkKd0XSQL5ayZd3NL6jqdgdzmJ34fMb/hfzUDpQcIGwGnxw6Ys
CkOnsMTX/AEvaWDV8nfYdUmiG8zsCqpgGq25oSgVtfR8ymqCuXSH++185qO+SP5jAo2TUd5UhP1H
2MAKe0a0meDUNfNx75VmL9C0vYsEovVwM7xr8MoRjgYvp36IZyWtklOEnmPNJZC5WcM3+vhIiE3b
+Z7hory71ajdL6Ygy7rengElPV3k9PrUnxYPblW5XpSGs0QcooBf1kqWQbEODJiTWLTZh2rVvSDM
IXcvXuqebfr4rDDm+vWW7pFhA4Tvf1XrwTxUjKq03cm8wuevBmFiKA7E0AMO8b9cDzeAuEgrhByX
G53fBLBqfKlcsh5HqE90Eh54kOwOXTxmCWe5voIY6I0xXmqLdivGw0NTmwSzaBeKgEimGQohqnsh
AC61j4ISJ0FGY5y0g+bQwd/PAtSRoUZK79J061lfjnMezcQ/kYuw23u5+vCYl7BmfVDcUdmTEsOv
QnHaOgGHzgp0RTjGl/fxpyhpO/qABs86N3I65LjqCsNBxDcaPN6vQ2v6ALnKFWp8HJhsVxM3hmcd
xmtbAMDifRnucE/jLPs5waD4tNJlRnP/VB/q0dUTYYl8dIlAHn/gcNZvHkZhyJBdz+wZsiaVnl6j
cZ2loqxszW9MbevvbAPYlFXIX0ZPpcXe6MSG2dBP5oSMpJRUhjIxszlBo7nwI3jqq3V9L15HATNU
k6YXO9zM7pVlEFM71ca6tEVx4zMnzqPL6+NBQK5eg29aX+T2Thg6GVJoOC3mExQ4Mgg3bmcpZQw5
Ei6FX0TjFHOSJ10J+EjwexIffOtJRFaCrkhI6gLNXCJGeUN4MO4lgcClGeiOBJj4Apt7hlWC7ZZw
UKMg3UGJM4VYnwdtvV9bMR0ePUBHW6eLdmLpflE7fxEDLJDKYkiB93jXtVbltotZ/vxAUV1Dy8LQ
imnKrztfaV5xGmah1h6pvLSJ6TrHxD9VAJwArl3CXjeodHtBf/ePqmsjlZvQCzcgLItn5lW6xCLa
BK0S/VdPUjweninBAaa6hP2rwdtk25tAkAjYXXHZ+cwUSsG2NopPosaX0qn/S8m0E+Tb3x52NmkJ
02bHTMWgqE/VXqsFop0fGopv1/brO8E8uQ+vEAdjp/OIsvMEHUT0VUzBCPefGiuxWB91u1/JJ7I0
p7GcrmL7zO5WMimYtHCXHkiJYC3O/u0G51F8fvdvDS/m5pfUJP14lXxz3Vlq7V22Y7UnFOsYm/b9
0TF1Ow07fqDpqqODBmAWBBnoHDW/sHfaoBkw/1eRkAe8G6BCHYsnwlPQVMri+23euYnCpr2Qofoz
bTCT/iOHdwX2Acsw4V4e7kVzMjqpLBjzMuazm/YkhdLl9Lo3shg7s1E/4oCtKJ8BaSwmH4jFWAgk
Vh56lIb6SzQdwMDes18Jst96q5YZI91o9mCM04dCoaexEwyKAqxAGBqwbt2DeswkkPiwZWhs7/fu
xPs0fFKwaPKoWWARM0cvJcxdKBIkIAoqGND6iwWFleq2zNFGBSoMQT/0v1l4MDGHw1jaI+DZn4CC
nqgycRl38QH17JC0aVpPQYBqilM/T6FAUP8g0x5W5vLu83Hqw9wjtevuunSqodnNGf/nYVSf6eb1
Qxg0FHH/4hRoXpS6S1Xr3mQIKhATZEh+wgIVVro8nsH7+kw7yOfQX3BFABUyNoYeRBThnEHQSLfh
/MjpymPb3xf58YC5ZBBxCrmdz8lAKwqeVhtLPDFdz7Tkf1EW1mHk/mxqsrrEdA3EhXM+KTVw6zsX
dTwyD+ObvSxnKMnxNr3q5XMabnkWdjxpUasvuR0KJY7Mbrcz7gNFdlVHScCSiVix5rzjJqe/pEck
J4ys7YRfK4t672r3eGkoaS6OraPoprAfSUUUsKAaIk3lJ/R76LpurGWAck1TwQGfoP32k5gTUJry
TToHaUSV8oWtresk0HSJWHVW4hyF378+yTthBFHwIqMqcfGN7GllhyiCtMZvBdD5tky5bT9XaqNh
JViiEBy0wEGOaNlVdKDVXLcN8SDJc0CWFKBs6w6SXR+6OKOJBHV2zFDGy97XKBH2o2dO/GO8ru3n
cZ/wYMClGKIGspnWEg2CIYbo7TYLmDo51C51oURT5xioYNYE2G+z78hNQ6x4sh78Ce0ARAljrcLE
fk6g4uqy4ccy6+C9WBzcajgalnJOdj0jyjDeP3XyOhz8YL4FF73e7MOs4XjVHQb5j0hGyoe+OPJn
h5OS5ZAsnxmudzfJLwlpUzSOXXEtUauMzIBhIkTf/4IDzB4N9Bgo0dtZ2YFKSQky3yW0V3J+D1ad
OSZmYnlDggSB53lkfiTP7G3lzHsrq/f8lnmI690G6HXprKrFhT9GLkxX2NfDuAzefSUJurhWsuJC
qY4/V+E+kxWABFq2wx4KQUBBSXQpuGuA2mbV3hFiJDxF4+Q01lRktuHWJullXFx9x2uGoV2YxIrg
/L7dDvp/1ioRcnZW+H5QJ6RpQLC1k0Pa5oCUy4gwo3UWRH2TclOfGHqnVzAqes6QkDad/zBPlKi1
46Dk7D7YG+DeHJdOVtvObPuGFaS5taQghYMzPTXGH6jPXF4roJNUS0x4A8efVLUOXUZbGHB9m9AL
s+Kn2ZggswVA3i1F+EhugSjRrA504+NUF953zd6wj+u25k/vsim2FLgS4F7WtZ+hbx6OXJcS2MQE
wlRHxzRvGSHQkPY+BiXRZwMXMmBEf7yJ1mx3L2h7HSU3jv7emktprw3KFs0r9j18VgKKExk5Qhsm
HC8G3wXIx2B5WkzCDwqfsG5ADhhT0NEIlZjD4WLB822ofiHuFCfoQvsgU2GYc0yBZP+nF6RnRY9z
/4f/GW36+mNywNJ2CbWgvO5hSbqyWPpoTshGK7DaQHn5muC9G7NKsp3vrnNQJaYsc1FMt/YqjEUx
eBNmmIhr6sNK3Owb7mApmYwHvX2XyeoZrOXPfuqshnsZBkIJVuxbF28snyZQadkXZqfoyMfkiVFu
tllmTeFHK8nuo+oB6uBq7v674YIbn5zSTPqt9hDgVCwh2ac5oQ4bdhUlpaWLrzFkTHPplc2+viIL
wbvtaWx8G8V7f4OHltGtX8OaWp/ghvE67HVV6PXeCQ3zdqh5aFeZnBSWcsfFkNELnpJM9vB+7h8s
adtjZe1EvewwFY3bLXVJ1TbQnwL0zlPXm1WiY2dJF6klEO/U86aJYSXkkmJedzzNSo2ngmacmme8
drgvKcfjiVPiSLQZJzZ7A4+RjsBwQBSPeVvZZtmU65Ez9bMaD5hGmiDA7F5jAMMKpx/U9C2bCe5q
HL95zDx6BJedSBK1DscduDlR2Pp6/raQZaHDPRXD1wSc9tkRg3QqrDiWSgXa3cFhSI1CmUybawGN
pckpHaW6NyMlPYdPyXZa4JdvQxjb7lLKLjHvkiRW8i7MKS7Hk5rMT+pKrHoMgesbYNiNUYavuu69
eSedU3gEK2xACQnY31d6loEDgrxjk9HmCcEXAKAFrAztpnplsMjIjKqWSVfaauff5+ldvKLNrHC4
AGKqLbaeuUYDxAHwt7WZ2GPnx8e4MV6eh/0YrUfnVmCTkFKnM/kDyRYvKk77BqFpOFNIgg6+gQQN
PS5MMDylZUUwbHKSuopGF3S/o8Kec9V+lD4ndOoddI9IG1tPbIfpNb+lv4o5sGwnlPEwxHUjYsJw
L8GEB2bn3TOjEO7Jdd4igBD2n2On820GZc3zGX8kM4h8gSyVgq+gxAo/N3ITc1Wf7ksC/r4zzsVq
3B0B+4Ir9d87r9TfA4Ku1srnwaZdsNxLUr1M/Fq32QP/4tFfo20FdOc9qK9Q/aURdJL0fznFD+Y2
/MoGg2rxte5rPxe+5lbJrV0pycsJJAxNKPi/grg1gFCN0bXVuQmgu3Jh+++XnIGkYjDBxXPh/JNe
xdntqc99DNnylVg8sB18yATpEHEjHvKtIsLPg1MmKT8uYyBgBLxLvl/TaEULeZOMWn5+Ohn+M7e/
TihvUNkWVynEoTLtMt70x2rp85XqqJ8Wl9xsItcwa6wVRqy92cP9AxF6a19cg7UrA/xEuscZrDHP
UnwKA+Zcxl8nWGfptMY4xK8ifum5e2r5LrnoZPa4Ap76zlkRc3qj+b+xBt7JxHLKSbRU/SmGS98u
+8cU2O9+2aSPrJ7Fl0/OdjlJLEHnn9EGRdbsNsWqa+SFpH3oVLoyjt/M9HMoa84NCVw/IBRbpS4J
tOgISpRoNjreOSaUQgSCMxCl6EBJjLG6XZ3onxkkMrvGThC0w48Mj2mNXrSGQMGmCngD9r6neRJi
7kfHaqYA7dy0LpriMxjVCFkcAieRVC5tUBAQ8pd+7cL0SygDzhEUPyHoPRFAeA4WDay/KzJaUx5V
VZQHJoXww52GpKT4fZsmg3OGg1Aj1L5eqGGUrCkPWr0wqObBsny7k4WnhUkNa5kOMz1SH2fHHHpx
+Sm02k9IYovC/0E+76jcmBB13wPitsyt0V1Tr67BxeKM0v0OwXhdyry8w5Yh/End52xoypr6UO1A
mmSDqSuzwFFVXjCoSDGLJzsYwAbN6DHvk1txR2qXCLkIFnnFOQUqRNLi3GEB0UVscRq5Phk7kyZK
ZMEEGdDB4t4JSZdretKQkcx5msyi2jUZGIvRX5y3CAc4ftN0qm37fnNgvOA/eRdlAD9m4dt6noz/
0NKiZO3ZNYTf32RrxN75xfg5UrhC9yf6zOEFyKvpIGwQ8DOxJK+LHXYk/2/Sw6BVUuhGTLntV6W0
BN0PTTJRV/Qc2oWKo6LsBifCXhoMaIgSG9s0DcHXN6MhHobx/XCoODKvNBvJoqdUPiSdiFwT5hx2
YM4uU41L8xUrk89N9JTwf1xdPK2gRm6nUcr53kkPCBO+uWWkHvMvtQjyVp32xOeEyV1XZmNOh5kH
D2lR91X4gTmgCNF1yMh/Ao422Ew7PTEm1mQA1mko9k4lnj9vwN09Grdjy97/zpnuePBuRwux8T9p
a5Xsh/tfyvd9cECKSv+uuxAr0ayLO7miX/6i7udyJLwgvHGMKS/E4205UmXz8rBeXXPPiXvUjJ1Z
ZpkkJfk725zYLQsWbgmOc7VGBTRycfwgyRfsdQDw13EV2c6C+ifPqgfnSKaeaolgw5xKqR4H5Erf
OLN64Lb0FcW4T8B/STLiETxD7zOAVul6gXwu7wYIY75tC+/Uol7EIoJmhj/RN1tQTusD3htb5vO3
9ViZsDYRdmuxMgY5S3GbDlh2V/Bqhz0rJHlPIn68yZSunx7c/UgXqGNkr+B1LC1wr6jxfd2aV1wK
OFbnmt69+QgP2+9E6OC1MIu/mvOu/QPIEXIXmcfbdDB0velEjV+NNeS9stOMfbppes9GtzagyhEI
xxBbc1lmcRHEVVaxlQ1tUR9TjnVfeDKeIgyY3suQU2RD4T4qTyVPgHi7mdjxOzm+Z178WxcbraJH
PJ2d1O85Ur2vlkHrTACT7GjA7/OmkEFFP2hHmCCgvX4Z1pX8QPagDl1X8NpZBtdQQ6tPilHj1Cl1
uZdCWR7zWSICGND+dCq3/tYGrhC9qtsKjnVwmtu/1x9WsBOP4uTALZzfGUY5eMOEjZ08g/qGhRpt
YVdomlRBETXz1+cEn+bhb/zVKuDssqCELuQXJb2C4xYujsATbWgqLUBj9K6KBEkdCbTIVliTkKV8
e6pdQnm0bk4ItKwiAAiY3HU9U/bvucDysxKciY3VlMYpMUAbbtlNhdzT6SEMy0ytlmW1kMRFSHZZ
UhogwFa172Ra7h020SDX0Sf8clAcAFbme2lEhP0GrqJLgwgWddLeMrAbNp78RF69Qd4Q2C88cCkh
QjbGS9SIm06IoDRDrzdxlO+xZkRDoH/jwslE98NHyVw9DuIXxfagmvTUz1I2IhYyBiAK4MNl/csj
7q+NExwwx17H/L2t0ZXD1fL5lRn5RbqebJmF/yLMDp2pBaXBXLPmBBfd8VRQb6uSWfYOnuwh54oj
x3huQntRIkDqnd7l1mlrom8hACxyMnKHkMldO/Mjvg2S5HnXx4Kilgxuf88GACmxueE3W4iyKbPt
83Xnyy/3DBD09m4zUZ3hKhv1KOwFC86LEhmDepqVIM24iMD/vJS+UU3QwOVglVzDj2csGDUq633X
XydCTP8akrQuBis4sJUxXuSsr5YBKNT2KeksFB3Cj5l7pd9Wc1DFNdKgEQVGX5CyHHbnF+5n7ROO
i+5/4woTB9/0kDA0pi7I0kjIzT7H+do/IF7GKUoLXhINyf8gzVX3UrMk0cbZOI66yvOBa6dBUh3O
lGKbTfWFoYcVnAfm+bzECLzf11ZZwUGFT3I+v6Vc/xrfooucCWt4DmKsg38cEF9RsdnC8wwb8x7t
mIGnsTP8IwdJbXYu2OJiSNghdJaefOs/HlwIncX5RibISWamVZI4ibt/U3q9cFJUBohWkP9YPZ1o
moQux9D+4j95AkDfvgZdYNKTOIB5JbLolWxiMLeOKraxXQYd9nCbdWltdEAyF5i0CzPWKkbWeMWX
YhHZrfxCELbv2003/sYPRX6YyebFP8d0hYlhUCg6SqQTsI93x7Jv9+RqWU1oaAXTJ301Dm09i4o+
3igtEDdGida1ObtprIxbdC3eq8V3gUECpjUmGPvxzZbhfBt7TS5D3vcWTPk6FWEdHsD9oGCmPbZy
5lWzB0y0NB4T7D2SKhAQvWm29hJHxBBL7LQ0UaCIkHkkhNbAds31bvjD9K7IK1dRsKey+eD9cpLv
JjAV8Cz+JD/Ff1FZ/YaDhuofTAEYi1uBHiqzh9UBJg27ZW3+q86tkfRqSRlZXbTmwvD0dr5E3jBx
Eiebyp809Uf5iUCJaYEAC05X8abJRp3RUyTr+0N0KXXOHuGxC3+hCJmgETx6u/5AyV4f9yjsKfiL
8169ja4FIP87bDdAVUDBmXZ7pUGWPcScAyPWhbew09KakFzxD7lnkS5j0DWTcpnKRSy2EiwezA/A
4Snu6T4PR2rkOeKK3sqd8Vdni2ZsJufbl4NOjfdLWU3m+kblTjR5HAYB4SI5YzHgLXMy+jwPMDC+
/l8PUAgDxseL1AKdijPMtJSJvHgo2zQ6kFOysX0ZUX1YHeBw0fh8uXudCZcloyvRHew45R/DtDTT
KmjbSOlPBkSJ8BaDp7//EPaVDSXGF9dCAYcbB2kgOqBa0uFY6Vk+WzWSZ4D49t4OC8CSIyIFIUPi
qCJXn1CmCwhlJcTnnQ0xDq1cCWNmgYE9jIMxmYJ48CUZJBipAPWwmLxaNMKbqbO/R4/BEHNUzIjm
nwsnXgrIl88zN1ZHflNSuEsgOhJtDE0WJw5KtImwRR0u1TPMiesxQHuJtJGXcw1Ic+GSv0yJPhy/
vwDppBudnvC9nDbzKpC1hACfGlx2YnALAOqQ3/vAvDqUruhrpAS2LMPmmx6pN504KtiR6CvKdY+1
91losRbtztuWkAslVJ4Ci3D/BKT0KOLFYGZM+R2h9HMFzikbQ3rU7Zu0bsk+brVcHxUryKEzW/Py
3Bl+QwuYDvl4syD1K5B5aSicBH/9xhJbQCAbs904UOBEOWjnNVFhn85e8QSwFPGG6xDhXwnKuH1h
Y3IQhyLg12wv3PyuR4AwSfocgXYdEk0480x6XYJA0DiWKk9F3kp/WfgDz+LjwvuLwU9gAS4Yiewj
8U+pNaAuZaDxL1KYSTHlRb+LDDXMeGgFw41XiOH728X0vKNoec1Z9D5ho+Ay3Kj81RtuB5ChEAL/
1XDhB++96RxFOK2167TDWTdNS1i5eWuJttCBqE5Z3US6GOjQ7/ZWAXYkYWnimy+2ThWmslorVthd
iGu/JsvGW5v0nVzupfYeQ91sCIKK0OmQcx3yoYUiUu7DMiEA5sccTzdIw2d2+imXomRi8pJQS7eG
2Oz14eCwI/iGX6WUjSQtqhCbAioOoHmFtujr/kqQGCqL4oZqB94vntFDTeD5lxBHcY034Ml11S4W
gWY2PuSw82J1PhWs1edk/LG3CKYYcKZGMEo5+jOrCn1Bi3ZjqD98oAYnzOds2qF498GuCNl7Lk0S
7Fd+UJlWgbUMyLyALdapbKktox6HDBOebB06vQ0+go5BJiKLjAq8+KypbRGDNf/dm4fk5Wb2aft6
WNGYL+w2sC09dzFfSBNJ8siuKBUrvYQYL62FWSuP6cGRTdrcEIRprxnr9EZO8cDQ1AdzsDxadUkk
iaTp0p6iPcLtKGcl3mxICKM1DEK4h3RGo+IGUmFFpQiwvQOy4sEnRqEB7NN+sg7868q49F15oVv7
qovtyUxI4/emnYUq5jM3c+COLbPfSZeDAcZv0TvCt0spYSMK/OmuKPV1DbuYeds/Jd2jgiaQ5Z7i
ddCEUzv03l1t/kvQ3TgDPNhbkpvr1/S02DhGJVfyo1njaS2dayTnMh7d+KSwdIGiS/d52ti43ck0
AAbW5bn5nyrAA+Poesac19sSCp7hdye1KXzMTlio3CSr4ThAZthkaofkK4VB5eCT5hG+naQ0e62h
6Ruoq4I8tCb0qDfMZ8s+OCGxasQZr7GhCvsIlui+DDRrZd1ACc94TW05KxJ8hdWq8DqHEQcbNvGJ
MeABwNBjlgFXksPiZJUdEJu2SmXGFp98dbjtEYA5CIXBD6tN2H7cnWCw7x1vzSuwPeuMo5VKLI6k
TuKmONrEtfz6OyOR5BpLMMD2z09cwhEV7BoVX0pcQ5JYQJxFY4TH34enbfjZn43yB22BWbLRkQ2R
yjsWJ5N5zluCQmQGWaDYz6Hf17KA98nJIxn2ifhRteTAXr4n+KwSUms1NgvFb0UtryJVk05TWqXc
WJMCOVBjhUstX+5UepJDnir2fRSTvesXICdNKcR3BPv/VjDLMxvodD3RAT36Wit7kub+29LYC8Vq
kgCp+9P/Hj+kfhnCBF/B5AAmhc3bEuBY0xM8wpwZVIeVwok4pp0RHvhi7B9jSrS1nZUC33wCyWzQ
A28B8hmf+c7GKs5vg4D+T1Z/CYzUVAUFcmsJlAxreDWHSOyo7/qXdfjyDu/884YKxex8zbT66wlq
ldavP5N9ULgiPaYIIsF1kyydf4VBSg4uccaNeub1JY610UAaF7OiHxAfvNhliyD23OoO1+6DfVjs
NIEQmD4w3yBi1nXpQE7APRWMXhhcfMZNhfd9HmTJrGfbDrOZ7v2YmVNnBdb8EBKzXaUPl4DXe0KB
30s+qaUVZbd+0akvm0yPW6E5rNQsJjL5DOehR4Vfkhx7CoEYJ+vKwnEL2mykYTolMEmcTPaWOzsW
4B2NQCv1pKaECG7jMrfU3h+TSPEkG3hW86DYZMBUycM5IlgjFzZQNsns81SpZgyP5wmc7w9VGXTz
K/QCq/1ZisOynajY+lLYqy4F6GwA7/hND5Jhc2wc8AD+UFED3xLUwx+7oRI1mIJoSS66Rvj64wu4
aU9VoGUtFHHNxUNAwD4vlqL93G6Wr24qQLdg4ZRAYhhxzpd1LEwvDbpmyx3E/J+XXOouV9JIUQDu
jWD+O0GG4Hn36I3ub43DPToScsw6k2c4kPje97aNnIxAg8njJm2yxLXPbqeOkRhNG6vYT0syFNRY
PGjbXDGH5XijxwnqkmguJkw9y45TcS/iPFOY8F3ffPJaWj92dxogNE8AehW+UTvYhDw2/FUx4EFY
I8rEquBkfpTAnWo9N8R1wpSl8p/cAlpuW/4zffCmuPfgLRwCudWec705pS2PneBvpEDwr7fQ/Pry
fa6Q42ef0gb7vz8ktLxeAw8HM+B2tN0DaUElYbLBt/De6K9z5nGJfSk34nyqxqRjVvbxsnAxJDvn
qOJmj8LDt/AuNn970PdEs3o1pNM0vr72dY3k+1KnvLKUJQWbUpMweM+IHCdmSeWxUH6PA1WBxKef
VsT2yJhGgV+x8fP3Z/iuiRn+RXgbBntiUZxCP8MzjCb7+1QRkKDVBWOoN6d+rFTs/ax0RzYjYRcb
Xc01Xs1nrKQC5TrfZiwSeE0ZmFjAHDGeuNOxokzTJd0jRRizoEZaeanF9kP5UXCPL17bRhNQUscc
/KhzzUIoUd/swFtX5LbhI+tNcdddNsKne/HlX7Px+AIfNQq9o7U4Hol65MtlEtzQC6uD48Q+Ih7J
Ylpty8Q9Y3RdRdSNahcazLyeFoFOh5AuExGesDSC9QSJ4A6Mub4izuCfgXvbgL/C14/tquDz1jLj
Es2iWqT3zmmrkmYZawegJ4qtyGIho8hB/iveIL7LvCyN5MlXN0tbzinexEMwJsY2M3uLah5QHol8
k06vuxlMvDOjO8DvRIr1+F5D/bqAswNrteLm/eVHlUs3n+W9AReQc4OK6poa5+38jCVY9t+uPCDK
WTRcBjTElEIDxxd8sNM3/uYvOtbPM+DQjW7tdjsyY82jLx7fvEy4Ts61RLLNeIDiizwM5IpsAowy
fl4w6D9Z0JRvvz2x5oYhxDts3Hap8wngU4xGahn6Ifr9hLMIvzTwLLu1IrtzsIa+jsJo/LTa2ROz
u4qLd154CT69xYJ/rf8dNCX2cQOcYVOZNw1UYytE3tF6FEfUxtQ32Vjb5E/HUSWs6PRomS2Fajn1
I+mzQ8hv/RnIRGGkLWRC66jWsgiF8RfNtGVVh1OY1fYEotEqNDrqmCtRE35QkCC72JJRkaojpFg2
zYlzD1BXz647S8TGniMDz3jKFUEVQoz+7LZHne7jKK92zFNsWDOw0Eil3iFP5AhFL1dZowimDAz4
r8hz+qpHNRGMkQdi6moa4weXtNZOeSrG/kTswu+3ejRlWNLBNTLocYaUEGbg0vfNzuWqx7kc8xta
avo+1COHkyiF0w1rYy5GHWFHrmpOUX5t5OMjd6JiXIJZbbyMgFoHOV4+asyyL+g41ASpvW69NzvE
kVTzfSbYj0ahqMZJQ2/i2HqambYTK3l4DERxiWOxHAFy0zEeyuTYZqqegIPgfapmh7t+qZmSDObf
8Z0CW2XLPfjZ+0UaDAr/MRHmSuzfzaulF4cGalBmnhFx/mtXSzfkyk+bTFhYoOSUy9PGE4D0w/3P
bqGYU6zTIWIWPP/t4WM+EWnMFJFci/BT9rs0wXCEc8O1ynGVyw6HIyGIYdX/lPQBqxYTE2f1jxNv
Yldo6JHXQaVMlR8M0Ff6ZOAXAiJCwWuJfwOWGA6pxSs4SW2nqBBngufJRvDKGYwB5Z85hT2WA4DL
QbT91e0fR3FiffE5UuVl694RW7aRTMTG36x+oV7pHcAlemK53bBeChwR6AxsaCf+S/5Evw6lTkRb
rElHVTUqUoiJbLxQXYFmFcWWoIkoYVugNfNoKgz0GqEP8MsjeO9e+/gCRSj0rIXTD9o7fyM3yjzJ
UiWOyDfYSzrlWjlQBo+egA4hY5TXONzWigt5t9OZtUAqS/sKyfSgeCE6TjEwRkYtUMfWHpe7yxR4
eOjzU+0sjhexSHWy6QYN7v0JVYJ6h/ceudm+60GaAhxK5biwwfBcbfMdV6tIJVM7DxVPDBAjhxiL
ENlHBKWwb4QNSM4C1iKKPN0Pkc8h165RIAjw/diQbXIIJQO3/GJyzv1eF6dauQ3i7nKtp08TokQU
GZJn+J5pP6JUnp/nhgCeUtBPnQDflHQ8txyl2zgjG7GpVIYSEl7pNJnyHlilL6KT3bwMWrAUx03d
NVFds0qUaKtwbLaA40eSwdcNEYmYi6SIOW9gRstmS4p52j2QuXbXbw/5dIMtFeJon63EsP8w6Xf3
UX577jSlpGFi/8YqXSwmRaq2BItGsO2bBYg0KpFhfHNKHPXLJZYtE2qvrvODoGWNlNr7p+CS85JZ
AAa/Ad3I+8RQInHoDvqpvGwNDbIwjnCs2VVsq27Q0CbasU8+MTbIRUM6o4eLkjmS2yKrXb9tx95U
qHjpqaCT4l7Ft9yw5jV2jKwlF9NYJgrBEQtcySyIxOdpBPjG6GQmDvQfB/RPKbF6aMZqoGL4bXMe
IrSRKxuknaPr/odYC8BHMKNwZkGvS5Tqwg0uEPaILsXnLApJWeqLVGkQuObYpBOarZV5QURp3AaN
qCFcFyN5cKLWpmkMS+aOArWjw5I1PuaikSHXKSq3VL8kwZ2WOdffSRgaZMYU66Pzqw1UwcnCgiAk
ummX5arBPyMr1DssbEmteIF+Pq1W0JNiXtCsAv5t+FOE3m0q29LbcoDxfQhgmTLZMEvsgAmQD/Js
zO8WGywYxGhVVTyRw/amex3N0CwSXrWNqZp1mYFc/hUge/NigK8sFYXKtnwPtbAuhLHMTxWxd6qU
eJv3f9PrIuzkuyo/GcuqJ6nbQptVsvbv4j/q9zWpuZeM4w0Ol+CPTQCqBjMskb9OmfUUO4Qab83P
MT/agV3oqNmzmm8GtZxJ5nW07CePlJADtRXu/w2YS82zrfEESC8YA342zIIRTRfN9Z61JOFG2/Ut
ruAh/8q4sWvoTYFfdDQvHF4k94MfBKq24Bdp7fsOi2yzy+53PNCMBA5BuT6zpp8wUSTVEMG9PqIC
eaBItuL7J8L872NS74CPLrqKkf5iP4TRBmM10jc7X2B7E+uIMFHGaE3fJ+4M72CHtU7BNVCJAcbC
MHJehmzngapcO5PvG9VnjK0tgYcQ3pn8WGYef9DLBNvEisciFbmslWRVGZZ9uif3+uihBsrq4l8A
SqZEfwBlrl3atQTxqeEibJZnKroumpsqvcuzxBhLak0dhfAhjs+egvXsdSzNeOC5rCKQBQyTqc+H
TnPhQBlbmumtS76kXfW+i9yb8eckVbZuwik7iu5Kj84LqoGCPaTyWt/RlXMvKD7SPV+1XXf9mA6j
NSe2DoOMGmLCdH2VSuEOH1dml8Cl1JQSkp4ZI7C5xf4u4xZT7JRJerAvJbXqWHeyqhUSlj5QGsn/
/2KzIhFmFuyYvPLDRFUL8WqQkS6x+JifXkH03i+tiDOAigu5Cwox5l1u9q5DjANE7XN7HE4nRnhe
lA+RUWQnQhnlisW549sh4cS/WSrTOHzAdfyx+vfhQSIbd3m9a0O4IzIEb+iz1OJONdV7ZJTbVBTu
G6sMZJ5ebNAzMcZn/m6VDU9cpKvjnRVtoVFNJ75WwYzLVV3Cv0UR3dfM2k9j+KdFziID70gQa9Kb
KMTyVaI+nZvKD+7/X1H+IAG2zD1CzETXRTBjxzsWUKwjRiArby3ZKkzabuJtY5oyhXd+menGR8ij
LFC0V7Y0wLK7ikMCBufTOwAtye6o5QIY2tUkFXraWbVCeuU7APoi/GBb
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
