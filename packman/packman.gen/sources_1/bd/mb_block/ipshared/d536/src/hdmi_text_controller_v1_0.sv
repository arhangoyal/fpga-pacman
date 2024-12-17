//Provided HDMI_Text_controller_v1_0 for HDMI AXI4 IP 
//Fall 2024 Distribution

//Modified 3/10/24 by Zuofu
//Updated 11/18/24 by Zuofu


`timescale 1 ns / 1 ps

module hdmi_text_controller_v1_0 #
(
    // Parameters of Axi Slave Bus Interface S00_AXI
    // Modify parameters as necessary for access of full VRAM range

    parameter integer C_AXI_DATA_WIDTH	= 32,
    parameter integer C_AXI_ADDR_WIDTH	= 8 
)
(
    // Users to add ports here

    output logic hdmi_clk_n,
    output logic hdmi_clk_p,
    output logic [2:0] hdmi_tx_n,
    output logic [2:0] hdmi_tx_p,

    // User ports ends
    // Do not modify the ports beyond this line


    // Ports of Axi Slave Bus Interface AXI
    input logic  axi_aclk,
    input logic  axi_aresetn,
    input logic [C_AXI_ADDR_WIDTH-1 : 0] axi_awaddr,
    input logic [2 : 0] axi_awprot,
    input logic  axi_awvalid,
    output logic  axi_awready,
    input logic [C_AXI_DATA_WIDTH-1 : 0] axi_wdata,
    input logic [(C_AXI_DATA_WIDTH/8)-1 : 0] axi_wstrb,
    input logic  axi_wvalid,
    output logic  axi_wready,
    output logic [1 : 0] axi_bresp,
    output logic  axi_bvalid,
    input logic  axi_bready,
    input logic [C_AXI_ADDR_WIDTH-1 : 0] axi_araddr,
    input logic [2 : 0] axi_arprot,
    input logic  axi_arvalid,
    output logic  axi_arready,
    output logic [C_AXI_DATA_WIDTH-1 : 0] axi_rdata,
    output logic [1 : 0] axi_rresp,
    output logic  axi_rvalid,
    input logic  axi_rready
);

//additional logic variables as necessary to support VGA, and HDMI modules.
    logic [31:0] pm_x, pm_y, pm_mv, pm_dir;
    logic [31:0] ghost0_x, ghost0_y, ghost0_mv, ghost0_dir;
    logic [31:0] ghost1_x, ghost1_y, ghost1_mv, ghost1_dir;
    logic [31:0] ghost2_x, ghost2_y, ghost2_mv, ghost2_dir;
    logic [31:0] ghost3_x, ghost3_y, ghost3_mv, ghost3_dir;
    logic [31:0] kill_mode;
    
    logic [1:0] pm_frame;
    logic ghost0_frame;
    logic ghost1_frame;
    logic ghost2_frame;
    logic ghost3_frame;
    logic [27:0] pellets[0:30];
    logic [31:0] manual_reset;
    logic [31:0] ghost_reset;

// Instantiation of Axi Bus Interface AXI
    // Instantiate AXI Interface
    hdmi_text_controller_v1_0_AXI # ( 
        .C_S_AXI_DATA_WIDTH(C_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH)
    ) hdmi_text_controller_v1_0_AXI_inst (
        .S_AXI_ACLK(axi_aclk),
        .S_AXI_ARESETN(axi_aresetn),
        .S_AXI_AWADDR(axi_awaddr),
        .S_AXI_AWPROT(axi_awprot),
        .S_AXI_AWVALID(axi_awvalid),
        .S_AXI_AWREADY(axi_awready),
        .S_AXI_WDATA(axi_wdata),
        .S_AXI_WSTRB(axi_wstrb),
        .S_AXI_WVALID(axi_wvalid),
        .S_AXI_WREADY(axi_wready),
        .S_AXI_BRESP(axi_bresp),
        .S_AXI_BVALID(axi_bvalid),
        .S_AXI_BREADY(axi_bready),
        .S_AXI_ARADDR(axi_araddr),
        .S_AXI_ARPROT(axi_arprot),
        .S_AXI_ARVALID(axi_arvalid),
        .S_AXI_ARREADY(axi_arready),
        .S_AXI_RDATA(axi_rdata),
        .S_AXI_RRESP(axi_rresp),
        .S_AXI_RVALID(axi_rvalid),
        .S_AXI_RREADY(axi_rready),
        
        .rst_man(manual_reset),
        
        .pm_x(pm_x),
        .pm_y(pm_y),
        .pm_dir(pm_dir),
        .pm_mv(pm_mv),
        
        .pellets(pellets),
        
            // Ghost 0 interfaces
        .ghost0_x(ghost0_x),
        .ghost0_y(ghost0_y),
        .ghost0_dir(ghost0_dir),
        .ghost0_mv(ghost0_mv),
    
        // Ghost 1 interfaces
        .ghost1_x(ghost1_x),
        .ghost1_y(ghost1_y),
        .ghost1_dir(ghost1_dir),
        .ghost1_mv(ghost1_mv),
    
        // Ghost 2 interfaces
        .ghost2_x(ghost2_x),
        .ghost2_y(ghost2_y),
        .ghost2_dir(ghost2_dir),
        .ghost2_mv(ghost2_mv),
    
        // Ghost 3 interfaces
        .ghost3_x(ghost3_x),
        .ghost3_y(ghost3_y),
        .ghost3_dir(ghost3_dir),
        .ghost3_mv(ghost3_mv),
    
        // Kill mode register
        .kill_mode(kill_mode),
        
        .reset(manual_reset),
        .ghost_reset(ghost_reset)
    );


//Instiante clocking wizard, VGA sync generator modules, and VGA-HDMI IP here. For a hint, refer to the provided
//top-level from the previous lab. You should get the IP to generate a valid HDMI signal (e.g. blue screen or gradient)
//prior to working on the text drawing.

    logic clk_25MHz, clk_125MHz, hsync, vsync, vde, locked;
    assign reset_ah = ~axi_aresetn;
    
    logic [9:0] drawX, drawY;
    logic [3:0] red, green, blue;

    vga_controller vga (
        .pixel_clk(clk_25MHz),
        .reset(reset_ah),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .drawX(drawX),
        .drawY(drawY)
    );    
    
    hdmi_tx_0 vga_to_hdmi (
        //Clocking and Reset
        .pix_clk(clk_25MHz),
        .pix_clkx5(clk_125MHz),
        .pix_clk_locked(locked),
        //Reset is active LOW
        .rst(reset_ah),
        //Color and Sync Signals
        .red(red),
        .green(green),
        .blue(blue),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        
        //aux Data (unused)
        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),
        
        //Differential outputs
        .TMDS_CLK_P(hdmi_clk_p),          
        .TMDS_CLK_N(hdmi_clk_n),          
        .TMDS_DATA_P(hdmi_tx_p),         
        .TMDS_DATA_N(hdmi_tx_n)          
    );
    
    clk_wiz_0 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(reset_ah),
        .locked(locked),
        .clk_in1(axi_aclk)
    );
    
    mapper (
	   .vga_clk(clk_25MHz),
	   .DrawX(drawX),
	   .DrawY(drawY),
	   .blank(vde),
	   
	   .pm_x(pm_x),
	   .pm_y(pm_y),
	   .pm_dir(pm_dir),
	   .pm_frame(pm_frame),
	   
	   .ghost0_x(ghost0_x),
	   .ghost0_y(ghost0_y),
	   .ghost0_dir(ghost0_dir),
	   .ghost0_frame(ghost0_frame),
	   
	   .ghost1_x(ghost1_x),
	   .ghost1_y(ghost1_y),
	   .ghost1_dir(ghost1_dir),
	   .ghost1_frame(ghost1_frame),
	   
	   .ghost2_x(ghost2_x),
	   .ghost2_y(ghost2_y),
	   .ghost2_dir(ghost2_dir),
	   .ghost2_frame(ghost2_frame),
	   
	   .ghost3_x(ghost3_x),
	   .ghost3_y(ghost3_y),
	   .ghost3_dir(ghost3_dir),
	   .ghost3_frame(ghost3_frame),
	   
	   .kill_mode(kill_mode),
	   
	   .pellets(pellets),
	   
	   .red(red),
	   .green(green),
	   .blue(blue)
    );
    
        // Pac-Man Animator Module
    // Pac-Man Animator Module
    pm_animator pm_animator_inst (
        .mv(pm_mv),
        .dir(pm_dir),
        .vsync(vsync),
        .rst(reset_ah),
        .rst_man(manual_reset),
        .x_out(pm_x),
        .y_out(pm_y),
        .frame(pm_frame)
    );
    
    ghosts_animator ghosts_animator_i (
        .vsync(vsync),
        .rst(reset_ah),

        .ghost_reset(ghost_reset),
        .rst_man(manual_reset),
        
        .ghost0_mv(ghost0_mv),
        .ghost0_dir(ghost0_dir),
        .ghost0_x_out(ghost0_x),
        .ghost0_y_out(ghost0_y),
        .ghost0_frame(ghost0_frame),
        
        .ghost1_mv(ghost1_mv),
        .ghost1_dir(ghost1_dir),
        .ghost1_x_out(ghost1_x),
        .ghost1_y_out(ghost1_y),
        .ghost1_frame(ghost1_frame),
        
        .ghost2_mv(ghost2_mv),
        .ghost2_dir(ghost2_dir),
        .ghost2_x_out(ghost2_x),
        .ghost2_y_out(ghost2_y),
        .ghost2_frame(ghost2_frame),
        
        .ghost3_mv(ghost3_mv),
        .ghost3_dir(ghost3_dir),
        .ghost3_x_out(ghost3_x),
        .ghost3_y_out(ghost3_y),
        .ghost3_frame(ghost3_frame)
    );
    

// User logic ends

endmodule
