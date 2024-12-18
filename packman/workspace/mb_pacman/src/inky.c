#include <stdlib.h>  // For abs()
#include "inky.h"

#define OFFSET_X 110
#define OFFSET_Y 8
#define CELL_SIZE 15

void update_inky_position(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
                            uint32_t pm_x, uint32_t pm_y, int grid[31][28]) {

    // Calculate ghost's position on the board
    int ghost_boardx = g_x - OFFSET_X;
    int ghost_boardy = g_y - OFFSET_Y;

    int ghost_top = ghost_boardy;
    int ghost_bottom = ghost_boardy + 26;
    int ghost_left = ghost_boardx;
    int ghost_right = ghost_boardx + 26;

    int ghost_top_g = ghost_top / CELL_SIZE;
    int ghost_bottom_g = ghost_bottom / CELL_SIZE;
    int ghost_left_g = ghost_left / CELL_SIZE;
    int ghost_right_g = ghost_right / CELL_SIZE;

    int ghost_top_i = ghost_top % CELL_SIZE;
    int ghost_bottom_i = ghost_bottom % CELL_SIZE;
    int ghost_left_i = ghost_left % CELL_SIZE;
    int ghost_right_i = ghost_right % CELL_SIZE;

    // Calculate Pac-Man's position on the board
    int pm_boardx = pm_x - OFFSET_X;
    int pm_boardy = pm_y - OFFSET_Y;
    int pm_row = pm_boardy / CELL_SIZE;
    int pm_col = pm_boardx / CELL_SIZE;

    // Calculate the differences in positions
    int delta_row = pm_row - (ghost_boardy / CELL_SIZE);
    int delta_col = pm_col - (ghost_boardx / CELL_SIZE);
    int abs_delta_row = abs(delta_row);
    int abs_delta_col = abs(delta_col);

    int collision = 0;

    // Check for wall collision based on current direction (matching Pac-Man's logic)
    switch (*g_dir) {
        case 0: // Right
            collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_right_g];
            if (collision && ghost_right_i >= 4) {
                *g_mv = 0;
            }
            break;
        case 1: // Down
            collision = !grid[ghost_bottom_g][(ghost_left_g + ghost_right_g) / 2];
            if (collision && ghost_bottom_i >= 4) {
                *g_mv = 0;
            }
            break;
        case 2: // Left
            collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_left_g];
            if (collision && ghost_left_i <= 11) {
                *g_mv = 0;
            }
            break;
        case 3: // Up
            collision = !grid[ghost_top_g][(ghost_left_g + ghost_right_g) / 2];
            if (collision && ghost_top_i <= 11) {
                *g_mv = 0;
            }
            break;
    }


    int random_int = rand() % 2;
    int random_int2 = rand() % 2;
	if (*g_dir == 1 || *g_dir == 3) { // if moving vertically, check for gaps on left/right
		if(grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_right_g] && ghost_top_i == 9) {
			*g_mv = random_int; // && random_int2;
		}
		if(grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_left_g] && ghost_top_i == 9) {
			*g_mv = random_int; //  && random_int2;
		}
	} else {
		if(grid[ghost_bottom_g][(ghost_left_g + ghost_right_g) / 2] && ghost_left_i == 9) {
			*g_mv = random_int; //  && random_int2;
		}
		if(grid[ghost_top_g][(ghost_left_g + ghost_right_g) / 2] && ghost_left_i == 10) {
			*g_mv = random_int; //  && random_int2;
		}
	}


    // Change direction only when collision occurs
    if (*g_mv == 0) {
        int directions[2];

        // Decide which axis to prioritize based on larger absolute delta
        if (abs_delta_col > abs_delta_row && random_int) {
            // Prioritize horizontal movement
            directions[0] = (delta_col > 0) ? 0 : 2; // Right or Left
            directions[1] = (delta_row > 0) ? 1 : 3; // Down or Up
        } else {
            // Prioritize vertical movement
            directions[0] = (delta_row > 0) ? 1 : 3; // Down or Up
            directions[1] = (delta_col > 0) ? 0 : 2; // Right or Left
        }

        // Try to set a new valid direction, matching Pac-Man's collision checks
        int dir_found = 0;
        for (int i = 0; i < 2; i++) {
            int dir = directions[i];
            int can_move = 0;
            collision = 0;

            // Check if the new direction is valid (no wall)
            switch (dir) {
                case 0: // Right
                    collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_right_g];
                    if (!collision && ghost_right_i >= 4) {
                        can_move = 1;
                    }
                    break;
                case 1: // Down
                    collision = !grid[ghost_bottom_g][(ghost_left_g + ghost_right_g) / 2];
                    if (!collision && ghost_bottom_i >= 4) {
                        can_move = 1;
                    }
                    break;
                case 2: // Left
                    collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_left_g];
                    if (!collision && ghost_left_i <= 11) {
                        can_move = 1;
                    }
                    break;
                case 3: // Up
                    collision = !grid[ghost_top_g][(ghost_left_g + ghost_right_g) / 2];
                    if (!collision && ghost_top_i <= 11) {
                        can_move = 1;
                    }
                    break;
            }
            if (can_move && (random_int || random_int2)) {
                *g_dir = dir;
                *g_mv = 1;
                dir_found = 1;
                break;
            }
        }

        // If preferred directions are not valid, try other directions
        if (!dir_found) {
            for (int dir = 0; dir < 4; dir++) {
                if (dir != *g_dir && dir != directions[0] && dir != directions[1]) {
                    int can_move = 0;
                    collision = 0;
                    switch (dir) {
                        case 0: // Right
                            collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_right_g];
                            if (!collision && ghost_right_i >= 4) {
                                can_move = 1;
                            }
                            break;
                        case 1: // Down
                            collision = !grid[ghost_bottom_g][(ghost_left_g + ghost_right_g) / 2];
                            if (!collision && ghost_bottom_i >= 4) {
                                can_move = 1;
                            }
                            break;
                        case 2: // Left
                            collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_left_g];
                            if (!collision && ghost_left_i <= 11) {
                                can_move = 1;
                            }
                            break;
                        case 3: // Up
                            collision = !grid[ghost_top_g][(ghost_left_g + ghost_right_g) / 2];
                            if (!collision && ghost_top_i <= 11) {
                                can_move = 1;
                            }
                            break;
                    }
                    if (can_move) {
                        *g_dir = dir;
                        *g_mv = 1;
                        break;
                    }
                }
            }
        }
    } else {
        // Continue moving in the current direction
        *g_mv = 1;
    }

}



