#ifndef PINKY_H
#define PINKY_H

#include <stdint.h>
#include <stdbool.h>

void update_pinky_position(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
                           uint32_t pm_x, uint32_t pm_y, int grid[31][28]);

int pinky_exit_ghost_house(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv);

void scared_pinky(uint32_t g_x, uint32_t g_y, uint32_t* g_dir, uint32_t* g_mv,
				   uint32_t pm_x, uint32_t pm_y, int grid[31][28]);

#endif // PINKY_H
