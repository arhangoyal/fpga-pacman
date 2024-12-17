module mapper (
    input logic vga_clk,
    input logic [9:0] DrawX, DrawY,
    input logic blank,
    
    input logic [31:0] pm_x,
    input logic [31:0] pm_y,
    input logic [31:0] pm_dir,
    input logic [1:0] pm_frame,
    
    input logic [31:0] ghost0_x,
    input logic [31:0] ghost0_y,
    input logic [31:0] ghost0_dir,
    input logic ghost0_frame,
       
    input logic [31:0] ghost1_x,
    input logic [31:0] ghost1_y,
    input logic [31:0] ghost1_dir,
    input logic ghost1_frame,
       
    input logic [31:0] ghost2_x,
    input logic [31:0] ghost2_y,
    input logic [31:0] ghost2_dir,
    input logic ghost2_frame,
       
    input logic [31:0] ghost3_x,
    input logic [31:0] ghost3_y,
    input logic [31:0] ghost3_dir,
    input logic ghost3_frame,
    
    input logic [31:0] kill_mode,
    
    input logic [27:0] pellets[0:30],
    
    output logic [3:0] red, green, blue
);

logic [18:0] board_rom_address;
logic [0:0] board_rom_q;

logic [12:0] pm_rom_address;
logic [0:0] pm_rom_q;

logic [12:0] ghost0_rom_address;
logic [3:0] ghost0_rom_q;

logic [12:0] ghost1_rom_address;
logic [3:0] ghost1_rom_q;

logic [12:0] ghost2_rom_address;
logic [3:0] ghost2_rom_q;

logic [12:0] ghost3_rom_address;
logic [3:0] ghost3_rom_q;

logic [3:0] board_palette_red, board_palette_green, board_palette_blue;
logic [3:0] pm_palette_red, pm_palette_green, pm_palette_blue;

logic [3:0] ghost0_palette_red, ghost0_palette_green, ghost0_palette_blue;
logic [3:0] ghost1_palette_red, ghost1_palette_green, ghost1_palette_blue;
logic [3:0] ghost2_palette_red, ghost2_palette_green, ghost2_palette_blue;
logic [3:0] ghost3_palette_red, ghost3_palette_green, ghost3_palette_blue;

logic negedge_vga_clk;

// Generate the negative edge of the VGA clock
assign negedge_vga_clk = ~vga_clk;

// Calculate the address for the board ROM
assign board_rom_address = DrawX + DrawY * 640;

// Calculate the address for the Pacman ROM
assign pm_rom_address = (DrawX - pm_x + pm_frame * 26) + (DrawY - pm_y + pm_dir * 26) * 78;

// Compute ghost ROM addresses
integer ghost0_local_x, ghost0_local_y;
integer ghost0_sprite_start_x, ghost0_sprite_start_y;

integer ghost1_local_x, ghost1_local_y;
integer ghost1_sprite_start_x, ghost1_sprite_start_y;

integer ghost2_local_x, ghost2_local_y;
integer ghost2_sprite_start_x, ghost2_sprite_start_y;

integer ghost3_local_x, ghost3_local_y;
integer ghost3_sprite_start_x, ghost3_sprite_start_y;

