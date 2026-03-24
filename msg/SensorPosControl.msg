# SensorPosControl
# Control sensor positions and orientations.
# Topic: /SensorPosControl

int16[] sensor_index  # Sensor indices for identifying each sensor

float32[] pose_x  # Sensor X position [m]
float32[] pose_y  # Sensor Y position [m]
float32[] pose_z  # Sensor Z position [m]
float32[] roll  # Sensor roll angle [rad]
float32[] pitch  # Sensor pitch angle [rad]
float32[] yaw  # Sensor yaw angle [rad]
