# ReplayInfo
# Replay data containing ego vehicle state and surrounding object information.
# Topic: /ReplayInfo_topic

Header header

float64 ego_acc  # Accelerator pedal, range 0~1
float64 ego_brake  # Brake pedal, range 0~1
float64 ego_steer  # Front wheel angle [deg]

geometry_msgs/Quaternion orientation  # Current orientation

geometry_msgs/Vector3 linear_acceleration  # Current linear acceleration

geometry_msgs/Vector3 angular_velocity  # Current angular velocity

int32 num_of_npcs  # Number of NPC vehicles
int32 num_of_pedestrian  # Number of pedestrians
int32 num_of_obstacle  # Number of static obstacles

ObjectStatus[] npc_list  # NPC vehicle information

ObjectStatus[] pedestrian_list  # Pedestrian information

ObjectStatus[] obstacle_list  # Obstacle information
