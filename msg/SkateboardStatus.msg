# SkateboardStatus
# Status telemetry for skateboard-type vehicles with front and rear steering.

Header header
int32 unique_id  # Vehicle identifier
geometry_msgs/Vector3 acceleration  # Acceleration vector [m/s^2]
geometry_msgs/Vector3 position  # Position in ENU coordinates [m]
geometry_msgs/Vector3 velocity  # Velocity vector [m/s]

float64 heading  # Vehicle heading [deg]
float32 accel  # Accelerator pedal, range 0~1
float32 brake  # Brake pedal, range 0~1
float32 wheel_angle  # Front wheel angle [deg]
float32 wheel_angle_rear  # Rear wheel angle [deg]
float32 wheel_speed_fl  # Front-left wheel speed
float32 wheel_speed_fr  # Front-right wheel speed
float32 wheel_speed_rl  # Rear-left wheel speed
float32 wheel_speed_rr  # Rear-right wheel speed
