# SkidSteer6wUGVCtrlCmd
# Control command for 6-wheel skid-steer unmanned ground vehicles.

int32 cmd_type  # Command type identifier

bool Forward_input  # Forward movement input
bool Backward_input  # Backward movement input
bool Left_Turn_input  # Left turn input
bool Right_Turn_input  # Right turn input

float32 left_front_wheel_rpm  # Left front wheel RPM
float32 left_middle_wheel_rpm  # Left middle wheel RPM
float32 left_rear_wheel_rpm  # Left rear wheel RPM
float32 right_front_wheel_rpm  # Right front wheel RPM
float32 right_middle_wheel_rpm  # Right middle wheel RPM
float32 right_rear_wheel_rpm  # Right rear wheel RPM

float32 Target_linear_velocity  # Target linear velocity [m/s]
float32 Target_angular_velocity  # Target angular velocity [rad/s]
