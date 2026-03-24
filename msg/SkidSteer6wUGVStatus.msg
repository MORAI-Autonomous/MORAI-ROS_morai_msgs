# SkidSteer6wUGVStatus
# Status telemetry for 6-wheel skid-steer unmanned ground vehicles.

Header header

int32 unique_id  # Vehicle identifier
int32 ctrl_mode  # Current control mode

geometry_msgs/Vector3 acceleration  # Acceleration vector [m/s^2]
geometry_msgs/Vector3 position  # Position in ENU coordinates [m]
geometry_msgs/Vector3 linear_velocity  # Linear velocity vector [m/s]
geometry_msgs/Vector3 angular_velocity  # Angular velocity vector [rad/s]

float64 heading  # Vehicle heading [deg]
int32 cmd_type  # Command type identifier

float64 left_front_wheel_rpm  # Left front wheel RPM
float64 left_middle_wheel_rpm  # Left middle wheel RPM
float64 left_rear_wheel_rpm  # Left rear wheel RPM
float64 right_front_wheel_rpm  # Right front wheel RPM
float64 right_middle_wheel_rpm  # Right middle wheel RPM
float64 right_rear_wheel_rpm  # Right rear wheel RPM

float64 lateral_offset  # Lateral offset from reference