always_comb begin
    // Ghost 0
    if (DrawX >= ghost0_x && DrawX < (ghost0_x + 26) && DrawY >= ghost0_y && DrawY < (ghost0_y + 26)) begin
        ghost0_local_x = DrawX - ghost0_x;
        ghost0_local_y = DrawY - ghost0_y;
        if (kill_mode == 1) begin
            ghost0_sprite_start_y = 4 * 26; // Kill mode row
        end else begin
            ghost0_sprite_start_y = 0 * 26; // Ghost0 uses row 0
        end
        if (ghost0_frame == 0) begin
            ghost0_sprite_start_x = 0 * 26; // Column 0
        end else begin
            ghost0_sprite_start_x = 1 * 26; // Column 1
        end
        ghost0_rom_address = (ghost0_sprite_start_y + ghost0_local_y) * 52 + (ghost0_sprite_start_x + ghost0_local_x);
    end else begin
        ghost0_rom_address = 0; // Default address
    end
    
    // Ghost 1
    if (DrawX >= ghost1_x && DrawX < (ghost1_x + 26) && DrawY >= ghost1_y && DrawY < (ghost1_y + 26)) begin
        ghost1_local_x = DrawX - ghost1_x;
        ghost1_local_y = DrawY - ghost1_y;
        if (kill_mode == 1) begin
            ghost1_sprite_start_y = 4 * 26; // Kill mode row
        end else begin
            ghost1_sprite_start_y = 1 * 26; // Ghost1 uses row 1
        end
        if (ghost1_frame == 0) begin
            ghost1_sprite_start_x = 0 * 26; // Column 0
        end else begin
            ghost1_sprite_start_x = 1 * 26; // Column 1
        end
        ghost1_rom_address = (ghost1_sprite_start_y + ghost1_local_y) * 52 + (ghost1_sprite_start_x + ghost1_local_x);
    end else begin
        ghost1_rom_address = 0;
    end

    // Ghost 2
    if (DrawX >= ghost2_x && DrawX < (ghost2_x + 26) && DrawY >= ghost2_y && DrawY < (ghost2_y + 26)) begin
        ghost2_local_x = DrawX - ghost2_x;
        ghost2_local_y = DrawY - ghost2_y;
        if (kill_mode == 1) begin
            ghost2_sprite_start_y = 4 * 26; // Kill mode row
        end else begin
            ghost2_sprite_start_y = 2 * 26; // Ghost2 uses row 2
        end
        if (ghost2_frame == 0) begin
            ghost2_sprite_start_x = 0 * 26; // Column 0
        end else begin
            ghost2_sprite_start_x = 1 * 26; // Column 1
        end
        ghost2_rom_address = (ghost2_sprite_start_y + ghost2_local_y) * 52 + (ghost2_sprite_start_x + ghost2_local_x);
    end else begin
        ghost2_rom_address = 0;
    end

    // Ghost 3
    if (DrawX >= ghost3_x && DrawX < (ghost3_x + 26) && DrawY >= ghost3_y && DrawY < (ghost3_y + 26)) begin
        ghost3_local_x = DrawX - ghost3_x;
        ghost3_local_y = DrawY - ghost3_y;
        if (kill_mode == 1) begin
            ghost3_sprite_start_y = 4 * 26; // Kill mode row
        end else begin
            ghost3_sprite_start_y = 3 * 26; // Ghost3 uses row 3
        end
        if (ghost3_frame == 0) begin
            ghost3_sprite_start_x = 0 * 26; // Column 0
        end else begin
            ghost3_sprite_start_x = 1 * 26; // Column 1
        end
        ghost3_rom_address = (ghost3_sprite_start_y + ghost3_local_y) * 52 + (ghost3_sprite_start_x + ghost3_local_x);
    end else begin
        ghost3_rom_address = 0;
    end
end

logic debug_pm, debug_ghost0, debug_ghost1, debug_ghost2, debug_ghost3, debug_pellet;

always_ff @ (posedge vga_clk) begin
    // Default to black
    red <= 4'h0;
    green <= 4'h0;
    blue <= 4'h0;
    
     debug_pm <= 0;
    debug_ghost0 <= 0;
    debug_ghost1 <= 0;
    debug_ghost2 <= 0;
    debug_ghost3 <= 0;
    debug_pellet <= 0;

    if (blank) begin
        // Draw the gameboard by default
        red <= board_palette_red;
        green <= board_palette_green;
        blue <= board_palette_blue;

        // Check if pixel is within Pacman
        if (DrawX > pm_x && DrawX < (pm_x + 26) && DrawY >= pm_y && DrawY < (pm_y + 26) && 
        (pm_palette_red != 0 || pm_palette_green != 0 || pm_palette_blue != 0)) begin
            debug_pm <= 1;
            // Draw the Pacman sprite
                red <= pm_palette_red;
                green <= pm_palette_green;
                blue <= pm_palette_blue;
        end
        // Check if pixel is within ghost0
        else if (DrawX >= ghost0_x && DrawX < (ghost0_x + 26) && DrawY >= ghost0_y && DrawY < (ghost0_y + 26) && (ghost0_palette_red != 0 || ghost0_palette_green != 0 || ghost0_palette_blue != 0)) begin
            // Draw ghost0
            debug_ghost0 <= 1;
            if (ghost0_rom_q) begin
                red <= ghost0_palette_red;
                green <= ghost0_palette_green;
                blue <= ghost0_palette_blue;
            end
        end
        // Check if pixel is within ghost1
        else if (DrawX >= ghost1_x && DrawX < (ghost1_x + 26) && DrawY >= ghost1_y && DrawY < (ghost1_y + 26) && (ghost1_palette_red != 0 || ghost1_palette_green != 0 || ghost1_palette_blue != 0)) begin
            // Draw ghost1
            debug_ghost1 <= 1;
            if (ghost1_rom_q) begin
                red <= ghost1_palette_red;
                green <= ghost1_palette_green;
                blue <= ghost1_palette_blue;
            end
        end
        // Check if pixel is within ghost2
        else if (DrawX >= ghost2_x && DrawX < (ghost2_x + 26) && DrawY >= ghost2_y && DrawY < (ghost2_y + 26) && (ghost2_palette_red != 0 || ghost2_palette_green != 0 || ghost2_palette_blue != 0)) begin
            // Draw ghost2
            debug_ghost2 <= 1;
            if (ghost2_rom_q) begin
                red <= ghost2_palette_red;
                green <= ghost2_palette_green;
                blue <= ghost2_palette_blue;
            end
        end
        // Check if pixel is within ghost3
        else if (DrawX >= ghost3_x && DrawX < (ghost3_x + 26) && DrawY >= ghost3_y && DrawY < (ghost3_y + 26) && (ghost3_palette_red != 0 || ghost3_palette_green != 0 || ghost3_palette_blue != 0)) begin
            debug_ghost3 <= 1;
            // Draw ghost3
            if (ghost3_rom_q) begin
                red <= ghost3_palette_red;
                green <= ghost3_palette_green;
                blue <= ghost3_palette_blue;
            end
        end
        else begin
            // Draw pellets
            integer grid_x, grid_y;
            integer cell_x, cell_y;
            integer pellet_cell_x_start, pellet_cell_y_start;
            integer pellet_size;
            
            debug_pellet <= 0;

            // Check if DrawX and DrawY are within the board area
            if (DrawX >= 110 && DrawX < (110 + 28 * 15) && DrawY >= 8 && DrawY < (8 + 31 * 15)) begin
                // Compute grid indices
                grid_x = (DrawX - 110) / 15;
                grid_y = (DrawY - 8) / 15;

                // Compute position within cell
                cell_x = (DrawX - 110) % 15;
                cell_y = (DrawY - 8) % 15;

                // Default pellet position and size
                pellet_cell_x_start = 6;
                pellet_cell_y_start = 6;
                pellet_size = 3;

                // Adjust pellet size and position for specific coordinates
                if ((grid_x == 3 && grid_y == 4) ||
                    (grid_x == 3 && grid_y == 26) ||
                    (grid_x == 24 && grid_y == 4) ||
                    (grid_x == 24 && grid_y == 26)) begin
                    // For these positions, use 7x7 pellet
                    pellet_cell_x_start = 4; // Centered in 15x15 cell
                    pellet_cell_y_start = 4;
                    pellet_size = 7;
                end

                // Check if current pixel is within the pellet area
                if (cell_x >= pellet_cell_x_start && cell_x < (pellet_cell_x_start + pellet_size) &&
                    cell_y >= pellet_cell_y_start && cell_y < (pellet_cell_y_start + pellet_size)) begin

                    // Check if pellet is present at this grid cell
                    if (pellets[grid_y][grid_x]) begin
                        // Draw pellet in white (override the board color)
                        red <= 4'hF;
                        green <= 4'hF;
                        blue <= 4'hF;
                    end
                end
            end
        end
    end
