# FaultInjection_Sensor
# Fault injection configuration for sensor systems.

int32 unique_id  # Vehicle identifier
int32 sensor_id  # Target sensor identifier

int32 fault_class  # Fault classification identifier
int32 fault_subclass  # Fault sub-classification identifier

geometry_msgs/Vector3 local_position_offset  # Sensor position offset [m]
geometry_msgs/Vector3 local_rotation_offset  # Sensor rotation offset [deg]
