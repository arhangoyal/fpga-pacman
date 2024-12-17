module mapper (
    input logic vga_clk,
    input logic [9:0] DrawX, DrawY,
    input logic blank,
    
    input logic [31:0] pm_x,
    input logic [31:0] pm_y,
    input logic [31:0] pm_dir,
    input logic [1:0] pm_frame,
    
    output logic [3:0] red, green, blue
);

logic [18:0] board_rom_address;
logic [0:0] board_rom_q;

logic [12:0] pm_rom_address;
logic [0:0] pm_rom_q;

logic [3:0] board_palette_red, board_palette_green, board_palette_blue;
logic [3:0] pm_palette_red, pm_palette_green, pm_palette_blue;

logic negedge_vga_clk;

// Generate the negative edge of the VGA clock
assign negedge_vga_clk = ~vga_clk;

// Calculate the address for the board ROM
assign board_rom_address = DrawX + DrawY * 640;

// Calculate the address for the Pacman ROM
assign pm_rom_address = (DrawX - pm_x + pm_frame * 26) + (DrawY - pm_y + pm_dir * 26) * 78;

always_ff @ (posedge vga_clk) begin
    // Default to black
    red <= 4'h0;
    green <= 4'h0;
    blue <= 4'h0;

    if (blank) begin
        if (DrawX > pm_x && DrawX < (pm_x + 26) && DrawY > pm_y && DrawY < (pm_y + 26)) begin
            // Draw the Pacman sprite
            red <= pm_palette_red;
            green <= pm_palette_green;
            blue <= pm_palette_blue;
        end else begin
            // Draw the gameboard
            red <= board_palette_red;
            green <= board_palette_green;
            blue <= board_palette_blue;
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

endmodule