end

// Instantiate the board ROM and palette
board_rom board_rom (
    .clka   (negedge_vga_clk),
    .addra  (board_rom_address),
    .douta  (board_rom_q)
);

board_palette board_palette (
    .index  (~board_rom_q),
    .red    (board_palette_red),
    .green  (board_palette_green),
    .blue   (board_palette_blue)
);

// Instantiate the Pacman ROM and palette
pm_rom pm_rom (
    .clka   (negedge_vga_clk),
    .addra  (pm_rom_address),
    .douta  (pm_rom_q)
);

pm_palette pm_palette (
    .index  (~pm_rom_q),
    .red    (pm_palette_red),
    .green  (pm_palette_green),
    .blue   (pm_palette_blue)
);

// Instantiate ghost ROMs and palettes
ghosts_rom ghost0_rom (
    .clka   (negedge_vga_clk),
    .addra  (ghost0_rom_address),
    .douta  (ghost0_rom_q)
);

ghosts_rom ghost1_rom (
    .clka   (negedge_vga_clk),
    .addra  (ghost1_rom_address),
    .douta  (ghost1_rom_q)
);

ghosts_rom ghost2_rom (
    .clka   (negedge_vga_clk),
    .addra  (ghost2_rom_address),
    .douta  (ghost2_rom_q)
);

ghosts_rom ghost3_rom (
    .clka   (negedge_vga_clk),
    .addra  (ghost3_rom_address),
    .douta  (ghost3_rom_q)
);

localparam [0:15][11:0] palette = {
    	{4'h0, 4'h0, 4'h0},
    	{4'hF, 4'hF, 4'hF}, //W
    	{4'hE, 4'h8, 4'h1},
    	{4'h0, 4'h0, 4'hF}, // B
    	{4'h6, 4'hE, 4'hF},
    	{4'hF, 4'h1, 4'h1},
    	{4'hE, 4'hA, 4'hF},
    	{4'hF, 4'hD, 4'hA},
    	{4'hF, 4'hF, 4'hF}, //W 
    	{4'h6, 4'hE, 4'hF},
    	{4'hF, 4'hA, 4'hF},
    	{4'hE, 4'h8, 4'h1},
    	{4'h0, 4'h0, 4'h0},
    	{4'h0, 4'h0, 4'hF}, // B
    	{4'hF, 4'h1, 4'h1},
    	{4'hF, 4'h1, 4'h1}
    };

    // Directly assign palette values to ghost outputs
    assign {ghost0_palette_red, ghost0_palette_green, ghost0_palette_blue} = palette[ghost0_rom_q];
    assign {ghost1_palette_red, ghost1_palette_green, ghost1_palette_blue} = palette[ghost1_rom_q];
    assign {ghost2_palette_red, ghost2_palette_green, ghost2_palette_blue} = palette[ghost2_rom_q];
    assign {ghost3_palette_red, ghost3_palette_green, ghost3_palette_blue} = palette[ghost3_rom_q];

endmodule
