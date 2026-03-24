# DdCtrlCmd
# Control command for differential-drive vehicles.

int32 cmd_type  # Command type identifier

float64 left_track_speed  # Left track/wheel speed
float64 right_track_speed  # Right track/wheel speed

geometry_msgs/Twist velocity  # Velocity command (linear and angular)