// Exit the ghost house
int inky_exit_ghost_house(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv) {
    // Define the pixel positions for Inky's exit path
    int target_right_pixel_x = 13 * CELL_SIZE + OFFSET_X - 1; // Column 13 in pixels (right of the ghost house)
    int target_exit_pixel_y = 11 * CELL_SIZE + OFFSET_Y - 4;  // Row 11 in pixels (fully clear the ghost house)
    int left_wall_pixel_x = 11 * CELL_SIZE + OFFSET_X;    // Column 11 in pixels (left wall)

    // Step 1: Move Right to exit the ghost house horizontally
    if (g_x < target_right_pixel_x) {
        *g_dir = 0; // Move Right
        *g_mv = 1;  // Enable movement
        return 1;   // Exit not completed
    }
    // Step 2: Move Up to exit vertically
    else if (g_y > target_exit_pixel_y) {
        *g_dir = 3; // Move Up
        *g_mv = 1;  // Enable movement
        return 1;   // Exit not completed
    }
    // Step 3: Move Left along the gameplay grid
    else if (g_x < left_wall_pixel_x) {
        *g_dir = 2; // Move Left
        *g_mv = 1;  // Enable movement
        return 1;   // Exit not completed
    }
    // Step 4: Once fully exited
    else {
        return 0;   // Exit completed
    }
}




