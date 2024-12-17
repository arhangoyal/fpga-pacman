module ghosts_animator (
    input logic vsync,
    input logic rst,
    
    input [31:0] ghost_reset,
    input [31:0] rst_man,
    
    // Ghost 0 inputs
    input [31:0] ghost0_mv,
    input [31:0] ghost0_dir,
    output reg [31:0] ghost0_x_out,
    output reg [31:0] ghost0_y_out,
    output logic ghost0_frame,
    
    // Ghost 1 inputs
    input [31:0] ghost1_mv,
    input [31:0] ghost1_dir,
    output reg [31:0] ghost1_x_out,
    output reg [31:0] ghost1_y_out,
    output logic ghost1_frame,
    
    // Ghost 2 inputs
    input [31:0] ghost2_mv,
    input [31:0] ghost2_dir,
    output reg [31:0] ghost2_x_out,
    output reg [31:0] ghost2_y_out,
    output logic ghost2_frame,
    
    // Ghost 3 inputs
    input [31:0] ghost3_mv,
    input [31:0] ghost3_dir,
    output reg [31:0] ghost3_x_out,
    output reg [31:0] ghost3_y_out,
    output logic ghost3_frame
);

    // Ghost 0 variables
    logic [2:0] vsync_counter0; // 3-bit counter to count up to 8
    logic looper0;
    reg [31:0] x_pos0, y_pos0;

    // Ghost 1 variables
    logic [2:0] vsync_counter1;
    logic looper1;
    reg [31:0] x_pos1, y_pos1;

    // Ghost 2 variables
    logic [2:0] vsync_counter2;
    logic looper2;
    reg [31:0] x_pos2, y_pos2;

    // Ghost 3 variables
    logic [2:0] vsync_counter3;
    logic looper3;
    reg [31:0] x_pos3, y_pos3;

    // Ghost 0 logic
    always_ff @ (posedge vsync) begin
        if (rst | ghost_reset[0] | rst_man[0]) begin
            vsync_counter0 <= 3'b000;
            looper0 <= 1'b0;
            x_pos0 <= 307; // Initial X position for ghost0
            y_pos0 <= 168; // Initial Y position for ghost0
        end else if (ghost0_mv == 1) begin
            if (vsync_counter0 == 3'b111) begin // Increment looper on every 8th vsync
                vsync_counter0 <= 3'b000;
                looper0 <= ~looper0;
            end else begin
                vsync_counter0 <= vsync_counter0 + 1;
            end
            // Update position based on direction
            case (ghost0_dir)
                32'd0: x_pos0 <= x_pos0 + 1; // Move right
                32'd1: y_pos0 <= y_pos0 + 1; // Move down
                32'd2: x_pos0 <= x_pos0 - 1; // Move left
                32'd3: y_pos0 <= y_pos0 - 1; // Move up
                default: ; // No movement
            endcase
        end
        // Output the updated position
        ghost0_x_out <= x_pos0;
        ghost0_y_out <= y_pos0;
    end
    
    always_comb begin
        ghost0_frame = looper0;
    end

    // Ghost 1 logic
    always_ff @ (posedge vsync) begin
        if (rst | ghost_reset[1] | rst_man[0]) begin
            vsync_counter1 <= 3'b000;
            looper1 <= 1'b0;
            x_pos1 <= 278; // Initial X position for ghost1
            y_pos1 <= 213; // Initial Y position for ghost1
        end else if (ghost1_mv == 1) begin
            if (vsync_counter1 == 3'b111) begin // Increment looper on every 8th vsync
                vsync_counter1 <= 3'b000;
                looper1 <= ~looper1;
            end else begin
                vsync_counter1 <= vsync_counter1 + 1;
            end
            // Update position based on direction
            case (ghost1_dir)
                32'd0: x_pos1 <= x_pos1 + 1; // Move right
                32'd1: y_pos1 <= y_pos1 + 1; // Move down
                32'd2: x_pos1 <= x_pos1 - 1; // Move left
                32'd3: y_pos1 <= y_pos1 - 1; // Move up
                default: ; // No movement
            endcase
        end
        // Output the updated position
        ghost1_x_out <= x_pos1;
        ghost1_y_out <= y_pos1;
    end
    
    always_comb begin
        ghost1_frame = looper1;
    end

    // Ghost 2 logic
    always_ff @ (posedge vsync) begin
        if (rst | ghost_reset[2] | rst_man[0]) begin
            vsync_counter2 <= 3'b000;
            looper2 <= 1'b0;
            x_pos2 <= 307; // Initial X position for ghost2
            y_pos2 <= 213; // Initial Y position for ghost2
        end else if (ghost2_mv == 1) begin
            if (vsync_counter2 == 3'b111) begin // Increment looper on every 8th vsync
                vsync_counter2 <= 3'b000;
                looper2 <= ~looper2;
            end else begin
                vsync_counter2 <= vsync_counter2 + 1;
            end
            // Update position based on direction
            case (ghost2_dir)
                32'd0: x_pos2 <= x_pos2 + 1; // Move right
                32'd1: y_pos2 <= y_pos2 + 1; // Move down
                32'd2: x_pos2 <= x_pos2 - 1; // Move left
                32'd3: y_pos2 <= y_pos2 - 1; // Move up
                default: ; // No movement
            endcase
        end
        // Output the updated position
        ghost2_x_out <= x_pos2;
        ghost2_y_out <= y_pos2;
    end
    
    always_comb begin
        ghost2_frame = looper2;
    end

    // Ghost 3 logic
    always_ff @ (posedge vsync) begin
        if (rst | ghost_reset[3] | rst_man[0]) begin
            vsync_counter3 <= 3'b000;
            looper3 <= 1'b0;
            x_pos3 <= 336; // Initial X position for ghost3
            y_pos3 <= 213; // Initial Y position for ghost3
        end else if (ghost3_mv == 1) begin
            if (vsync_counter3 == 3'b111) begin // Increment looper on every 8th vsync
                vsync_counter3 <= 3'b000;
                looper3 <= ~looper3;
            end else begin
                vsync_counter3 <= vsync_counter3 + 1;
            end
            // Update position based on direction
            case (ghost3_dir)
                32'd0: x_pos3 <= x_pos3 + 1; // Move right
                32'd1: y_pos3 <= y_pos3 + 1; // Move down
                32'd2: x_pos3 <= x_pos3 - 1; // Move left
                32'd3: y_pos3 <= y_pos3 - 1; // Move up
                default: ; // No movement
            endcase
        end
        // Output the updated position
        ghost3_x_out <= x_pos3;
        ghost3_y_out <= y_pos3;
    end
    
    always_comb begin
        ghost3_frame = looper3;
    end

endmodule
