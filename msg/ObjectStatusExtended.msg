# ObjectStatusExtended
# Extended state information for a single object, including orientation and lane data.

int32 unique_id  # Object unique id
int32 type  # Object type (0: Pedestrian, 1: NPC vehicle, 2: Static object, -1: Ego vehicle)
string name  # Object name
float64 heading  # Object heading [deg]

geometry_msgs/Vector3 velocity  # Velocity vector [km/h]
geometry_msgs/Vector3 acceleration  # Acceleration vector [m/s^2]
geometry_msgs/Vector3 size  # Bounding box size (width, length, height) [m]
geometry_msgs/Vector3 position  # Position in ENU coordinates [m]

geometry_msgs/Quaternion orientation  # Object orientation as quaternion
int32 turn_signal  # Turn signal state (0: off, 1: left, 2: right, 3: hazard)
string[] global_path_info  # Global path information
int32 lane_departure  # Lane departure status
float32 distance_left_lane  # Distance to left lane boundary [m]
float32 distance_right_lane  # Distance to right lane boundary [m]
float32 object_yaw_rate  # Object yaw rate [rad/s]
