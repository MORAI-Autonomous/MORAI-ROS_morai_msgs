int32 unique_id
string name

geometry_msgs/Vector3 position
geometry_msgs/Vector3 rpy

float32 steering_angle      # 조향 각도 ( degree )
float32 vehicle_speed       # 차량 속력 (km/h)
uint8 turn_signal           # 방향지시등 0: off, 1: left, 2: right, 3: hazard
bool brake_light            # 브레이크등 (켜짐/꺼짐)
