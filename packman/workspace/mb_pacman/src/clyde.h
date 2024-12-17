#ifndef CLYDE_H
#define CLYDE_H

#include <stdint.h>
#include <stdbool.h>

void update_clyde_position(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
                           uint32_t pm_x, uint32_t pm_y, int grid[31][28]);

int clyde_exit_ghost_house(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv);

void scared_clyde(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
				   uint32_t pm_x, uint32_t pm_y, int grid[31][28]);

#endif // CLYDE_H
