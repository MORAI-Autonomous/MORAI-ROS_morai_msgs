# ObjectStatusList
# Details of the 20 closest objects around the ego vehicle (NPCs, pedestrians, obstacles).
# Topic: /Object_topic

Header header

int32 num_of_npcs  # Number of NPC vehicles
int32 num_of_pedestrian  # Number of pedestrians
int32 num_of_obstacle  # Number of static obstacles

ObjectStatus[] npc_list  # NPC vehicle information
ObjectStatus[] pedestrian_list  # Pedestrian information
ObjectStatus[] obstacle_list  # Obstacle information
