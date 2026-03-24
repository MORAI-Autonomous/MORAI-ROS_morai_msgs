# NpcGhostInfo
# Information for a single NPC vehicle in ghost mode.

int32 unique_id  # NPC identifier
string name  # Model name (e.g., 2016_Kia_Niro(HEV))

geometry_msgs/Vector3 position  # Position in ENU coordinates [m]
geometry_msgs/Vector3 rpy  # Roll, Pitch, Yaw [deg]

float32 steering_angle  # Steering angle [deg]
float32 vehicle_speed  # Vehicle speed [km/h]
uint32 turn_signal  # Turn signal (0: off, 1: left, 2: right, 3: hazard)
bool brake_light  # Brake light (false: off, true: on)
