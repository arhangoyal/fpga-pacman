// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 30 10:08:17 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25888)
`pragma protect data_block
GbYDo1cgB9WrTkutRCai9Q/wKaTMCxW+3IlLb3TrvCx4ujxMCUUlKBha9gGO4iG/Mg/9et4Xkvc7
cMVAttb3GwjAA7hB9kjiAhZLuglA9GLDSmqWXLhhDxyApz6WUHbk6Hnr55cXUh/tlhlGhiTGrCek
skWPiwBhKA2RGWVGY+qPCdlOUy8xjvJP/hOyQ9OaHWK/WlO8wuSM93owgXeBWQV7ufQg7hsV4nbg
/BUGR+TUxEtwOqdP4tmWFdmL9CfYC9ePGH8cBGy4V9E6MuKT+ZJUahZQnqa90o2BgbzRQPP6FxCC
uPwSC+zQWdJUV1P2bJuNOxvfaWLcoQPgwHEEiFWA8f+RExtHFudY6XmXtmJiYOG6kiJG39f/GDK3
Hwh+WHEJqc6TE1e5v6J2vZG8fvBVn+3Bj68DKZkqZVoQjpmBjHtpRJlorl2AE69sKqGBLnNy/Ugk
xMWSweSqul9+n+ECK+kgpuDrTt8QBmv5YLxS8I8Sg+hSO8pdUXx7Qjb5d0kRu1HXLyIHERWe42hO
zRQ49oRvhf8B/7Y80tOxJoQ0z6jP+InFTcakSW8tA9Nome9r3N+sDagg+JiSg0wop37RZk0JVivW
s1PGvWpz1UpCBCodBNL4beggQdEQ3Mb2mjXQn2g7Hss+30lcIysIkSNLNRX6gRYbcpedyjO6KW99
JHYBSZ9v6+wqzcczKj8TAvKUqGnMX4t7ENckhoDzUPx3guVyM7QSnMtALHRtKmrQ+k7ud/xJMytF
bIXfTuVuwMKtPypHn2XR5Q7tX54mzF8Efv/FjWKcYxU4p23hqzJnY+ffVePQlv95ho1UZxVxOGlG
LECS/EW9X5bX5jp0BUAIIgcJwbTLn2sWVgWisu8T0bKyn3IALiBMACyVPNolVCkjCacDmF0rknPR
Wx+qHWZSRjQ6i7UZIfx00xInWFomlDzhgcxNhzPE7FtUFGCu/BnHzuI5WCouug6Ut2hzGZYt9dBL
MKBgLEAd0dY4jRsvaFjqgrJqJOH2YpYWWcswOVs646b84JEJWJ4bGQlnafOWDOeY4ENBXqZ+C7JG
pvvwRO56qLCOx/y00K+cu83fp5gLIyr2tHKXuyW2d1HTLKnLe4b3kSAOYbjt/NBQAeW64ahf8hHE
VOapc4Bs+lSksRLmEsoVTqZ6k3g1j7D9kzQNcs1GlhCARW0Kvh0ejHCYeMfM1zUIudNUwJ/VcVdn
n7oVsBcHDodG5c6zewhpT6X2WNYW3ElalEzAT+j1D7wtSbStKSDAOdjg1YYMvOhBk1x6HY9RrN4c
Ng/e4eIVKT8fB1iAzEKPoLozBLS34Xfd4zCpGYrl+NgHzXd0cWeB/xyJkAbNyH5yg3Umc18qB/Zw
qnxSc5mJIN8j7Kg8qwQHBA1dHUpsnqrg3bDfHQI8+7q+pM/KouK+vpKZ2e333x+GKZOp9CZWNBjk
VYAkXVbaHN03qqM4/WRAfYeKzobT0Mip57DPsWF5n/YdciST1tBLD+bknpP/l1eaaGTJvKpQUXDN
LwubKbc/kN6IRSX3TvEh6OGCX1dHPTeQ2lq39ckcA6nDb+VE+bsE3UmQwCjif+xdClhNIdEfkqNk
ssTAA7ShxWIYm6EU47s3EQJxegW94T/w6Ac+GZYiGwd52wZytwSt8nPsrak/Ce764Ve+/j7nf0En
FFUMPmi1ml1F9MuNACkMCKeinR0yrc4cusLLWeVDvgEulHlJgNHAErgoxkFegd0u+uNKRgJsHXay
3jnxBAq357cFoJ1zmcrL0meq6RTPnPLhbzqSEioXW3RcPvTkVkZ4VyPgybpHwyO06ML+53kF0iUO
rghH60znnmxoJEwa9Ojvhs9nKlDTwFLASuraug1C0dhgOlRDDgRp+bYqq9fGz5LLZfsxHklCUND4
s7S+GUO0fzW0KVSd7AnavDHcUnFSWUYETFEr488iahkx/MRdZHAX+dO0NdSBXKf9xrWBmO56DdtB
iSYHlvy2EKTHkjxhLbZbL+7G0vMizNQ2FBlxgwT/Vcn5r9TSpG7vnb4OLPxdQK+uStrfbR3IYsc4
oI8FKZkxNOwx113XGrRxHJPVpxQjNMYhQDTwfEifml7OIHOIvqd/Cp8FOtCL/TsqadEncEKHE92V
I0VwYp61vT0EozSXCpDfFUWPUtSgCSzpzzUym90lHbIKHm2OOBDFm8IVkA264PEMiMPZd/i8EGry
JWGtmJ4NspYWhjYe89olOTm/c82W7sNSe3/gQUSkaHJK+aFA+VKUpefWeysnC6xOR1IfZfRZqlh9
EvJZQUmsUsUq9Hg6Rcngauijz2DN7qyhy9tuO4DG9JlGbSIo82xsWRZzJGzUW83YLJ+iUrIJs4/j
uozfxXmw1iVsveThOzEdQEhnHPYSUhHX+5H67OHKFKeLvT0kOqCjey0gD7jcc/dO98G/lftlLc+h
bpSq2q1bYAjYvD5WVy4KAWUB2jGorR23mQxWwgDQ5MuWgekmeNN2E/EqK7es3R32ff8W0zWRAxQX
iUAwZQCaArqxeCJMfx0Akyv22pR0Ij1nfOSHsRx1/2QxoBoyYqI0G60w/Gw0kluonjIf+1mp1vVo
Ii9k/uf9Io9/S7GpHj2vFqsn/3cnd1gIZqdv1nBzL66SF5ZU0xooeLfsP2tMdvKTbns4ptsj1aG4
UJ0KYQW8/PM6aqDJC6mnGAZoFt6Pd/aywQl4XWv+yY/ivgGmmiT6CfI811nnb3XgBJt1NhhdYowY
NlJYbF8JDJFjpaEUu4gxliztF48qgxk841PP/eSH1VPGFabfzXoJkht88a2cKMhKar320Ca8eR6f
hfEE63DpzWvMkyHmFEQMtbtdFpywbAO5cLJncE+5B/z7CPo8AbyP2TfS9z4//9XP7DVcSHdUpCp1
UK7zKAV/QapihhswzmSu9Rg+AZDqW+ssgxQ6C1wPUpH3djwLDMmct6wxIOtBoc1wPgImCy8Zy/MR
htmQZFyh6gd7zLPvNbNv4eZVFh9IGU6Po4F3uI02D+mOLgbY/DNVQkmmKRFs+TDMnrEvw6Pe7OX6
qV26JG0EAG5cTD5c+1rMpOu5rYHSVt42j3/bkt0uT8iAh8Wa6mKhVWblUTlEVIAnECgTbCXWFeII
13htWabsFBSOU1ZLFlPEMPKEV+eDzXh9j7yz1+htmAa1U+vpidmKvmBDhLeTmSibyYVJXq200AOP
ctxLRatOgScYNSxYdtTe4vgjuP3m+oB5M4D2h4DlSjtPnNqBFY26RFeXZLuQ+WlraEZEpD6tZoxW
V9BERadKQgfMASVvnMvm8EqXxy0KcEH7Oq3bKkG/Aatym/KSgrhhhnExCIk6VQz3OOx9Cs1WnlHy
ThlufcBzTr7sh8OdhFnSGghR/wXpzFQrdKuyacteTyduy/mKZLyLbsb9R8LiV8+b4g8+P8FeSmra
KiEf4XO0vI03e7YNdSeGkLdBLBekJsTNYqTiqS+mj5yjK8b6WFPBs8T7bOc79Py/XDga5qTYLO3E
2mRq8bU3gWrxxP5U7BAuoGSd2dh+1jNX0ccvROxmyrem+GVFfmYG0v54Wv5uMGyQ21xpPDcSBfGH
CI8xUjHh6r45MYHtqatMBWxctHcZlIRjp57SzkrMgBJZY+dTt7HFt79M6iIwLU/1Bv9uPBZjAGnm
d7a/l2ru1Vkz39yv0MPXjqzGm2cc2BaPbczkSvEdR6GPFZ/1aIbTs+DTppG2Tu8YrN8PfYfdggNW
7YngVd2AcLftJT2ImkZ1PFqBrBob/N2nNiFMaJKSL6ziVWmPajYxWFCrJg1EyVUf4dxHjYzsp3rs
jhTv7S3xYm/tcIR0DbFclf/VbbHqR4XGC7R1xUG6q0NqlLf5Qp+Y3hvnPbcsbeN9MpGV7yxJI+9k
D5np7QZaZ3U/XXUH2SZASJXO/VOhtpUc513ottXnYjb3fxB4pPW7upoBLM9YUBIq7iZKrMKxD32d
v9x5jNyQkVqoBuKialrX/3mXeiw3SjuO759DsYMPDQCy5jrAg/uNDO+ZE0PSod+gq1LUFUosrsdi
Stn4Lw+HXgV4V3LUj1ABYN426TBugn1w51nVbN+Vq4wqolCYaeFmgbkkIijKBHnnZw5kmXDqfjKb
tHAIZPExpvu6pTUpoyO9oEg4tBhsd52m4hum1JH4Sia5w3ETCwtpLz6rrc/ZkGh7h6C1m1saNT3G
sQ33RIEfYlDAZvR65Hksy0UF/lxLAHiVGpcaScbUdp5Gs5b/XP9VEXQUd35ZWnPvmL7TsicfUMi8
DBKPDaFsZOD7wlgTztt/HyKpqcrwvJgIyN4gjB7VXS+k8fzR40HVHE3sqNYIarVRBpeWmo2jqQzF
/G5WdzejxDNrJZ7oD7sOBg+f53NOw5osTiBq56EH8aUZF73o0IzTlOyFwWpBYTzMulfjiV9zkRDT
4PvpTLD9bCiN+aj984HRM1kRP4j/A8TdZpw6Zw+yq4PLedfTHYCto2dn8u4BVolPO9oyJAuH8g5h
tW03E1igbgCoH+SKzPvdqtfsPtjx3ba1c3aCzgQ8+QR39kJpb6bitUAVLvAuuExgvoLIkno+0Mrm
AIRG29ghEDFs7ygE2fFzAc1495YApPrbnWXFkcqmhJtuEgJtRGKhfUPJ1+vWaPk2Y51fqQYPo+yH
uWbTO6MlFnP9GfS0WEEoMJK3ITgItQoTKMOcZ7Jb6PKxM1gUnfhTZLqpfpvIm+10DCSNbofwzXsa
800Ka9ISft62is+EbyETTfls7iVvjZJHtnzl2Ol/5Ro1OjFrQ/WUxDOkJiiSP0LDjeTqvWi7Q70l
4a3rucpPg+3rWLEzjV8lx7Oa0EzMsfUQQ3imcf0zE3FyvOZ9BaUrKkoc/Fm1iMKE2vZGUy+OtwWO
n6hriqM17rW5ajaxY5yHvQH0IMQRxVdchmO7DNPhxwHkNVp2JddS7px/DW41Nx5mHseuei3dV66r
F/ymUFQpytS6GLdpUzFaicDc+yxzz389gf/Gz9YlEwv/QH/c90UQFnjhb7YdwRmTclFLWbiCYJGz
xik20LOgDfFZ9ZcSHuVprTcc57ngI+5V2jo6r3y0PttCGDjHbPemF1TcITecE5FTtjxwgEHGqvHu
3PhMbAWfoDrZd7yiO6Cl/Ad3kRaAq5NjWw0EHmIHjqZzvrs8pUOT3F4CNp3zoVmsn4WFPD/TJYhM
sEscVyHRwkjBskLNzd3DfQ7dq87t0dLmLs+m+jXPNOiMfT+/Gi0ls5c9bGJJPkIKG7OsuC9MJSra
ou2i+lvIxEFAxHB5ZzURf/P2MnrrLKScA/3h3hYxrodthVN5pDk1Cl40jujsrfXh4btKQU3PPM56
7VPD25VS7MG+t3YvTHufKKSukOuzVUoqxhyRGd5kEZ+SUEudHZGIonvOZw1N9FXkFno6fZ4Ee0Cq
an2BvsZUoprKS1S9u7l+Ylo9nkxHM1FCaeXLtiwgPkKcUxNQ5OgZqRRW+CAt9kM1dyAJWPVQZy0v
EgOwNleeb5Bxj1ND4dLJNrK4UFGBbYhHrLr8V3zc6RV5g/VoVt8y+t3ZTfUWCX/SIWBLwEzQf0ZT
/K13tTkBy3sWJrYHrNdQj8A89Nxx4uFIpSGeHvtw2Twxep4E+RdNUi46dQwiEIHeggmKEMCIg+ys
1H99mo8dEhXE3QX5tumXNrQeLnjHC2gbETh+ZIPZbTqwxV6o+F0hAH2V+L7OsCqmw8e7aSsHg9zt
0CHjXFT78b04l/LSQaEiXWVmvZuOxd9/jebaW2fjiTUDMHiwYlccUisfOi0rIBrhKSyfxwEfDhxO
W6o3x3/LkuoVETp6t/lr89MCeQmCk6vzzY3gdiAs91i8V4qOLRXhVfyrV5NxA1b+HUwPTjCn1e6i
GURblorzszbAc2JyvEWdMf1F8fKxt1m3e3dVXykM35D2WVC9xxl8e1N4eqFIVYFdiR7kAxUkLAcR
L9APtJs9eyUjKwWO2Za2gUkdFhHk/m45G+9UHFNPGQ0QiS50+AP7XdIPbw4hIvF2ddd9N8Oo+8XA
N8H4ENoRZrjZ3L1ToK8gQk6YqYE/vVtB++E2oJdKegwdqK1yf4NlM/yze03FPmjZ+AyYw80nxJEK
zkyzIyjkWzInf4GMfeQVL7AK/BuysUg+hD5dlkgUhqY1ZpxbNBKo/ra6J2raxNE+0hBTaAuLu+JQ
46aUARnIle4HhJ84vyQSRh7iLtpNb2VNEDrwU1PvsCpDKAAZGvR/dJpo8trangJvHT4nc5MZxmLP
iRluvcMYP3xJAFQDHfdgZ9T/it0DFTcwKpdVvCsuLVzH3UVZxyr18VSOrvfZWC9TyJR1tLBYHa3T
gMPcw7H+fnhIQ9VBgwhE5o/lDY0oSAzAhfxziu1xUjFEq/Q2LrLnfJDNPcw/gm53JNv8Ft0Z/qyW
0mKhOGyZeQq6Yc/ruR6DLe52HWnPB7DRQTTHcaxZdYXn+nDwGHPixuT45Hrfxg1fcc9B+PvIvPgr
fGIR+KSn/wHa/YgWWZPWNMuJeLD39upPXirWQ6QqfNKBuIzZUHIHwVgqQ5F7L4BTX0llIqKD8Ly5
UcGpkS9I/ASiuNBEIKsW3WhWDsN6L/kX43JrwyVLh21Wdy25KtvwlQD7uO8VbGp+LJUZjF+z5rUX
ZB0C41AprSDhO0VAG1R+WTKLUFFe+1slu4Ob8unESS1zk/J1IFSJGi1Oa8d1zELtYs6XFV7QX6/2
zMCxjelxv7KvfnNauLzWp+p//AfiXvHEHtpdfe53w6INwetpvpjngCu/hxyVMhNvrZs1uMXYNRHr
BQNL5NgkkUSutiwMrXcgG7yjnWcfizNJVF5EmDvwUnYAQLkLej6CjbxVyHb2I6/J6Nni/sYpVfzS
5hq4w0auAdK4y+KvDA/VKdn/n+2TxJmbxNSdFf+fzB7oe1Y8zalwpuxUTHBqJTPe/ZM2oxHvaWYP
EFE9+WW96lEQa8C2MPz84yTMTdUcKhOaGRMOT49FsxJe3NmJfpunbOGas349z4nGM2zPo6RSHBYY
C99HAi1UBC1JxjqHiPNuHFmEFEjIzKvdwOdaiS458w6vKa5imwptB7PkxUAFQwlIJwPHYyHOMYG7
tiZk5rKiG709z+699oNQXjSrFqncpb5rC+OMBE/QglPU0HJjX+Xy49CVe4iWMFPSdKR3tkJSZ1v9
LZ0eiXXZDFH0vdRxiuY19PLL3nv2WxdfoUKdZHbwrauxSd5RSLLcfULb3zyvIKB+iXSjhoh9tdr3
+xWVT9+K1Dh44bXQqBL3qzFJkzLyKCLT3NGM8LFDW+fO1tyGoSTOx/Kf8ZaysA6yhksi32bIqVgn
2pRXFZ5sZjGOM/vOc24gkIMfuJiJdwZffcF/LycYm8OvTwxb4SODBuAu7rrd41TXHwej1u5fIxao
JflXQprJgM/zzBUFtuEkc8nYIehki1jZnSDQ/tJFtVhsD6FxdZgRRUmUPHeL22l/882H52Yzr5B2
gHNWrFX9taCBK44aikXbU9imqmQixlhx0PLmKM1Q+YsxSKZHnfduxj3LJQ6ujqewz4Piz0enVlNL
NEKP53anXkcV4p2kklAl6mp9Uv7F+hbdNE8RgXH3W1Bb/+F7VmYOz+b71I6jqzV62zxdW/GncW23
NWGUwxg6rJo6ZbLoUCM5BF9GUMjFJEmiQAoDKHTk79bNrH8EW9vEqV0ar/9UppH5Pzs2DUkUbxfP
xQvbB0ZETHoY0mqO2AZltRUEW5gb6BAJIrNdYCgq8BGXNhZVSIM5EBEfd1SPeC+y+DSSAj6ytm1C
5T0QjVNi7SUs/6Kce7JOlppRsxJCnbGUJAYdUL5iT/3+qdrOJx3kQ38ewKi3gtVlVfEKU4s3lrDF
c9EamL9iBdmKTMTbmwRtBZ9/jczuSm1RtI+n32krABeW0nWPW9UjhNyq90vti3LY6E+Vm1cAdNKP
auGvIws3uzXH0JzAQphaikj3jAajDK9XN2Znhjwusm2VKbv4AHduGYMn4tc3UM/EV0l1UMoIQ1+s
O+SS5pt8fHfW0Xz0gzudkYAlVOeX5vqzIYHRjuBqoAEWEvhHzgRU2/M6YJxU/oR8m4e9Bc7LftVJ
7zM7Pk8pNJwGPstq/jjxBpY3Mnu9rZp015qu7lucwtwvPs8tillIy6sn39yVbnbqXC4IP2p4Pz9o
NRA/rGZhkIt7GD6uBIbgQH8K/uMdJ+C19DDNQEJo2FEFgoGkHStO/bN0ZslL2rhP6LUkGeGH0GCk
LWlIqerQ7QKH7/6iDL9uQccvHQz0oawCtfZFqjGRQ3aEOm8TGjzX77DlqbvPzu1zdb8J1I+aTmwM
Gbo/ulUFlbYKvnlAAbPZ5Kd1MIRkmAVsloUzsGprZsHVXlSi/Kb/Wv5YDmfTFoL0YtYVyjlil8wz
3iTA9nF4/4keLiEep0W2gd5SB5ePPq1J/x5glwMBeMehx3dlll08Pd4yY3IsYQMpQZ1K3fZRJFNK
18mdTK3nAlwAXA3C6QChQYrcgMzU16XiuGZd90i4bSbmHdXy8TiVRZGVo1PsFHVxeE8igtoNEyiz
V6stzF+CmQBgCo+TKdiFzOGKFh1ax3gED8dZgl5Asqu7f3uNJCJz+N+/wPDRCIRZQvwyf77gq0Zj
aQMi94jiuk1jkmTbkUiDUYQzagj/nKQ7jPGX/hJ8oOcBsJ0kURIir2B+KUlD9LlBAimjJTKgjfdo
yNQe+YlZGK4oaJU8tmlW+CDWensu0+0TsXeaGj3ytB9EZQ7SMcO1TxWOMtVQSmbSd01wxpYnBsVS
Eo2iRWA/kq3kd1ctT7xu84dVZSdMD2V9w5hPR3rTg6o4zBYAiO/rsrJvztTyqyPOlgtVB7tKKuc6
UbarcuqrKcdHDIhzlUXqgVYjsQ4NepekUqyfbSxs7tf88efQy32uo9/nadC72QEjUqF5YLQeahMS
yEmHo52dVo/383DmlotomsB0iXn0/Ke4m3LAnp489mpnppWV7T0XFTGrLhL9TCMRew2UEh4pLJt8
InVoN1PrMfZnf0yluIz8EcOWIhdAZv5/ML6hCOxMq/pnaElzlCrWTRRuvP3tQ0hfqyJq4C1FYZwe
Q5T9kAqQzd+dmwDFwoxN9WyMt6poL4TFValJwCLFQYR/Es3p2PfRJg1eMlA3LL8a/Vbjmm41t5z3
X/UOCvXPGWHXnVuTDi6Mc6U5CeIkxYjGn6YE3MacoXaqVAsdTkaQG7mSoKudDRUv2Tw9KEGuCf+D
nVro9mtoaK6OU53CpYaSbWj/e5CU9FhkNpaeA+buiFdcQT6AClKzh/O33veTmZxSfErF7qhIPoCi
lDzSQWZgfEAch0JmtnkM/skUJjlIyoE0sjc2AwJXG4/yQMdo4Mc/4iVD1tTwV2KTI3D8HpIXKXCA
sSJV5FpMekmoiaJ8304J83LtBRcdOxIbdVRHZD0IsWzoITO1etIJ8CqxolHLIDAFfBSsrBDuwa4J
yXe1IPQYLKspYuyJpWY5pnJpfemEM61aRDdFRIMgXZ68356fvQlnkdUhWUPLvQbCb36WSUUuCYgq
7S47PUSKz7qtFlOBFjMDLHDXXQoTrTIejzlXeCmNW8kxhsKochkGFC3CpOdw+frA8FfcDZkLRkBU
b4YVPcE+FIHBW/F7iQozS54qCOnOJy0dApHZE/iyS42cVRN87NUHG0jXTQZAO72W9Nvtte5wQIHc
101E4aB/1vdoE5fSZklL6iybGRHzH9EbDZMMFb1pHQ436p+burtqV5XbZFE2zgb0VL7x67U2I2MB
9Cc98OVF5G9UdDCIiOAp/u9zN5eYLqDcrrYjo9ANzMbPtszizLR2Dw0JIcqiAWLTGrNIBt4v/Dlj
Ha+xQ3sDqta/QvXitkOJavJYqi7KiQMI7/iMqFYhKyegIjZbfHUUZl/P0KI+RIjxS3r51dpeIrc0
N+HgGesZY3e8FcI5buShyc0+hn88DKNRbWxtmdjyKtmLCQN3BSy1LGARX0T9Cq9ys2Z9TjRbs+n3
7qnHtWBzWzy3LhnoYGktZFZ8Av9bnoKTHjGAp7r4qJqXq2z+PDV9dEYp5ALCeqxIdHLXlK6e8akf
1FJCb4EbfUSg4h+CQhswgxbFQiFzl5qvWBzTfx4zZni8HTP5ZDO+HdzuFrxmD/ZT9O+ufAnHkmqJ
pjjxTaniv/VoWl6fjLGL5n1L75A/swmGjVfRmtgjvm6/UbEMIJ8l26mY+ER0JPdXXpdLjM05AKFC
ea4UsHh13KbGZKf1boEdRlz/icW0UyNTFWMXymYc7bETAHv4Qi4LTq26uxUcsgkNGECd2EqzlB5B
2rSfRRzgiht4Gtk4LzAvtnq5zjVS20pGYFS0YdxLVGVHPPrIORavEP+YHLRfTBRLoFmN9s8fwm9Y
8BdJt5LAlYW+7Tq5ZUjA2XFVLAQSyMLB6TCOah2SCRD/iUmumZB+F8zTU1uy/tLqKm8Ua45tu/Sj
qdmv9XLwWPBUggTQiJGFjdiBgfp5maHOWG9433RjidEPp08Q5ob4G9oCzSc/zYYj8Fe5PCMWebJq
5/75Jwxml8/OlqqBmO4q1KGJvn5hlg3D0Jr+ekjUdhCMqVVFV3rm5X6a7TIJ8aCgvariowDYpOgp
1bw+sMViMAKhpjW6teETwmc0Bb3zUH6Bd9pWke0eyAh7fdbmE2U/DkVSU3wf7IXQL+xgiNbeecjn
OfgTgcPzMprCeBOG3B8hTeU+FvYyfNpcmFvVQwXHjxAKOUGFXl9UXLcKc3ocOX53zSpJ7Ln4oG6w
jh9JIO9zonDvblOnmu2UZf2WMG7pOuzwI9gB72vkD1PDkziv8qdW0qN8JGQtFE2C/8kLzi+pD/aQ
taQoZOIOX1laHn0kgAL6h7TvlHCSzXEmBQIInya46T1liWwST/fsxcQj0BSi1CHvl4EOM1wxpjZQ
VJ3xluB8KgyWvjujMAvS26wyH+duulip3tgjvqlbNtC1zYRkBelS+gnO53SN7v2IsJCtMlvC40sK
nsxPiaJVVwMWiLZk8O9fW8rSx1z6xQHgkfyx9KcMWT2qv7oeyaoZA7eEa+Ck/fT5TiAu2ssyHUQd
8VHcRj+Isa8vq9Rn95QbmuffwUpEF9n7GWPsNMO3JqbyBg6M62R3nkDOz7NqodyrS6KcSylUhiE2
/jDsRIcq1R6eM/l5I9tJRkke2gxUIf0vplPTP+cCX6Tzpzm2Pw7nOw7eJ1l8W6bbc2mt295s95ZJ
PJwOIwKvXgP94m4qlmln8ZDVHKjldPs5bdHDGDpve0j07chmtslB/guHNb/D0UmOPrvgJOR4/3yC
CqLgwcZO8tUIDbbBKLWxGpRSemR7pTtxSgdmD7ap01dMpziSSygDLX0BZfEIeBWYPhXhONKBjXHr
5S6f8yGNML33MeBwFuPwYMH5wqoDGdu8BEc8UZbA9D0xGVWRTU3pfZGSGa1brdh8tFgnBjdVl6sn
5SkfkMJ9Ak+N4SiBu6lGrxL4pgllpN0oN769iCcbSJnpn2Gg1j1Yl3oQ62xDd/5Hu/giw3dZDqqD
2x6raEgxeaG8XZQk5da5tHSWlLVPFtMXHa3auPCRUuSqWFqpwKe7qThr4YmjhizVl6xYz2dQlJGB
MpCw1SjCIS6SAypGRjidQ/kKK1Teyv6OKxM7H/G58pchIHk3Dya3qHsMzb+qOiyg2MANUFCqIMPs
WrLG+0ww0lKaW7yeVcFoTorXvw2eu9h5SgUoUuNcHU8mpmnUv58RiW/odZmcTV04aPElyC/Qjfv3
hWjagh45quGnYlwPC6WVn14XQ/PPb6Qd89ltvZRhRwJQtKG577d3J72s1hS7NRHkJ2SrozZeCMVu
krcDNeV+uZIY4a+dzaPZ8TxBm2Hiv6J0ugTFfdqpN79casu+QjP6T7y4R1X1tMFzEMO2pDBq7Ank
FxvU2cLUZjGJGSZEXBikkAL+aytYwljM5I1H55YdtQjAS4CIQ2pP7EGDrVWFmnemaaTT8I1jSSbP
+oL0ma2wTTZ+649A/cBVZxhIGgE7WRhrijyTxsyv5GdPvuDRclG7cUhlFyxob9EvRpLo22ZfIuOb
PBIf/EJuKmgP+kFDm65i/+3s3qS9AA1RRo2h/1+1vb7OI9I9nz0DnwxxISpffFtBdIsWNBNJkBSr
d8uQm7D7XIDOcFEK775LRFgTPxqNVVHZ7Ec+GKbJoXKzXZ6i+C1tH80AK3+9+BdAxbl1kPLIBPEj
1PmGQ8UD9aI5cnq7zyl24/AaJBJA3YmeqBryGz25NObtCCnTRiUPGD/I4SfQwXURnypXZmNFkQNi
VTSjuwz9MEVdhsVuvxjJpPcJmnIGkJgW56G2JesIyI8j2fXdPjx9dypevXag/V7NgvXozneYSdhz
ZdeKRckbBFWRhP4ZDdgL3HgLxtgAxETSz1KdDfQLzHS8EdoS+PBdBBHzIrI/HmlBw+XP4ndgu9dW
NIu6QSOVIbA418hfPoAsVbwBT9TBt4isOswYaaLfL4LsQ9BPPfNt16DcULDaOnrJUllMBBgPDNki
9W8BEnTdwV1u5LX+gldzCQ2Wosqr1XvvP7TOQnLyFikI6FZqOMLCQgiE6putFLR7ycGMQORuto6T
oG+1S2fUow4YxJysh+2vK6DZYARAKcxk+Gq2aFQVk668Ws1TicO59ZRVYXjITPekJuFzdgE61MXr
3b8bYNnEQRQ+G+exj7cb4xzzS6UCjF7OJeL5uXqA0lD5Vg+5G30nnE6LgG0RFYy10CP1G0L4bAml
46I0kDLyoa9qz2l6K0ltHejzeuwgxdHuz9bFx/ugOBLTdW2z4LekxBwhfW+EZxM4zPL6IU/yDTSr
G4AaHklKB0EU3QAULAFhBhwnwzJoo5PD7EanWO0YawVPPvm2oWr7/qgLA8qo8+Ng7Lu1r6KTjSD5
aYwWi8h9f7Nr+IDdxwe2sTOkOF8wl3zLIpYyGgDuCQ8XZqrr0/lXAuXVF7NRBzCc/sx4NaueTqAl
otRFP448DEgunFEtOzqoSexgVPRZWjtp00IBptNFWFy3y0gDaPbVIQMu3OTNZpse9WHsy0YCoP7t
boCBGTN0wS8NlfqFoPDfpFS8+R+GFpnEjzHi10IrFg729cUnXKZhriL24CE3voJY0HYqMZu+1xo8
oTSRwKIk7FOXAeNiT1nm7gkV8JUZEJkwDYzl8KtaWbzcHiAVlYypkfyOxG9jDEktpbSXIQXaA7Vf
dwwGvdPNmsO8vyBgUpmV4R1Msrj+w7odqDCk/UJpbt0na1MGP9F3YNTPpmnGVaqdYYduHsYgHoKP
L9nLkYjxt9Vg8sE4xEbiKSVIlS7l7bgxZkjodl8j6tVVwuMQcyjwDB/bDnFnXsXaVvDZJf8AhAst
ME8Kqqk/5GmBqXdFRPA9Vi2c/2koBj2Nk9axl4lEUi4CWR8iJiUJjGXIsoCDX9fSmzc5o7Jh/yt/
4thfEvZ/P3FTEq59B7RaztR1EJnhAeysMqscomQq1wuCjTjX2H+GM+QRuDNcNllzSgMnhvBH+Red
0X2x8vpme7BmBzR9/D3Ny2NQoL+osi2iEkGYULLhlJZUImwX/XxK1EjuZkYyaUWgP2/NjZa7WFv6
YlikvkkXFhdSfClas986HtCzCYmWp3RHtDHCsZvdwKseqQhtShOwLYLnpoZjKykxOQl0rt/qb7ld
/5zLcpyJ452VJWiF+3XZJlEigJ+H+2JSi8GcoVfHOBjLUniFwODtnUbKiYABRC7Cslv4EXxdq+co
ff6PW/+XDeCHDZVuZM5xvwL3OhuGAYpzQDoNhZEfOHBcg1SVRm218QbDjCbggzJ+yH0DNOx5sdMx
OK2I5fO4WUv5TvYUActcTKblSNt0AMisHiCHUZ6FjotfYEJ08RwOi4Rud2XZixBYTeethk/RJD7u
aVTtUj85VDnoFOk1OrEoafht/hneSd3fH179EFvVx9gCnGsgjCksCDCbLTOku3kdtN4x0I4ZxmKu
iUxvrsFe3vZzJ65/wT77c3rt1wf45chxTTFhkkV14jbIF5w90EFHzn9MaipOqbC6yQmAgrH6KKQE
QeEbkxL0RBMPdEvPdmV13Vd/D1IaS5OpdNt+WNEAobaf1pOrUAh0jD6VPFA+D+Rjv/oRmazwjDoG
m7iauf1f9csoivXFq7ROcoj4B0fZxzx4GqXa9iQKtP8ZeQIRJB1YFhQQiqNGqL45LJns4uutHTdm
B+ZWO/SJvDGLJ/AAjsJBjd+XY6RiNCh2gqs9XpFMBbF8TdSpiTh9MFjaPX3uTYrJC1s449Aro3tb
YzO8aHQBT5n/c62vXQ9EJhxDIUvS2bpi6SFvWAa+9MkVX/X8wK2QiztNTZ1sIgAvl/EJufilDzoC
Og8ekn1gaQXzZELctdhNRAOps1LXX5GEptA8TMSJKOgVMVqpkcvH+O7IPjBitYFGFD4GwBe5dj3j
/coNR7imvCAFEsZ+sGO5CZrsXKMWrIRFG17MVgEOSjzOc7A06CmbQz6pTPiO1ohVfP8iEzWx/85c
VYaLQyBcy3RkI18JfH5SMrlN6UnBEsi/vvSmFnj+3/2wUygbMHsWDZ0t6ls3YeZhrvukN87FGRcM
Nl680Q437CTL3P/Wa3asypP4y/6WBAgv2rD3Ku6fjNzoPsVdP6iGy1+qqryVvCOmY3iztOKBOjBq
DDbHtbY3mRj64tYW/2MM2fJN7WgZ9E7aBU8YmU9fc+1R9Qv0rGiF829EYh54b8ChkW0S2VYDoj0V
EcYWyZBSHCQ7xeUXkpCKHnYrDTByzlLylTX8jUopaeiOIFw39XpSNd3tBsMLG9P6DZTwxMNoLqCX
1w/EZTmqhs9FPoaloSrMDvxmRurDUrvB3cFRywwj/8ty9olyLL3H2OZMc8wPVhogkauiwnreJqMZ
ZI9p0Ip/Io8OlE9uoRx8DrKuH0dKPw1elLfD1TdgeJbcc5KNXLTaCecoLg3GHjfDCTgh1VlBZEFn
7Cp8scrZldZZLrs1Lqu/tz6R3Vgb86Uxf/Geu5CTa9NoFlAOOP+At4PjUjbUIyWMACZaZ3qPTcwk
/HcsdIpm8YfoZibSNqHr2ZQ7gEwmYgrN+AT1/HB4vw2OhU1brf/c3zZAkJun5X/iQtlqIf4J9DsT
LWeRJcOQOtshE4gkSLL5cgvupUeWIQAuGb+s4kHLf1P/5lmeaQ0XqPHDZeoDeq2oYi70eSq2IYNx
pQ1HJS88c6srkca5Ew522GgRPPtjncjdZrU+zEdVmcB00CjZ89BQXu2KC7tIJopSlqyxxNV+emHt
rH/pMkbPcMED1ML1jS2hibPPEGwpkqLkdx1d8A3NNfPb2RYtHrOSZ2YZ2civQHGlzYnJ/0jEq5xN
RbVgQTDYWZXgc+5pVlz7ENtJVcNNdBY3CTVKpU0b5T0DAbZ0rVdLC2S/vbGsoKprt/B7pcbu2uNW
Qlb/c5Y8RC7ABsyidVvAQAWTZsFI+Qb7Lwtf0q1lzw2sZBWYlJsAf80nazGYCSfxHdfgSVZlP0s4
pP09FKtaDxzQ+zE/0E9/kYFdC5hhoy+5l7RAKQcNy0L4nlDqiU0EmTPr31+qMmtmu+WGnIh/z/92
XhD5JwOYzVNLjtRTFnqYGkugw3Haijlkrro6ogYe4RmjQdsTJst3NR/kEDNtGtzJ3Oxt2Wqsuqtp
eS7uCGr2hkETWr7Ak25a4kPn/urTX2nrkCr9FPffH/O7XG7x8v9STEVHwMIDAXpXw6M11VdwZCIH
XRFIRdSMadh20eG0jlhLUkSmYOwNn8bQRdxxRP5K8IH1bNkZ8tXs1qOO8VftxX95om1YHQVhJZ+H
ZcY7yxjvQbZ06U3DGrnoM/0ycuDJWpImaWCpT8FpP2Yokl+z2i36azbjL18sk1uUpZJGNtikbin7
Qw1F4XEKc8hEyNp/FDy+ZC2+/x+ucMHgX+RduTgQLR2h+agyfhRLY1k7ffrUnsVxoqxLz1QYgduV
RcUrhtAh/h5MqUFH6lx6Drqf/FWiG5FGpcyfOf3x81/lWI0SQ56HvJoegoShVWXwfyPL8jMc8NRs
5Rf1qvffSkHPrRMckCLfL5On+QCZuhKiEUwBUv8tmCNAbMBh2+R+qjVuFWyDGOmqXL+gJalrDXLX
Fk2/u4DJ7LeFmFQ9xiw8zqMnfKsH6qEm1lcOmcdsC1CVPCZB/eiYBZc48le5BTxkXgn45UlChKqL
bOlo0v0AIT/5jk70Mj6KwsPmXrabzo2s2BKbQYuB6jdclQZwJkUykTtYVibH7rf8hRC5i/oDMIu3
4mWNR0n1TXVG6s1iWyXBH0tU22DCYXMht4fr7XE+I5h4lzcXMJ2CL4NIaoSrkdpvoKUMzCf1FyHI
zg6NIUCo9bKA7h8ZW5xsPu207SAZhoszl9hs7Wt+0xGLxOajrmC2QHTKD3Qf6LXDj2zWlIMZuIWA
NWFTxsBy4OJ94SCn3x2J9bryweUXMlqWZ8MqzReZHPBkrHFoU9LGDU3h6NyHAnAByv+MbltbVYYQ
t9uf2APuaOVF7q8V73nV/3NTORDBfzLlbie2LJmdbaA0qCIvl5cPzTKbQQZZFa6h9gQm87dFQl5O
KZhbG/U0hXAB1nE1zbKQ5fMAYB1BlPv0ubCKJJMrdMlrZU4v6OvZakvubcVj0WbBrfUtvwre6rC5
lfJKv5YVIcKx2ku4BxXryWK7WWZ5Rdmenm12ZMIerXFVoIELAQ/M5KG/ozSjJsTzlKp4WGL+7qoH
N8/tkrZXuCAUlSwlvAW+SIptsfL6RsDvOoT32MTOxrJFs1gqYSP8t98E7NJ2xtjKzigzp43CKzYd
7Ea7GEgwLFSPut1zXktpinXDal2gnLSgsqBSStDTVyrY3S77Jl/CDU053Ia0hZM96FwjuvvbWFxr
TfW/+7N8LY09kBNyJXfzIvu/loWrdD2XlZ9fILfHUzNPdXFF+bHIvC4FXCFLJOriEJ1XJwrXvec1
vkVKsu1TRuQwFwIEi1b3/XazhCBm4nPkj0G101CUAP2Xo/gavNCrr6ls4twUhhDl1iC4hxotLOf5
LYLKHiR2zVHEaBn45BgNwui++4xFRkquLv5OTcuDDiYEIxo9xDMTZNVhZ5VEe2wQhMi9pDA6CVGz
7vaYSuPyLyrgSHBEgMAiuuBRRLrMIzhwFMabP2VI2garvdUUMTOywZ7V3k866w6MJJGbCoO51sDa
VQwV0QP/Va5amAuh6nuBLMrYqdh4yHrANM9i6U19ecw/H/osi9wvRUml4CttJnyLXAKHgcwWoran
Gk22pMBsun+IR4GsuyQR01Zv+gqp+Podqfi8hRIgKGSdJRUEtymVe7SiRp7AX/0/u/GcESIyhPjl
h7zex//rV+etbCcU19qp77TGGvnBq2cJcuKOtlT/irefEW8gO3W9K77uDJz06RGv8+7jKGVXspQn
4eHqhY+TOO6RxUrVjuNTVV79iZqhiPKzZJG3xpoG9V77CnvINjM+HUZB6v4BCuNILpRimcOnUhPd
DZguYwm1MdYWefYqNDoYB9Gs2zEFkXeq35fQPNMD23XmYH5bZVedsdwXwOIgHH4XwgnzmrlPo3iU
OQgFsVnCpt8mK7YTTT9J7iUlidBCFAY7KGnfVu/HuzXRkgJ3JI9V7Xudb2mBVeP/lHGKtoC4Vv0x
waddF8GyBVAlMnXj1XZOPZkO8KT+hl0SEMv1rbFRmwDaFx1bY6gl2icmbj6LC7LWPXYTBMtsHHqd
EuQjBCB3DdFgJvWfbshdyifAHz2p9ya7qje5HnTcro2q3WmWwESkXSn9DT3+uFXQRcqIfw7LGSZL
j50wUa17xNcd/ePRqPLLdnFtHG7KZleh5kaGA2kaXYLnna5tNv4uZUZ+MYVywZzsEenucPQrFTrn
hQ2V/vikl5gVt0jQK5BuemWX/tQL6JemNbbSyhbT0XmqPxbxx0264SEv96W2eM6WrIRS+ahbzxf0
vXF15yRs/yu4ahj7bFbhCkLCnh+lMimDHvn3wvNQ+W7Hf09xnbg+QokV/KGqkC7XpzQSgfb7kxIr
y0CZ2l8kTS+0u50iyL0tF7tFYx0TGVs8/8qA3D9OsGNkwgHwnpmsIht2ln/URhgFcKmpTveHCfVq
qzvd/Rh/+MbZUcjyZqk64wFIYsIacjPXDtpn7V0WnCcKlZzKtyQTariY6wJbon95OblAuAonleK1
ArHTKVgz0JyWM85ZFPpb5mpZsf6XaqKHrWWjRLj1imUgMk8fO/OQHD+vvkZZ+HETv5IujDSJIeRT
Lt/wADqWV9rdZVQTSNnc3T/mBpq3Yt6c1Atx8t6vssjXeYG7tnfpV8MiErKWxc7b12HhF8AJNp3q
h+mcEWTPI8BZNj8LFPNQyT/ATorC8Uhwi+PkP/onT43B25Hm0XbGX5B7Q5P/DNW6X/GW4sfz0K8k
TfU1ORarEd6LCf2qqLZoewW9kad8FSabx19fk/e2Wc+R5uCDJqDpRjDk0d7iZX8rk0PnUluuJgDa
Yei2gJq4crQUUFNZ5OIS6l9qfrbyZ/A5mC5Rpq9vwjv+fNbwK+29p8MI1/5saR84lyXL56cw+OZS
Chmujkc6cSqlqcCrYxldbZW84+wndd8fMyyqQr7xl/fEsT5oSv7tULaUx7plQlhCxRD7W0xOBJMo
wf00cdE77WAHAr7lN/oJZOshQj7d1G49VLB1Jv+MjJicfHSXEifXse4lNamBtidLGXyqWkwHLybI
m9kzQPPqg/H1yML/XMkVzuUWx0mPmHdoMuogCCixxv5vd7r5r5lMKv/4/71MFo/w7A5rELj9oY2Z
3kib95kqZLSZFw/PEUDQR0RrN/L/8j3qiuxYf2UgqX8t06nF5ta6kG8g1cbb0lhjpky+eBaYnXks
1SqoYFyQOGQWquY2qTFGDAmh+FHnM6nzYRSElT8MIn1amYSpUH8x0sBNqowHlIjcWqEL3OaN553s
plDuetM3Tfv8fCs158qZRphqCBYsIw2o0nXI7HTgxlIQAHjmjsoENadJlHFrx4aAproSdWN+o1yP
7XXQSTChDzNsqGjmNcJIGhjrhAU/X59aSQs+WhLFtzzzcS8lrpzp97rQDM789GUlcp/BSQPqd0If
AWSdqwc1wBQu+WrW/97Dy4GqBmw8a/hLKyyji1ZncfCchERe9xM5cWn0nhwcQjszSU/xfbdNv/7r
/5WmnC6Kd0pUkCepiXMajjdc6NkgxC7L/7yLULdJO2ogKbc6hoZreYbgX5ehzFYmBPjA0stkyP9M
T+/Dew1M9neS1C+op1ivR5zF5K9uqXn3DsTu8eV0VAJpkeCJCKwbo8NuKEeaORJ5cXe91/i20t0z
dSGiOcUcSoGnvm4i04tRGKROwoqLTI011+/roVbjy5zGrW0JMDFQinHdYZrxMs+p7e/q/7B+/gSQ
vYCLWgzASVoQgeP3WR7sESHAv0duFdTv211Z5HsVxsy9aatiLWiSLQU0wMHMf8qz+mFtniGvJOT8
r4PFYA6b2+LYMz1Ic+OUY2vLaIbDtSAS0UjE+sSnsceqwOHCPPTpqX450sNdOD6cZmxMAPM+vwcq
keXSzgtZLPmplOYmOJdGoF+ErCAkKbMTfTHwRQp2MNxHslPKaTy90gKmpgbFDz8hLhQ6G7oRQ2Mq
KFq7GXO3PsfalbFu/8q/qv4LV1Qb6tJSv8pHRsoIssdhUTuMYRmBLQl45Hkry2GcpPM7xZagJiaD
0P9q5h6hzdC84Operz8STSwRpuUXXDj7ILfb01hPZs2iP76X68TkuiaWQFI6ERu+D4Av40tbhCtx
tXL9xYlStDyFN9BrHay/Rj6bGJVoYL479JG26HUZZi5h3WR3t+5M9vj0qPIETrYT3Nzd0O7KVt+H
owTzbxt7oL8qOSX4KID9hy5o+84pqom77L3PRPjzAtVT8mNqOxYvCdD/2wc8AJKxHtJLz4HTztA7
D+JQf68KmdAzyjV24hOR5H5fu+w/ojG/d99u3bn5yIV9GTafyx8OqxuxVt7bxgy7tB3g2BTIonuc
LKvhRpJ3JyjAfLVCajhjg5sIRgU0GyOidR5fO2PKlCI2pxovN7GahV9oe9ABXE+fKS4vo+L7wDIi
7tmAH4Qut10fs9MssG9bN2owdCFOYeGJWIqR4cuwRZaiMo46c/5ibrRwrBY8nWmTJA5Q2KY1udt3
vom3rZpH2eLN5dyBCGYEVw8mvL3vCiEeQV9Sxs4cxNxOdXs/tSCW54EICB9RjJ67WVaH6JSIJGva
MVhcJpRLLn9xWEW5xx8FURgB3oRKSuWyhgnxPSF2BZIBvwnRCzH1Nbmhd24Lg2F3rf1kMgmuuORa
zyP+O9W7Do0TJhl+gEg7wRWgsKBIPBGQvebWAAlFrQDAbI7F64X6div+Dra+msdmgtAa9tntoTlr
IBujybM86KKFUgtHsrrnhR0aEpAdVoN15VMNh5XixvlBIJ2AmGtkEjP/iFQ+1Z1ng4XgzUNhLxDy
Hs97UjBb6R9vWcOLA5WGUDbAmKOj1/ra9cBFwbEGtituMRs07q8gN3wuUYa6GLbAlLfOx6lICIkF
/VAQ4GVaW63WsBzE+YJDcR/WpYwPJQS6Jvb870VBAxK+mHb4zi+dt5f3tbvh9gKAhYrtOSdih+M2
9az4YBUoiC5C4v9vX/z1QNT0NdP+GtIkc55vTw/ul1C/rKJjMLfkhouzj/aKCPks8EkIl7ZuJjnX
qj7Eply1BOygtrv/CJ3ddwcCfUGwb33bogtSknF2V2Ct2YuWRLa1ifVBBRMiJinW4IDSfBDaFEfu
EhtLWQGq/DEs/Hm1FMIr/U4zYldCI2+6s3eHPUuucSOQe7N+Fkwv/2/p15MsWQHtpr9ddLZDTuXt
9ua4scrzZHl3qEBareQBMrt02X6lOxhVcKmUuY/5qxr5Em/x8EQUWjfQYfMYakjPmdJ67JCKio0j
wTRBmcEzr3x95yVmSN1g4W+8blTnUxGMvZ0pr5fWGuPSoJkHHMMpdMFad04UIkNeq29I+sgRAC/1
9HFwc7phbQTorFYpZYWZslYY0E5z4CnqZjE5V+31K4C8d237/MmUIxtibmVZKvkbdBxLb9bHJQJA
7zob9iS8e7exTvmuJ4jNuiTD+2H2CQfOSlFf5aVXJ+wT9qP6cvrox+IionAW1I0lVOn3+WBEO0K8
pLzdADQhR02+4/mLM8xe6Mng//+oHRpjSbbYZBS1G/jGfb4OFo8GCp6cYeE9VMeX+fcRX/PTcVWD
O+YPcStZ9Px/86LYWP5B/4OD1HQLd0V5qq8bhU09RdwCyxeMSigIuU5ogovtE32tJaU9cIIf+y31
HULVHJctCtLt7aB1g8cjN0YeXHwdjjboy1wn2VrRMTpkMoJuraPC+d3luPElzvU3jJ5M5G/1hU1u
SCung3uWjkB7fHYN+jaigiDQoJ0NUWDHd0wmDpZsBqm0vuk1dLnsOxwRVLwQ3YP+mR5IJ3k4yBWW
GIGMiiOTksuNe5qeCZpxEHjLhVENON7yIfxRaEdhZ3HymQwSlukoV5Xj4IKiiLlkrEKYSVJmgUkI
8L9RoCW42Lefd2I9PFi0saJl1UY+OJykZkG2QhwV1exBmDmRM2qGxV6t4fwyBHo30LPEmM+W1deW
agZSOUCa4ImQaeh/82qsNkyETpy+mAt9NRQQLaENoLVTfw9QpE4W71rgdHKMa5G1HXk7W5cFXY7t
j7KPrts+sspwDIVbMLv98sM4OzbmKosU6u/anDTicy3SaCDhKNjxcbwtAaSleGQRrMd15Taw3/q6
bry4swz9CqskOFuKhKxG52ikz15m3XLELRrSEDRnwD6qA9rwHgENxWNNqDA76yw9en2tcFnDLhJy
w6mTL6NIDpGKstxCyPvBNwjraeh70BvmcJnTJbG4yDBQdU0bIcVAKbY/ZAL96rj1tOGV4xb6qcsa
J5m1++JTJcUV8nRvUGRET313mVtTCiRLcEu/5aLpPxtxJ85PMk4z0nlKLjLQm1GASWyljKth1Wpe
TV94fA0UQAarjleoMO+ePzhxcrdGXGyae0PmmApjMa3N1LBPqkniES4HAAGPBntln7M8drh0mAON
RuwuEnJpm/bgKWmiAmpa6plQCKUx4CxdDn2bUnASALTOtmJ0tSiajr6uaS7rnClqQqSn+oqJp9a8
BYwLCYeLtVv3ch5pYjymmURssbp27FgdLvfKNmLPvNP2jQtsLnAhkcYNHgjKu3sMjqH4RENP2ZEF
tltVYHYi/ISrrKCaBZqubcsO9X6WUsq0mu4VO4CKIxhxW64DqlGdgw5DszDbpOBi79BFH1hYxfMI
OuyJK9I/FjDbSXM26V1pgFMtZhsK32cEAGtASXPUxDB9ux9r2yNIK0Xy/K8XAJ2I28kzNMawERe4
QInH3sS0Qv+5i6vssFrm9dFZeFf1ueC5kcZXtWcSVF9ebHWw0GOSTVUMtZm4GWkCeuI0hTuMriLR
7LhBDzC549CMVXXCJ4LzGEU8ZRK0+kEe7PauwXh+hwoKDhbwHpKpMGgUxNleI+EpbXB90PWsDv02
IvBXW9Y2H91A9fIqLSvzIK0cwaWNE+6ImEmUhmtEmXKcVKrRKABIVbbg9+owY723b6uKOcm3o5rM
Qcc4Oxg5xu2MfH1L2CdhiGLAKdixEaR4G0DO077tytedz0dlZCEcE8pBJpxJWJBhVTX5qusjrBIZ
acga9rFM5vJI2L70Oi2YJ3g12jKYMsbCNYMdKcP01ire/QNV9sEv44k1V6jLQLFIQtQSE5Ofkg0i
MynFiCdj/prnmDjPGhmA8Un2divpv3xdzFyf2hEg9HCoD0TehPQV5SZUhHVUuheylppMkae3T9P0
Hhf9QvQEiDZiyItYf3WfdZklt6MjdqHfino7GFuDtoRvykNFVGcUWvIQcJn/Ma3UAdvmR++K9R8c
b7RqHAcvgzCIstugEPwFMjslAXSDhq4kiv8FoLdAokkyKsNmHt1RByT2y05BZ7bdE0TXp/iyH12g
kkwZc4b7Murf9xMobuDfCS525hQrzgaoVMxjZkg05DnJlMW4S13lyK4+scXRQV2UDG+uehC+KvHV
5/x3kACwiyHRuvZ8WBcR/BvoeJ30QlxHIOKBsR3V9afXUePrVT6prneYk/dTBpWYoCzCnK53DQNp
mQHnloFxcdxYppU7U2ddIt96mYABuuv3phY3R/gDWMG4TBwkK7DDqMLLliJL1yRCpyFhJSp8t/nh
py+Q2LnyBYmC8IDI8iejmqykSBebAhnw8MJcxEqdK6sa3L6psFZhJYmTucK6NWlPOqNM3+3x7EU/
AP+brucUe/DL2+vJvxEHUqIdI32Nofpzy519PSgYVi9AMaTuVH2ty41XIGEFDgJ+LDefg/5PYG2b
h431pn+H+xHym327e4qhwBuCckLcWogvGaK8cWZumhNcGAMK0FmQH3sN2Gjgi065Dm6z9hGEuA9U
MNgE6Oxv77lM2GkjTRabMf/zsL37AVhiNNqrXsB//YXt1CPJAWc0OP5TWC55TUEkYjnxKtVxBLmh
ZpMITAfkhnD7Jl5sk/HBV8omVqRy6ryDOo+coCstYMm8c2Q7Fe68k4vfea0D3W4KzKrUiOOmGkOO
brd7fOXv2NTeFuTP5/cNHGg8NVyH85n8dCty/bccno5fdJY1xpSE2GXaQ89HoJspIEPHOdOIacFa
xF7gEtCpeyV6+wls9n5TWPNXUqGPCgfOM7LXYJt7lVQ8PUWP2ZGCXaBiI3L6KhcB/hDX5gyU/QN6
T15pbG7HZV59/QI49h7Fm2aXY7HWL8PzD46vdjzx54x+Gd+NOIaIi7jraUZSq2dSPTlgEcqQXDXl
oSO51bN0c+I4GzlKsV1TYT0LpKVrlvg+fIaEdZpzSaCsZLnvb+MM1X5yvKdVxsF2FZxjRF6k5vwP
zyJbdgsLw10VDDGWDh5ciQjShsecckkcDt68pz5KbCFC6t5LFzDA2puQ4yUIrXIi6EWKxO97NxT2
bz7+zvv5kSbrLo/tfKGg6kd1ah2kpBNp2e8EOm+oeSS8fh55zX+IbKbIg9ad6D+JR7zRiu5TUbid
uMmaMvoyllyhtCzhGhTyavKM+cQ5kTraxUM9HtMDfgIlj18sgf4BF8pKJ35sIMwM5+KUlKNcOK0K
ksFVux53IxR8B8H4xl8yiGdW1r6lO5axsPvsxjn0LfvSQg931ZZALXwB9HmIK8hWmOvtVZ/nqyxT
9WYFrc4Gzen08Wt64LRu4hCyKFHRYE2afZx4LnNlQj9sSsgquS2CNbrNJ0UHbA3lOMQvo5a9wFoo
agJOpb0nPDpbRMnEAqwG+WO2c69FtOc3CTfPUI+tgVithGJFvDjWssquV5tQoHTHnWKwwjpZBkxt
H1tXR/I6SsVliz8gb4PngEJfPLjmNPcADjgTSQ4uUA6dP33dGLYb15l9mu1ntlMeqcKYF1nn8PwZ
/z2AkO3dWl3Q+ONQEJIi5wB3sQDGT9c42SsbztmMar3OXCYoka4Eb+91l1KE/tGPVO24X+V1C/3y
cNU7gLx0bvwJS85nkN/gpjzyNpqYQXnR0eMTRP8kPVQGN8eLHLm4Wd2+KhoK+Z0gYdfCL0CSKcaa
naNWR9wY801sM7/FawK8griiEI+2yn0FgekWLbszW/qjaEq+99lzOaOFzmf+rSNSIldlXMr5BJrl
XQdcb4C1uiwdS8tH8qRMvpNZmdHEroKBK0qND5DOjGbIMTYD1k2JzWmKCt9+Cz+pXSsCiHb+pZEx
E1uXWciyvezmzvkwla8t5qBlUrgpFR3Qem/IrnhK59p2vU3V+kaYErVU9imj1pmQdlJdw4L0389R
SFJ+5cxdKWMxsjWg1DDst6bk/JSwBJD3PPv/FiuhwCnIER+lZMaF8RY2DaaxulH6TcNCduwnG2ED
njJIpEoopeq5Qp/TbdJy7QfW5HcnCf73ZzHXhqEQ+S7GdABYOt37pGrfPfA6hTiJDRf/gdvfS+lT
3ncAy0rQb0npkGwrC/DTwEZR5wDxpZy6M2dDt4br6BCAX3cvv2Pb1ZFIj55it6ozUjSo6YfMJrKT
Lz/xDSuhsl3tFTviFQzhAzfBPDuOlQYaq/7Zo2HsGUxql4yWgT3y9VOy4hKcRoNeV2NT7y5/eTI8
xoVhi1BXCDSH16Fh+baNF727YsjEF7wQ9UHsGyxtxDByPFPsjmmh9oAwMHdqPXEToOZE61N9LbI4
sDtEpXsbEPhG2sOMPi7eMqSaF+FoPZU9Ur3xWmhjTSjKXdNU35dwv/QdaW9OQfvpSK/XJ69O3qoY
j3Il0tibBwAnGklSStiFIXtnL37uo+kgokSbLqtVAJcjNiwUtzWINNVpOJRM4T3cySMs4PP6HVFc
Gv6ZSZGPNYK/mA00B8r/FsujU/TSsuyfiL9sOdMRc6FQlbN37sxiNcV/hSmNFLNzNCue9+gv89u5
x0KzgPCSC8Tq5mClR7CN1ziCH5Fb1ru8rJjcvUlm96SFS/C/NGcYAcikGWoI+zSkFwVxYA1nN7Qs
O4azvnpWIwSeo+ErLmfHvBP3XUbNVXrUyWekTWNndfgoap4beWZ5+Y+OHK+4uwNlW6U8nMRfx+XQ
jaKEW2A+T8YrQRpUJ6z4ALvvVBfxzJ/m5KOwbTU8g17qSAF7Fju2+oOtiYxN4ykSSZEcbpreLAlS
/Y0VonrJiKmu+8SwHejkjG4RRif+Ua24nUkSM1lR5YiU1pc5E7awuRJTxmNQ8D6s+ZQ0Rzci2w6z
XSsrPjzETnN28pNZBfQfuKadeGOMSF2hPhF/l2QTiI+CoElNx869lbB4KFtjcIdv6RzUeG8f6LAJ
EWzUTHgTSmI7uHT/k1hGDyvR2MDf8nUbsDFI41gEDCFxyDKJnZ80/yA7tQeVLp0n/buzwPKi/gKH
LC25WlarOiNsOn9y6Jkda9S92j7a1dPx+2buZPbhHCq5/RPrq2Rx4jynmUiJeJgkNxCfBYW3/UIz
zcqdTr6Lnq6dSq1EfnFVZdUI2LB0o3a6eTNiBOPgpUwBAcnASpx8Ihgau0Iw1mJ2kV3w/np1R27h
8cA2Yrcw/Isv+SBwhxXveDzL2RyktXb5Nb+bgzmjSsnG1W8TAzohrW9Li+64y88RdxDT1XyfjqP/
Yv3+K9ZTUZNA/+InrkFmBds51aB4Z3dwAMpaSECveuIzTLk6H9mX8DILHoxGOzQ+Ot0Xf5Hod+uD
gWHdLknPn9RPxKRTshaheNE+Ywuwum4UTn1kAfKbzS+zwOygH4sLkn+EVc2rH36MWyDQDv92rlrc
fuayuAR0VOwU8/d6UjIjIAC8FNSPErimdPtazVeeYY6gfZGBq59ic+bWSg1OXvmoWhSQDADjdPt2
FLB+K9kSaeFMAbE3gRgMV7crors41zg+ZLGQJA5WHFh+va1nfBZX303L/2yoOFNUG9cyGCEx4i3O
GF2BLEkkPXjBfYFHVO7udM65GGUhb0pL/MD+AblkmijmveM2HLJVJVjbQd/c9KEWcNzTOVdptoJu
DOa8vxdMWBWpIRsfwSV5vIzj0b2TKaYcuK5mDFC0rftXdrjB4sxCj33bUnic4Bbs/DOittUppQr9
qUO1htBqyQgzFiqA5T20rpFm8cELg1NXg5Ivl0DJ4QCPewdjVeU4v7vFTwqlu7pFeDZmGln/3zrm
a1eZCvLPLoe1Ei2C0cddjljSztK1PPAxQy/dOA9anQ28ZEb/HqEGL/UsfBWu/mWfoxN3glTpXpK7
zkM28GPmGMH4wPGXpTrGshIsJEe57u3nvF8pK/RWHlI8oKEdEuigxbXOaOHxaJBIFSlFbm1QKuKE
Fb2GkReoHt0b1THPe0rU1e54N2x4cc2YTGQmoYDP+9BRA/xA1tJA/CO6rK0l+SlAL3A8UCqX9Wk2
S3q6a+rFPS823+HcqPlRStdz4gaBCYoXssf7DSOGRZqbN8ItjRJpHxiqzFLhME7BSka/cPDp7es4
mrks/BCRYdzJ2QqJ40EvLbTa8Oy8qeWy5BNqLP/AGpbwc5BQ4U5c8/WhwAf0M2DuFbxMp829Ipnb
9zZWQDO2jJ0ZYz0TdHJmvU6gjIlr5pTQk5/Kyzh1U7Eplbau05F3hH3GLkrpKh2yXlVElkv4FXSd
u23nU8TVQQomd2uAOBvekeHG9FG3fjgOKYT8byR0Lnh5QR+Spn03YhoXXGavcngzXgZ1zUMYkLxL
hFUewEkEOyCqIK3HBXMPEnE3Az+GpZ4upAOJ+AQqCkmbZxi7fVliLlx//noOJvO4D2TsO+wokG6w
ycHjDgI9FzL/qjoUW5b9vFnOWssPeRTdhLFYKhFT1uo2emg4WHph1GJJCh9vfnOWfijM50Ay0AEx
GdbqSh1hzVkKbnkfI7yLhwAyGdFAoUjpHNEJELghZNFtPeWHKTGHVr0e1XZU6xqLdUUlDIrlIiOi
mueEZ87M3ohBlyDUB81aZSBXFH04ij4INcabTtB7SjaWa36KzGoKsHoV0K3FIRu2W5JC1m3mc0jv
LJaxWKEhf+uR/9U173THklrrTk4kpoDum74rFjSKi/R7RAENxvlz8NSHa6U0NnhDU2psshOqwuhO
++Cu7eSBWRVvvrcCcFVuscO9V1oghGoICcTzRnbAHiZaWOUpfqdbtEjCJLHjwWkQiI5UZ7gftsex
zKmXEZ3yrir2bqthBBIYi54AmENlNSV+mTnsE8F0PXcRi6PUXqTFnhZQfySzbmkkm5wuBp3i3c0N
ZLGc/ICyV24oPIRfuwPLbUGmDKGEhywKTvzzZJik/UyBnSyP146cgu8lfzpcCDY2laJk5EP9wJo4
vKFtu4pQcSi7V3qbxjnzwfql+FxX08zwONa0eGVlELlVUObPJ8Xo0YNv7/E5ssyRbJa4SK+AFbSG
mEJMO9tz1IHJP+m21tf96boRDooML+ldeAj3my09qz0c1vON4JWcnlPdBKubDVtdBXi4pA5lwl7d
JnorJIGjUGYBCz02+QXSs7Tu9agPOHDjRRPaLnaWRm72kvk3HEv4CGDk8nJ9jdPDGTV1+iY5Sh+A
kj2VjWyaYZW+8rGnL7YdkTHWtm2qphHR9E33HvqCNNX6WL3xRfcgEf41mbFe6ndjeBDzX8mMOADO
pk9AzYTx4niwSHc4JfDvf8j51KiuG//GUU9MKe/+kSSf/m1LoDgrQJNTbnr/JrdePTOWvFYA0OoX
XkuqzoDsLy0hb6OcUFmQd4uTn1DJTU8fGhYqZ0rEqH+GUQ4+G3NLwiQJnSu6jD37Q2gsf1jqCq+W
NAUQt0YQ32iRlSIOPILHo/ReDoXrhIrs9sbPnG+2xXjGEbLbtyTlcSRci/DcsAEsgmOz1jBv6VG8
tC99dtX9hmy3KpTdzqjnS7LiW7saHw5kdOPPo++EzYTZBV45hLiCEQnS8rVSzQ2FdJNgzd63WXoy
U9Sl3cIkBJibjbP2rr9ADTbQ/OLUW051WXlJ4T/SOLaiLepZKDTxJ/eByU9eGQrF/aAtpnjhOd8N
zUXI0dc/C09v9Dm4tbiuHMMGAlmT0t8vJLgAfYIWUSO7QqSle539WuZjcQM5F17kCJxOyJ+nUXeX
chLJgZjko02p6wIE572CvMsp8C68AJY3/gMte7mcCHFeRkSij1JptHWz4fi+dpHYob5ljaio7HwJ
7otk3kHcrCrDCJ0sIQcyuqODW7F39/LIfr5GsD5QMYogA+vgrXWx9VOJ2TagO7fuFlzrnypgD0xz
Gf0HA/yFzNsw0dGPJKnyUKEeMuz8aICe/PXMMw1ysrcUZgTPyamh+8uERA6toS4QT+QpqFqR8ixB
6EiMIsbEotkdPxgUZl3EY3Fw9Gt/hS3FqrDUXaFiul5KTuXojLd6KXgBUc/3CfbjHnKoh51CRS9v
ZZ/WgWCiCvjC5OCYFdKjtE2JDE9LUeSd3jw2g8p4W/at+uTW1SV2vfnTSyiZ7FHwIgDAVB77lYrB
Nfyoz32hlw4w48ZR8MSIQvIKbNG96hapEsgVe23VOUmeRhcg0rA9ujJR4as9IOIPCMxMevaguooG
+64+V/Wi+dIDY46TDhod/mfjNlC71/OOMEVxgiNoAL0Ni8WITpPJFgWiNZpGIJtZiUGSGV2VoTbS
9YNEg+WmvbndE0RS4CU+Adg/1oFKBq/6FTmHHxwusEvp+WzoX5MnpumSl5jntzm2uuNakIPHSbCH
ILwrDslYy2jOH0XJLS1qUBfUNW73vubELD+8hkJbN7ATuQr6uyd9NzYe/zIUq3d52Icf9J0xmSKL
doaZqkyIXIZG9CUsjy6nP80ujxFkgzNFnww3UuUugeziRREH8UenYGCj/AOSJZk2GxCHMWFUmcWF
oA0jdK77v4kBqzwKlrdf3DbQ3N+K+jY2WdxQLIWbkIYIZaqixZu3v7676pwTNOz58aZwOlmx3lKd
kvQGI0X6Zs6PxPHNb+O8hkJSGrJSqThsjCH0jM1m+TKhmgLFEC0KXfP4Qb1XT6irWxPa3KdJrmex
eggH7V6Bv6EU8FOqSVjhfF/nXlV9f1sMw3Nfx1oluCGB49Ba0XFPfTQ/140kaily+5w5iydC+oPg
UN/fpadMAPQuCGZsSDw9w1cqsNnkdFPfmyCTI3JHWf+xFnNrki+qQsd2gUDIgcb/8KhVMXU5QuWw
PWMws7EvN7JWI1yepA7kvH1xc3IGiC36clGwGU066mG0hUchELdkBYjrCzxM5Iq3U1g7J2698Fkz
EhXx7Yj+yQyI0N9lLObDcdJBv944jRmasIqgBmTxPDqwPaJTe2CjnbP2SEM0H00sO62F7Adzq6l6
fP4tF6OoBawA14Vdc+YiPYr/vl4CZFONXBJojtVwGrwgN+GljT3IZYQ3DVDh/WPrQVA6KDyFH+kW
INxGXDzdd/vKjsMc28+zXf00K9OhX7wiM0mKnyWbd1LVlzr8LAhVP/29HKvZUs1LEayMtgfo56BW
4rgsoPwe51kFq45V5qDrex7SPLePWz/K3B7Kt7XzLqENrEnfxaoqxfpEwMaodjGdI6Cs9o/vE4eb
jxUaOPCkhvD2OzCJ76gSY8ibhgpCD0HavEFxm9HUe97JGV2Lbz/jhRZmULdK5iFzz+6cRMWlmZS4
fkKMEVZe7ZXg8eAOvoRqTyF+OHQjxdQ1U8nN53mR0m7Ir4iC+EvE0tSiA96AJUDMNZjONAWgdDe1
eUPCWDuYpUMWJ4DTTlN4X9SF1CFiTCzQ/m7ElYbuSum6cCcZrz5Tu+ywbyFu36DbxJESG2kTAyZ9
qGWIBDKNkUfypxWD6gp1dqWEAegPRSiKmIx5fQKywHsJ2J3xpayhbAXsoLBxOqhJJKGAIGYSPxoi
kNWfwfli44bLp7CAlWl/Cm0YpT4WMnTQSjnaSs/7zqReIYGmJHqHAaC5XeH7t/+sUtCvWmoqePWV
Jd1ZpXmU/o4wfbUI9e+rD/4YFgWyyMHsLyCAQaDnKrKel845YBV+ih2ayr0UMDM2cSE3Vmqi4HSt
lX4FU+AxBNdXskq6Jj/XfVa5c4froB05gUcOOzy1NpJrYJBATRaIqaLyyZO4AmHZAQ2YXTWv4F8B
acRYMIQXPEBlheW9P23/iekb3PNYrWqmiMS57eZ4aXT1l9pdi3hWjdjRSkWJrF5RYaKZWIAEb23Z
ygS97dFxQKmOP5wM8Wt1khCyCXXz1DUDdkdXZc1PYI/kiLbbGFultxPP3adDs3AfEowNh8xYY4Dw
2rqQbtn9BUVMP0oedi9qF7jH4ieBipcWPNcheL1hX/uZmhRoGnoCFLRU8FZwXsEMofqTlT+PjY1S
B7iYEXjMsfKixcUijTUGrhXGy1yNTx2ZsMFp0DHwH28eBDsFO1dRkIESn3h+MHvZchf7bJiu6VBU
a4ycSAUWqE3fKx0tYLdjgU/O1uix0QhKc+Cc1K3PoyYieVFnGRKVs6GmYHeTufexrtxQpSLV+NWq
HhmNrnxFihedbNrV4VeeqdGZEcX+AvScmG16JlWVIZfp4Rx2uGIh7gWcShwbikLhYQAJPvxbKFhf
n3spGXoRL+sCTFDxK8BI1A3F/9zOSG7wYWmTz4RlaqxJHYLXco9jOLLYSl9C6FT0nzzvolmB2QOO
MvfYDq8BqPg4Ztgp15IrxIIOdFtumAp+z5kLWxBlPvPdtKddHdMcSZHrwzucfzdZM8WBe1/xG2l/
CvY9yo0u+i8T7cxkQ3azVFXwQnTh/llL0bmRpqXKF5NSu96vXg3IsXC7SKuqll0I4PVE2sGShnP/
MyPKYJ7ZU303MUrBRJ2+uguH32XIgtFo+gYR0oRuUxXg6mI4gE5OaA0L+xV2DXKIR1AhfALFDXxo
A7uu/72AkFXE6a31Xkli7E7c3D2AnnelZmpcxuiGbtdJMJmPv4wqSKpJzd/4f7wqKmxIQGgjdhgX
OD+jssbLsBBKoigjXzjW3OQPNkeu8MWqJBXSMkN8xRPBhCCyNF1bvMlC3xCAibCD6IsrNkYb/3e1
Pf8ySaE9dQojU3SHLLSLntHQiCBnjrt8IluuPie7rWwMSstfl9f+45CfmxpQib5ilDHelKvsPOpT
GxJtfwamyXO1uwI2ZqqshEQwbW0Qqdv1YWj3joxUegdHLtxxmN6ohtvxEvZARFHsAcc658qMPtHP
q7URpFFsl6uRZ1VBNSJuG9sADA8PYBZ3fqVAYLFJmVQzvicUaMPdkgsFdXI5Ad6JZxGEFjJbeZPP
EbDAFk13prnnB60vll2IpHJMG28dE2RUvtd4ZZY8XL1DuNPOPy2MBIAbbHRwc7jo+m3n5eT/mvpm
tda8TbJUrQdhspeRtEu5lfyRnyGBipPfA4dika6bLhsk2+YjjuOzd18nhEDnACg2SH0rjJFD+jeb
9cMw4SKHsUziNXVn1MoiI9u90IxfFS1E7wzi/6RKG102ShPgrqeD138AoXDZnyvQNDbOkWI3LQXP
ckMBvAUvkhhi7ULClGNKi1oYSdnIM3+3JyD9gk5k9KaQTjB/+ENpeM3G9c2SyjLADTtNIGUheovf
laaUj+LHVANmwGRus20ivY2VyHug808ptwLr3ktgvy9Dlz9Y8HN1gIpPNMO9G1Em4bskHXQeOOrz
sOiWc1BRiNveVIY/fd0tDax/nbGljmsKTyLD9F3rcoR6Dyf4bLfjPtaDTlUMI8yzrFErOxozkIxB
56KUzvVGoQ51i4QdAQzVWRca65xJ6iXS2qwj1690RSSRbLnnlT4Sry3CzFz3DLMojFDGBYhjx0w5
q3j44StsJIQt2IJp/hMdDSjENfNQsAR6y2VRZnH3DLVPEMgf8TsCeYuS7WtUQoY9PwiMRDZ8jB8D
rPGgFV3orHjot+MHOtBKCgRpJ5EGna9/Mfga3n3N/MWnvoFxVFyhOkTdly+QrTY7IOUHl3qlXfsH
JuwcbswOGIjpIVhNN9z6Rb1mvgOCRRE0rSexJmtXVPzQ+AM5heMhM/rpX1G9R9Q5573uWwcLAdJj
aSpxvBQLrYW5pqO5T2PoRxK6ortaVbBWSUMkJnyFXdJup42Lg9+ZwnWOzqeFb5Bpyks6H/x+aUCJ
HavRsfT29Y+Ff/39gExcuvPUGSJuK7A9jAPVKAwVJEyd4bBA/m85HGerKjdI1pcsUgXfMsRtVxxD
sdz9Kod3FXAVg+LrVPjgdVlO3Vq5Jpf1YtdNLF04UoAVtxYMtzshmkFJCxUo1ms73p08Y1Frme9V
i0UlPZhIULCF8aqJcW76Ac/HxmquaKPgm6dANgEjfaHUFP3r0xNZYRCLIJTr6p8UJhjzsjGJdQR9
Ps1wdVyi/OptnVZuLU4R71d4fap2qvKOd8uR6JcV5453NlU4ASdNo173n2IybztJHzruZR9tEMfz
SW8u/kgXhjOD0tgGjO8ciFnAtryDZbxntXKNYcmgB/3JGh6QbtUkn1OiqVTkfrMoaK9niPIvehnf
YyrCBXXuHt3Mg8ceC3kL73X4Fls5mtjx1greZA345RnNc8czTvF7zuy66hRNL4H4g8IoVH6P2xe6
V8dEpKqU+r1+P6xSY/5eHmRXPEQoZy34xaul2FDXjs24g0zBwVj/wvU9MjMUwPJ6fCvvnFnMgb5f
VPob8wi3Aaei3itfkvV02A2iLkuHZbtBoZiJdkgg7ppTM/Ka1G870GlUE7DCmiym4Af4L8pmCfAE
gG5dY5g6OzwQqd+1NtjgGCUXpJBzRClwVLEY28iJXfpGNRv8D+EKAJzgZ8aPT6IMDCM1Jm5o8lNL
laclbf/4tqMyeS2LP4fc+MLo3b74yxfsAyvutwufUo+ETEfujv4mSQ0hpovTHJjZsBWIHGuoBh73
SlhricZalks7IQTIBYmmFODtPJ5WkycFCgAkFdQPLk7mSH6+v9/OYkT89TUH7a0Z3yVdHRacbNAl
quOUQE7OVW4m3AfKIsP3l6bOSKSaUU3w+fixz1s4LeiKD7kiIYWiGQ7AanRuTURg3YfK04Fo6Iur
olJidj5eCFvHqLF/gRRwrRVrIT+vXtvpxjJVoV8dukvnIpLYHzlumghU4fiXcI+du9MZxgnHGYcM
KhCaQvqseeucUG6z+pPkQD7LssuVFbJXgPJ0w3a9ecn63hFdVAWfO/OONJmyaHmBLjQbQYGd+3DV
d7A51gAWxvYgJGJyQq4/saACgaqPt1iLJKwRzeIjdP365zZkCqzdU1o7Xb7d6hNKL74Tgd54Kfh4
xLQA9t4UEX36yPkhQzWcnN//kRmS0W+77m2Y2Q/rLNcWjLW3/IACNp3xBuEeIpvV6DedueYA3dpv
a4ccYkCSfgSXgoLcOK2XtIUexhU/2T9ywHVc47CfVHVrqyKi+nSfHu7or6nqd6klsyFyMyLfJHfE
l5uOu0sxohinMAmh9Lsm+fDn6vTkV35xtxl6nt/rg/PBSAwxregpBAUZ/UFu58L7ZKO5tN28IwHi
KJaHLD/vnytaVU3PtA6u6cQywXhlMLFKGbzXJZj6IPX60r5uHUejU0pObrIfFCMVe5BHdosttkHT
LhXT8UdJTejvi1Ug+Rs30WH05i/p4i0juVn4EFDWq+ZzkRSNu/tQ+9qXx9NeIwVSJncUPvn/anJE
Orf7FA2xGkcEF8yJWB++EY8UzYy8YM/Yrv3zSnmSeQGB2Sd1IQvc7Rdvlp/hC41QS8JdGOcmHahm
BiXfvkV7LcPdd6y1JuN9a2KUdaJvEDFskFgFTiRt8O5TNyLSYA0z7lz2P+OngUFIqw1qhTSrcA3p
CenbbPY8DxChbhe8nHGyeBPzSupzBqsgIfZkjm2EX6h3w+IdC7FUMVkKghd1PGihCrqDxks1ByZB
uu8vuZfAE1iIWa0tkUo+WlpSfC7t0207vovWdgPnMnv+0awbDwoSw5/37AtxDxyY0KR1i/nTtdL6
BITTEo2u/oaC7sotrTG1OBIpSxs4SgKZKW5f6AIvd3Lpvu8tkVAU8hVRtzoxq2EqQYED72wSBQAw
GM12RstVjr+VO5OWd+6NHfsOA/K/Di8KYCWC4lDfxkweGG0dM9YwwT7pZPZY7mNzPRmW1Q+5F+II
c2Fd7Y5ePOiY2RRbTl8L2ZSb3BmcoNmkVUoaI3Kv8x+f8P6vKvf+rM8vAFMWLeQgUt+UCVWscz0v
T9Ym3v21Cb/02sAuAqfeoL8N65wjr6v8JTOl6EECddS1KQoVTxyxBy/0OhsrY54T8hnlOpNsqjC8
YXDeXD6OSNJCQg==
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
