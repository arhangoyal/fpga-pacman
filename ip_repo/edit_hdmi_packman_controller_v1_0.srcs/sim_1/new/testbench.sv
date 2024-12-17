`timescale 1ns / 1ps

module mapper_tb;

    // Clock signal
    reg vga_clk;
    reg [9:0] DrawX, DrawY;
    reg blank;

    reg [31:0] pm_x, pm_y, pm_dir;
    reg [1:0] pm_frame;

    reg [31:0] ghost0_x, ghost0_y, ghost0_dir;
    reg ghost0_frame;
    
    reg [31:0] ghost1_x, ghost1_y, ghost1_dir;
    reg ghost1_frame;
    
    reg [31:0] ghost2_x, ghost2_y, ghost2_dir;
    reg ghost2_frame;
    
    reg [31:0] ghost3_x, ghost3_y, ghost3_dir;
    reg ghost3_frame;

    reg [31:0] kill_mode;

    reg [27:0] pellets[0:30];

    wire [3:0] red, green, blue;

    integer i; // For pellet initialization

    // Instantiate the mapper module
    mapper uut (
        .vga_clk(vga_clk),
        .DrawX(DrawX),
        .DrawY(DrawY),
        .blank(blank),
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

    // Clock generation
    initial begin
        vga_clk = 0;
        forever #10 vga_clk = ~vga_clk; // 50 MHz clock
    end

    // Initialize testbench
    initial begin
        // Set Pacman's initial position and direction
        pm_x = 150;
        pm_y = 100;
        pm_dir = 0;
        pm_frame = 0;

        // Set ghost positions and states
        ghost0_x = 200; ghost0_y = 150; ghost0_dir = 0; ghost0_frame = 0;
        ghost1_x = 300; ghost1_y = 150; ghost1_dir = 1; ghost1_frame = 0;
        ghost2_x = 400; ghost2_y = 150; ghost2_dir = 2; ghost2_frame = 0;
        ghost3_x = 500; ghost3_y = 150; ghost3_dir = 3; ghost3_frame = 0;

        // Set kill mode (0 = normal, 1 = frightened)
        kill_mode = 0;

        // Enable blanking
        blank = 1;

        // Initialize all pellets to 1
        for (i = 0; i < 31; i = i + 1) begin
            pellets[i] = 28'hFFFFFFFF; // All pellets set
        end

        // Simulate all pixels
        for (DrawY = 0; DrawY < 480; DrawY = DrawY + 1) begin
            for (DrawX = 0; DrawX < 640; DrawX = DrawX + 1) begin
                @(posedge vga_clk);
            end
        end

        // Activate kill mode for ghosts
        kill_mode = 1;

        // Simulate again with kill mode
        for (DrawY = 0; DrawY < 480; DrawY = DrawY + 1) begin
            for (DrawX = 0; DrawX < 640; DrawX = DrawX + 1) begin
                @(posedge vga_clk);
            end
        end

        // Simulation complete
        $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time: %0t | DrawX: %d, DrawY: %d, Red: %h, Green: %h, Blue: %h", 
                  $time, DrawX, DrawY, red, green, blue);
    end

endmodule