void scared_inky(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
                            uint32_t pm_x, uint32_t pm_y, int grid[31][28]) {

    // Calculate ghost's position on the board
    int ghost_boardx = g_x - OFFSET_X;
    int ghost_boardy = g_y - OFFSET_Y;

    int ghost_top = ghost_boardy;
    int ghost_bottom = ghost_boardy + 26;
    int ghost_left = ghost_boardx;
    int ghost_right = ghost_boardx + 26;

    int ghost_top_g = ghost_top / CELL_SIZE;
    int ghost_bottom_g = ghost_bottom / CELL_SIZE;
    int ghost_left_g = ghost_left / CELL_SIZE;
    int ghost_right_g = ghost_right / CELL_SIZE;

    int ghost_top_i = ghost_top % CELL_SIZE;
    int ghost_bottom_i = ghost_bottom % CELL_SIZE;
    int ghost_left_i = ghost_left % CELL_SIZE;
    int ghost_right_i = ghost_right % CELL_SIZE;

    // Calculate Pac-Man's position on the board
    int pm_boardx = pm_x - OFFSET_X;
    int pm_boardy = pm_y - OFFSET_Y;
    int pm_row = pm_boardy / CELL_SIZE;
    int pm_col = pm_boardx / CELL_SIZE;

    // Calculate the differences in positions
    int delta_row = pm_row - (ghost_boardy / CELL_SIZE);
    int delta_col = pm_col - (ghost_boardx / CELL_SIZE);
    int abs_delta_row = abs(delta_row);
    int abs_delta_col = abs(delta_col);

    int collision = 0;

    // Check for wall collision based on current direction (matching Pac-Man's logic)
    switch (*g_dir) {
        case 0: // Right
            collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_right_g];
            if (collision && ghost_right_i >= 4) {
                *g_mv = 0;
            }
            break;
        case 1: // Down
            collision = !grid[ghost_bottom_g][(ghost_left_g + ghost_right_g) / 2];
            if (collision && ghost_bottom_i >= 4) {
                *g_mv = 0;
            }
            break;
        case 2: // Left
            collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_left_g];
            if (collision && ghost_left_i <= 11) {
                *g_mv = 0;
            }
            break;
        case 3: // Up
            collision = !grid[ghost_top_g][(ghost_left_g + ghost_right_g) / 2];
            if (collision && ghost_top_i <= 11) {
                *g_mv = 0;
            }
            break;
    }


    int random_int = rand() % 2;
    int random_int2 = rand() % 2;
	if (*g_dir == 1 || *g_dir == 3) { // if moving vertically, check for gaps on left/right
		if(grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_right_g] && ghost_top_i == 9) {
			*g_mv = random_int; // && random_int2;
		}
		if(grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_left_g] && ghost_top_i == 9) {
			*g_mv = random_int; //  && random_int2;
		}
	} else {
		if(grid[ghost_bottom_g][(ghost_left_g + ghost_right_g) / 2] && ghost_left_i == 9) {
			*g_mv = random_int; //  && random_int2;
		}
		if(grid[ghost_top_g][(ghost_left_g + ghost_right_g) / 2] && ghost_left_i == 10) {
			*g_mv = random_int; //  && random_int2;
		}
	}


    // Change direction only when collision occurs
    if (*g_mv == 0) {
        int directions[2];

        // Decide which axis to prioritize based on larger absolute delta
        if (abs_delta_col > abs_delta_row && random_int) {
            // Prioritize horizontal movement
            directions[0] = (delta_col > 0) ? 2 : 0; // Right or Left
            directions[1] = (delta_row > 0) ? 3 : 1; // Down or Up
        } else {
            // Prioritize vertical movement
            directions[0] = (delta_row > 0) ? 3 : 1; // Down or Up
            directions[1] = (delta_col > 0) ? 2 : 0; // Right or Left
        }

        // Try to set a new valid direction, matching Pac-Man's collision checks
        int dir_found = 0;
        for (int i = 0; i < 2; i++) {
            int dir = directions[i];
            int can_move = 0;
            collision = 0;

            // Check if the new direction is valid (no wall)
            switch (dir) {
                case 0: // Right
                    collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_right_g];
                    if (!collision && ghost_right_i >= 4) {
                        can_move = 1;
                    }
                    break;
                case 1: // Down
                    collision = !grid[ghost_bottom_g][(ghost_left_g + ghost_right_g) / 2];
                    if (!collision && ghost_bottom_i >= 4) {
                        can_move = 1;
                    }
                    break;
                case 2: // Left
                    collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_left_g];
                    if (!collision && ghost_left_i <= 11) {
                        can_move = 1;
                    }
                    break;
                case 3: // Up
                    collision = !grid[ghost_top_g][(ghost_left_g + ghost_right_g) / 2];
                    if (!collision && ghost_top_i <= 11) {
                        can_move = 1;
                    }
                    break;
            }
            if (can_move && (random_int || random_int2)) {
                *g_dir = dir;
                *g_mv = 1;
                dir_found = 1;
                break;
            }
        }

        // If preferred directions are not valid, try other directions
        if (!dir_found) {
            for (int dir = 0; dir < 4; dir++) {
                if (dir != *g_dir && dir != directions[0] && dir != directions[1]) {
                    int can_move = 0;
                    collision = 0;
                    switch (dir) {
                        case 0: // Right
                            collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_right_g];
                            if (!collision && ghost_right_i >= 4) {
                                can_move = 1;
                            }
                            break;
                        case 1: // Down
                            collision = !grid[ghost_bottom_g][(ghost_left_g + ghost_right_g) / 2];
                            if (!collision && ghost_bottom_i >= 4) {
                                can_move = 1;
                            }
                            break;
                        case 2: // Left
                            collision = !grid[(ghost_top_g + ghost_bottom_g) / 2][ghost_left_g];
                            if (!collision && ghost_left_i <= 11) {
                                can_move = 1;
                            }
                            break;
                        case 3: // Up
                            collision = !grid[ghost_top_g][(ghost_left_g + ghost_right_g) / 2];
                            if (!collision && ghost_top_i <= 11) {
                                can_move = 1;
                            }
                            break;
                    }
                    if (can_move) {
                        *g_dir = dir;
                        *g_mv = 1;
                        break;
                    }
                }
            }
        }
    } else {
        // Continue moving in the current direction
        *g_mv = 1;
    }

}

