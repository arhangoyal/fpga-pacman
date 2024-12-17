// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov 24 10:53:27 2024
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
nZ4MctepcYm9D8rX7DGA4hgbW8Dm4pr4z2E7
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
