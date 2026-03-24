# SkateboardCtrlCmd
# Control command for skateboard-type vehicles with front and rear steering.

int32 longlCmdType  # Control method index (1: Throttle, 2: Velocity, 3: Acceleration)

float64 accel  # Accelerator pedal input, range 0~1
float64 brake  # Brake pedal input, range 0~1
float64 steering  # Front steering angle [rad]
float64 steering_rear  # Rear steering angle [rad]

float64 velocity  # Target velocity, active when longlCmdType == 2 [km/h]
float64 acceleration  # Target acceleration, active when longlCmdType == 3 [m/s^2]
