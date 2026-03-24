# EventInfo
# One-time event control for vehicle state changes.
# Service: /Service_MoraiEventCmd (request/response)

int8 option  # Bitmask for fields to apply (0x0001: ctrl_mode, 0x0010: gear, 0x0100: lamps, 0x1000: set_pause)
int32 ctrl_mode  # Control mode (1: Keyboard, 2: Gamepad, 3: External, 4: Auto)
int32 gear  # Gear selection (-1: No change, 1: Parking, 2: Reverse, 3: Neutral, 4: Drive)
Lamps lamps  # Vehicle lamp controls
bool set_pause  # true: pause simulation, false: continue
