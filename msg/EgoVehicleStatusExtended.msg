# EgoVehicleStatusExtended
# Extended ego vehicle status with individual wheel speeds and yaw rate.

Header header
int32 unique_id  # Object unique id
geometry_msgs/Vector3 acceleration  # Acceleration vector [m/s^2]
geometry_msgs/Vector3 position  # Current position in ENU coordinates [m]
geometry_msgs/Vector3 velocity  # Velocity vector [m/s]

float64 heading  # Vehicle heading [deg]
float32 accel  # Accelerator pedal, range 0~1
float32 brake  # Brake pedal, range 0~1
float32 wheel_angle  # Front wheel angle [deg]

float32 wheel_angle_speed  # Rate of wheel angle change [deg/s]
float32 FL_wheel_speed  # Front-left wheel speed
float32 FR_wheel_speed  # Front-right wheel speed
float32 RL_wheel_speed  # Rear-left wheel speed
float32 RR_wheel_speed  # Rear-right wheel speed
float32 yaw_rate  # Vehicle yaw rate [rad/s]
