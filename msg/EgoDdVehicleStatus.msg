# EgoDdVehicleStatus
# Ego vehicle status for differential-drive vehicles.

Header header
int32 unique_id  # Vehicle identifier
geometry_msgs/Vector3 acceleration  # Acceleration vector [m/s^2]
geometry_msgs/Vector3 position  # Position in ENU coordinates [m]
geometry_msgs/Vector3 linear_velocity  # Linear velocity vector [m/s]
geometry_msgs/Vector3 angular_velocity  # Angular velocity vector [rad/s]

float64 heading  # Vehicle heading [deg]
float64[] wheel_speed  # Per-wheel speed values
