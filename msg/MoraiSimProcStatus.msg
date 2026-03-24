# MoraiSimProcStatus
# Current status of the simulator replay system.

Header header

time latest_command_time  # Timestamp of last MoraiSimProcHandle received (0 if never received)
uint8 command_result  # Result (0x00: initial, 0x01: success, 0x10: failed, 0x20: rosbag load failed, 0x30: loaded but failed)
uint8 current_mode  # Simulator mode (0x01: simulation, 0x10: replay)
uint8 current_status  # Simulator status (0x01: running, 0x10: paused, 0x20: paused at end of rosbag)
