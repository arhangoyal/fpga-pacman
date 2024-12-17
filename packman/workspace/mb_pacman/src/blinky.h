#ifndef BLINKY_H
#define BLINKY_H

#include <stdint.h>

// Function to update the movement of ghost0 (Blinky)
void update_blinky_position(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
                            uint32_t pm_x, uint32_t pm_y, int grid[31][28]);

// Scared blinky movement
void scared_blinky(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
					uint32_t pm_x, uint32_t pm_y, int grid[31][28]);

#endif // BLINKY_H
