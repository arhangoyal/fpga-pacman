// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 18 14:07:13 2024
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
2YxvpFjOS82yKoCHUD3WU+JYB7xUBugNI8++
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
