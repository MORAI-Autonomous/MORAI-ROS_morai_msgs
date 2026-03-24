# UGVServeSkidCtrlCmd
# Control command for UGV with skid and Ackermann steering modes.

int32 steer_mode  # Steering mode selector
float32 forward  # Forward/backward input
float32 skid_steering  # Skid steering input
float32 ackermann_steering  # Ackermann steering angle
float32 ackermann_steering_rear_ratio  # Rear steering ratio for Ackermann mode
