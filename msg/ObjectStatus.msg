# ObjectStatus
# State information for a single object in the simulation.

int32 unique_id  # Object unique id
int32 type  # Object type (0: Pedestrian, 1: NPC vehicle, 2: Static object, -1: Ego vehicle)
string name  # Object name
float64 heading  # Object heading [deg]

geometry_msgs/Vector3 velocity  # Velocity vector [km/h]
geometry_msgs/Vector3 acceleration  # Acceleration vector [m/s^2]
geometry_msgs/Vector3 size  # Bounding box size (width, length, height) [m]
geometry_msgs/Vector3 position  # Position in ENU coordinates [m]
