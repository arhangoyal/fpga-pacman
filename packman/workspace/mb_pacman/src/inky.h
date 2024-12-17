#ifndef INKY_H
#define INKY_H

#include <stdint.h>
#include <stdbool.h>

void update_inky_position(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
                           uint32_t pm_x, uint32_t pm_y, int grid[31][28]);

int inky_exit_ghost_house(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv);

void scared_inky(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
				   uint32_t pm_x, uint32_t pm_y, int grid[31][28]);

#endif // INKY_H
