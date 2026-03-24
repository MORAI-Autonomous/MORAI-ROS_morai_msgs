# GhostMessage
# Re-simulation control using recorded data from rosbag files.
# Topic: /ghost_ctrl_cmd

geometry_msgs/Vector3 position  # Ego vehicle position (X, Y, Z) [m]
geometry_msgs/Vector3 rotation  # Ego vehicle rotation (Roll, Pitch, Yaw) [deg]
float64 velocity  # Speed of ego vehicle [km/h]
float64 steering_angle  # Front wheel steer angle [deg]
