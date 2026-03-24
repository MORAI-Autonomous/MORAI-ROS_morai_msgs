# ObjectStatusListExtended
# Extended object status list with additional orientation and lane data.

Header header

int32 num_of_npcs  # Number of NPC vehicles
int32 num_of_pedestrian  # Number of pedestrians
int32 num_of_obstacle  # Number of static obstacles

ObjectStatusExtended[] npc_list  # Extended NPC vehicle information
ObjectStatusExtended[] pedestrian_list  # Extended pedestrian information
ObjectStatusExtended[] obstacle_list  # Extended obstacle information
