# RobotOutput
# Robot output status flags and operating state.

int32 drive_mode  # Current drive mode
bool safe_mode_en  # Safe mode enabled
bool is_obstacle  # Obstacle detected
int32 is_enabled  # Robot enabled state
bool is_collision  # Collision detected
bool is_emg_stop  # Emergency stop active
bool is_protect_stop  # Protective stop active
bool is_brake  # Brake engaged
bool is_speed_limit_on_safe_mode  # Speed limit active in safe mode
bool is_muting  # Muting active
bool attach_exist  # Attachment present
int32 attach_mode  # Attachment mode
bool is_attach_sig  # Attachment signal active
