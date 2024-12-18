#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>  // GHOST For abs()
#include "platform.h"
#include "lw_usb/GenericMacros.h"
#include "lw_usb/GenericTypeDefs.h"
#include "lw_usb/MAX3421E.h"
#include "lw_usb/USB.h"
#include "lw_usb/usb_ch9.h"
#include "lw_usb/transfer.h"
#include "lw_usb/HID.h"

#include "lw_usb_main.h"

#include "xparameters.h"
#include <xgpio.h>

// GHOST
#include "blinky.h"
#include "pinky.h"
#include "inky.h"
#include "clyde.h"


// GHOST
#define OFFSET_X 110
#define OFFSET_Y 8
#define CELL_SIZE 15
// Define direction constants matching hardware mapping
#define DIR_LEFT 0
#define DIR_DOWN 1
#define DIR_RIGHT 2
#define DIR_UP 3


extern HID_DEVICE hid_device;

static XGpio Gpio_hex;

static BYTE addr = 1; 				//hard-wired USB address
const char* const devclasses[] = { " Uninitialized", " HID Keyboard", " HID Mouse", " Mass storage" };


BYTE GetDriverandReport() {
	BYTE i;
	BYTE rcode;
	BYTE device = 0xFF;
	BYTE tmpbyte;

	DEV_RECORD* tpl_ptr;
	xil_printf("Reached USB_STATE_RUNNING (0x40)\n");
	for (i = 1; i < USB_NUMDEVICES; i++) {
		tpl_ptr = GetDevtable(i);
		if (tpl_ptr->epinfo != NULL) {
			xil_printf("Device: %d", i);
			xil_printf("%s \n", devclasses[tpl_ptr->devclass]);
			device = tpl_ptr->devclass;
		}
	}
	//Query rate and protocol
	rcode = XferGetIdle(addr, 0, hid_device.interface, 0, &tmpbyte);
	if (rcode) {   //error handling
		xil_printf("GetIdle Error. Error code: ");
		xil_printf("%x \n", rcode);
	} else {
		xil_printf("Update rate: ");
		xil_printf("%x \n", tmpbyte);
	}
	xil_printf("Protocol: ");
	rcode = XferGetProto(addr, 0, hid_device.interface, &tmpbyte);
	if (rcode) {   //error handling
		xil_printf("GetProto Error. Error code ");
		xil_printf("%x \n", rcode);
	} else {
		xil_printf("%d \n", tmpbyte);
	}
	return device;
}

void printHex(u32 data, unsigned channel)
{
    u32 hex_data = 0;
    int shift = 0;

    // Handle the case where data is zero
    if (data == 0) {
        hex_data = 0;
    } else {
        while (data > 0 && shift < 32) {
            u32 digit = data % 10;          // Extract the least significant decimal digit
            hex_data |= (digit << shift);   // Place the digit in the correct nibble
            data /= 10;                     // Remove the processed digit
            shift += 4;                     // Move to the next nibble position
        }
    }

    XGpio_DiscreteWrite(&Gpio_hex, channel, hex_data);
}

u32 score = 0; // Current user score
uint32_t user_dir = 0; // Current user desired direction
BYTE started = 0; // Round stated?
u32 tick = 0; // Current tick of the game loop


// Sets all pellets in valid locations to on
void reset_pellets() {
	// Initalize Pellets
		for (int row = 0; row < 31; row++) {
		    uint32_t pellet_row = 0;
		    for (int col = 0; col < 28; col++) {
		        if (grid[row][col] == 1) {
		        	if(!(row == 23 && (col == 13 | col == 14)))
		        		pellet_row |= (1 << col);
		        }
		    }
		    axi_reg->pellets[row] = pellet_row;
		}
}

// To reset between each of the 3 lives (not working rn)
void reset_run() {
	axi_reg->reset = 0x1;
	sleep(1);
	axi_reg->reset = 0x0;
	user_dir = 0;
	started = 0;
	tick = 0;
	sleep(1);
	reset_pellets();
}

