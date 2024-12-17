module pm_animator(
    input [31:0] mv,
    input [31:0] dir,
    input vsync,
    input rst,
    
    output reg [31:0] x_out,
    output reg [31:0] y_out,
    output logic [1:0] frame // 0: open, 1: part open, 2: closed
);

    logic [2:0] vsync_counter; // 3-bit counter to count up to 8
    logic [1:0] looper;
    reg [31:0] x_pos, y_pos;

    always_ff @ (posedge vsync) begin
        if (rst) begin
            vsync_counter <= 3'b000;
            looper <= 2'b00;
            x_pos <= 307; // Initial X position
            y_pos <= 348; // Initial Y position
        end else if (mv == 1) begin
            if (vsync_counter == 3'b111) begin // Increment looper on every 8th vsync
                vsync_counter <= 3'b000;
                looper <= looper + 1;
            end else begin
                vsync_counter <= vsync_counter + 1;
            end
            // Update position based on direction
            case (dir)
                32'd0: x_pos <= x_pos + 1; // Move right
                32'd1: y_pos <= y_pos + 1; // Move down
                32'd2: x_pos <= x_pos - 1; // Move left
                32'd3: y_pos <= y_pos - 1; // Move up
                default: ; // No movement
            endcase
        end
        // Output the updated position
        x_out <= x_pos;
        y_out <= y_pos;
    end
    
    always_comb begin
        if (looper == 2'b00) begin
            frame = 2'b10;
        end else if (looper == 2'b01 || looper == 2'b11) begin
            frame = 2'b00;
        end else begin
            frame = 2'b01;
        end
    end
endmodule
