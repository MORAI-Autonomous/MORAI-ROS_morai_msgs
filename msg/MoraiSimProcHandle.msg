# MoraiSimProcHandle
# Playback commands and conditions for rosbag replay.

uint8 sim_process_status  # Process status (1: Playing, 2: Paused, 32: Stopped)

int16 replay_option  # Bitmask (0x0001: load file, 0x0010: designate target, 0x0100: set start time, 0x1000: set speed)
string rosbag_file_name  # Filename of the rosbag file to load
int16 replay_target_option  # Bitmask (0x0001: ego vehicle, 0x0010: NPC vehicle, 0x0100: pedestrian)

int32 replay_speed  # Playback speed multiplier (e.g., 1, 2)
int32 start_time  # Start time [ms]
