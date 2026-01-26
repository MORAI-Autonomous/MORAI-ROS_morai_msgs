int32 number_of_ego_vehicle
int32 camera_index
int32[] ego_index
float64[] global_position_x
float64[] global_position_y
float64[] global_position_z
float32[] global_roll
float32[] global_pitch
float32[] global_yaw
float32[] velocity
int8[] gear
int8[] ctrl_mode

float32[] steering_angle      # 조향 각도 ( degree )
float32[] vehicle_speed       # 차량 속력 ( km/h )
uint32[] turn_signal            # 방향지시등 ( 0: off, 1: left, 2: right, 3: hazard )
bool[] brake_light            # 브레이크등 ( 켜짐/꺼짐 )
