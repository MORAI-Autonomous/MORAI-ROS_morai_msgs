# ShipState
# State telemetry for ship/vessel vehicles.

float32 thrust  # Current thrust value
float32 rudder  # Current rudder angle
GeoVector3Message position  # Position (latitude, longitude, altitude)
GeoVector3Message rotation  # Rotation (roll, pitch, yaw)
GeoVector3Message velocity  # Velocity vector
GeoVector3Message angular_velocity  # Angular velocity vector
