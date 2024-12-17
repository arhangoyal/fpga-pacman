// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 30 09:55:03 2024
// Host        : Winferior running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ghosts_rom_sim_netlist.v
// Design      : ghosts_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ghosts_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [3:0]dina;
  wire [3:0]douta;
  wire ena;
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
  (* C_HAS_ENA = "1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
        .ena(ena),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26176)
`pragma protect data_block
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
jc5M9mASl4PafFhlYQ==
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
