string link_id
float32 cost
float32 time_cost

uint32 lane_idx
string left_link_id
string right_link_id

string to_node_id
string from_node_id

int32 link_type
uint32 length
uint32 speed

# 0: not change, 1: left, 2: right
int32 change_lane
# change target link id
string change_link_id

# link_type enum
int32 LINK_NONE=0
int32 LINK_TOLLGATE_NORMAL=3
int32 LINK_BUS_LANE=4
int32 LINK_REVERSIBLE_LANE=5
int32 LINK_REGULAR_LANE=6

# change_lane enum
int32 CHANGE_NONE=0
int32 CHANGE_LEFT=1
int32 CHANGE_RIGHT=2

geometry_msgs/Pose[] waypoints
