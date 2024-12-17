// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 30 17:03:38 2024
// Host        : Winferior running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pm_rom_sim_netlist.v
// Design      : pm_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pm_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18096)
`pragma protect data_block
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
r4KLbTkDiVQNZeck6Z/k65t4Ap+IgbPWgciv
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
