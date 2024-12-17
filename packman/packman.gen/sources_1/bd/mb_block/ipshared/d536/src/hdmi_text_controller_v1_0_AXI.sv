`timescale 1 ns / 1 ps

module hdmi_text_controller_v1_0_AXI #
(
    // Parameters of Axi Slave Bus Interface S_AXI
    parameter integer C_S_AXI_DATA_WIDTH    = 32,
    parameter integer C_S_AXI_ADDR_WIDTH    = 8
)
(
    // Global Clock Signal
    input logic  S_AXI_ACLK,
    // Global Reset Signal. This Signal is Active LOW
    input logic  S_AXI_ARESETN,
    // Write address (issued by master, accepted by Slave)
    input logic [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    // Write channel Protection type
    input logic [2 : 0] S_AXI_AWPROT,
    // Write address valid
    input logic  S_AXI_AWVALID,
    // Write address ready
    output logic  S_AXI_AWREADY,
    // Write data (issued by master, accepted by Slave) 
    input logic [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    // Write strobes
    input logic [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    // Write valid
    input logic  S_AXI_WVALID,
    // Write ready
    output logic  S_AXI_WREADY,
    // Write response
    output logic [1 : 0] S_AXI_BRESP,
    // Write response valid
    output logic  S_AXI_BVALID,
    // Response ready
    input logic  S_AXI_BREADY,
    // Read address (issued by master, accepted by Slave)
    input logic [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    // Protection type
    input logic [2 : 0] S_AXI_ARPROT,
    // Read address valid
    input logic  S_AXI_ARVALID,
    // Read address ready
    output logic  S_AXI_ARREADY,
    // Read data (issued by slave)
    output logic [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    // Read response
    output logic [1 : 0] S_AXI_RRESP,
    // Read valid
    output logic  S_AXI_RVALID,
    // Read ready
    input logic  S_AXI_RREADY,
    
    // Pac-Man position inputs (read-only)
    input logic [31:0] pm_x,
    input logic [31:0] pm_y,
    // Control outputs to pm_animator
    output logic [31:0] pm_dir,
    output logic [31:0] pm_mv,
    
    output logic [27:0] pellets[0:30],
    
    // Ghost 0 interfaces
    input logic [31:0] ghost0_x,
    input logic [31:0] ghost0_y,
    output logic [31:0] ghost0_dir,
    output logic [31:0] ghost0_mv,
    
    // Ghost 1 interfaces
    input logic [31:0] ghost1_x,
    input logic [31:0] ghost1_y,
    output logic [31:0] ghost1_dir,
    output logic [31:0] ghost1_mv,
    
    // Ghost 2 interfaces
    input logic [31:0] ghost2_x,
    input logic [31:0] ghost2_y,
    output logic [31:0] ghost2_dir,
    output logic [31:0] ghost2_mv,
    
    // Ghost 3 interfaces
    input logic [31:0] ghost3_x,
    input logic [31:0] ghost3_y,
    output logic [31:0] ghost3_dir,
    output logic [31:0] ghost3_mv,
    
    // Kill mode register
    output logic [31:0] kill_mode,
    
    output logic [31:0] reset,
    output logic [31:0] ghost_reset,
    
    input logic [31:0] rst_man
);

    // AXI4LITE signals
    logic  [C_S_AXI_ADDR_WIDTH-1 : 0]   axi_awaddr;
    logic  axi_awready;
    logic  axi_wready;
    logic  [1 : 0]   axi_bresp;
    logic  axi_bvalid;
    logic  [C_S_AXI_ADDR_WIDTH-1 : 0]   axi_araddr;
    logic  axi_arready;
    logic  [C_S_AXI_DATA_WIDTH-1 : 0]   axi_rdata;
    logic  [1 : 0]   axi_rresp;
    logic    axi_rvalid;

    // Local parameters
    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = C_S_AXI_ADDR_WIDTH - ADDR_LSB;
    
    // Slave registers for pm_dir and pm_mv
    logic [C_S_AXI_DATA_WIDTH-1:0] slv_regs[2:53];  // Registers at addresses 2 to 51
    logic   slv_reg_rden;
    logic   slv_reg_wren;
    logic [C_S_AXI_DATA_WIDTH-1:0]   reg_data_out;
    integer  byte_index;
    logic   aw_en;

    // Assign outputs
    assign pm_dir = slv_regs[2];
    assign pm_mv = slv_regs[3];
    assign kill_mode = slv_regs[35];
    
    assign ghost0_dir = slv_regs[38];
    assign ghost0_mv = slv_regs[39];
    assign ghost1_dir = slv_regs[42];
    assign ghost1_mv = slv_regs[43];
    assign ghost2_dir = slv_regs[46];
    assign ghost2_mv = slv_regs[47];
    assign ghost3_dir = slv_regs[50];
    assign ghost3_mv = slv_regs[51];
    assign reset = slv_regs[52];
    assign ghost_reset = slv_regs[53];
    
    genvar i;
    generate
        for (i = 0; i < 31; i = i + 1) begin : gen_block
            assign pellets[i] = slv_regs[i + 4][27:0];
        end
    endgenerate

    // I/O Connections assignments
    assign S_AXI_AWREADY    = axi_awready;
    assign S_AXI_WREADY     = axi_wready;
    assign S_AXI_BRESP      = axi_bresp;
    assign S_AXI_BVALID     = axi_bvalid;
    assign S_AXI_ARREADY    = axi_arready;
    assign S_AXI_RDATA      = axi_rdata;
    assign S_AXI_RRESP      = axi_rresp;
    assign S_AXI_RVALID     = axi_rvalid;

    // Implement axi_awready generation
    always_ff @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_awready <= 1'b0;
          aw_en <= 1'b1;
        end 
      else
        begin    
          if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
            begin
              axi_awready <= 1'b1;
              aw_en <= 1'b0;
            end
            else if (S_AXI_BREADY && axi_bvalid)
                begin
                  aw_en <= 1'b1;
                  axi_awready <= 1'b0;
                end
          else           
            begin
              axi_awready <= 1'b0;
            end
        end 
    end       

    // Implement axi_awaddr latching
    always_ff @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_awaddr <= '0;
        end 
      else
        begin    
          if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
            begin
              axi_awaddr <= S_AXI_AWADDR;
            end
        end 
    end       

    // Implement axi_wready generation
    always_ff @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_wready <= 1'b0;
        end 
      else
        begin    
          if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
            begin
              axi_wready <= 1'b1;
            end
          else
            begin
              axi_wready <= 1'b0;
            end
        end 
    end       

    // Implement memory mapped register select and write logic generation
    assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

    // Calculate the register index based on address
    logic [31:0] reg_index;
    always_comb begin
        reg_index = (axi_awaddr >> ADDR_LSB) & (32'hFFFFFFFF >> (32 - OPT_MEM_ADDR_BITS));
    end

    // Write to registers
    always_ff @( posedge S_AXI_ACLK )
    begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_regs[53] <= 32'd0; // Reset only for the first condition
        end 
      if ( S_AXI_ARESETN == 1'b0 || rst_man[0] == 1'b1)
        begin
            slv_regs[2] <= 32'd0; // pm_dir
            slv_regs[3] <= 32'd0; // pm_mv
            
            for(int i = 4; i <= 34; i++) begin
                slv_regs[i] <= 32'h0FFFFFFF;
            end
            
            slv_regs[35] <= 32'd0; // kill_mode
            
            // Initialize ghost registers
            slv_regs[38] <= 32'd0; // ghost0_dir
            slv_regs[39] <= 32'd0; // ghost0_mv
            slv_regs[42] <= 32'd0; // ghost1_dir
            slv_regs[43] <= 32'd0; // ghost1_mv
            slv_regs[46] <= 32'd0; // ghost2_dir
            slv_regs[47] <= 32'd0; // ghost2_mv
            slv_regs[50] <= 32'd0; // ghost3_dir
            slv_regs[51] <= 32'd0; // ghost3_mv
            slv_regs[52] <= 32'd0; 
        end
      else begin
        if (slv_reg_wren)
          begin
            if ((reg_index >= 2 && reg_index <= 34) || (reg_index == 35) || 
                (reg_index == 38) || (reg_index == 39) || 
                (reg_index == 42) || (reg_index == 43) || 
                (reg_index == 46) || (reg_index == 47) || 
                (reg_index == 50) || (reg_index == 51) ||
                (reg_index == 52) || (reg_index == 53)) 
            begin
              for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  slv_regs[reg_index][(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end  
            end
          end
      end
    end    

    // Implement write response logic generation
    always_ff @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_bvalid  <= 0;
          axi_bresp   <= 2'b0;
        end 
      else
        begin    
          if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
            begin
              axi_bvalid <= 1'b1;
              axi_bresp  <= 2'b0; // 'OKAY' response 
            end                   
          else
            begin
              if (S_AXI_BREADY && axi_bvalid) 
                begin
                  axi_bvalid <= 1'b0; 
                end  
            end
        end
    end   

    // Implement axi_arready generation
    always_ff @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_arready <= 1'b0;
          axi_araddr  <= '0;
        end 
      else
        begin    
          if (~axi_arready && S_AXI_ARVALID)
            begin
              axi_arready <= 1'b1;
              axi_araddr  <= S_AXI_ARADDR;
            end
          else
            begin
              axi_arready <= 1'b0;
            end
        end 
    end       

    // Implement axi_rvalid generation
    always_ff @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_rvalid <= 0;
          axi_rresp  <= 0;
        end 
      else
        begin    
          if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
            begin
              axi_rvalid <= 1'b1;
              axi_rresp  <= 2'b0; // 'OKAY' response
            end   
          else if (axi_rvalid && S_AXI_RREADY)
            begin
              axi_rvalid <= 1'b0;
            end                
        end
    end    

    // Implement memory mapped register select and read logic generation
    logic [31:0] reg_index_read;
    always_comb begin
        reg_index_read = (axi_araddr >> ADDR_LSB) & (32'hFFFFFFFF >> (32 - OPT_MEM_ADDR_BITS));
    end

    assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;

    // Read logic
    always_comb
    begin
        case (reg_index_read)
            0: reg_data_out = pm_x;
            1: reg_data_out = pm_y;
            35: reg_data_out = slv_regs[35]; // kill_mode
            36: reg_data_out = ghost0_x;
            37: reg_data_out = ghost0_y;
            38,39: reg_data_out = slv_regs[reg_index_read]; // ghost0_dir, ghost0_mv
            40: reg_data_out = ghost1_x;
            41: reg_data_out = ghost1_y;
            42,43: reg_data_out = slv_regs[reg_index_read]; // ghost1_dir, ghost1_mv
            44: reg_data_out = ghost2_x;
            45: reg_data_out = ghost2_y;
            46,47: reg_data_out = slv_regs[reg_index_read]; // ghost2_dir, ghost2_mv
            48: reg_data_out = ghost3_x;
            49: reg_data_out = ghost3_y;
            50,51,52,53: reg_data_out = slv_regs[reg_index_read]; // ghost3_dir, ghost3_mv
            default: 
                if (reg_index_read >= 2 && reg_index_read <= 34)
                    reg_data_out = slv_regs[reg_index_read];
                else
                    reg_data_out = 32'd0;
        endcase
    end

    // Output register or memory read data
    always_ff @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_rdata  <= 0;
        end 
      else
        begin    
          if (slv_reg_rden)
            begin
              axi_rdata <= reg_data_out;     // register read data
            end   
        end
    end    

endmodule