int main() {
    init_platform();
    XGpio_Initialize(&Gpio_hex, XPAR_GPIO_USB_KEYCODE_DEVICE_ID);
   	XGpio_SetDataDirection(&Gpio_hex, 1, 0x00000000); //configure hex display GPIO

   	BYTE rcode;
	BOOT_MOUSE_REPORT buf;		//USB mouse report
	BOOT_KBD_REPORT kbdbuf;

	BYTE runningdebugflag = 0;//flag to dump out a bunch of information when we first get to USB_STATE_RUNNING
	BYTE errorflag = 0; //flag once we get an error device so we don't keep dumping out state info
	BYTE device;
	BYTE code = 0;

	axi_reg->pm_dir = 0;
	axi_reg->pm_mv = 0;
	uint32_t pm_boardx, pm_boardy;
	uint32_t pm_top, pm_bottom, pm_left, pm_right;
	uint32_t pm_top_g, pm_bottom_g, pm_left_g, pm_right_g;
	uint32_t pm_top_i, pm_bottom_i, pm_left_i, pm_right_i;
	int collision;
	uint8_t pm_stopped_dir;


	xil_printf("initializing MAX3421E...\n");
	MAX3421E_init();
	xil_printf("initializing USB...\n");
	USB_init();

	reset_pellets();

	// GHOST
	int blinky_in_house = 1;
	int pinky_in_house = 1;
	int inky_in_house = 1;
	int clyde_in_house = 1;

	// Random seed for ghost movement logic
	srand(7);  // SIUUUUUUUUUUU

	// Kill mode start tick
	int kill_mode_start = 0;
	int last_death_blinky = 0;
	int last_death_pinky = 0;
	int last_death_inky = 0;
	int last_death_clyde = 0;

	int pacman_dead = 0;
	int pacman_dead_tick = 0;

	while (1) {
		tick++;
		if(pacman_dead) {
			axi_reg->g0_mv = 0;
			axi_reg->g1_mv = 0;
			axi_reg->g2_mv = 0;
			axi_reg->g3_mv = 0;
			axi_reg->pm_mv = 0;
			sleep(5);
			axi_reg->reset = 1;
			pacman_dead = 0;
			sleep(1);
			axi_reg->reset = 0;
			reset_pellets();
			score = 0; // Current user score
			user_dir = 0; // Current user desired direction
			started = 0; // Round stated?
			tick = 0;
			printHex(score, 1);
			blinky_in_house = 1;
			pinky_in_house = 1;
			inky_in_house = 1;
			clyde_in_house = 1;
			kill_mode_start = 0;
			last_death_blinky = 0;
			last_death_pinky = 0;
			last_death_inky = 0;
			last_death_clyde = 0;
		} else {


		// PACMAN CONTROL AND PELLET CONSUMPTION CODE STARTS HERE

		switch (code) {
			case 0x04:  // D : Right
				user_dir = 2;
				break;
			case 0x16:  // S : Down
				user_dir = 1;
				break;
			case 0x07:  // A : Left
				user_dir = 0;
				break;
			case 0x1A:  // W : Up
				user_dir = 3;
				break;
		};

		if(started) {
			if(axi_reg->pm_mv) {
				pm_boardx = axi_reg->pm_x - 110;
				pm_boardy = axi_reg->pm_y - 8;

				pm_top = pm_boardy;
				pm_top_g = pm_top / 15;
				pm_top_i = pm_top % 15;

				pm_bottom = pm_boardy + 26;
				pm_bottom_g = pm_bottom / 15;
				pm_bottom_i = pm_bottom % 15;

				pm_left = pm_boardx;
				pm_left_g = pm_left / 15;
				pm_left_i = pm_left % 15;

				pm_right = pm_boardx + 26;
				pm_right_g = pm_right / 15;
				pm_right_i = pm_right % 15;

				if(axi_reg->pm_dir != user_dir) {
					switch (user_dir) {
						case(0):
							if(grid[(pm_top_g + pm_bottom_g) / 2][pm_right_g] && (pm_top_i == 9 || axi_reg->pm_dir == 2)) {
								axi_reg->pm_dir = 0;
							}
							break;
						case(1):
							if(grid[pm_bottom_g][(pm_left_g + pm_right_g) / 2] && (pm_left_i == 9 || axi_reg->pm_dir == 3)) {
								axi_reg->pm_dir = 1;
							}
							break;
						case(2):
							if(grid[(pm_top_g + pm_bottom_g) / 2][pm_left_g] && (pm_top_i == 9 || axi_reg->pm_dir == 0)) {
								axi_reg->pm_dir = 2;
							}
							break;
						case(3):
							if(grid[pm_top_g][(pm_left_g + pm_right_g) / 2] && (pm_left_i == 10 || axi_reg->pm_dir == 1)) {
								axi_reg->pm_dir = 3;
							}
							break;
					};
				}

				BYTE consume = 0;
				uint32_t cons_x, cons_y;

				switch (axi_reg->pm_dir) {
					case (0):
						collision = !grid[(pm_top_g + pm_bottom_g) / 2][pm_right_g];
						if(collision && pm_right_i >= 4) {
							axi_reg->pm_mv = 0;
						}

						if(pm_right_i > 6) {
							consume = 1;
							cons_x = pm_right_g;
							cons_y = (pm_top_g + pm_bottom_g) / 2;
						}

						break;
					case (1):
						collision = !grid[pm_bottom_g][(pm_left_g + pm_right_g) / 2];
						if(collision && pm_bottom_i >= 4) {
							axi_reg->pm_mv = 0;
						}

						if(pm_bottom_i > 6) {
							consume = 1;
							cons_x = (pm_left_g + pm_right_g) / 2;
							cons_y = pm_bottom_g;
						}

						break;
					case (2):
						collision = !grid[(pm_top_g + pm_bottom_g) / 2][pm_left_g];
						if(collision && pm_left_i <= 11) {
							axi_reg->pm_mv = 0;
						}

						if(pm_left_i < 9) {
							consume = 1;
							cons_x = pm_left_g;
							cons_y = (pm_top_g + pm_bottom_g) / 2;
						}

						break;
					case (3):
						collision = !grid[pm_top_g][(pm_left_g + pm_right_g) / 2];
						if(collision && pm_top_i <= 11) {
							axi_reg->pm_mv = 0;
						}

						if(pm_top_i < 9) {
							consume = 1;
							cons_x = (pm_left_g + pm_right_g) / 2;
							cons_y = pm_top_g;
						}

						break;
				};

				pm_stopped_dir = axi_reg->pm_dir;

				if(consume) {
					if(axi_reg->pellets[cons_y] & (1 << cons_x)) {
						unsigned int mask = ~(1 << cons_x);
						axi_reg->pellets[cons_y] &= mask;

						if ((cons_y == 26 && cons_x == 3) || (cons_y == 4 && cons_x == 3) || (cons_y == 4 && cons_x == 24) || (cons_y == 26 && cons_x == 24)) {
							axi_reg->kill_mode = 1;
							kill_mode_start = tick;
						}

						score += 10;
						printHex(score, 1); // This is how you display the incremented score
					}
				}





			} else {
				if(axi_reg->pm_dir != user_dir) {
					axi_reg->pm_dir = user_dir;
					axi_reg->pm_mv = 1;
				} else {
					if(code == 0x04 || code == 0x1A || code == 0x16 || code == 0x07) {
						if(user_dir != pm_stopped_dir) {
							axi_reg->pm_mv = 1;
							axi_reg->pm_dir = user_dir;
						}
					}
				}
			}


		} else {
			if(code == 0x04 || code == 0x1A || code == 0x16 || code == 0x07) {  // WASD
				started = 1;
				axi_reg->pm_mv = 1;
				axi_reg->pm_dir = user_dir;

			}
		}

		xil_printf("%d ", (pm_top_g + pm_bottom) / 2);
		xil_printf(" %d \n", pm_left_g);

		// PACMAN CONTROL AND PELLET CONSUMPTION CODE ENDS HERE



		// GHOST MOVEMENT AND KILLING CODE STARTS HERE


		// Kill mode timer
		if(tick >= 1000 + kill_mode_start) {
			axi_reg->kill_mode = 0;
		}


		// Ghost killing logic
		if (axi_reg->kill_mode == 1) {
			if (abs(axi_reg->pm_x - axi_reg->g0_x) <= 10 && abs(axi_reg->pm_y - axi_reg->g0_y) <= 10) {
				axi_reg->ghost_reset += 1;
				last_death_blinky = tick;
				score += 200;
				printHex(score, 1);
			}
			if (abs(axi_reg->pm_x - axi_reg->g2_x) <= 10 && abs(axi_reg->pm_y - axi_reg->g2_y) <= 10) {
				axi_reg->ghost_reset += 4;
				last_death_pinky = tick;
				score += 200;
				printHex(score, 1);
			}
			if (abs(axi_reg->pm_x - axi_reg->g1_x) <= 10 && abs(axi_reg->pm_y - axi_reg->g1_y) <= 10) {
				axi_reg->ghost_reset += 2;
				last_death_inky = tick;
				score += 200;
				printHex(score, 1);
			}
			if (abs(axi_reg->pm_x - axi_reg->g3_x) <= 10 && abs(axi_reg->pm_y - axi_reg->g3_y) <= 10) {
				axi_reg->ghost_reset += 8;
				last_death_clyde = tick;
				score += 200;
				printHex(score, 1);
			}
		} else {
			if (abs(axi_reg->pm_x - axi_reg->g0_x) <= 10 && abs(axi_reg->pm_y - axi_reg->g0_y) <= 10) {
				pacman_dead = 1;
				pacman_dead_tick = tick;
			}
			if (abs(axi_reg->pm_x - axi_reg->g2_x) <= 10 && abs(axi_reg->pm_y - axi_reg->g2_y) <= 10) {
				pacman_dead = 1;
				pacman_dead_tick = tick;
			}
			if (abs(axi_reg->pm_x - axi_reg->g1_x) <= 10 && abs(axi_reg->pm_y - axi_reg->g1_y) <= 10) {
				pacman_dead = 1;
				pacman_dead_tick = tick;
			}
			if (abs(axi_reg->pm_x - axi_reg->g3_x) <= 10 && abs(axi_reg->pm_y - axi_reg->g3_y) <= 10) {
				pacman_dead = 1;
				pacman_dead_tick = tick;
			}
		}


		// Ghost reset logic
		if ((axi_reg->ghost_reset & 0x1) && (tick > last_death_blinky + 500)) {
			axi_reg->ghost_reset--;
			blinky_in_house = 1;
		}
		if ((axi_reg->ghost_reset & 0x4) && (tick > last_death_pinky + 500)) {
			axi_reg->ghost_reset -= 4;
			pinky_in_house = 1;
		}
		if ((axi_reg->ghost_reset & 0x2) && (tick > last_death_inky + 500)) {
			axi_reg->ghost_reset -= 2;
			inky_in_house = 1;
		}
		if ((axi_reg->ghost_reset & 0x8) && (tick > last_death_clyde + 500)) {
			axi_reg->ghost_reset -= 8;
			clyde_in_house = 1;
		}


		// Update Blinky's Position
		if (blinky_in_house && tick > 0) {
			blinky_in_house = 0;
		}
		else if (!blinky_in_house) {
			if (axi_reg->kill_mode == 1) {
				scared_blinky(axi_reg->g0_x, axi_reg->g0_y,
					&axi_reg->g0_dir, &axi_reg->g0_mv,
					axi_reg->pm_x, axi_reg->pm_y,
					grid);
			}
			else {
				update_blinky_position(axi_reg->g0_x, axi_reg->g0_y,
					&axi_reg->g0_dir, &axi_reg->g0_mv,
					axi_reg->pm_x, axi_reg->pm_y,
					grid);
			}
		}

		// Update Pinky's position
		if (pinky_in_house && tick > 250) {
			pinky_in_house = pinky_exit_ghost_house(axi_reg->g2_x, axi_reg->g2_y, &axi_reg->g2_dir, &axi_reg->g2_mv);
		}
		else if (!pinky_in_house) {
			if (axi_reg->kill_mode == 1) {
				scared_pinky(axi_reg->g2_x, axi_reg->g2_y,
					&axi_reg->g2_dir, &axi_reg->g2_mv,
					axi_reg->pm_x, axi_reg->pm_y,
					grid);
			}
			else {
				update_pinky_position(axi_reg->g2_x, axi_reg->g2_y,
					&axi_reg->g2_dir, &axi_reg->g2_mv,
					axi_reg->pm_x, axi_reg->pm_y,
					grid);
			}
		}

		// Update Inky's position
		if (inky_in_house && tick > 500) {
			inky_in_house = inky_exit_ghost_house(axi_reg->g1_x, axi_reg->g1_y, &axi_reg->g1_dir, &axi_reg->g1_mv);
		}
		else if (!inky_in_house) {
			if (axi_reg->kill_mode == 1) {
				scared_inky(axi_reg->g1_x, axi_reg->g1_y,
					&axi_reg->g1_dir, &axi_reg->g1_mv,
					axi_reg->pm_x, axi_reg->pm_y,
					grid);
			}
			else {
				update_inky_position(axi_reg->g1_x, axi_reg->g1_y,
					&axi_reg->g1_dir, &axi_reg->g1_mv,
					axi_reg->pm_x, axi_reg->pm_y,
					grid);
			}
		}

		// Update Clyde's position
		if (clyde_in_house && tick > 1000) {
			clyde_in_house = clyde_exit_ghost_house(axi_reg->g3_x, axi_reg->g3_y, &axi_reg->g3_dir, &axi_reg->g3_mv);
		}
		else if (!clyde_in_house) {
			if (axi_reg->kill_mode == 1) {
				scared_clyde(axi_reg->g3_x, axi_reg->g3_y,
					&axi_reg->g3_dir, &axi_reg->g3_mv,
					axi_reg->pm_x, axi_reg->pm_y,
					grid);
			}
			else {
				update_clyde_position(axi_reg->g3_x, axi_reg->g3_y,
					&axi_reg->g3_dir, &axi_reg->g3_mv,
					axi_reg->pm_x, axi_reg->pm_y,
					grid);
			}
		}


		// GHOST MOVEMENT AND KILLING CODE ENDS HERE



		MAX3421E_Task();
		USB_Task();
		if (GetUsbTaskState() == USB_STATE_RUNNING) {
			if (!runningdebugflag) {
				runningdebugflag = 1;
				device = GetDriverandReport();
			} else if (device == 1) {
				//run keyboard debug polling
				rcode = kbdPoll(&kbdbuf);
				if (rcode == hrNAK) {
					continue; //NAK means no new data
				} else if (rcode) {
					//xil_printf("Rcode: ");
					//xil_printf("%x \n", rcode);
					continue;
				}
				//xil_printf("keycodes: ");
				for (int i = 0; i < 6; i++) {
					//xil_printf("%x ", kbdbuf.keycode[i]);
				}
				//Outputs the first 4 keycodes using the USB GPIO channel 1
				//printHex (kbdbuf.keycode[0] + (kbdbuf.keycode[1]<<8) + (kbdbuf.keycode[2]<<16) + + (kbdbuf.keycode[3]<<24), 1);
				//Modify to output the last 2 keycodes on channel 2.
				//printHex(kbdbuf.keycode[4] + (kbdbuf.keycode[5] << 8), 2);
				//xil_printf("\n");
				code = kbdbuf.keycode[0];
			}

			else if (device == 2) {
				rcode = mousePoll(&buf);
				if (rcode == hrNAK) {
					//NAK means no new data
					continue;
				} else if (rcode) {
					//xil_printf("Rcode: ");
					//xil_printf("%x \n", rcode);
					continue;
				}
				//xil_printf("X displacement: ");
				//xil_printf("%d ", (signed char) buf.Xdispl);
				//xil_printf("Y displacement: ");
				//xil_printf("%d ", (signed char) buf.Ydispl);
				//xil_printf("Buttons: ");
				//xil_printf("%x\n", buf.button);
			}
		} else if (GetUsbTaskState() == USB_STATE_ERROR) {
			if (!errorflag) {
				errorflag = 1;
				xil_printf("USB Error State\n");
				//print out string descriptor here
			}
		} else //not in USB running state
		{

			xil_printf("USB task state: ");
			xil_printf("%x\n", GetUsbTaskState());
			if (runningdebugflag) {	//previously running, reset USB hardware just to clear out any funky state, HS/FS etc
				runningdebugflag = 0;
				MAX3421E_init();
				USB_init();
			}
			errorflag = 0;
		}




	}
	}
    cleanup_platform();
	return 0;
}
